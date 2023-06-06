# 第 4 章 嵌入式开发介绍
## 练习 4-1
### 熟悉交叉编译概念，使用 riscv gcc 编译代码并使用 binutils 工具对生成的目标文件和可执行文件（ELF 格式）进行分析。具体要求如下： <br>  
<br>  

### 一、编写一个简单的打印 “hello world！” 的程序源文件：hello.c  
GNU交叉编译工具链(ToolChain)

### 二、对源文件进行编译，生成针对支持 rv32ima 指令集架构处理器的目标文件 hello.o
GNU交叉编译工具链(ToolChain) 
```Makefile  
CROSS_COMPILE = riscv64-unknown-elf-gcc #RISC -V GCC工具链
CFLAGS = -nostdlib -fno-builtin -march=rv32ima -mabi=ilp32 -g -Wall # GCC编译参数
```   
使用gcc-riscv64-linux-gnu命令交叉编译   
```shell
sudo apt install gcc-riscv64-linux-gnu
gcc-riscv64-linux-gnu 
```

参数说明
- -nostdlib ： 在链接阶段不包含标准的启动文件和默认库
- -fno-builtin : 不进行对内建函数的优化
- -march-rv32ima :  i,基本指令集，32位整数指令集 ; m,扩展指令集,整数乘法和除法指令集 ; a,扩展指令集,存储器原子指令集
- -g : 开启调试信息
- -Wall : 开启所有警告信息  
- -mabi=ilp32 : 指定使用ILP32数据模型，其中整数、长整数和指针都是32位

### 三、查看 hello.o 的文件的文件头信息
```shell
readelf -h hello.o
```  
<img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306070045976.png"/>  

### 四、查看 hello.o 的 Section header table  
```shell
    readelf -S hello.o
```  
<img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306070048175.png"/>  

### 五、对 hello.o 反汇编，并查看 hello.c 的 C 程序源码和机器指令的对应关系  
```shell
riscv64-linux-gnu-objdump -d -S hello.o
```  
<img src="https://picture-1305820021.cos.ap-shanghai.myqcloud.com/res/202306070050409.png"/>