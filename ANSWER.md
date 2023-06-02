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
    ```shell
    objdump -d hello.o # 将代码段反汇编
    objdump -S hello.o # 将代码段反汇编的同时，将反汇编代码与源代码交替显示，编译时需要使用-g参数，即需要调试信息
    objdump -l hello.o # 反汇编代码中插入文件名和行号
    objdump -j [section] hello.o # 仅反汇编指定的section
    ```
    <img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306021537660.png" width="50%">

