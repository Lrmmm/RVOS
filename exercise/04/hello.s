	.file	"hello.c"
	.option pic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello World!"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "hello.c"
	.loc 1 3 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 4 5
	lla	a0,.LC0
	call	puts@plt
	.loc 1 5 12
	li	a5,0
	.loc 1 6 1
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc-cross/riscv64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/riscv64-linux-gnu/include/bits/types.h"
	.file 4 "/usr/riscv64-linux-gnu/include/bits/types/struct_FILE.h"
	.file 5 "/usr/riscv64-linux-gnu/include/bits/types/FILE.h"
	.file 6 "/usr/riscv64-linux-gnu/include/stdio.h"
	.file 7 "/usr/riscv64-linux-gnu/include/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.4byte	0x39
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.4byte	0x6a
	.byte	0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.4byte	0x6a
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.byte	0x8
	.4byte	0x91
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x7
	.4byte	0x91
	.byte	0x8
	.4byte	.LASF52
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.4byte	0x224
	.byte	0x9
	.4byte	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.4byte	0x63
	.byte	0
	.byte	0x9
	.4byte	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.4byte	0x8b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.4byte	0x8b
	.byte	0x10
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0x8b
	.byte	0x18
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x8b
	.byte	0x20
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0x8b
	.byte	0x28
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0x8b
	.byte	0x30
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0x8b
	.byte	0x38
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0x8b
	.byte	0x40
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.4byte	0x8b
	.byte	0x48
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x8b
	.byte	0x50
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0x8b
	.byte	0x58
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.4byte	0x23d
	.byte	0x60
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.4byte	0x243
	.byte	0x68
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.4byte	0x63
	.byte	0x70
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.4byte	0x63
	.byte	0x74
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0x71
	.byte	0x78
	.byte	0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x47
	.byte	0x80
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.4byte	0x55
	.byte	0x82
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x249
	.byte	0x83
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.4byte	0x259
	.byte	0x88
	.byte	0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x7d
	.byte	0x90
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.4byte	0x264
	.byte	0x98
	.byte	0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.4byte	0x26f
	.byte	0xa0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.4byte	0x243
	.byte	0xa8
	.byte	0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.4byte	0x89
	.byte	0xb0
	.byte	0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.4byte	0x2d
	.byte	0xb8
	.byte	0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.4byte	0x63
	.byte	0xc0
	.byte	0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x275
	.byte	0xc4
	.byte	0
	.byte	0x2
	.4byte	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.4byte	0x9d
	.byte	0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x8
	.4byte	0x238
	.byte	0x6
	.byte	0x8
	.4byte	0x9d
	.byte	0xc
	.4byte	0x91
	.4byte	0x259
	.byte	0xd
	.4byte	0x39
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x8
	.4byte	0x230
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8
	.4byte	0x25f
	.byte	0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x8
	.4byte	0x26a
	.byte	0xc
	.4byte	0x91
	.4byte	0x285
	.byte	0xd
	.4byte	0x39
	.byte	0x13
	.byte	0
	.byte	0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.4byte	0x291
	.byte	0x6
	.byte	0x8
	.4byte	0x224
	.byte	0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.4byte	0x291
	.byte	0xe
	.4byte	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.4byte	0x291
	.byte	0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.4byte	0x63
	.byte	0xc
	.4byte	0x2d1
	.4byte	0x2c6
	.byte	0xf
	.byte	0
	.byte	0x7
	.4byte	0x2bb
	.byte	0x6
	.byte	0x8
	.4byte	0x98
	.byte	0x7
	.4byte	0x2cb
	.byte	0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0x2c6
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	0x63
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF27:
	.string	"_old_offset"
.LASF14:
	.string	"_IO_read_base"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF46:
	.string	"stderr"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF51:
	.string	"/home/lirunmin/RVOS/RVOS/exercise/04"
.LASF28:
	.string	"_cur_column"
.LASF52:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF54:
	.string	"main"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF37:
	.string	"__pad5"
.LASF42:
	.string	"_IO_codecvt"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF49:
	.string	"GNU C17 9.4.0 -march=rv64imafd -mabi=lp64d -g -fstack-protector-strong"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF25:
	.string	"_fileno"
.LASF40:
	.string	"FILE"
.LASF50:
	.string	"hello.c"
.LASF45:
	.string	"stdout"
.LASF53:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
