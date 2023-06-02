# 练习 3-1
## 使用 gcc 编译代码并使用 binutils 工具对生成的目标文件和可执行文件（ELF 格式）进行分析。具体要求如下：
1. **编写一个简单的打印 “hello world！” 的程序源文件：hello.c**
对源文件进行本地编译，生成针对支持 x86_64 指令集架构处理器的目标文件 hello.o  
    [hello.c](../RVOS/exercise/03/hello.c)
2. **查看 hello.o 的文件的文件头信息。**
    ```
    readelf -h hello.o
    ```
    <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021434724.png" width="50%">

    <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021453725.png" width="50%">  

    ref: <https://xinqiu.gitbooks.io/linux-inside-zh/content/Theory/linux-theory-2.html>  
    - ELF Header：  
        ELF头(ELF header)位于文件的开始位置。  
        定位文件的其他部分,描述其结构和组成。
    - Program Header Table  
        程序头是一个结构的数组，每一个结构都表示一个段(segments)。
        描述各个Segment在ELF文件中的位置，以及程序执行过程中系统需要准备的其他信息。
    - .text  
        保存了程序代码指令的Section(已经被编译成二进制代码)。
    - .init  
        程序加载时需要执行的初始化代码  
    - .data

        保存了初始化的全局变量、静态变量
    - .bss  
        保存了未初始化的全局变量、静态变量  
    - .Section Header Table   
        描述各个Section的大小和位置等具体信息  
3. **查看 hello.o 的 Section header table**  
    ```
    readelf -S hello.o
    ```
    <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021526247.png" width="50%">
4. 对 hello.o 反汇编，并查看 hello.c 的 C 程序源码和机器指令的对应关系
    <https://zhuanlan.zhihu.com/p/335550245>
    ```shell
    objdump -d hello.o # 将代码段反汇编
    objdump -S hello.o # 将代码段反汇编的同时，将反汇编代码与源代码交替显示，编译时需要使用-g参数，即需要调试信息
    objdump -l hello.o # 反汇编代码中插入文件名和行号
    objdump -j [section] hello.o # 仅反汇编指定的section
    ```
    <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021537660.png" width="50%">  

# 练习 3-2
如下例子 C 语言代码：
```c
// filename : hello2.c
#include <stdio.h> 
 
int global_init = 0x11111111; 
const int global_const = 0x22222222; 
 
void main() 
{ 
        static int static_var = 0x33333333; 
        static int static_var_uninit; 
 
        int auto_var = 0x44444444; 
 
        printf("hello world!\n"); 
        return; 
} 
```
**请问编译为 .o 文件后，global_init, global_const, static_var, static_var_uninit,auto_var 这些变量分别存放在那些 section 里，"hello world!\n" 这个字符串又在哪里？并尝试用工具查看并验证你的猜测**

- 猜测:  
    global_init、global_const、static_var ：已经初始化的全局变量或静态变量，存放在.data section中  
    static_var_uninit: 未

- 验证: 
    <br>
    1. 编译但不链接  
        ```shell
        gcc -c hello2.c
        ```  
    
    2. 反汇编查看Section中的内容  
        ```shell
        objdump -s -d hello2.o
        ```
        <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021732881.png"/>

        .txt中存放的是程序指令   
        .data中存放 已经初始化的静态和全局变量，global_init、static_var
        .rodata: read only data 存放常量和字符串，global_const 、"Hello world!"  

    3. 查看elf文件的符号表  
        ```shell
        objdump -t hello2.o
        ```

        ```txt
        hello2.o:     file format elf64-x86-64

        SYMBOL TABLE:
        0000000000000000 l    df *ABS*  0000000000000000 hello2.c
        0000000000000000 l    d  .text  0000000000000000 .text
        0000000000000000 l    d  .data  0000000000000000 .data
        0000000000000000 l    d  .bss   0000000000000000 .bss
        0000000000000000 l    d  .rodata        0000000000000000 .rodata
        0000000000000000 l     O .bss   0000000000000004 static_var_uninit.2318
        0000000000000004 l     O .data  0000000000000004 static_var.2317
        0000000000000000 l    d  .note.GNU-stack        0000000000000000 .note.GNU-stack
        0000000000000000 l    d  .note.gnu.property     0000000000000000 .note.gnu.property
        0000000000000000 l    d  .eh_frame      0000000000000000 .eh_frame
        0000000000000000 l    d  .comment       0000000000000000 .comment
        0000000000000000 g     O .data  0000000000000004 global_init
        0000000000000000 g     O .rodata        0000000000000004 global_const
        0000000000000000 g     F .text  0000000000000022 main
        0000000000000000         *UND*  0000000000000000 _GLOBAL_OFFSET_TABLE_
        0000000000000000         *UND*  0000000000000000 puts
        ```  

        bss 段只是为未初始化的全局变量和局部静态变量预留位置而已，它并没有内容，所以它在文件中也不占据空间，bss中有变量static_var_uninit  
        局部变量auto_var不放在内存的静态存储区，是存放在内存的栈区，在什么时候才能确定呢？

    4. hello2.c中并没有printf函数，如何找到printf的地址？  
        用.text的重定位表 ---.rela.text 。  
        由于printf在其他库中，在编译阶段无法知道其地址，在链接的时候才能找到printf函数的地址，所以现在rela.text中记录下printf需要重定位



# 目标文件分析
```c
#include <stdio.h>
int printf(const char* format, ...);

int global_int_var = 84;
int global_uninit_var;

void func1(int i)
{
    printf("%d\n", i);
}

int main(void)
{
    static int static_var = 85;
    static int static_var2;
    int a = 1;
    int b;
    func1(static_var + static_var2 + a + b);
    return a;
}
```  


