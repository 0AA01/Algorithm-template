	.file	"t1.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text$_Z5scanfPKcz,"x"
	.linkonce discard
	.globl	_Z5scanfPKcz
	.def	_Z5scanfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5scanfPKcz
_Z5scanfPKcz:
.LFB5:
	.file 1 "C:/MinGW64/x86_64-w64-mingw32/include/stdio.h"
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -48
	.seh_endprologue
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movq	%rcx, -48(%rbp)
.LBB2:
	.loc 1 241 0
	leaq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 1 242 0
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	__mingw_vscanf
	movl	%eax, %ebx
	.loc 1 244 0
	movl	%ebx, %eax
.LBE2:
	.loc 1 245 0
	addq	$56, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret
	.cfi_endproc
.LFE5:
	.seh_endproc
.lcomm _ZStL8__ioinit,1,1
	.globl	T
	.bss
	.align 4
T:
	.space 4
	.globl	n
	.align 4
n:
	.space 4
	.globl	m
	.align 4
m:
	.space 4
	.globl	a
	.align 64
a:
	.space 400040
	.text
	.globl	_Z5solvev
	.def	_Z5solvev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5solvev
_Z5solvev:
.LFB3628:
	.file 2 "d:/\327\277\303\346/Coding/c++/t1.cpp"
	.loc 2 13 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	.loc 2 15 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3628:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%d\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3629:
	.loc 2 17 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 2 17 0
	call	__main
	.loc 2 18 0
	movl	$1, T(%rip)
	.loc 2 19 0
	leaq	T(%rip), %rdx
	leaq	.LC0(%rip), %rcx
	call	_Z5scanfPKcz
	.loc 2 20 0
	jmp	.L5
.L6:
	.loc 2 21 0
	call	_Z5solvev
.L5:
	.loc 2 20 0
	movl	T(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, T(%rip)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L6
	.loc 2 23 0
	movl	$0, %eax
	.loc 2 24 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3629:
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3648:
	.file 3 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/iostream"
	.loc 3 74 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 3 74 0
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3648:
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB3647:
	.loc 2 24 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 2 24 0
	cmpl	$1, 16(%rbp)
	jne	.L9
	.loc 2 24 0 is_stmt 0 discriminator 1
	cmpl	$65535, 24(%rbp)
	jne	.L9
	.loc 3 74 0 is_stmt 1
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	nop
.L9:
	.loc 2 24 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3647:
	.seh_endproc
	.section .rdata,"dr"
	.align 4
_ZL1N:
	.long	100010
	.align 4
_ZL1M:
	.long	200020
	.align 4
_ZL3MOD:
	.long	998244353
	.align 4
_ZL3INF:
	.long	1000000007
	.text
	.def	_GLOBAL__sub_I_T;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_T
_GLOBAL__sub_I_T:
.LFB3649:
	.loc 2 24 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 2 24 0
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3649:
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_T
	.text
.Letext0:
	.file 4 "C:/MinGW64/x86_64-w64-mingw32/include/vadefs.h"
	.file 5 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw.h"
	.file 6 "C:/MinGW64/x86_64-w64-mingw32/include/locale.h"
	.file 7 "C:/MinGW64/x86_64-w64-mingw32/include/stdlib.h"
	.file 8 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/clocale"
	.file 9 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/csetjmp"
	.file 10 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/csignal"
	.file 11 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cstdarg"
	.file 12 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cstdio"
	.file 13 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cstdlib"
	.file 14 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cstring"
	.file 15 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ctime"
	.file 16 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/c++config.h"
	.file 17 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cwchar"
	.file 18 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/ios_base.h"
	.file 19 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cwctype"
	.file 20 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/debug/debug.h"
	.file 21 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_list.h"
	.file 22 "<built-in>"
	.file 23 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/cpp_type_traits.h"
	.file 24 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/predefined_ops.h"
	.file 25 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ext/new_allocator.h"
	.file 26 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ext/numeric_traits.h"
	.file 27 "C:/MinGW64/x86_64-w64-mingw32/include/setjmp.h"
	.file 28 "C:/MinGW64/x86_64-w64-mingw32/include/signal.h"
	.file 29 "C:/MinGW64/x86_64-w64-mingw32/include/string.h"
	.file 30 "C:/MinGW64/x86_64-w64-mingw32/include/time.h"
	.file 31 "C:/MinGW64/x86_64-w64-mingw32/include/wchar.h"
	.file 32 "C:/MinGW64/x86_64-w64-mingw32/include/swprintf.inl"
	.file 33 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/atomic_word.h"
	.file 34 "C:/MinGW64/x86_64-w64-mingw32/include/wctype.h"
	.file 35 "C:/MinGW64/x86_64-w64-mingw32/include/ctype.h"
	.file 36 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/new"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2acf
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++ 4.9.2 -mtune=generic -march=x86-64 -g3 -O0\0"
	.byte	0x4
	.ascii "d:\\\327\277\303\346\\Coding\\c++\\t1.cpp\0"
	.ascii "D:\\\327\277\303\346\\Coding\\c++\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.ascii "__gnuc_va_list\0"
	.byte	0x4
	.byte	0x16
	.long	0x97
	.uleb128 0x3
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.long	0xaf
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.ascii "va_list\0"
	.byte	0x4
	.byte	0x1d
	.long	0x81
	.uleb128 0x5
	.ascii "size_t\0"
	.byte	0x5
	.word	0x179
	.long	0xd5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x5
	.ascii "wint_t\0"
	.byte	0x5
	.word	0x1bb
	.long	0x10f
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x5
	.ascii "wctype_t\0"
	.byte	0x5
	.word	0x1bc
	.long	0x10f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.ascii "__time64_t\0"
	.byte	0x5
	.word	0x1d9
	.long	0xef
	.uleb128 0x5
	.ascii "time_t\0"
	.byte	0x5
	.word	0x1e1
	.long	0x149
	.uleb128 0x6
	.byte	0x8
	.long	0xaf
	.uleb128 0x6
	.byte	0x8
	.long	0x177
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x7
	.ascii "lconv\0"
	.byte	0x58
	.byte	0x6
	.byte	0x2d
	.long	0x352
	.uleb128 0x8
	.ascii "decimal_point\0"
	.byte	0x6
	.byte	0x2e
	.long	0x16b
	.byte	0
	.uleb128 0x8
	.ascii "thousands_sep\0"
	.byte	0x6
	.byte	0x2f
	.long	0x16b
	.byte	0x8
	.uleb128 0x8
	.ascii "grouping\0"
	.byte	0x6
	.byte	0x30
	.long	0x16b
	.byte	0x10
	.uleb128 0x8
	.ascii "int_curr_symbol\0"
	.byte	0x6
	.byte	0x31
	.long	0x16b
	.byte	0x18
	.uleb128 0x8
	.ascii "currency_symbol\0"
	.byte	0x6
	.byte	0x32
	.long	0x16b
	.byte	0x20
	.uleb128 0x8
	.ascii "mon_decimal_point\0"
	.byte	0x6
	.byte	0x33
	.long	0x16b
	.byte	0x28
	.uleb128 0x8
	.ascii "mon_thousands_sep\0"
	.byte	0x6
	.byte	0x34
	.long	0x16b
	.byte	0x30
	.uleb128 0x8
	.ascii "mon_grouping\0"
	.byte	0x6
	.byte	0x35
	.long	0x16b
	.byte	0x38
	.uleb128 0x8
	.ascii "positive_sign\0"
	.byte	0x6
	.byte	0x36
	.long	0x16b
	.byte	0x40
	.uleb128 0x8
	.ascii "negative_sign\0"
	.byte	0x6
	.byte	0x37
	.long	0x16b
	.byte	0x48
	.uleb128 0x8
	.ascii "int_frac_digits\0"
	.byte	0x6
	.byte	0x38
	.long	0xaf
	.byte	0x50
	.uleb128 0x8
	.ascii "frac_digits\0"
	.byte	0x6
	.byte	0x39
	.long	0xaf
	.byte	0x51
	.uleb128 0x8
	.ascii "p_cs_precedes\0"
	.byte	0x6
	.byte	0x3a
	.long	0xaf
	.byte	0x52
	.uleb128 0x8
	.ascii "p_sep_by_space\0"
	.byte	0x6
	.byte	0x3b
	.long	0xaf
	.byte	0x53
	.uleb128 0x8
	.ascii "n_cs_precedes\0"
	.byte	0x6
	.byte	0x3c
	.long	0xaf
	.byte	0x54
	.uleb128 0x8
	.ascii "n_sep_by_space\0"
	.byte	0x6
	.byte	0x3d
	.long	0xaf
	.byte	0x55
	.uleb128 0x8
	.ascii "p_sign_posn\0"
	.byte	0x6
	.byte	0x3e
	.long	0xaf
	.byte	0x56
	.uleb128 0x8
	.ascii "n_sign_posn\0"
	.byte	0x6
	.byte	0x3f
	.long	0xaf
	.byte	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x7
	.ascii "_div_t\0"
	.byte	0x8
	.byte	0x7
	.byte	0x32
	.long	0x392
	.uleb128 0x8
	.ascii "quot\0"
	.byte	0x7
	.byte	0x33
	.long	0x136
	.byte	0
	.uleb128 0x8
	.ascii "rem\0"
	.byte	0x7
	.byte	0x34
	.long	0x136
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.ascii "div_t\0"
	.byte	0x7
	.byte	0x35
	.long	0x369
	.uleb128 0x7
	.ascii "_ldiv_t\0"
	.byte	0x8
	.byte	0x7
	.byte	0x37
	.long	0x3c9
	.uleb128 0x8
	.ascii "quot\0"
	.byte	0x7
	.byte	0x38
	.long	0x13d
	.byte	0
	.uleb128 0x8
	.ascii "rem\0"
	.byte	0x7
	.byte	0x39
	.long	0x13d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.ascii "ldiv_t\0"
	.byte	0x7
	.byte	0x3a
	.long	0x39f
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x6
	.byte	0x8
	.long	0x3ff
	.uleb128 0x9
	.uleb128 0x6
	.byte	0x8
	.long	0x406
	.uleb128 0xa
	.long	0x177
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.word	0x272
	.ascii "7lldiv_t\0"
	.long	0x439
	.uleb128 0xc
	.ascii "quot\0"
	.byte	0x7
	.word	0x272
	.long	0xef
	.byte	0
	.uleb128 0xc
	.ascii "rem\0"
	.byte	0x7
	.word	0x272
	.long	0xef
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "lldiv_t\0"
	.byte	0x7
	.word	0x272
	.long	0x40b
	.uleb128 0x7
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x1
	.byte	0x1a
	.long	0x4d0
	.uleb128 0x8
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x1b
	.long	0x16b
	.byte	0
	.uleb128 0x8
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x1c
	.long	0x136
	.byte	0x8
	.uleb128 0x8
	.ascii "_base\0"
	.byte	0x1
	.byte	0x1d
	.long	0x16b
	.byte	0x10
	.uleb128 0x8
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x1e
	.long	0x136
	.byte	0x18
	.uleb128 0x8
	.ascii "_file\0"
	.byte	0x1
	.byte	0x1f
	.long	0x136
	.byte	0x1c
	.uleb128 0x8
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x20
	.long	0x136
	.byte	0x20
	.uleb128 0x8
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x21
	.long	0x136
	.byte	0x24
	.uleb128 0x8
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x22
	.long	0x16b
	.byte	0x28
	.byte	0
	.uleb128 0x2
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x24
	.long	0x449
	.uleb128 0x2
	.ascii "fpos_t\0"
	.byte	0x1
	.byte	0x67
	.long	0xef
	.uleb128 0xd
	.ascii "std\0"
	.byte	0x16
	.byte	0
	.long	0xf14
	.uleb128 0xe
	.byte	0x8
	.byte	0x35
	.long	0x1b3
	.uleb128 0xe
	.byte	0x8
	.byte	0x36
	.long	0xf14
	.uleb128 0xe
	.byte	0x8
	.byte	0x37
	.long	0xf3f
	.uleb128 0xe
	.byte	0x9
	.byte	0x39
	.long	0x1274
	.uleb128 0xe
	.byte	0x9
	.byte	0x3a
	.long	0x1293
	.uleb128 0xe
	.byte	0xa
	.byte	0x34
	.long	0x12b3
	.uleb128 0xe
	.byte	0xa
	.byte	0x35
	.long	0x12ec
	.uleb128 0xe
	.byte	0xa
	.byte	0x36
	.long	0x1309
	.uleb128 0xe
	.byte	0xb
	.byte	0x36
	.long	0xb7
	.uleb128 0xe
	.byte	0xc
	.byte	0x62
	.long	0x4d0
	.uleb128 0xe
	.byte	0xc
	.byte	0x63
	.long	0x4dc
	.uleb128 0xe
	.byte	0xc
	.byte	0x65
	.long	0x1320
	.uleb128 0xe
	.byte	0xc
	.byte	0x66
	.long	0x133d
	.uleb128 0xe
	.byte	0xc
	.byte	0x67
	.long	0x1356
	.uleb128 0xe
	.byte	0xc
	.byte	0x68
	.long	0x136d
	.uleb128 0xe
	.byte	0xc
	.byte	0x69
	.long	0x1386
	.uleb128 0xe
	.byte	0xc
	.byte	0x6a
	.long	0x139f
	.uleb128 0xe
	.byte	0xc
	.byte	0x6b
	.long	0x13b7
	.uleb128 0xe
	.byte	0xc
	.byte	0x6c
	.long	0x13dc
	.uleb128 0xe
	.byte	0xc
	.byte	0x6d
	.long	0x13fe
	.uleb128 0xe
	.byte	0xc
	.byte	0x6e
	.long	0x141b
	.uleb128 0xe
	.byte	0xc
	.byte	0x71
	.long	0x1452
	.uleb128 0xe
	.byte	0xc
	.byte	0x72
	.long	0x147b
	.uleb128 0xe
	.byte	0xc
	.byte	0x73
	.long	0x149f
	.uleb128 0xe
	.byte	0xc
	.byte	0x74
	.long	0x14d3
	.uleb128 0xe
	.byte	0xc
	.byte	0x75
	.long	0x14f5
	.uleb128 0xe
	.byte	0xc
	.byte	0x76
	.long	0x151f
	.uleb128 0xe
	.byte	0xc
	.byte	0x78
	.long	0x1537
	.uleb128 0xe
	.byte	0xc
	.byte	0x79
	.long	0x154e
	.uleb128 0xe
	.byte	0xc
	.byte	0x7c
	.long	0x155e
	.uleb128 0xe
	.byte	0xc
	.byte	0x7e
	.long	0x1575
	.uleb128 0xe
	.byte	0xc
	.byte	0x7f
	.long	0x158a
	.uleb128 0xe
	.byte	0xc
	.byte	0x83
	.long	0x15b2
	.uleb128 0xe
	.byte	0xc
	.byte	0x84
	.long	0x15cb
	.uleb128 0xe
	.byte	0xc
	.byte	0x85
	.long	0x15e9
	.uleb128 0xe
	.byte	0xc
	.byte	0x86
	.long	0x15fe
	.uleb128 0xe
	.byte	0xc
	.byte	0x87
	.long	0x167f
	.uleb128 0xe
	.byte	0xc
	.byte	0x88
	.long	0x1699
	.uleb128 0xe
	.byte	0xc
	.byte	0x89
	.long	0x16c2
	.uleb128 0xe
	.byte	0xc
	.byte	0x8a
	.long	0x16f3
	.uleb128 0xe
	.byte	0xc
	.byte	0x8b
	.long	0x1722
	.uleb128 0xe
	.byte	0xc
	.byte	0x8d
	.long	0x1732
	.uleb128 0xe
	.byte	0xc
	.byte	0x8f
	.long	0x174b
	.uleb128 0xe
	.byte	0xc
	.byte	0x90
	.long	0x1769
	.uleb128 0xe
	.byte	0xc
	.byte	0x91
	.long	0x17a7
	.uleb128 0xe
	.byte	0xc
	.byte	0x92
	.long	0x17d6
	.uleb128 0xe
	.byte	0xc
	.byte	0xb9
	.long	0x180e
	.uleb128 0xe
	.byte	0xc
	.byte	0xba
	.long	0x1847
	.uleb128 0xe
	.byte	0xc
	.byte	0xbb
	.long	0x1883
	.uleb128 0xe
	.byte	0xc
	.byte	0xbc
	.long	0x18b0
	.uleb128 0xe
	.byte	0xc
	.byte	0xbd
	.long	0x18f0
	.uleb128 0xe
	.byte	0xd
	.byte	0x76
	.long	0x392
	.uleb128 0xe
	.byte	0xd
	.byte	0x77
	.long	0x3c9
	.uleb128 0xe
	.byte	0xd
	.byte	0x7b
	.long	0x1927
	.uleb128 0xe
	.byte	0xd
	.byte	0x81
	.long	0x1940
	.uleb128 0xe
	.byte	0xd
	.byte	0x82
	.long	0x1957
	.uleb128 0xe
	.byte	0xd
	.byte	0x83
	.long	0x196e
	.uleb128 0xe
	.byte	0xd
	.byte	0x84
	.long	0x1985
	.uleb128 0xe
	.byte	0xd
	.byte	0x86
	.long	0x19d4
	.uleb128 0xe
	.byte	0xd
	.byte	0x89
	.long	0x19ef
	.uleb128 0xe
	.byte	0xd
	.byte	0x8b
	.long	0x1a08
	.uleb128 0xe
	.byte	0xd
	.byte	0x8e
	.long	0x1a24
	.uleb128 0xe
	.byte	0xd
	.byte	0x8f
	.long	0x1a41
	.uleb128 0xe
	.byte	0xd
	.byte	0x90
	.long	0x1a66
	.uleb128 0xe
	.byte	0xd
	.byte	0x92
	.long	0x1a89
	.uleb128 0xe
	.byte	0xd
	.byte	0x98
	.long	0x1aac
	.uleb128 0xe
	.byte	0xd
	.byte	0x9a
	.long	0x1ab9
	.uleb128 0xe
	.byte	0xd
	.byte	0x9b
	.long	0x1acd
	.uleb128 0xe
	.byte	0xd
	.byte	0x9c
	.long	0x1af1
	.uleb128 0xe
	.byte	0xd
	.byte	0x9d
	.long	0x1b14
	.uleb128 0xe
	.byte	0xd
	.byte	0x9e
	.long	0x1b38
	.uleb128 0xe
	.byte	0xd
	.byte	0xa0
	.long	0x1b51
	.uleb128 0xe
	.byte	0xd
	.byte	0xa1
	.long	0x1b76
	.uleb128 0xe
	.byte	0xd
	.byte	0xf1
	.long	0x439
	.uleb128 0xe
	.byte	0xd
	.byte	0xf6
	.long	0xfb6
	.uleb128 0xe
	.byte	0xd
	.byte	0xf7
	.long	0x1b94
	.uleb128 0xe
	.byte	0xd
	.byte	0xf9
	.long	0x1bb1
	.uleb128 0xe
	.byte	0xd
	.byte	0xfa
	.long	0x1c12
	.uleb128 0xe
	.byte	0xd
	.byte	0xfb
	.long	0x1bc9
	.uleb128 0xe
	.byte	0xd
	.byte	0xfc
	.long	0x1bed
	.uleb128 0xe
	.byte	0xd
	.byte	0xfd
	.long	0x1c30
	.uleb128 0xe
	.byte	0xe
	.byte	0x52
	.long	0x1c4f
	.uleb128 0xe
	.byte	0xe
	.byte	0x55
	.long	0x1c6d
	.uleb128 0xe
	.byte	0xe
	.byte	0x5b
	.long	0x1c87
	.uleb128 0xe
	.byte	0xe
	.byte	0x5c
	.long	0x1ca4
	.uleb128 0xe
	.byte	0xf
	.byte	0x3c
	.long	0x1cc7
	.uleb128 0xe
	.byte	0xf
	.byte	0x3d
	.long	0x15c
	.uleb128 0xe
	.byte	0xf
	.byte	0x3e
	.long	0x1cd6
	.uleb128 0xe
	.byte	0xf
	.byte	0x40
	.long	0x1d70
	.uleb128 0xe
	.byte	0xf
	.byte	0x41
	.long	0x1d7d
	.uleb128 0xe
	.byte	0xf
	.byte	0x42
	.long	0x1d9c
	.uleb128 0xe
	.byte	0xf
	.byte	0x43
	.long	0x1dba
	.uleb128 0xe
	.byte	0xf
	.byte	0x44
	.long	0x1dd6
	.uleb128 0xe
	.byte	0xf
	.byte	0x45
	.long	0x1dfa
	.uleb128 0xe
	.byte	0xf
	.byte	0x46
	.long	0x1e1c
	.uleb128 0xe
	.byte	0xf
	.byte	0x47
	.long	0x1e34
	.uleb128 0xe
	.byte	0xf
	.byte	0x48
	.long	0x1e4f
	.uleb128 0xf
	.ascii "__debug\0"
	.byte	0x14
	.byte	0x30
	.uleb128 0x10
	.ascii "nothrow_t\0"
	.byte	0x1
	.byte	0x24
	.byte	0x63
	.uleb128 0x2
	.ascii "size_t\0"
	.byte	0x10
	.byte	0xbc
	.long	0xd5
	.uleb128 0x2
	.ascii "ptrdiff_t\0"
	.byte	0x10
	.byte	0xbd
	.long	0xef
	.uleb128 0xe
	.byte	0x11
	.byte	0x40
	.long	0x1eaa
	.uleb128 0xe
	.byte	0x11
	.byte	0x8b
	.long	0x100
	.uleb128 0xe
	.byte	0x11
	.byte	0x8d
	.long	0x1ebc
	.uleb128 0xe
	.byte	0x11
	.byte	0x8e
	.long	0x1ed4
	.uleb128 0xe
	.byte	0x11
	.byte	0x8f
	.long	0x1eed
	.uleb128 0xe
	.byte	0x11
	.byte	0x90
	.long	0x1f10
	.uleb128 0xe
	.byte	0x11
	.byte	0x91
	.long	0x1f2e
	.uleb128 0xe
	.byte	0x11
	.byte	0x92
	.long	0x1f4c
	.uleb128 0xe
	.byte	0x11
	.byte	0x93
	.long	0x1f69
	.uleb128 0xe
	.byte	0x11
	.byte	0x94
	.long	0x1f8a
	.uleb128 0xe
	.byte	0x11
	.byte	0x95
	.long	0x1faa
	.uleb128 0xe
	.byte	0x11
	.byte	0x96
	.long	0x1fc2
	.uleb128 0xe
	.byte	0x11
	.byte	0x97
	.long	0x1fd3
	.uleb128 0xe
	.byte	0x11
	.byte	0x98
	.long	0x1ffc
	.uleb128 0xe
	.byte	0x11
	.byte	0x99
	.long	0x2025
	.uleb128 0xe
	.byte	0x11
	.byte	0x9a
	.long	0x204a
	.uleb128 0xe
	.byte	0x11
	.byte	0x9b
	.long	0x207b
	.uleb128 0xe
	.byte	0x11
	.byte	0x9c
	.long	0x2098
	.uleb128 0xe
	.byte	0x11
	.byte	0x9e
	.long	0x20b3
	.uleb128 0xe
	.byte	0x11
	.byte	0xa0
	.long	0x20d3
	.uleb128 0xe
	.byte	0x11
	.byte	0xa1
	.long	0x20f3
	.uleb128 0xe
	.byte	0x11
	.byte	0xa2
	.long	0x2112
	.uleb128 0xe
	.byte	0x11
	.byte	0xa4
	.long	0x2138
	.uleb128 0xe
	.byte	0x11
	.byte	0xa7
	.long	0x215d
	.uleb128 0xe
	.byte	0x11
	.byte	0xaa
	.long	0x2182
	.uleb128 0xe
	.byte	0x11
	.byte	0xac
	.long	0x21a7
	.uleb128 0xe
	.byte	0x11
	.byte	0xae
	.long	0x21c7
	.uleb128 0xe
	.byte	0x11
	.byte	0xb0
	.long	0x21e6
	.uleb128 0xe
	.byte	0x11
	.byte	0xb1
	.long	0x220a
	.uleb128 0xe
	.byte	0x11
	.byte	0xb2
	.long	0x2227
	.uleb128 0xe
	.byte	0x11
	.byte	0xb3
	.long	0x2244
	.uleb128 0xe
	.byte	0x11
	.byte	0xb4
	.long	0x2262
	.uleb128 0xe
	.byte	0x11
	.byte	0xb5
	.long	0x227f
	.uleb128 0xe
	.byte	0x11
	.byte	0xb6
	.long	0x229d
	.uleb128 0xe
	.byte	0x11
	.byte	0xb7
	.long	0x22c6
	.uleb128 0xe
	.byte	0x11
	.byte	0xb8
	.long	0x22de
	.uleb128 0xe
	.byte	0x11
	.byte	0xb9
	.long	0x2301
	.uleb128 0xe
	.byte	0x11
	.byte	0xba
	.long	0x2324
	.uleb128 0xe
	.byte	0x11
	.byte	0xbb
	.long	0x2347
	.uleb128 0xe
	.byte	0x11
	.byte	0xbc
	.long	0x2378
	.uleb128 0xe
	.byte	0x11
	.byte	0xbd
	.long	0x2395
	.uleb128 0xe
	.byte	0x11
	.byte	0xbf
	.long	0x23b9
	.uleb128 0xe
	.byte	0x11
	.byte	0xc1
	.long	0x23d7
	.uleb128 0xe
	.byte	0x11
	.byte	0xc2
	.long	0x23f4
	.uleb128 0xe
	.byte	0x11
	.byte	0xc3
	.long	0x2417
	.uleb128 0xe
	.byte	0x11
	.byte	0xc4
	.long	0x243b
	.uleb128 0xe
	.byte	0x11
	.byte	0xc5
	.long	0x245e
	.uleb128 0xe
	.byte	0x11
	.byte	0xc6
	.long	0x2476
	.uleb128 0xe
	.byte	0x11
	.byte	0xc7
	.long	0x249a
	.uleb128 0xe
	.byte	0x11
	.byte	0xc8
	.long	0x24be
	.uleb128 0xe
	.byte	0x11
	.byte	0xc9
	.long	0x24e3
	.uleb128 0xe
	.byte	0x11
	.byte	0xca
	.long	0x2507
	.uleb128 0xe
	.byte	0x11
	.byte	0xcb
	.long	0x2522
	.uleb128 0xe
	.byte	0x11
	.byte	0xcc
	.long	0x253c
	.uleb128 0xe
	.byte	0x11
	.byte	0xcd
	.long	0x2559
	.uleb128 0xe
	.byte	0x11
	.byte	0xce
	.long	0x2577
	.uleb128 0xe
	.byte	0x11
	.byte	0xcf
	.long	0x2595
	.uleb128 0xe
	.byte	0x11
	.byte	0xd0
	.long	0x25b2
	.uleb128 0x11
	.byte	0x11
	.word	0x108
	.long	0x25d6
	.uleb128 0x11
	.byte	0x11
	.word	0x109
	.long	0x25f5
	.uleb128 0x11
	.byte	0x11
	.word	0x10a
	.long	0x2619
	.uleb128 0x12
	.ascii "_Ios_Fmtflags\0"
	.byte	0x4
	.byte	0x12
	.byte	0x33
	.long	0xaa9
	.uleb128 0x13
	.ascii "_S_boolalpha\0"
	.sleb128 1
	.uleb128 0x13
	.ascii "_S_dec\0"
	.sleb128 2
	.uleb128 0x13
	.ascii "_S_fixed\0"
	.sleb128 4
	.uleb128 0x13
	.ascii "_S_hex\0"
	.sleb128 8
	.uleb128 0x13
	.ascii "_S_internal\0"
	.sleb128 16
	.uleb128 0x13
	.ascii "_S_left\0"
	.sleb128 32
	.uleb128 0x13
	.ascii "_S_oct\0"
	.sleb128 64
	.uleb128 0x13
	.ascii "_S_right\0"
	.sleb128 128
	.uleb128 0x13
	.ascii "_S_scientific\0"
	.sleb128 256
	.uleb128 0x13
	.ascii "_S_showbase\0"
	.sleb128 512
	.uleb128 0x13
	.ascii "_S_showpoint\0"
	.sleb128 1024
	.uleb128 0x13
	.ascii "_S_showpos\0"
	.sleb128 2048
	.uleb128 0x13
	.ascii "_S_skipws\0"
	.sleb128 4096
	.uleb128 0x13
	.ascii "_S_unitbuf\0"
	.sleb128 8192
	.uleb128 0x13
	.ascii "_S_uppercase\0"
	.sleb128 16384
	.uleb128 0x13
	.ascii "_S_adjustfield\0"
	.sleb128 176
	.uleb128 0x13
	.ascii "_S_basefield\0"
	.sleb128 74
	.uleb128 0x13
	.ascii "_S_floatfield\0"
	.sleb128 260
	.uleb128 0x13
	.ascii "_S_ios_fmtflags_end\0"
	.sleb128 65536
	.byte	0
	.uleb128 0x12
	.ascii "_Ios_Openmode\0"
	.byte	0x4
	.byte	0x12
	.byte	0x67
	.long	0xb0f
	.uleb128 0x13
	.ascii "_S_app\0"
	.sleb128 1
	.uleb128 0x13
	.ascii "_S_ate\0"
	.sleb128 2
	.uleb128 0x13
	.ascii "_S_bin\0"
	.sleb128 4
	.uleb128 0x13
	.ascii "_S_in\0"
	.sleb128 8
	.uleb128 0x13
	.ascii "_S_out\0"
	.sleb128 16
	.uleb128 0x13
	.ascii "_S_trunc\0"
	.sleb128 32
	.uleb128 0x13
	.ascii "_S_ios_openmode_end\0"
	.sleb128 65536
	.byte	0
	.uleb128 0x12
	.ascii "_Ios_Iostate\0"
	.byte	0x4
	.byte	0x12
	.byte	0x8f
	.long	0xb6e
	.uleb128 0x13
	.ascii "_S_goodbit\0"
	.sleb128 0
	.uleb128 0x13
	.ascii "_S_badbit\0"
	.sleb128 1
	.uleb128 0x13
	.ascii "_S_eofbit\0"
	.sleb128 2
	.uleb128 0x13
	.ascii "_S_failbit\0"
	.sleb128 4
	.uleb128 0x13
	.ascii "_S_ios_iostate_end\0"
	.sleb128 65536
	.byte	0
	.uleb128 0x12
	.ascii "_Ios_Seekdir\0"
	.byte	0x4
	.byte	0x12
	.byte	0xb5
	.long	0xbb6
	.uleb128 0x13
	.ascii "_S_beg\0"
	.sleb128 0
	.uleb128 0x13
	.ascii "_S_cur\0"
	.sleb128 1
	.uleb128 0x13
	.ascii "_S_end\0"
	.sleb128 2
	.uleb128 0x13
	.ascii "_S_ios_seekdir_end\0"
	.sleb128 65536
	.byte	0
	.uleb128 0x14
	.ascii "ios_base\0"
	.long	0xea5
	.uleb128 0x15
	.ascii "Init\0"
	.byte	0x1
	.byte	0x12
	.word	0x215
	.byte	0x1
	.long	0xc37
	.uleb128 0x16
	.ascii "_S_refcount\0"
	.byte	0x12
	.word	0x21d
	.long	0x263e
	.uleb128 0x16
	.ascii "_S_synced_with_stdio\0"
	.byte	0x12
	.word	0x21e
	.long	0x1e9d
	.uleb128 0x17
	.ascii "Init\0"
	.byte	0x12
	.word	0x219
	.byte	0x1
	.long	0xc16
	.long	0xc1c
	.uleb128 0x18
	.long	0x2657
	.byte	0
	.uleb128 0x19
	.ascii "~Init\0"
	.byte	0x12
	.word	0x21a
	.byte	0x1
	.long	0xc2b
	.uleb128 0x18
	.long	0x2657
	.uleb128 0x18
	.long	0x136
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii "openmode\0"
	.byte	0x12
	.word	0x169
	.long	0xaa9
	.byte	0x1
	.uleb128 0x1a
	.ascii "seekdir\0"
	.byte	0x12
	.word	0x189
	.long	0xb6e
	.byte	0x1
	.uleb128 0x1b
	.ascii "fmtflags\0"
	.byte	0x12
	.byte	0xff
	.long	0x982
	.byte	0x1
	.uleb128 0x1c
	.ascii "boolalpha\0"
	.byte	0x12
	.word	0x102
	.long	0xc7f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xc5a
	.uleb128 0x1c
	.ascii "dec\0"
	.byte	0x12
	.word	0x105
	.long	0xc7f
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.ascii "fixed\0"
	.byte	0x12
	.word	0x108
	.long	0xc7f
	.byte	0x1
	.byte	0x4
	.uleb128 0x1c
	.ascii "hex\0"
	.byte	0x12
	.word	0x10b
	.long	0xc7f
	.byte	0x1
	.byte	0x8
	.uleb128 0x1c
	.ascii "internal\0"
	.byte	0x12
	.word	0x110
	.long	0xc7f
	.byte	0x1
	.byte	0x10
	.uleb128 0x1c
	.ascii "left\0"
	.byte	0x12
	.word	0x114
	.long	0xc7f
	.byte	0x1
	.byte	0x20
	.uleb128 0x1c
	.ascii "oct\0"
	.byte	0x12
	.word	0x117
	.long	0xc7f
	.byte	0x1
	.byte	0x40
	.uleb128 0x1c
	.ascii "right\0"
	.byte	0x12
	.word	0x11b
	.long	0xc7f
	.byte	0x1
	.byte	0x80
	.uleb128 0x1d
	.ascii "scientific\0"
	.byte	0x12
	.word	0x11e
	.long	0xc7f
	.byte	0x1
	.word	0x100
	.uleb128 0x1d
	.ascii "showbase\0"
	.byte	0x12
	.word	0x122
	.long	0xc7f
	.byte	0x1
	.word	0x200
	.uleb128 0x1d
	.ascii "showpoint\0"
	.byte	0x12
	.word	0x126
	.long	0xc7f
	.byte	0x1
	.word	0x400
	.uleb128 0x1d
	.ascii "showpos\0"
	.byte	0x12
	.word	0x129
	.long	0xc7f
	.byte	0x1
	.word	0x800
	.uleb128 0x1d
	.ascii "skipws\0"
	.byte	0x12
	.word	0x12c
	.long	0xc7f
	.byte	0x1
	.word	0x1000
	.uleb128 0x1d
	.ascii "unitbuf\0"
	.byte	0x12
	.word	0x12f
	.long	0xc7f
	.byte	0x1
	.word	0x2000
	.uleb128 0x1d
	.ascii "uppercase\0"
	.byte	0x12
	.word	0x133
	.long	0xc7f
	.byte	0x1
	.word	0x4000
	.uleb128 0x1c
	.ascii "adjustfield\0"
	.byte	0x12
	.word	0x136
	.long	0xc7f
	.byte	0x1
	.byte	0xb0
	.uleb128 0x1c
	.ascii "basefield\0"
	.byte	0x12
	.word	0x139
	.long	0xc7f
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1d
	.ascii "floatfield\0"
	.byte	0x12
	.word	0x13c
	.long	0xc7f
	.byte	0x1
	.word	0x104
	.uleb128 0x1a
	.ascii "iostate\0"
	.byte	0x12
	.word	0x14a
	.long	0xb0f
	.byte	0x1
	.uleb128 0x1c
	.ascii "badbit\0"
	.byte	0x12
	.word	0x14e
	.long	0xdde
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xdbc
	.uleb128 0x1c
	.ascii "eofbit\0"
	.byte	0x12
	.word	0x151
	.long	0xdde
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.ascii "failbit\0"
	.byte	0x12
	.word	0x156
	.long	0xdde
	.byte	0x1
	.byte	0x4
	.uleb128 0x1c
	.ascii "goodbit\0"
	.byte	0x12
	.word	0x159
	.long	0xdde
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.ascii "app\0"
	.byte	0x12
	.word	0x16c
	.long	0xe26
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xc37
	.uleb128 0x1c
	.ascii "ate\0"
	.byte	0x12
	.word	0x16f
	.long	0xe26
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.ascii "binary\0"
	.byte	0x12
	.word	0x174
	.long	0xe26
	.byte	0x1
	.byte	0x4
	.uleb128 0x1c
	.ascii "in\0"
	.byte	0x12
	.word	0x177
	.long	0xe26
	.byte	0x1
	.byte	0x8
	.uleb128 0x1c
	.ascii "out\0"
	.byte	0x12
	.word	0x17a
	.long	0xe26
	.byte	0x1
	.byte	0x10
	.uleb128 0x1c
	.ascii "trunc\0"
	.byte	0x12
	.word	0x17d
	.long	0xe26
	.byte	0x1
	.byte	0x20
	.uleb128 0x1c
	.ascii "beg\0"
	.byte	0x12
	.word	0x18c
	.long	0xe83
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0xc49
	.uleb128 0x1c
	.ascii "cur\0"
	.byte	0x12
	.word	0x18f
	.long	0xe83
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii "end\0"
	.byte	0x12
	.word	0x192
	.long	0xe83
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x13
	.byte	0x52
	.long	0x265d
	.uleb128 0xe
	.byte	0x13
	.byte	0x53
	.long	0x125
	.uleb128 0xe
	.byte	0x13
	.byte	0x54
	.long	0x100
	.uleb128 0xe
	.byte	0x13
	.byte	0x5c
	.long	0x266e
	.uleb128 0xe
	.byte	0x13
	.byte	0x65
	.long	0x268d
	.uleb128 0xe
	.byte	0x13
	.byte	0x68
	.long	0x26ad
	.uleb128 0xe
	.byte	0x13
	.byte	0x69
	.long	0x26c6
	.uleb128 0xf
	.ascii "__detail\0"
	.byte	0x15
	.byte	0x43
	.uleb128 0x1e
	.ascii "nothrow\0"
	.byte	0x24
	.byte	0x65
	.ascii "_ZSt7nothrow\0"
	.long	0xefe
	.uleb128 0xa
	.long	0x7a7
	.uleb128 0x1f
	.ascii "__ioinit\0"
	.byte	0x3
	.byte	0x4a
	.long	0xbc4
	.byte	0
	.uleb128 0x20
	.ascii "setlocale\0"
	.byte	0x6
	.byte	0x50
	.long	0x16b
	.long	0xf34
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf3a
	.uleb128 0xa
	.long	0xaf
	.uleb128 0x22
	.ascii "localeconv\0"
	.byte	0x6
	.byte	0x51
	.long	0x352
	.uleb128 0xd
	.ascii "__gnu_cxx\0"
	.byte	0x17
	.byte	0x45
	.long	0x11fb
	.uleb128 0xe
	.byte	0xc
	.byte	0xaf
	.long	0x180e
	.uleb128 0xe
	.byte	0xc
	.byte	0xb0
	.long	0x1847
	.uleb128 0xe
	.byte	0xc
	.byte	0xb1
	.long	0x1883
	.uleb128 0xe
	.byte	0xc
	.byte	0xb2
	.long	0x18b0
	.uleb128 0xe
	.byte	0xc
	.byte	0xb3
	.long	0x18f0
	.uleb128 0xe
	.byte	0xd
	.byte	0xc9
	.long	0x439
	.uleb128 0xe
	.byte	0xd
	.byte	0xd9
	.long	0x1b94
	.uleb128 0xe
	.byte	0xd
	.byte	0xe4
	.long	0x1bb1
	.uleb128 0xe
	.byte	0xd
	.byte	0xe5
	.long	0x1bc9
	.uleb128 0xe
	.byte	0xd
	.byte	0xe6
	.long	0x1bed
	.uleb128 0xe
	.byte	0xd
	.byte	0xe8
	.long	0x1c12
	.uleb128 0xe
	.byte	0xd
	.byte	0xe9
	.long	0x1c30
	.uleb128 0x23
	.ascii "div\0"
	.byte	0xd
	.byte	0xd6
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x439
	.long	0xfe5
	.uleb128 0x21
	.long	0xef
	.uleb128 0x21
	.long	0xef
	.byte	0
	.uleb128 0xf
	.ascii "__ops\0"
	.byte	0x18
	.byte	0x24
	.uleb128 0xe
	.byte	0x19
	.byte	0x2c
	.long	0x7b5
	.uleb128 0xe
	.byte	0x19
	.byte	0x2d
	.long	0x7c3
	.uleb128 0x7
	.ascii "__numeric_traits_integer<long long int>\0"
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.long	0x1062
	.uleb128 0x24
	.secrel32	.LASF0
	.byte	0x1a
	.byte	0x3a
	.long	0x1e93
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x1a
	.byte	0x3b
	.long	0x1e93
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x1a
	.byte	0x3f
	.long	0x1e98
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x1a
	.byte	0x40
	.long	0x1ea5
	.uleb128 0x25
	.secrel32	.LASF4
	.long	0xef
	.byte	0
	.uleb128 0xe
	.byte	0x11
	.byte	0xf8
	.long	0x25d6
	.uleb128 0x11
	.byte	0x11
	.word	0x101
	.long	0x25f5
	.uleb128 0x11
	.byte	0x11
	.word	0x102
	.long	0x2619
	.uleb128 0x7
	.ascii "__numeric_traits_integer<int>\0"
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.long	0x10d5
	.uleb128 0x24
	.secrel32	.LASF0
	.byte	0x1a
	.byte	0x3a
	.long	0x1ea5
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x1a
	.byte	0x3b
	.long	0x1ea5
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x1a
	.byte	0x3f
	.long	0x1e98
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x1a
	.byte	0x40
	.long	0x1ea5
	.uleb128 0x25
	.secrel32	.LASF4
	.long	0x136
	.byte	0
	.uleb128 0x7
	.ascii "__numeric_traits_integer<long unsigned int>\0"
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.long	0x113f
	.uleb128 0x24
	.secrel32	.LASF0
	.byte	0x1a
	.byte	0x3a
	.long	0x2652
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x1a
	.byte	0x3b
	.long	0x2652
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x1a
	.byte	0x3f
	.long	0x1e98
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x1a
	.byte	0x40
	.long	0x1ea5
	.uleb128 0x25
	.secrel32	.LASF4
	.long	0x19e
	.byte	0
	.uleb128 0x7
	.ascii "__numeric_traits_integer<char>\0"
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.long	0x119c
	.uleb128 0x24
	.secrel32	.LASF0
	.byte	0x1a
	.byte	0x3a
	.long	0xf3a
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x1a
	.byte	0x3b
	.long	0xf3a
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x1a
	.byte	0x3f
	.long	0x1e98
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x1a
	.byte	0x40
	.long	0x1ea5
	.uleb128 0x25
	.secrel32	.LASF4
	.long	0xaf
	.byte	0
	.uleb128 0x26
	.ascii "__numeric_traits_integer<short int>\0"
	.byte	0x1
	.byte	0x1a
	.byte	0x37
	.uleb128 0x24
	.secrel32	.LASF0
	.byte	0x1a
	.byte	0x3a
	.long	0x26de
	.uleb128 0x24
	.secrel32	.LASF1
	.byte	0x1a
	.byte	0x3b
	.long	0x26de
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x1a
	.byte	0x3f
	.long	0x1e98
	.uleb128 0x24
	.secrel32	.LASF3
	.byte	0x1a
	.byte	0x40
	.long	0x1ea5
	.uleb128 0x25
	.secrel32	.LASF4
	.long	0x120a
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x7
	.ascii "_SETJMP_FLOAT128\0"
	.byte	0x10
	.byte	0x1b
	.byte	0x70
	.long	0x123e
	.uleb128 0x8
	.ascii "Part\0"
	.byte	0x1b
	.byte	0x71
	.long	0x123e
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0xd5
	.long	0x124e
	.uleb128 0x28
	.long	0x192
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.ascii "SETJMP_FLOAT128\0"
	.byte	0x1b
	.byte	0x72
	.long	0x1217
	.uleb128 0x2
	.ascii "_JBTYPE\0"
	.byte	0x1b
	.byte	0x75
	.long	0x124e
	.uleb128 0x2
	.ascii "jmp_buf\0"
	.byte	0x1b
	.byte	0x93
	.long	0x1283
	.uleb128 0x27
	.long	0x1217
	.long	0x1293
	.uleb128 0x28
	.long	0x192
	.byte	0xf
	.byte	0
	.uleb128 0x29
	.ascii "longjmp\0"
	.byte	0x1b
	.byte	0xc1
	.long	0x12ad
	.uleb128 0x21
	.long	0x12ad
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1265
	.uleb128 0x2
	.ascii "sig_atomic_t\0"
	.byte	0x1c
	.byte	0x12
	.long	0x136
	.uleb128 0x2
	.ascii "__p_sig_fn_t\0"
	.byte	0x1c
	.byte	0x30
	.long	0x12db
	.uleb128 0x6
	.byte	0x8
	.long	0x12e1
	.uleb128 0x2a
	.long	0x12ec
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x20
	.ascii "signal\0"
	.byte	0x1c
	.byte	0x3c
	.long	0x12c7
	.long	0x1309
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0x12c7
	.byte	0
	.uleb128 0x20
	.ascii "raise\0"
	.byte	0x1c
	.byte	0x3d
	.long	0x136
	.long	0x1320
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2b
	.ascii "clearerr\0"
	.byte	0x1
	.word	0x1ab
	.long	0x1337
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d0
	.uleb128 0x2c
	.ascii "fclose\0"
	.byte	0x1
	.word	0x1ac
	.long	0x136
	.long	0x1356
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "feof\0"
	.byte	0x1
	.word	0x1b3
	.long	0x136
	.long	0x136d
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "ferror\0"
	.byte	0x1
	.word	0x1b4
	.long	0x136
	.long	0x1386
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fflush\0"
	.byte	0x1
	.word	0x1b5
	.long	0x136
	.long	0x139f
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fgetc\0"
	.byte	0x1
	.word	0x1b6
	.long	0x136
	.long	0x13b7
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fgetpos\0"
	.byte	0x1
	.word	0x1b8
	.long	0x136
	.long	0x13d6
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x13d6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4dc
	.uleb128 0x2c
	.ascii "fgets\0"
	.byte	0x1
	.word	0x1ba
	.long	0x16b
	.long	0x13fe
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fopen\0"
	.byte	0x1
	.word	0x1c1
	.long	0x1337
	.long	0x141b
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2d
	.ascii "fprintf\0"
	.byte	0x1
	.word	0x11d
	.ascii "_Z7fprintfP6_iobufPKcz\0"
	.long	0x136
	.long	0x1452
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "fread\0"
	.byte	0x1
	.word	0x1c6
	.long	0xc6
	.long	0x1479
	.uleb128 0x21
	.long	0x1479
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2f
	.byte	0x8
	.uleb128 0x2c
	.ascii "freopen\0"
	.byte	0x1
	.word	0x1c7
	.long	0x1337
	.long	0x149f
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x23
	.ascii "fscanf\0"
	.byte	0x1
	.byte	0xf9
	.ascii "_Z6fscanfP6_iobufPKcz\0"
	.long	0x136
	.long	0x14d3
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "fseek\0"
	.byte	0x1
	.word	0x1ca
	.long	0x136
	.long	0x14f5
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x13d
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "fsetpos\0"
	.byte	0x1
	.word	0x1c8
	.long	0x136
	.long	0x1514
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x1514
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x151a
	.uleb128 0xa
	.long	0x4dc
	.uleb128 0x2c
	.ascii "ftell\0"
	.byte	0x1
	.word	0x1d8
	.long	0x13d
	.long	0x1537
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "getc\0"
	.byte	0x1
	.word	0x1e7
	.long	0x136
	.long	0x154e
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x30
	.ascii "getchar\0"
	.byte	0x1
	.word	0x1e8
	.long	0x136
	.uleb128 0x2c
	.ascii "gets\0"
	.byte	0x1
	.word	0x1ea
	.long	0x16b
	.long	0x1575
	.uleb128 0x21
	.long	0x16b
	.byte	0
	.uleb128 0x2b
	.ascii "perror\0"
	.byte	0x7
	.word	0x222
	.long	0x158a
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2d
	.ascii "printf\0"
	.byte	0x1
	.word	0x128
	.ascii "_Z6printfPKcz\0"
	.long	0x136
	.long	0x15b2
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "remove\0"
	.byte	0x1
	.word	0x1fc
	.long	0x136
	.long	0x15cb
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "rename\0"
	.byte	0x1
	.word	0x1fd
	.long	0x136
	.long	0x15e9
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2b
	.ascii "rewind\0"
	.byte	0x1
	.word	0x203
	.long	0x15fe
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x31
	.ascii "scanf\0"
	.byte	0x1
	.byte	0xee
	.ascii "_Z5scanfPKcz\0"
	.long	0x136
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x167f
	.uleb128 0x2e
	.uleb128 0x32
	.ascii "__format\0"
	.byte	0x1
	.byte	0xee
	.long	0xf34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x33
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x34
	.ascii "__retval\0"
	.byte	0x1
	.byte	0xf0
	.long	0x136
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x34
	.ascii "__local_argv\0"
	.byte	0x1
	.byte	0xf1
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2b
	.ascii "setbuf\0"
	.byte	0x1
	.word	0x205
	.long	0x1699
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x16b
	.byte	0
	.uleb128 0x2c
	.ascii "setvbuf\0"
	.byte	0x1
	.word	0x209
	.long	0x136
	.long	0x16c2
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2d
	.ascii "sprintf\0"
	.byte	0x1
	.word	0x133
	.ascii "_Z7sprintfPcPKcz\0"
	.long	0x136
	.long	0x16f3
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x23
	.ascii "sscanf\0"
	.byte	0x1
	.byte	0xe3
	.ascii "_Z6sscanfPKcS0_z\0"
	.long	0x136
	.long	0x1722
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x30
	.ascii "tmpfile\0"
	.byte	0x1
	.word	0x20c
	.long	0x1337
	.uleb128 0x2c
	.ascii "tmpnam\0"
	.byte	0x1
	.word	0x20d
	.long	0x16b
	.long	0x174b
	.uleb128 0x21
	.long	0x16b
	.byte	0
	.uleb128 0x2c
	.ascii "ungetc\0"
	.byte	0x1
	.word	0x20e
	.long	0x136
	.long	0x1769
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2d
	.ascii "vfprintf\0"
	.byte	0x1
	.word	0x13e
	.ascii "_Z8vfprintfP6_iobufPKcPc\0"
	.long	0x136
	.long	0x17a7
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "vprintf\0"
	.byte	0x1
	.word	0x145
	.ascii "_Z7vprintfPKcPc\0"
	.long	0x136
	.long	0x17d6
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "vsprintf\0"
	.byte	0x1
	.word	0x14c
	.ascii "_Z8vsprintfPcPKcS_\0"
	.long	0x136
	.long	0x180e
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "snprintf\0"
	.byte	0x1
	.word	0x153
	.ascii "_Z8snprintfPcyPKcz\0"
	.long	0x136
	.long	0x1847
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2d
	.ascii "vfscanf\0"
	.byte	0x1
	.word	0x113
	.ascii "_Z7vfscanfP6_iobufPKcPc\0"
	.long	0x136
	.long	0x1883
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "vscanf\0"
	.byte	0x1
	.word	0x10c
	.ascii "_Z6vscanfPKcPc\0"
	.long	0x136
	.long	0x18b0
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "vsnprintf\0"
	.byte	0x1
	.word	0x15e
	.ascii "_Z9vsnprintfPcyPKcS_\0"
	.long	0x136
	.long	0x18f0
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2d
	.ascii "vsscanf\0"
	.byte	0x1
	.word	0x105
	.ascii "_Z7vsscanfPKcS0_Pc\0"
	.long	0x136
	.long	0x1927
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "atexit\0"
	.byte	0x7
	.word	0x154
	.long	0x136
	.long	0x1940
	.uleb128 0x21
	.long	0x3f9
	.byte	0
	.uleb128 0x2c
	.ascii "atof\0"
	.byte	0x7
	.word	0x157
	.long	0x3d7
	.long	0x1957
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "atoi\0"
	.byte	0x7
	.word	0x15a
	.long	0x136
	.long	0x196e
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "atol\0"
	.byte	0x7
	.word	0x15c
	.long	0x13d
	.long	0x1985
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "bsearch\0"
	.byte	0x7
	.word	0x160
	.long	0x1479
	.long	0x19b3
	.uleb128 0x21
	.long	0x19b3
	.uleb128 0x21
	.long	0x19b3
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x19ba
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19b9
	.uleb128 0x35
	.uleb128 0x6
	.byte	0x8
	.long	0x19c0
	.uleb128 0x36
	.long	0x136
	.long	0x19d4
	.uleb128 0x21
	.long	0x19b3
	.uleb128 0x21
	.long	0x19b3
	.byte	0
	.uleb128 0x2c
	.ascii "div\0"
	.byte	0x7
	.word	0x166
	.long	0x392
	.long	0x19ef
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "getenv\0"
	.byte	0x7
	.word	0x167
	.long	0x16b
	.long	0x1a08
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "ldiv\0"
	.byte	0x7
	.word	0x171
	.long	0x3c9
	.long	0x1a24
	.uleb128 0x21
	.long	0x13d
	.uleb128 0x21
	.long	0x13d
	.byte	0
	.uleb128 0x2c
	.ascii "mblen\0"
	.byte	0x7
	.word	0x173
	.long	0x136
	.long	0x1a41
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "mbstowcs\0"
	.byte	0x7
	.word	0x17b
	.long	0xc6
	.long	0x1a66
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "mbtowc\0"
	.byte	0x7
	.word	0x179
	.long	0x136
	.long	0x1a89
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2b
	.ascii "qsort\0"
	.byte	0x7
	.word	0x161
	.long	0x1aac
	.uleb128 0x21
	.long	0x1479
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x19ba
	.byte	0
	.uleb128 0x30
	.ascii "rand\0"
	.byte	0x7
	.word	0x17d
	.long	0x136
	.uleb128 0x2b
	.ascii "srand\0"
	.byte	0x7
	.word	0x17f
	.long	0x1acd
	.uleb128 0x21
	.long	0x182
	.byte	0
	.uleb128 0x2c
	.ascii "strtod\0"
	.byte	0x7
	.word	0x194
	.long	0x3d7
	.long	0x1aeb
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16b
	.uleb128 0x2c
	.ascii "strtol\0"
	.byte	0x7
	.word	0x1a5
	.long	0x13d
	.long	0x1b14
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "strtoul\0"
	.byte	0x7
	.word	0x1a7
	.long	0x19e
	.long	0x1b38
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "system\0"
	.byte	0x7
	.word	0x1ab
	.long	0x136
	.long	0x1b51
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "wcstombs\0"
	.byte	0x7
	.word	0x1b0
	.long	0xc6
	.long	0x1b76
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wctomb\0"
	.byte	0x7
	.word	0x1ae
	.long	0x136
	.long	0x1b94
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x177
	.byte	0
	.uleb128 0x2c
	.ascii "lldiv\0"
	.byte	0x7
	.word	0x274
	.long	0x439
	.long	0x1bb1
	.uleb128 0x21
	.long	0xef
	.uleb128 0x21
	.long	0xef
	.byte	0
	.uleb128 0x2c
	.ascii "atoll\0"
	.byte	0x7
	.word	0x27f
	.long	0xef
	.long	0x1bc9
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x2c
	.ascii "strtoll\0"
	.byte	0x7
	.word	0x27b
	.long	0xef
	.long	0x1bed
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "strtoull\0"
	.byte	0x7
	.word	0x27c
	.long	0xd5
	.long	0x1c12
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "strtof\0"
	.byte	0x7
	.word	0x195
	.long	0x3e1
	.long	0x1c30
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.byte	0
	.uleb128 0x2c
	.ascii "strtold\0"
	.byte	0x7
	.word	0x197
	.long	0x3ea
	.long	0x1c4f
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1aeb
	.byte	0
	.uleb128 0x20
	.ascii "strcoll\0"
	.byte	0x1d
	.byte	0x3e
	.long	0x136
	.long	0x1c6d
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x20
	.ascii "strerror\0"
	.byte	0x1d
	.byte	0x48
	.long	0x16b
	.long	0x1c87
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x20
	.ascii "strtok\0"
	.byte	0x1d
	.byte	0x57
	.long	0x16b
	.long	0x1ca4
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x20
	.ascii "strxfrm\0"
	.byte	0x1d
	.byte	0x5e
	.long	0xc6
	.long	0x1cc7
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2
	.ascii "clock_t\0"
	.byte	0x1e
	.byte	0x33
	.long	0x13d
	.uleb128 0x7
	.ascii "tm\0"
	.byte	0x24
	.byte	0x1e
	.byte	0x58
	.long	0x1d70
	.uleb128 0x8
	.ascii "tm_sec\0"
	.byte	0x1e
	.byte	0x59
	.long	0x136
	.byte	0
	.uleb128 0x8
	.ascii "tm_min\0"
	.byte	0x1e
	.byte	0x5a
	.long	0x136
	.byte	0x4
	.uleb128 0x8
	.ascii "tm_hour\0"
	.byte	0x1e
	.byte	0x5b
	.long	0x136
	.byte	0x8
	.uleb128 0x8
	.ascii "tm_mday\0"
	.byte	0x1e
	.byte	0x5c
	.long	0x136
	.byte	0xc
	.uleb128 0x8
	.ascii "tm_mon\0"
	.byte	0x1e
	.byte	0x5d
	.long	0x136
	.byte	0x10
	.uleb128 0x8
	.ascii "tm_year\0"
	.byte	0x1e
	.byte	0x5e
	.long	0x136
	.byte	0x14
	.uleb128 0x8
	.ascii "tm_wday\0"
	.byte	0x1e
	.byte	0x5f
	.long	0x136
	.byte	0x18
	.uleb128 0x8
	.ascii "tm_yday\0"
	.byte	0x1e
	.byte	0x60
	.long	0x136
	.byte	0x1c
	.uleb128 0x8
	.ascii "tm_isdst\0"
	.byte	0x1e
	.byte	0x61
	.long	0x136
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.ascii "clock\0"
	.byte	0x1e
	.byte	0x72
	.long	0x1cc7
	.uleb128 0x20
	.ascii "difftime\0"
	.byte	0x1e
	.byte	0xa7
	.long	0x3d7
	.long	0x1d9c
	.uleb128 0x21
	.long	0x15c
	.uleb128 0x21
	.long	0x15c
	.byte	0
	.uleb128 0x20
	.ascii "mktime\0"
	.byte	0x1e
	.byte	0xdc
	.long	0x15c
	.long	0x1db4
	.uleb128 0x21
	.long	0x1db4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cd6
	.uleb128 0x20
	.ascii "time\0"
	.byte	0x1e
	.byte	0xde
	.long	0x15c
	.long	0x1dd0
	.uleb128 0x21
	.long	0x1dd0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x15c
	.uleb128 0x20
	.ascii "asctime\0"
	.byte	0x1e
	.byte	0x70
	.long	0x16b
	.long	0x1def
	.uleb128 0x21
	.long	0x1def
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1df5
	.uleb128 0xa
	.long	0x1cd6
	.uleb128 0x20
	.ascii "ctime\0"
	.byte	0x1e
	.byte	0xa8
	.long	0x16b
	.long	0x1e11
	.uleb128 0x21
	.long	0x1e11
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e17
	.uleb128 0xa
	.long	0x15c
	.uleb128 0x20
	.ascii "gmtime\0"
	.byte	0x1e
	.byte	0xa9
	.long	0x1db4
	.long	0x1e34
	.uleb128 0x21
	.long	0x1e11
	.byte	0
	.uleb128 0x20
	.ascii "localtime\0"
	.byte	0x1e
	.byte	0xaa
	.long	0x1db4
	.long	0x1e4f
	.uleb128 0x21
	.long	0x1e11
	.byte	0
	.uleb128 0x20
	.ascii "strftime\0"
	.byte	0x1e
	.byte	0x76
	.long	0xc6
	.long	0x1e78
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0x1def
	.byte	0
	.uleb128 0xd
	.ascii "__gnu_debug\0"
	.byte	0x14
	.byte	0x37
	.long	0x1e93
	.uleb128 0x37
	.byte	0x14
	.byte	0x38
	.long	0x79c
	.byte	0
	.uleb128 0xa
	.long	0xef
	.uleb128 0xa
	.long	0x1e9d
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0xa
	.long	0x136
	.uleb128 0x5
	.ascii "mbstate_t\0"
	.byte	0x1f
	.word	0x3a4
	.long	0x136
	.uleb128 0x2c
	.ascii "btowc\0"
	.byte	0x1f
	.word	0x3a7
	.long	0x100
	.long	0x1ed4
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "fgetwc\0"
	.byte	0x1
	.word	0x303
	.long	0x100
	.long	0x1eed
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fgetws\0"
	.byte	0x1
	.word	0x30c
	.long	0x171
	.long	0x1f10
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x136
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fputwc\0"
	.byte	0x1
	.word	0x305
	.long	0x100
	.long	0x1f2e
	.uleb128 0x21
	.long	0x177
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fputws\0"
	.byte	0x1
	.word	0x30d
	.long	0x136
	.long	0x1f4c
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "fwide\0"
	.byte	0x1f
	.word	0x3b6
	.long	0x136
	.long	0x1f69
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "fwprintf\0"
	.byte	0x1
	.word	0x29d
	.long	0x136
	.long	0x1f8a
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "fwscanf\0"
	.byte	0x1
	.word	0x279
	.long	0x136
	.long	0x1faa
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "getwc\0"
	.byte	0x1
	.word	0x307
	.long	0x100
	.long	0x1fc2
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x30
	.ascii "getwchar\0"
	.byte	0x1
	.word	0x308
	.long	0x100
	.uleb128 0x2c
	.ascii "mbrlen\0"
	.byte	0x1f
	.word	0x3a8
	.long	0xc6
	.long	0x1ff6
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x1ff6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1eaa
	.uleb128 0x2c
	.ascii "mbrtowc\0"
	.byte	0x1f
	.word	0x3a9
	.long	0xc6
	.long	0x2025
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0xf34
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x1ff6
	.byte	0
	.uleb128 0x2c
	.ascii "mbsinit\0"
	.byte	0x1f
	.word	0x3b7
	.long	0x136
	.long	0x203f
	.uleb128 0x21
	.long	0x203f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2045
	.uleb128 0xa
	.long	0x1eaa
	.uleb128 0x2c
	.ascii "mbsrtowcs\0"
	.byte	0x1f
	.word	0x3aa
	.long	0xc6
	.long	0x2075
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x2075
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x1ff6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf34
	.uleb128 0x2c
	.ascii "putwc\0"
	.byte	0x1
	.word	0x309
	.long	0x100
	.long	0x2098
	.uleb128 0x21
	.long	0x177
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "putwchar\0"
	.byte	0x1
	.word	0x30a
	.long	0x100
	.long	0x20b3
	.uleb128 0x21
	.long	0x177
	.byte	0
	.uleb128 0x38
	.ascii "swprintf\0"
	.byte	0x20
	.byte	0x3a
	.long	0x136
	.long	0x20d3
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "swscanf\0"
	.byte	0x1
	.word	0x263
	.long	0x136
	.long	0x20f3
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "ungetwc\0"
	.byte	0x1
	.word	0x30b
	.long	0x100
	.long	0x2112
	.uleb128 0x21
	.long	0x100
	.uleb128 0x21
	.long	0x1337
	.byte	0
	.uleb128 0x2c
	.ascii "vfwprintf\0"
	.byte	0x1
	.word	0x2b3
	.long	0x136
	.long	0x2138
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "vfwscanf\0"
	.byte	0x1
	.word	0x293
	.long	0x136
	.long	0x215d
	.uleb128 0x21
	.long	0x1337
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x38
	.ascii "vswprintf\0"
	.byte	0x20
	.byte	0x2f
	.long	0x136
	.long	0x2182
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "vswscanf\0"
	.byte	0x1
	.word	0x285
	.long	0x136
	.long	0x21a7
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "vwprintf\0"
	.byte	0x1
	.word	0x2ba
	.long	0x136
	.long	0x21c7
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "vwscanf\0"
	.byte	0x1
	.word	0x28c
	.long	0x136
	.long	0x21e6
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x97
	.byte	0
	.uleb128 0x2c
	.ascii "wcrtomb\0"
	.byte	0x1f
	.word	0x3ab
	.long	0xc6
	.long	0x220a
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x177
	.uleb128 0x21
	.long	0x1ff6
	.byte	0
	.uleb128 0x20
	.ascii "wcscat\0"
	.byte	0x1d
	.byte	0x7a
	.long	0x171
	.long	0x2227
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcscmp\0"
	.byte	0x1d
	.byte	0x7c
	.long	0x136
	.long	0x2244
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcscoll\0"
	.byte	0x1d
	.byte	0x99
	.long	0x136
	.long	0x2262
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcscpy\0"
	.byte	0x1d
	.byte	0x7d
	.long	0x171
	.long	0x227f
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcscspn\0"
	.byte	0x1d
	.byte	0x7e
	.long	0xc6
	.long	0x229d
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcsftime\0"
	.byte	0x1e
	.byte	0x91
	.long	0xc6
	.long	0x22c6
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x1def
	.byte	0
	.uleb128 0x20
	.ascii "wcslen\0"
	.byte	0x1d
	.byte	0x7f
	.long	0xc6
	.long	0x22de
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcsncat\0"
	.byte	0x1d
	.byte	0x81
	.long	0x171
	.long	0x2301
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x20
	.ascii "wcsncmp\0"
	.byte	0x1d
	.byte	0x82
	.long	0x136
	.long	0x2324
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x20
	.ascii "wcsncpy\0"
	.byte	0x1d
	.byte	0x83
	.long	0x171
	.long	0x2347
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wcsrtombs\0"
	.byte	0x1f
	.word	0x3ac
	.long	0xc6
	.long	0x2372
	.uleb128 0x21
	.long	0x16b
	.uleb128 0x21
	.long	0x2372
	.uleb128 0x21
	.long	0xc6
	.uleb128 0x21
	.long	0x1ff6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x400
	.uleb128 0x20
	.ascii "wcsspn\0"
	.byte	0x1d
	.byte	0x87
	.long	0xc6
	.long	0x2395
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x2c
	.ascii "wcstod\0"
	.byte	0x7
	.word	0x1e2
	.long	0x3d7
	.long	0x23b3
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x171
	.uleb128 0x2c
	.ascii "wcstof\0"
	.byte	0x7
	.word	0x1e3
	.long	0x3e1
	.long	0x23d7
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.byte	0
	.uleb128 0x20
	.ascii "wcstok\0"
	.byte	0x1d
	.byte	0x89
	.long	0x171
	.long	0x23f4
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x2c
	.ascii "wcstol\0"
	.byte	0x7
	.word	0x1e9
	.long	0x13d
	.long	0x2417
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "wcstoul\0"
	.byte	0x7
	.word	0x1eb
	.long	0x19e
	.long	0x243b
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x20
	.ascii "wcsxfrm\0"
	.byte	0x1d
	.byte	0x97
	.long	0xc6
	.long	0x245e
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wctob\0"
	.byte	0x1f
	.word	0x3ad
	.long	0x136
	.long	0x2476
	.uleb128 0x21
	.long	0x100
	.byte	0
	.uleb128 0x2c
	.ascii "wmemcmp\0"
	.byte	0x1f
	.word	0x3b2
	.long	0x136
	.long	0x249a
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wmemcpy\0"
	.byte	0x1f
	.word	0x3b3
	.long	0x171
	.long	0x24be
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wmemmove\0"
	.byte	0x1f
	.word	0x3b5
	.long	0x171
	.long	0x24e3
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wmemset\0"
	.byte	0x1f
	.word	0x3b0
	.long	0x171
	.long	0x2507
	.uleb128 0x21
	.long	0x171
	.uleb128 0x21
	.long	0x177
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wprintf\0"
	.byte	0x1
	.word	0x2a8
	.long	0x136
	.long	0x2522
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2c
	.ascii "wscanf\0"
	.byte	0x1
	.word	0x26e
	.long	0x136
	.long	0x253c
	.uleb128 0x21
	.long	0x400
	.uleb128 0x2e
	.byte	0
	.uleb128 0x20
	.ascii "wcschr\0"
	.byte	0x1d
	.byte	0x7b
	.long	0x171
	.long	0x2559
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x177
	.byte	0
	.uleb128 0x20
	.ascii "wcspbrk\0"
	.byte	0x1d
	.byte	0x85
	.long	0x171
	.long	0x2577
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x20
	.ascii "wcsrchr\0"
	.byte	0x1d
	.byte	0x86
	.long	0x171
	.long	0x2595
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x177
	.byte	0
	.uleb128 0x20
	.ascii "wcsstr\0"
	.byte	0x1d
	.byte	0x88
	.long	0x171
	.long	0x25b2
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x400
	.byte	0
	.uleb128 0x2c
	.ascii "wmemchr\0"
	.byte	0x1f
	.word	0x3b1
	.long	0x171
	.long	0x25d6
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x177
	.uleb128 0x21
	.long	0xc6
	.byte	0
	.uleb128 0x2c
	.ascii "wcstold\0"
	.byte	0x7
	.word	0x1e6
	.long	0x3ea
	.long	0x25f5
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.byte	0
	.uleb128 0x2c
	.ascii "wcstoll\0"
	.byte	0x1f
	.word	0x3b8
	.long	0xef
	.long	0x2619
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2c
	.ascii "wcstoull\0"
	.byte	0x1f
	.word	0x3b9
	.long	0xd5
	.long	0x263e
	.uleb128 0x21
	.long	0x400
	.uleb128 0x21
	.long	0x23b3
	.uleb128 0x21
	.long	0x136
	.byte	0
	.uleb128 0x2
	.ascii "_Atomic_word\0"
	.byte	0x21
	.byte	0x20
	.long	0x136
	.uleb128 0xa
	.long	0x19e
	.uleb128 0x6
	.byte	0x8
	.long	0xbc4
	.uleb128 0x2
	.ascii "wctrans_t\0"
	.byte	0x22
	.byte	0xa6
	.long	0x177
	.uleb128 0x20
	.ascii "iswctype\0"
	.byte	0x23
	.byte	0xac
	.long	0x136
	.long	0x268d
	.uleb128 0x21
	.long	0x100
	.uleb128 0x21
	.long	0x125
	.byte	0
	.uleb128 0x20
	.ascii "towctrans\0"
	.byte	0x22
	.byte	0xa7
	.long	0x100
	.long	0x26ad
	.uleb128 0x21
	.long	0x100
	.uleb128 0x21
	.long	0x265d
	.byte	0
	.uleb128 0x20
	.ascii "wctrans\0"
	.byte	0x22
	.byte	0xa8
	.long	0x265d
	.long	0x26c6
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0x20
	.ascii "wctype\0"
	.byte	0x22
	.byte	0xa9
	.long	0x125
	.long	0x26de
	.uleb128 0x21
	.long	0xf34
	.byte	0
	.uleb128 0xa
	.long	0x120a
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.ascii "complex float\0"
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.ascii "complex double\0"
	.uleb128 0x4
	.byte	0x20
	.byte	0x3
	.ascii "complex long double\0"
	.uleb128 0x4
	.byte	0x10
	.byte	0x5
	.ascii "__int128\0"
	.uleb128 0x4
	.byte	0x10
	.byte	0x7
	.ascii "__int128 unsigned\0"
	.uleb128 0x37
	.byte	0x2
	.byte	0x3
	.long	0x4ea
	.uleb128 0x39
	.ascii "solve\0"
	.byte	0x2
	.byte	0xd
	.ascii "_Z5solvev\0"
	.quad	.LFB3628
	.quad	.LFE3628-.LFB3628
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.ascii "main\0"
	.byte	0x2
	.byte	0x11
	.long	0x136
	.quad	.LFB3629
	.quad	.LFE3629-.LFB3629
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.ascii "__tcf_0\0"
	.quad	.LFB3648
	.quad	.LFE3648-.LFB3648
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.ascii "__static_initialization_and_destruction_0\0"
	.quad	.LFB3647
	.quad	.LFE3647-.LFB3647
	.uleb128 0x1
	.byte	0x9c
	.long	0x2813
	.uleb128 0x32
	.ascii "__initialize_p\0"
	.byte	0x2
	.byte	0x18
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.ascii "__priority\0"
	.byte	0x2
	.byte	0x18
	.long	0x136
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3b
	.ascii "_GLOBAL__sub_I_T\0"
	.quad	.LFB3649
	.quad	.LFE3649-.LFB3649
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.ascii "N\0"
	.byte	0x2
	.byte	0x8
	.long	0x1ea5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL1N
	.uleb128 0x34
	.ascii "M\0"
	.byte	0x2
	.byte	0x8
	.long	0x1ea5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL1M
	.uleb128 0x34
	.ascii "MOD\0"
	.byte	0x2
	.byte	0x8
	.long	0x1ea5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MOD
	.uleb128 0x34
	.ascii "INF\0"
	.byte	0x2
	.byte	0x8
	.long	0x1ea5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3INF
	.uleb128 0x3d
	.ascii "T\0"
	.byte	0x2
	.byte	0xa
	.long	0x136
	.uleb128 0x9
	.byte	0x3
	.quad	T
	.uleb128 0x3d
	.ascii "n\0"
	.byte	0x2
	.byte	0xa
	.long	0x136
	.uleb128 0x9
	.byte	0x3
	.quad	n
	.uleb128 0x3d
	.ascii "m\0"
	.byte	0x2
	.byte	0xa
	.long	0x136
	.uleb128 0x9
	.byte	0x3
	.quad	m
	.uleb128 0x27
	.long	0x136
	.long	0x28d3
	.uleb128 0x3e
	.long	0x192
	.long	0x186a9
	.byte	0
	.uleb128 0x3d
	.ascii "a\0"
	.byte	0x2
	.byte	0xb
	.long	0x28c0
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x3f
	.long	0xf03
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x40
	.long	0x102c
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIxE5__minE\0"
	.sleb128 -9223372036854775808
	.uleb128 0x41
	.long	0x1037
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIxE5__maxE\0"
	.quad	0x7fffffffffffffff
	.uleb128 0x40
	.long	0x109f
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE\0"
	.sleb128 -2147483648
	.uleb128 0x42
	.long	0x10aa
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE\0"
	.long	0x7fffffff
	.uleb128 0x43
	.long	0x112a
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE\0"
	.byte	0x20
	.uleb128 0x43
	.long	0x1171
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE\0"
	.byte	0x7f
	.uleb128 0x40
	.long	0x11c4
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE\0"
	.sleb128 -32768
	.uleb128 0x44
	.long	0x11cf
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE\0"
	.word	0x7fff
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x3c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB5
	.quad	.LFE5
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cplusplus 199711L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"4.9.2\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_WEAK__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_RTTI 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cpp_binary_literals 201304\0"
	.byte	0x1
	.uleb128 0
	.ascii "__EXCEPTIONS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1002\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 2147483647L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ double(1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ double(2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ double(2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ double(4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_GNU_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_UNSIGNED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_REENTRANT 1\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.file 37 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/stdc++.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x25
	.file 38 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cassert"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x26
	.file 39 "C:/MinGW64/x86_64-w64-mingw32/include/assert.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x27
	.byte	0x2
	.uleb128 0xa
	.ascii "assert\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "__ASSERT_H_ \0"
	.file 40 "C:/MinGW64/x86_64-w64-mingw32/include/crtdefs.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CRTDEFS \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC__MINGW_H \0"
	.file 41 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_mac.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_CRTDEFS_MACRO \0"
	.byte	0x1
	.uleb128 0xa
	.ascii "__STRINGIFY(x) #x\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__MINGW64_STRINGIFY(x) __STRINGIFY(x)\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__MINGW64_VERSION_MAJOR 3\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__MINGW64_VERSION_MINOR 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__MINGW64_VERSION_RC 0\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__MINGW64_VERSION_STR __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) \".\" __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR)\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__MINGW64_VERSION_STATE \"stable\"\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__MINGW32_MAJOR_VERSION 3\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__MINGW32_MINOR_VERSION 11\0"
	.byte	0x2
	.uleb128 0x2f
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_ 1\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__MINGW_USE_UNDERSCORE_PREFIX 0\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "_\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__MINGW_IMP_SYMBOL(sym) __imp_ ##sym\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__MINGW_IMP_LSYMBOL(sym) __imp_ ##sym\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__MINGW_USYMBOL(sym) sym\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__MINGW_LSYMBOL(sym) _ ##sym\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "_M_AMD64 100\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "_M_X64 100\0"
	.byte	0x2
	.uleb128 0x8a
	.ascii "__MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__MINGW_EXTENSION __extension__\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__C89_NAMELESS __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "__C89_NAMELESSSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__C89_NAMELESSSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "__C89_NAMELESSSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__C89_NAMELESSSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__C89_NAMELESSSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__C89_NAMELESSSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "__C89_NAMELESSUNIONNAME \0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__C89_NAMELESSUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__C89_NAMELESSUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "__C89_NAMELESSUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "__C89_NAMELESSUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "__C89_NAMELESSUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "__C89_NAMELESSUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "__C89_NAMELESSUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__C89_NAMELESSUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__GNU_EXTENSION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__MINGW_HAVE_ANSI_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__MINGW_HAVE_WIDE_C99_PRINTF 1\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__MINGW_HAVE_ANSI_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__MINGW_HAVE_WIDE_C99_SCANF 1\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "__MINGW_POISON_NAME(__IFACE) __IFACE ##_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__MSABI_LONG(x) x ## l\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__MINGW_GCC_VERSION (__GNUC__ * 10000 + __GNUC_MINOR__ * 100 + __GNUC_PATCHLEVEL__)\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "__MINGW_MSC_PREREQ(major,minor) 0\0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "__MINGW_ATTRIB_DEPRECATED_STR(X) \0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__MINGW_SEC_WARN_STR \"This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__MINGW_MSVC2005_DEPREC_STR \"This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation\"\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "__MINGW_ATTRIB_DEPRECATED_MSVC2005 __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR)\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "__MINGW_ATTRIB_DEPRECATED_SEC_WARN __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR)\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "__MINGW_MS_PRINTF(__format,__args) __attribute__((__format__(ms_printf, __format,__args)))\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__MINGW_MS_SCANF(__format,__args) __attribute__((__format__(ms_scanf, __format,__args)))\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__MINGW_GNU_PRINTF(__format,__args) __attribute__((__format__(gnu_printf,__format,__args)))\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__MINGW_GNU_SCANF(__format,__args) __attribute__((__format__(gnu_scanf, __format,__args)))\0"
	.byte	0x2
	.uleb128 0x107
	.ascii "__mingw_ovr\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__mingw_ovr inline __cdecl\0"
	.byte	0x4
	.file 42 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_secapi.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2a
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_MINGW_SECAPI \0"
	.byte	0x2
	.uleb128 0x1d
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES\0"
	.byte	0x2
	.uleb128 0x1e
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY\0"
	.byte	0x2
	.uleb128 0x1f
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES\0"
	.byte	0x2
	.uleb128 0x20
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT\0"
	.byte	0x2
	.uleb128 0x21
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES 0\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 0\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT 0\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__MINGW_CRT_NAME_CONCAT1(sym) ::sym\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__MINGW_CRT_NAME_CONCAT2(sym) ::sym ##_s\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__MINGW_CRT_NAME_INSECURE(sym) ::__insecure__ ##sym\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__MINGW_CRT_NAME_INSECURE_DEF(sym) __insecure__ ##sym\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_0_2_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3);\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "__CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3,__type4,__attrib4,__arg4) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3, __type4 __attrib4 __arg4);\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_0_2_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT_1_4_(__ret,__imp_attrib,__func,__real_func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3,__type4,__attrib4,__arg4) __imp_attrib __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3, __type4 __attrib4 __arg4) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_(__ret,__func,__type1,__attrib1,__arg1,__type2,__attrib2,__arg2,__type3,__attrib3,__arg3) _CRTIMP __ret __cdecl __func(__type1 * __attrib1 __arg1, __type2 __attrib2 __arg2, __type3 __attrib3 __arg3) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1a
	.ascii "__LONG32 long\0"
	.byte	0x2
	.uleb128 0x22
	.ascii "__stdcall\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__stdcall \0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__MINGW_IMPORT extern __attribute__ ((__dllimport__))\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "__USE_CRTIMP\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__USE_CRTIMP 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_CRTIMP __attribute__ ((__dllimport__))\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "USE___UUIDOF 0\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_inline __inline\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__CRT_INLINE inline\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__MINGW_INTRIN_INLINE extern __inline__ __attribute__((__always_inline__,__gnu_inline__))\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "__CRT__NO_INLINE\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__CRT__NO_INLINE 1\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__UNUSED_PARAM(x) \0"
	.byte	0x1
	.uleb128 0x86
	.ascii "__restrict_arr \0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__MINGW_ATTRIB_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__MINGW_ATTRIB_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__MINGW_ATTRIB_UNUSED __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__MINGW_ATTRIB_USED __attribute__ ((__used__))\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__MINGW_NOTHROW __attribute__ ((__nothrow__))\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__MINGW_ATTRIB_NO_OPTIMIZE __attribute__((__optimize__ (\"0\")))\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "__MINGW_PRAGMA_PARAM(x) _Pragma (#x)\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "__MINGW_BROKEN_INTERFACE(x) __MINGW_PRAGMA_PARAM(message (\"Interface \" _CRT_STRINGIZE(x) \" has unverified layout.\"))\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "__MSVCRT_VERSION__ 0x0700\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "WINVER 0x0502\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "_WIN32_WINNT 0x502\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "_INT128_DEFINED \0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "__int32 int\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "__ptr32 \0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "__ptr64 \0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__unaligned \0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__w64 \0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__forceinline inline __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__nothrow __declspec(nothrow)\0"
	.byte	0x2
	.uleb128 0x117
	.ascii "_CRT_PACKING\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_CRT_PACKING 8\0"
	.byte	0x3
	.uleb128 0x11a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_VADEFS \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2a6
	.ascii "MINGW_SDK_INIT \0"
	.file 43 "C:/MinGW64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h"
	.byte	0x3
	.uleb128 0x2ae
	.uleb128 0x2b
	.byte	0x1
	.uleb128 0x3
	.ascii "__MINGW_HAS_DXSDK 1\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MINGW_HAS_DDRAW_H 1\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MINGW_DDRAW_VERSION 7\0"
	.byte	0x4
	.file 44 "C:/MinGW64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h"
	.byte	0x3
	.uleb128 0x2af
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x2
	.ascii "MINGW_DDK_H \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "MINGW_HAS_DDK_H 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x15
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_VA_LIST_DEFINED \0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_ADDRESSOF(v) (&reinterpret_cast<const char &>(v))\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "_crt_va_start(v,l) __builtin_va_start(v,l)\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_crt_va_arg(v,l) __builtin_va_arg(v,l)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_crt_va_end(v) __builtin_va_end(v)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_crt_va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x121
	.ascii "__CRT_STRINGIZE(_Value) #_Value\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "_CRT_STRINGIZE(_Value) __CRT_STRINGIZE(_Value)\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "__CRT_WIDE(_String) L ## _String\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "_CRT_WIDE(_String) __CRT_WIDE(_String)\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "_W64 \0"
	.byte	0x1
	.uleb128 0x132
	.ascii "_CRTIMP_NOIA64 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "_CRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "_CRTIMP_ALTERNATIVE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "_CRT_ALTERNATIVE_IMPORTED \0"
	.byte	0x1
	.uleb128 0x140
	.ascii "_MRTIMP2 _CRTIMP\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "_DLL \0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "_MT \0"
	.byte	0x1
	.uleb128 0x151
	.ascii "_MCRTIMP _CRTIMP\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "_CRTIMP_PURE _CRTIMP\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "_PGLOBAL \0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "_AGLOBAL \0"
	.byte	0x1
	.uleb128 0x160
	.ascii "_SECURECRT_FILL_BUFFER_PATTERN 0xFD\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "_CRT_DEPRECATE_TEXT(_Text) __declspec(deprecated)\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "_CRT_INSECURE_DEPRECATE_MEMORY(_Replacement) \0"
	.byte	0x1
	.uleb128 0x168
	.ascii "_CRT_INSECURE_DEPRECATE_GLOBALS(_Replacement) \0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "_CRT_MANAGED_HEAP_DEPRECATE \0"
	.byte	0x1
	.uleb128 0x170
	.ascii "_CRT_OBSOLETE(_NewItem) \0"
	.byte	0x1
	.uleb128 0x176
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x177
	.ascii "size_t\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "_SSIZE_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x181
	.ascii "ssize_t\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "_INTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "__intptr_t_defined \0"
	.byte	0x2
	.uleb128 0x18d
	.ascii "intptr_t\0"
	.byte	0x1
	.uleb128 0x197
	.ascii "_UINTPTR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x199
	.ascii "__uintptr_t_defined \0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "uintptr_t\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "_PTRDIFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x2
	.uleb128 0x1a7
	.ascii "ptrdiff_t\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "_WCTYPE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "_WINT_T \0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "_ERRCODE_DEFINED \0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "_TIME32_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "_TIME64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "_TIME_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "_CONST_RETURN \0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "UNALIGNED __unaligned\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "_CRT_ALIGN(x) __attribute__ ((__aligned__ (x)))\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "__CRTDECL __cdecl\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "_ARGMAX 100\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "_TRUNCATE ((size_t)-1)\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "_CRT_UNUSED(x) (void)x\0"
	.byte	0x2
	.uleb128 0x22a
	.ascii "_CRT_glob\0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "_CRT_glob _dowildcard\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "__ANONYMOUS_DEFINED \0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "_ANONYMOUS_UNION __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "_ANONYMOUS_STRUCT __MINGW_EXTENSION\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "_UNION_NAME(x) \0"
	.byte	0x1
	.uleb128 0x240
	.ascii "_STRUCT_NAME(x) \0"
	.byte	0x1
	.uleb128 0x254
	.ascii "DUMMYUNIONNAME \0"
	.byte	0x1
	.uleb128 0x255
	.ascii "DUMMYUNIONNAME1 \0"
	.byte	0x1
	.uleb128 0x256
	.ascii "DUMMYUNIONNAME2 \0"
	.byte	0x1
	.uleb128 0x257
	.ascii "DUMMYUNIONNAME3 \0"
	.byte	0x1
	.uleb128 0x258
	.ascii "DUMMYUNIONNAME4 \0"
	.byte	0x1
	.uleb128 0x259
	.ascii "DUMMYUNIONNAME5 \0"
	.byte	0x1
	.uleb128 0x25a
	.ascii "DUMMYUNIONNAME6 \0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "DUMMYUNIONNAME7 \0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "DUMMYUNIONNAME8 \0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "DUMMYUNIONNAME9 \0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "DUMMYSTRUCTNAME \0"
	.byte	0x1
	.uleb128 0x26b
	.ascii "DUMMYSTRUCTNAME1 \0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "DUMMYSTRUCTNAME2 \0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "DUMMYSTRUCTNAME3 \0"
	.byte	0x1
	.uleb128 0x26e
	.ascii "DUMMYSTRUCTNAME4 \0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "DUMMYSTRUCTNAME5 \0"
	.byte	0x1
	.uleb128 0x277
	.ascii "__CRT_UUID_DECL(type,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) extern \"C++\" { template<> inline const GUID &__mingw_uuidof<type>() { static const IID __uuid_inst = {l,w1,w2, {b1,b2,b3,b4,b5,b6,b7,b8}}; return __uuid_inst; } template<> inline const GUID &__mingw_uuidof<type*>() { return __mingw_uuidof<type>(); } }\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "__uuidof(type) __mingw_uuidof<__typeof(type)>()\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x12
	.ascii "_CRTNOALIAS \0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_CRTRESTRICT \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_RSIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(__ret,__func,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(__ret,__func,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(__ret,__func,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3,__type4,__arg4) \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(__ret,__func,__type0,__arg0,__dsttype,__dst,__type1,__arg1,__type2,__arg2,__type3,__arg3) \0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0(__ret,__func,__type1,__arg1,__type2,__arg2,__dsttype,__dst) \0"
	.byte	0x1
	.uleb128 0x93
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1) \0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(__ret,__func,__vfunc,__dsttype,__dst,__type1,__arg1,__type2,__arg2) \0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH(__ret,__func,__dsttype,__src) \0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "_TAGLC_ID_DEFINED \0"
	.byte	0x1
	.uleb128 0xae
	.ascii "_THREADLOCALEINFO \0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "__crt_typefix(ctype) \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDLIB \0"
	.file 45 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/limits.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x2d
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GCC_LIMITS_H_ \0"
	.file 46 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include-fixed/syslimits.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x6
	.ascii "_GCC_NEXT_LIMITS_H \0"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2d
	.file 47 "C:/MinGW64/x86_64-w64-mingw32/include/limits.h"
	.byte	0x3
	.uleb128 0xa8
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x9
	.ascii "_INC_LIMITS \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "PATH_MAX 260\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "CHAR_BIT 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SCHAR_MIN (-128)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SCHAR_MAX 127\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "UCHAR_MAX 0xff\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "CHAR_MIN SCHAR_MIN\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "CHAR_MAX SCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "MB_LEN_MAX 5\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "SHRT_MIN (-32768)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "SHRT_MAX 32767\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "USHRT_MAX 0xffffU\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "INT_MIN (-2147483647 - 1)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "INT_MAX 2147483647\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "UINT_MAX 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "LONG_MIN (-2147483647L - 1)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "LONG_MAX 2147483647L\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "ULONG_MAX 0xffffffffUL\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "LLONG_MAX 9223372036854775807ll\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "LLONG_MIN (-9223372036854775807ll - 1)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "ULLONG_MAX 0xffffffffffffffffull\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_I8_MIN (-127 - 1)\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_I8_MAX 127\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "_UI8_MAX 0xffu\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_I16_MIN (-32767 - 1)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_I16_MAX 32767\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_UI16_MAX 0xffffu\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "_I32_MIN (-2147483647 - 1)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "_I32_MAX 2147483647\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_UI32_MAX 0xffffffffu\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "LONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "LONG_LONG_MAX 9223372036854775807ll\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "LONG_LONG_MIN\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "LONG_LONG_MIN (-LONG_LONG_MAX-1)\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "ULONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "ULONG_LONG_MAX (2ull * LONG_LONG_MAX + 1ull)\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_I64_MIN (-9223372036854775807ll - 1)\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_I64_MAX 9223372036854775807ll\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_UI64_MAX 0xffffffffffffffffull\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "SIZE_MAX _UI64_MAX\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "SSIZE_MAX _I64_MAX\0"
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.uleb128 0x8
	.ascii "_GCC_NEXT_LIMITS_H\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x3c
	.ascii "_LIMITS_H___ \0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "CHAR_BIT\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "CHAR_BIT __CHAR_BIT__\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "SCHAR_MIN\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "SCHAR_MIN (-SCHAR_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "SCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "SCHAR_MAX __SCHAR_MAX__\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "UCHAR_MAX\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "UCHAR_MAX (SCHAR_MAX * 2 + 1)\0"
	.byte	0x2
	.uleb128 0x60
	.ascii "CHAR_MIN\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "CHAR_MIN SCHAR_MIN\0"
	.byte	0x2
	.uleb128 0x62
	.ascii "CHAR_MAX\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "CHAR_MAX SCHAR_MAX\0"
	.byte	0x2
	.uleb128 0x67
	.ascii "SHRT_MIN\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "SHRT_MIN (-SHRT_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "SHRT_MAX\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "SHRT_MAX __SHRT_MAX__\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "USHRT_MAX\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "USHRT_MAX (SHRT_MAX * 2 + 1)\0"
	.byte	0x2
	.uleb128 0x75
	.ascii "INT_MIN\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "INT_MIN (-INT_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x77
	.ascii "INT_MAX\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "INT_MAX __INT_MAX__\0"
	.byte	0x2
	.uleb128 0x7b
	.ascii "UINT_MAX\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "UINT_MAX (INT_MAX * 2U + 1U)\0"
	.byte	0x2
	.uleb128 0x80
	.ascii "LONG_MIN\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "LONG_MIN (-LONG_MAX - 1L)\0"
	.byte	0x2
	.uleb128 0x82
	.ascii "LONG_MAX\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "LONG_MAX __LONG_MAX__\0"
	.byte	0x2
	.uleb128 0x86
	.ascii "ULONG_MAX\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "ULONG_MAX (LONG_MAX * 2UL + 1UL)\0"
	.byte	0x2
	.uleb128 0x97
	.ascii "LONG_LONG_MIN\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "LONG_LONG_MIN (-LONG_LONG_MAX - 1LL)\0"
	.byte	0x2
	.uleb128 0x99
	.ascii "LONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "LONG_LONG_MAX __LONG_LONG_MAX__\0"
	.byte	0x2
	.uleb128 0x9d
	.ascii "ULONG_LONG_MAX\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "ULONG_LONG_MAX (LONG_LONG_MAX * 2ULL + 1ULL)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1b
	.ascii "NULL 0LL\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_ONEXIT_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "onexit_t _onexit_t\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_DIV_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_CRT_DOUBLE_DEC \0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_PTR_LD(x) ((unsigned char *)(&(x)->ld))\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "long\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "RAND_MAX 0x7fff\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "MB_CUR_MAX ___mb_cur_max_func()\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__mb_cur_max (* __MINGW_IMP_SYMBOL(__mb_cur_max))\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "___mb_cur_max_func() (__mb_cur_max)\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__max(a,b) (((a) > (b)) ? (a) : (b))\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__min(a,b) (((a) < (b)) ? (a) : (b))\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "_MAX_PATH 260\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "_MAX_DRIVE 3\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_MAX_DIR 256\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "_MAX_FNAME 256\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "_MAX_EXT 256\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "_OUT_TO_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_OUT_TO_STDERR 1\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "_OUT_TO_MSGBOX 2\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "_REPORT_ERRMODE 3\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "_WRITE_ABORT_MSG 0x1\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_CALL_REPORTFAULT 0x2\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_MAX_ENV 32767\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_CRT_ERRNO_DEFINED \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "errno (*_errno())\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "_doserrno (*__doserrno())\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__argc (* __MINGW_IMP_SYMBOL(__argc))\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__argv (* __MINGW_IMP_SYMBOL(__argv))\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__wargv (* __MINGW_IMP_SYMBOL(__wargv))\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "_environ (* __MINGW_IMP_SYMBOL(_environ))\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_wenviron (* __MINGW_IMP_SYMBOL(_wenviron))\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "_pgmptr (* __MINGW_IMP_SYMBOL(_pgmptr))\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "_wpgmptr (* __MINGW_IMP_SYMBOL(_wpgmptr))\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "_fmode (* __MINGW_IMP_SYMBOL(_fmode))\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "_osplatform (* __MINGW_IMP_SYMBOL(_osplatform))\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "_osver (* __MINGW_IMP_SYMBOL(_osver))\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "_winver (* __MINGW_IMP_SYMBOL(_winver))\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_winmajor (* __MINGW_IMP_SYMBOL(_winmajor))\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "_winminor (* __MINGW_IMP_SYMBOL(_winminor))\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "_countof(_Array) sizeof(*__countof_helper(_Array))\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "_CRT_TERMINATE_DEFINED \0"
	.byte	0x2
	.uleb128 0x13f
	.ascii "abort\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "_CRT_ABS_DEFINED \0"
	.byte	0x1
	.uleb128 0x156
	.ascii "_CRT_ATOF_DEFINED \0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "_CRT_ALGO_DEFINED \0"
	.byte	0x1
	.uleb128 0x19c
	.ascii "strtod __strtod\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "_CRT_SYSTEM_DEFINED \0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "_CRT_ALLOCATION_DEFINED \0"
	.byte	0x2
	.uleb128 0x1be
	.ascii "_aligned_free\0"
	.byte	0x2
	.uleb128 0x1bf
	.ascii "_aligned_malloc\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "_WSTDLIB_DEFINED \0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "_CRT_WSYSTEM_DEFINED \0"
	.byte	0x1
	.uleb128 0x204
	.ascii "_CVTBUFSIZE (309+40)\0"
	.byte	0x2
	.uleb128 0x211
	.ascii "_lrotr\0"
	.byte	0x2
	.uleb128 0x212
	.ascii "_lrotl\0"
	.byte	0x1
	.uleb128 0x221
	.ascii "_CRT_PERROR_DEFINED \0"
	.byte	0x2
	.uleb128 0x227
	.ascii "_rotl64\0"
	.byte	0x2
	.uleb128 0x228
	.ascii "_rotr64\0"
	.byte	0x2
	.uleb128 0x22f
	.ascii "_rotr\0"
	.byte	0x2
	.uleb128 0x230
	.ascii "_rotl\0"
	.byte	0x1
	.uleb128 0x23b
	.ascii "_WSTDLIBP_DEFINED \0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "_CRT_WPERROR_DEFINED \0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "sys_errlist _sys_errlist\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "sys_nerr _sys_nerr\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "environ _environ\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "_CRT_SWAB_DEFINED \0"
	.file 48 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h"
	.byte	0x3
	.uleb128 0x29b
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDLIB_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 49 "C:/MinGW64/x86_64-w64-mingw32/include/malloc.h"
	.byte	0x3
	.uleb128 0x29c
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x7
	.ascii "_MALLOC_H_ \0"
	.byte	0x1
	.uleb128 0x12
	.ascii "_HEAP_MAXREQ 0xFFFFFFFFFFFFFFE0\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_STATIC_ASSERT(expr) extern void __static_assert_t(int [(expr)?1:-1])\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_HEAPEMPTY (-1)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "_HEAPOK (-2)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_HEAPBADBEGIN (-3)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_HEAPBADNODE (-4)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_HEAPEND (-5)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_HEAPBADPTR (-6)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_FREEENTRY 0\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "_USEDENTRY 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_HEAPINFO_DEFINED \0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__DO_ALIGN_DEFINES \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_MM_MALLOC_H_INCLUDED \0"
	.byte	0x2
	.uleb128 0x43
	.ascii "_aligned_free\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "_aligned_malloc\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_mm_free(a) _aligned_free(a)\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_mm_malloc(a,b) _aligned_malloc(a,b)\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "__DO_ALIGN_DEFINES\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_MAX_WAIT_MALLOC_CRT 60000\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "_alloca\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_alloca(x) __builtin_alloca((x))\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "_ALLOCA_S_THRESHOLD 1024\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_ALLOCA_S_STACK_MARKER 0xCCCC\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "_ALLOCA_S_HEAP_MARKER 0xDDDD\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "_ALLOCA_S_MARKER_SIZE 16\0"
	.byte	0x2
	.uleb128 0x99
	.ascii "_malloca\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "_malloca(size) ((((size) + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) ? _MarkAllocaS(_alloca((size) + _ALLOCA_S_MARKER_SIZE),_ALLOCA_S_STACK_MARKER) : _MarkAllocaS(malloc((size) + _ALLOCA_S_MARKER_SIZE),_ALLOCA_S_HEAP_MARKER))\0"
	.byte	0x2
	.uleb128 0x9e
	.ascii "_FREEA_INLINE\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "_FREEA_INLINE \0"
	.byte	0x2
	.uleb128 0xa2
	.ascii "_freea\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "alloca\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "alloca(x) __builtin_alloca((x))\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x49
	.ascii "assert(_Expression) (void) ((!!(_Expression)) || (_assert(#_Expression,__FILE__,__LINE__),0))\0"
	.byte	0x4
	.byte	0x4
	.file 50 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cctype"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x32
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CXX_CONFIG_H 1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__GLIBCXX__ 20141030\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_GLIBCXX_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_GLIBCXX_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_GLIBCXX_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 0\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_GLIBCXX_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY(V)\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_GLIBCXX_USE_DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "_GLIBCXX_DEPRECATED \0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "_GLIBCXX_CONSTEXPR \0"
	.byte	0x1
	.uleb128 0x66
	.ascii "_GLIBCXX_USE_CONSTEXPR const\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_GLIBCXX_NOEXCEPT \0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_GLIBCXX_USE_NOEXCEPT throw()\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "_GLIBCXX_THROW(_EXC) throw(_EXC)\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "_GLIBCXX_THROW_OR_ABORT(_EXC) (throw (_EXC))\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_GLIBCXX_EXTERN_TEMPLATE 1\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_GLIBCXX_INLINE_VERSION 0\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "_GLIBCXX_END_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0x141
	.ascii "_GLIBCXX_STD_A std\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "_GLIBCXX_STD_C std\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "_GLIBCXX_END_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x151
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_CONTAINER \0"
	.byte	0x1
	.uleb128 0x155
	.ascii "_GLIBCXX_END_NAMESPACE_CONTAINER \0"
	.byte	0x2
	.uleb128 0x15a
	.ascii "_GLIBCXX_LONG_DOUBLE_COMPAT\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "_GLIBCXX_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x167
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x168
	.ascii "_GLIBCXX_END_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "__glibcxx_assert(_Condition) \0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) \0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) \0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "_GLIBCXX_END_EXTERN_C }\0"
	.file 51 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1ae
	.uleb128 0x33
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_OS_DEFINES \0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__GTHREAD_HIDE_WIN32API 1\0"
	.byte	0x2
	.uleb128 0x2c
	.ascii "NOMINMAX\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "NOMINMAX 1\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "__USE_MINGW_ANSI_STDIO\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__USE_MINGW_ANSI_STDIO 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_default \0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_hidden \0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY_ ## V\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_GLIBCXX_HAVE_DOS_BASED_FILESYSTEM 1\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_GLIBCXX_NO_IOCTL 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_GLIBCXX_LLP64 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_GTHREAD_USE_MUTEX_INIT_FUNC 1\0"
	.byte	0x4
	.file 52 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1b1
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CPU_DEFINES 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1bd
	.ascii "_GLIBCXX_WEAK_DEFINITION \0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "_GLIBCXX_FAST_MATH 0\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "__N(msgid) (msgid)\0"
	.byte	0x2
	.uleb128 0x1d2
	.ascii "min\0"
	.byte	0x2
	.uleb128 0x1d3
	.ascii "max\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "_GLIBCXX_HAVE_ACOSF 1\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "_GLIBCXX_HAVE_ACOSL 1\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "_GLIBCXX_HAVE_ASINF 1\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "_GLIBCXX_HAVE_ASINL 1\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "_GLIBCXX_HAVE_ATAN2F 1\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "_GLIBCXX_HAVE_ATAN2L 1\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "_GLIBCXX_HAVE_ATANF 1\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "_GLIBCXX_HAVE_ATANL 1\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "_GLIBCXX_HAVE_CEILF 1\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "_GLIBCXX_HAVE_CEILL 1\0"
	.byte	0x1
	.uleb128 0x201
	.ascii "_GLIBCXX_HAVE_COMPLEX_H 1\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "_GLIBCXX_HAVE_COSF 1\0"
	.byte	0x1
	.uleb128 0x207
	.ascii "_GLIBCXX_HAVE_COSHF 1\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "_GLIBCXX_HAVE_COSHL 1\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "_GLIBCXX_HAVE_COSL 1\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "_GLIBCXX_HAVE_ECANCELED 1\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "_GLIBCXX_HAVE_ECHILD 1\0"
	.byte	0x1
	.uleb128 0x228
	.ascii "_GLIBCXX_HAVE_ENOSPC 1\0"
	.byte	0x1
	.uleb128 0x234
	.ascii "_GLIBCXX_HAVE_ENOTSUP 1\0"
	.byte	0x1
	.uleb128 0x237
	.ascii "_GLIBCXX_HAVE_EOVERFLOW 1\0"
	.byte	0x1
	.uleb128 0x23a
	.ascii "_GLIBCXX_HAVE_EOWNERDEAD 1\0"
	.byte	0x1
	.uleb128 0x23d
	.ascii "_GLIBCXX_HAVE_EPERM 1\0"
	.byte	0x1
	.uleb128 0x240
	.ascii "_GLIBCXX_HAVE_EPROTO 1\0"
	.byte	0x1
	.uleb128 0x246
	.ascii "_GLIBCXX_HAVE_ETIMEDOUT 1\0"
	.byte	0x1
	.uleb128 0x24c
	.ascii "_GLIBCXX_HAVE_EWOULDBLOCK 1\0"
	.byte	0x1
	.uleb128 0x252
	.ascii "_GLIBCXX_HAVE_EXPF 1\0"
	.byte	0x1
	.uleb128 0x255
	.ascii "_GLIBCXX_HAVE_EXPL 1\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "_GLIBCXX_HAVE_FABSF 1\0"
	.byte	0x1
	.uleb128 0x25b
	.ascii "_GLIBCXX_HAVE_FABSL 1\0"
	.byte	0x1
	.uleb128 0x25e
	.ascii "_GLIBCXX_HAVE_FENV_H 1\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "_GLIBCXX_HAVE_FINITE 1\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "_GLIBCXX_HAVE_FLOAT_H 1\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "_GLIBCXX_HAVE_FLOORF 1\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "_GLIBCXX_HAVE_FLOORL 1\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "_GLIBCXX_HAVE_FMODF 1\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "_GLIBCXX_HAVE_FMODL 1\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "_GLIBCXX_HAVE_FPCLASS 1\0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "_GLIBCXX_HAVE_FREXPF 1\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "_GLIBCXX_HAVE_FREXPL 1\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "_GLIBCXX_HAVE_GETIPINFO 1\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "_GLIBCXX_HAVE_GETS 1\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "_GLIBCXX_HAVE_HYPOT 1\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "_GLIBCXX_HAVE_HYPOTF 1\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "_GLIBCXX_HAVE_HYPOTL 1\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "_GLIBCXX_HAVE_ICONV 1\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "_GLIBCXX_HAVE_IEEEFP_H 1\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "_GLIBCXX_HAVE_INT64_T 1\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "_GLIBCXX_HAVE_INT64_T_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "_GLIBCXX_HAVE_INTTYPES_H 1\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "_GLIBCXX_HAVE_ISNAN 1\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "_GLIBCXX_HAVE_ISWBLANK 1\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "_GLIBCXX_HAVE_LDEXPF 1\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "_GLIBCXX_HAVE_LDEXPL 1\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "_GLIBCXX_HAVE_LOCALE_H 1\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "_GLIBCXX_HAVE_LOG10F 1\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "_GLIBCXX_HAVE_LOG10L 1\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "_GLIBCXX_HAVE_LOGF 1\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "_GLIBCXX_HAVE_LOGL 1\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "_GLIBCXX_HAVE_MBSTATE_T 1\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "_GLIBCXX_HAVE_MEMORY_H 1\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "_GLIBCXX_HAVE_MODF 1\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "_GLIBCXX_HAVE_MODFF 1\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "_GLIBCXX_HAVE_MODFL 1\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "_GLIBCXX_HAVE_POWF 1\0"
	.byte	0x1
	.uleb128 0x306
	.ascii "_GLIBCXX_HAVE_POWL 1\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "_GLIBCXX_HAVE_SINCOS 1\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "_GLIBCXX_HAVE_SINCOSF 1\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "_GLIBCXX_HAVE_SINCOSL 1\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "_GLIBCXX_HAVE_SINF 1\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "_GLIBCXX_HAVE_SINHF 1\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "_GLIBCXX_HAVE_SINHL 1\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "_GLIBCXX_HAVE_SINL 1\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "_GLIBCXX_HAVE_SQRTF 1\0"
	.byte	0x1
	.uleb128 0x32d
	.ascii "_GLIBCXX_HAVE_SQRTL 1\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "_GLIBCXX_HAVE_STDALIGN_H 1\0"
	.byte	0x1
	.uleb128 0x333
	.ascii "_GLIBCXX_HAVE_STDBOOL_H 1\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "_GLIBCXX_HAVE_STDINT_H 1\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "_GLIBCXX_HAVE_STDLIB_H 1\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "_GLIBCXX_HAVE_STRINGS_H 1\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "_GLIBCXX_HAVE_STRING_H 1\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "_GLIBCXX_HAVE_STRTOF 1\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "_GLIBCXX_HAVE_STRTOLD 1\0"
	.byte	0x1
	.uleb128 0x352
	.ascii "_GLIBCXX_HAVE_SYMVER_SYMBOL_RENAMING_RUNTIME_SUPPORT 1\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "_GLIBCXX_HAVE_SYS_PARAM_H 1\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "_GLIBCXX_HAVE_SYS_STAT_H 1\0"
	.byte	0x1
	.uleb128 0x376
	.ascii "_GLIBCXX_HAVE_SYS_TIME_H 1\0"
	.byte	0x1
	.uleb128 0x379
	.ascii "_GLIBCXX_HAVE_SYS_TYPES_H 1\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "_GLIBCXX_HAVE_S_ISREG 1\0"
	.byte	0x1
	.uleb128 0x385
	.ascii "_GLIBCXX_HAVE_TANF 1\0"
	.byte	0x1
	.uleb128 0x388
	.ascii "_GLIBCXX_HAVE_TANHF 1\0"
	.byte	0x1
	.uleb128 0x38b
	.ascii "_GLIBCXX_HAVE_TANHL 1\0"
	.byte	0x1
	.uleb128 0x38e
	.ascii "_GLIBCXX_HAVE_TANL 1\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "_GLIBCXX_HAVE_TGMATH_H 1\0"
	.byte	0x1
	.uleb128 0x394
	.ascii "_GLIBCXX_HAVE_TLS 1\0"
	.byte	0x1
	.uleb128 0x397
	.ascii "_GLIBCXX_HAVE_UNISTD_H 1\0"
	.byte	0x1
	.uleb128 0x39d
	.ascii "_GLIBCXX_HAVE_VFWSCANF 1\0"
	.byte	0x1
	.uleb128 0x3a0
	.ascii "_GLIBCXX_HAVE_VSWSCANF 1\0"
	.byte	0x1
	.uleb128 0x3a3
	.ascii "_GLIBCXX_HAVE_VWSCANF 1\0"
	.byte	0x1
	.uleb128 0x3a6
	.ascii "_GLIBCXX_HAVE_WCHAR_H 1\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "_GLIBCXX_HAVE_WCSTOF 1\0"
	.byte	0x1
	.uleb128 0x3ac
	.ascii "_GLIBCXX_HAVE_WCTYPE_H 1\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "_GLIBCXX_HAVE__FINITEF 1\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "_GLIBCXX_HAVE__ISNANF 1\0"
	.byte	0x1
	.uleb128 0x472
	.ascii "_GLIBCXX_ICONV_CONST \0"
	.byte	0x1
	.uleb128 0x476
	.ascii "LT_OBJDIR \".libs/\"\0"
	.byte	0x1
	.uleb128 0x47c
	.ascii "_GLIBCXX_PACKAGE_BUGREPORT \"\"\0"
	.byte	0x1
	.uleb128 0x47f
	.ascii "_GLIBCXX_PACKAGE_NAME \"package-unused\"\0"
	.byte	0x1
	.uleb128 0x482
	.ascii "_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\"\0"
	.byte	0x1
	.uleb128 0x485
	.ascii "_GLIBCXX_PACKAGE_TARNAME \"libstdc++\"\0"
	.byte	0x1
	.uleb128 0x488
	.ascii "_GLIBCXX_PACKAGE_URL \"\"\0"
	.byte	0x1
	.uleb128 0x48b
	.ascii "_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\"\0"
	.byte	0x1
	.uleb128 0x49d
	.ascii "STDC_HEADERS 1\0"
	.byte	0x1
	.uleb128 0x4a3
	.ascii "_GLIBCXX_ATOMIC_BUILTINS 1\0"
	.byte	0x1
	.uleb128 0x4aa
	.ascii "_GLIBCXX_FULLY_DYNAMIC_STRING 1\0"
	.byte	0x1
	.uleb128 0x4ad
	.ascii "_GLIBCXX_HAS_GTHREADS 1\0"
	.byte	0x1
	.uleb128 0x4b0
	.ascii "_GLIBCXX_HOSTED 1\0"
	.byte	0x1
	.uleb128 0x4c1
	.ascii "_GLIBCXX_STDIO_EOF -1\0"
	.byte	0x1
	.uleb128 0x4c4
	.ascii "_GLIBCXX_STDIO_SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x4c7
	.ascii "_GLIBCXX_STDIO_SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x4ca
	.ascii "_GLIBCXX_SYMVER 1\0"
	.byte	0x1
	.uleb128 0x4d0
	.ascii "_GLIBCXX_SYMVER_GNU 1\0"
	.byte	0x1
	.uleb128 0x4da
	.ascii "_GLIBCXX_USE_C99 1\0"
	.byte	0x1
	.uleb128 0x4df
	.ascii "_GLIBCXX_USE_C99_COMPLEX 1\0"
	.byte	0x1
	.uleb128 0x4e4
	.ascii "_GLIBCXX_USE_C99_COMPLEX_TR1 1\0"
	.byte	0x1
	.uleb128 0x4e8
	.ascii "_GLIBCXX_USE_C99_CTYPE_TR1 1\0"
	.byte	0x1
	.uleb128 0x4ec
	.ascii "_GLIBCXX_USE_C99_FENV_TR1 1\0"
	.byte	0x1
	.uleb128 0x4f0
	.ascii "_GLIBCXX_USE_C99_INTTYPES_TR1 1\0"
	.byte	0x1
	.uleb128 0x4f4
	.ascii "_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1\0"
	.byte	0x1
	.uleb128 0x4f8
	.ascii "_GLIBCXX_USE_C99_MATH 1\0"
	.byte	0x1
	.uleb128 0x4fc
	.ascii "_GLIBCXX_USE_C99_MATH_TR1 1\0"
	.byte	0x1
	.uleb128 0x500
	.ascii "_GLIBCXX_USE_C99_STDINT_TR1 1\0"
	.byte	0x1
	.uleb128 0x507
	.ascii "_GLIBCXX_USE_CLOCK_MONOTONIC 1\0"
	.byte	0x1
	.uleb128 0x50a
	.ascii "_GLIBCXX_USE_CLOCK_REALTIME 1\0"
	.byte	0x1
	.uleb128 0x50e
	.ascii "_GLIBCXX_USE_DECIMAL_FLOAT 1\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "_GLIBCXX_USE_FLOAT128 1\0"
	.byte	0x1
	.uleb128 0x514
	.ascii "_GLIBCXX_USE_GETTIMEOFDAY 1\0"
	.byte	0x1
	.uleb128 0x51a
	.ascii "_GLIBCXX_USE_INT128 1\0"
	.byte	0x1
	.uleb128 0x51d
	.ascii "_GLIBCXX_USE_LFS 1\0"
	.byte	0x1
	.uleb128 0x520
	.ascii "_GLIBCXX_USE_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x523
	.ascii "_GLIBCXX_USE_NANOSLEEP 1\0"
	.byte	0x1
	.uleb128 0x529
	.ascii "_GLIBCXX_USE_PTHREADS_NUM_PROCESSORS_NP 1\0"
	.byte	0x1
	.uleb128 0x530
	.ascii "_GLIBCXX_USE_SCHED_YIELD 1\0"
	.byte	0x1
	.uleb128 0x53c
	.ascii "_GLIBCXX_USE_TMPNAM 1\0"
	.byte	0x1
	.uleb128 0x53f
	.ascii "_GLIBCXX_USE_WCHAR_T 1\0"
	.byte	0x1
	.uleb128 0x542
	.ascii "_GLIBCXX_VERBOSE 1\0"
	.byte	0x1
	.uleb128 0x545
	.ascii "_GLIBCXX_X86_RDRAND 1\0"
	.byte	0x1
	.uleb128 0x548
	.ascii "_GTHREAD_USE_MUTEX_TIMEDLOCK 1\0"
	.byte	0x1
	.uleb128 0x5aa
	.ascii "_GLIBCXX_HAVE_FINITEF 1\0"
	.byte	0x1
	.uleb128 0x5ab
	.ascii "finitef _finitef\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "_GLIBCXX_HAVE_ISNANF 1\0"
	.byte	0x1
	.uleb128 0x5fb
	.ascii "isnanf _isnanf\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_CTYPE \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WEOF (wint_t)(0xFFFF)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_CRT_CTYPEDATA_DEFINED \0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__PCTYPE_FUNC __pctype_func()\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__pctype_func() (* __MINGW_IMP_SYMBOL(_pctype))\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_pctype (* __MINGW_IMP_SYMBOL(_pctype))\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_CRT_WCTYPEDATA_DEFINED \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "_wctype (* __MINGW_IMP_SYMBOL(_wctype))\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__pwctype_func() (* __MINGW_IMP_SYMBOL(_pwctype))\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_pwctype (* __MINGW_IMP_SYMBOL(_pwctype))\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "_UPPER 0x1\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_LOWER 0x2\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "_DIGIT 0x4\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "_SPACE 0x8\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_PUNCT 0x10\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "_CONTROL 0x20\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "_BLANK 0x40\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "_HEX 0x80\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "_LEADBYTE 0x8000\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "_ALPHA (0x0100|_UPPER|_LOWER)\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "_CTYPE_DEFINED \0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_WCTYPE_DEFINED \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__chvalidchk(a,b) (__PCTYPE_FUNC[(a)] & (b))\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_chvalidchk_l(_Char,_Flag,_Locale) (!_Locale ? __chvalidchk(_Char,_Flag) : ((_locale_t)_Locale)->locinfo->pctype[_Char] & (_Flag))\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "_ischartype_l(_Char,_Flag,_Locale) (((_Locale)!=NULL && (((_locale_t)(_Locale))->locinfo->mb_cur_max) > 1) ? _isctype_l(_Char,(_Flag),_Locale) : _chvalidchk_l(_Char,_Flag,_Locale))\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "_isalpha_l(_Char,_Locale) _ischartype_l(_Char,_ALPHA,_Locale)\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "_isupper_l(_Char,_Locale) _ischartype_l(_Char,_UPPER,_Locale)\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "_islower_l(_Char,_Locale) _ischartype_l(_Char,_LOWER,_Locale)\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "_isdigit_l(_Char,_Locale) _ischartype_l(_Char,_DIGIT,_Locale)\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "_isxdigit_l(_Char,_Locale) _ischartype_l(_Char,_HEX,_Locale)\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_isspace_l(_Char,_Locale) _ischartype_l(_Char,_SPACE,_Locale)\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "_ispunct_l(_Char,_Locale) _ischartype_l(_Char,_PUNCT,_Locale)\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "_isalnum_l(_Char,_Locale) _ischartype_l(_Char,_ALPHA|_DIGIT,_Locale)\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "_isprint_l(_Char,_Locale) _ischartype_l(_Char,_BLANK|_PUNCT|_ALPHA|_DIGIT,_Locale)\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "_isgraph_l(_Char,_Locale) _ischartype_l(_Char,_PUNCT|_ALPHA|_DIGIT,_Locale)\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "_iscntrl_l(_Char,_Locale) _ischartype_l(_Char,_CONTROL,_Locale)\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "_tolower(_Char) ((_Char)-'A'+'a')\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "_toupper(_Char) ((_Char)-'a'+'A')\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__isascii(_Char) ((unsigned)(_Char) < 0x80)\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "__toascii(_Char) ((_Char) & 0x7f)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "_WCTYPE_INLINE_DEFINED \0"
	.byte	0x2
	.uleb128 0xdf
	.ascii "_CRT_WCTYPE_NOINLINE\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "__iscsymf(_c) (isalpha(_c) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "__iscsym(_c) (isalnum(_c) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "__iswcsymf(_c) (iswalpha(_c) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__iswcsym(_c) (iswalnum(_c) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "_iscsymf_l(_c,_p) (_isalpha_l(_c,_p) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "_iscsym_l(_c,_p) (_isalnum_l(_c,_p) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "_iswcsymf_l(_c,_p) (_iswalpha_l(_c,_p) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "_iswcsym_l(_c,_p) (_iswalnum_l(_c,_p) || ((_c)=='_'))\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "isascii __isascii\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "toascii __toascii\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "iscsymf __iscsymf\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "iscsym __iscsym\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CCTYPE 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "isalnum\0"
	.byte	0x2
	.uleb128 0x31
	.ascii "isalpha\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "iscntrl\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "isdigit\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "isgraph\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "islower\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "isprint\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "ispunct\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "isspace\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "isupper\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "isxdigit\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "tolower\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "toupper\0"
	.byte	0x4
	.file 53 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cerrno"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x35
	.file 54 "C:/MinGW64/x86_64-w64-mingw32/include/errno.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x36
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_ERRNO \0"
	.byte	0x1
	.uleb128 0x18
	.ascii "EPERM 1\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "ENOENT 2\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "ENOFILE ENOENT\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "ESRCH 3\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "EINTR 4\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "EIO 5\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "ENXIO 6\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "E2BIG 7\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "ENOEXEC 8\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "EBADF 9\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "ECHILD 10\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "EAGAIN 11\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "ENOMEM 12\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "EACCES 13\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "EFAULT 14\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "EBUSY 16\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "EEXIST 17\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "EXDEV 18\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "ENODEV 19\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "ENOTDIR 20\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "EISDIR 21\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "ENFILE 23\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "EMFILE 24\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "ENOTTY 25\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "EFBIG 27\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "ENOSPC 28\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "ESPIPE 29\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "EROFS 30\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "EMLINK 31\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "EPIPE 32\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "EDOM 33\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "EDEADLK 36\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "ENAMETOOLONG 38\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "ENOLCK 39\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "ENOSYS 40\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "ENOTEMPTY 41\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_SECURECRT_ERRCODE_VALUES_DEFINED \0"
	.byte	0x1
	.uleb128 0x40
	.ascii "EINVAL 22\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "ERANGE 34\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "EILSEQ 42\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "STRUNCATE 80\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "EDEADLOCK EDEADLK\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "ENOTSUP 129\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "EAFNOSUPPORT 102\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "EADDRINUSE 100\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "EADDRNOTAVAIL 101\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "EISCONN 113\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "ENOBUFS 119\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "ECONNABORTED 106\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "EALREADY 103\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "ECONNREFUSED 107\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "ECONNRESET 108\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "EDESTADDRREQ 109\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "EHOSTUNREACH 110\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "EMSGSIZE 115\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "ENETDOWN 116\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "ENETRESET 117\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "ENETUNREACH 118\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "ENOPROTOOPT 123\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "ENOTSOCK 128\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "ENOTCONN 126\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "ECANCELED 105\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "EINPROGRESS 112\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "EOPNOTSUPP 130\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "EWOULDBLOCK 140\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "EOWNERDEAD 133\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "EPROTO 134\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "EPROTONOSUPPORT 135\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "ETIMEDOUT 138\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "ELOOP 114\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "EPROTOTYPE 136\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "EOVERFLOW 132\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_CERRNO 1\0"
	.byte	0x4
	.file 55 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cfloat"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x37
	.file 56 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/float.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x38
	.byte	0x1
	.uleb128 0x1d
	.ascii "_FLOAT_H___ \0"
	.byte	0x2
	.uleb128 0x20
	.ascii "FLT_RADIX\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "FLT_RADIX __FLT_RADIX__\0"
	.byte	0x2
	.uleb128 0x24
	.ascii "FLT_MANT_DIG\0"
	.byte	0x2
	.uleb128 0x25
	.ascii "DBL_MANT_DIG\0"
	.byte	0x2
	.uleb128 0x26
	.ascii "LDBL_MANT_DIG\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "FLT_MANT_DIG __FLT_MANT_DIG__\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "DBL_MANT_DIG __DBL_MANT_DIG__\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "LDBL_MANT_DIG __LDBL_MANT_DIG__\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "FLT_DIG\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "DBL_DIG\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "LDBL_DIG\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "FLT_DIG __FLT_DIG__\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "DBL_DIG __DBL_DIG__\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "LDBL_DIG __LDBL_DIG__\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "FLT_MIN_EXP\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "DBL_MIN_EXP\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "LDBL_MIN_EXP\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "FLT_MIN_EXP __FLT_MIN_EXP__\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "DBL_MIN_EXP __DBL_MIN_EXP__\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "LDBL_MIN_EXP __LDBL_MIN_EXP__\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "FLT_MIN_10_EXP\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "DBL_MIN_10_EXP\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "LDBL_MIN_10_EXP\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "FLT_MIN_10_EXP __FLT_MIN_10_EXP__\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "DBL_MIN_10_EXP __DBL_MIN_10_EXP__\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "LDBL_MIN_10_EXP __LDBL_MIN_10_EXP__\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "FLT_MAX_EXP\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "DBL_MAX_EXP\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "LDBL_MAX_EXP\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "FLT_MAX_EXP __FLT_MAX_EXP__\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "DBL_MAX_EXP __DBL_MAX_EXP__\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "LDBL_MAX_EXP __LDBL_MAX_EXP__\0"
	.byte	0x2
	.uleb128 0x5a
	.ascii "FLT_MAX_10_EXP\0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "DBL_MAX_10_EXP\0"
	.byte	0x2
	.uleb128 0x5c
	.ascii "LDBL_MAX_10_EXP\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "FLT_MAX_10_EXP __FLT_MAX_10_EXP__\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "DBL_MAX_10_EXP __DBL_MAX_10_EXP__\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "LDBL_MAX_10_EXP __LDBL_MAX_10_EXP__\0"
	.byte	0x2
	.uleb128 0x65
	.ascii "FLT_MAX\0"
	.byte	0x2
	.uleb128 0x66
	.ascii "DBL_MAX\0"
	.byte	0x2
	.uleb128 0x67
	.ascii "LDBL_MAX\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "FLT_MAX __FLT_MAX__\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "DBL_MAX __DBL_MAX__\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "LDBL_MAX __LDBL_MAX__\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "FLT_EPSILON\0"
	.byte	0x2
	.uleb128 0x6f
	.ascii "DBL_EPSILON\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "LDBL_EPSILON\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "FLT_EPSILON __FLT_EPSILON__\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "DBL_EPSILON __DBL_EPSILON__\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "LDBL_EPSILON __LDBL_EPSILON__\0"
	.byte	0x2
	.uleb128 0x76
	.ascii "FLT_MIN\0"
	.byte	0x2
	.uleb128 0x77
	.ascii "DBL_MIN\0"
	.byte	0x2
	.uleb128 0x78
	.ascii "LDBL_MIN\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "FLT_MIN __FLT_MIN__\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "DBL_MIN __DBL_MIN__\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "LDBL_MIN __LDBL_MIN__\0"
	.byte	0x2
	.uleb128 0x7f
	.ascii "FLT_ROUNDS\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "FLT_ROUNDS 1\0"
	.file 57 "C:/MinGW64/x86_64-w64-mingw32/include/float.h"
	.byte	0x3
	.uleb128 0x116
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x77
	.ascii "_MINGW_FLOAT_H_ \0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_MCW_DN 0x03000000\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "_MCW_EM 0x0008001F\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_MCW_IC 0x00040000\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "_MCW_RC 0x00000300\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "_MCW_PC 0x00030000\0"
	.byte	0x2
	.uleb128 0x8b
	.ascii "FLT_MANT_DIG\0"
	.byte	0x2
	.uleb128 0x8c
	.ascii "DBL_MANT_DIG\0"
	.byte	0x2
	.uleb128 0x8d
	.ascii "LDBL_MANT_DIG\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "FLT_MANT_DIG __FLT_MANT_DIG__\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "DBL_MANT_DIG __DBL_MANT_DIG__\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "LDBL_MANT_DIG __LDBL_MANT_DIG__\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "_DN_SAVE 0x00000000\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "_DN_FLUSH 0x01000000\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "_EM_INVALID 0x00000010\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "_EM_DENORMAL 0x00080000\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "_EM_ZERODIVIDE 0x00000008\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "_EM_OVERFLOW 0x00000004\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "_EM_UNDERFLOW 0x00000002\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "_EM_INEXACT 0x00000001\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "_IC_AFFINE 0x00040000\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "_IC_PROJECTIVE 0x00000000\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "_RC_CHOP 0x00000300\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_RC_UP 0x00000200\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "_RC_DOWN 0x00000100\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "_RC_NEAR 0x00000000\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "_PC_24 0x00020000\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "_PC_53 0x00010000\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "_PC_64 0x00000000\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__MINGW_FPCLASS_DEFINED 1\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_FPCLASS_SNAN 0x0001\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_FPCLASS_QNAN 0x0002\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_FPCLASS_NINF 0x0004\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_FPCLASS_NN 0x0008\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_FPCLASS_ND 0x0010\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_FPCLASS_NZ 0x0020\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_FPCLASS_PZ 0x0040\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_FPCLASS_PD 0x0080\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_FPCLASS_PN 0x0100\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_FPCLASS_PINF 0x0200\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "_SW_UNEMULATED 0x0040\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "_SW_SQRTNEG 0x0080\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "_SW_STACKOVERFLOW 0x0200\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "_SW_STACKUNDERFLOW 0x0400\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_FPE_INVALID 0x81\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "_FPE_DENORMAL 0x82\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "_FPE_ZERODIVIDE 0x83\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "_FPE_OVERFLOW 0x84\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "_FPE_UNDERFLOW 0x85\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "_FPE_INEXACT 0x86\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "_FPE_UNEMULATED 0x87\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "_FPE_SQRTNEG 0x88\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "_FPE_STACKOVERFLOW 0x8a\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "_FPE_STACKUNDERFLOW 0x8b\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "_FPE_EXPLICITGEN 0x8c\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "CW_DEFAULT _CW_DEFAULT\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "MCW_PC _MCW_PC\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "PC_24 _PC_24\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "PC_53 _PC_53\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "PC_64 _PC_64\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "_CW_DEFAULT (_RC_NEAR+_EM_INVALID+_EM_ZERODIVIDE+_EM_OVERFLOW+_EM_UNDERFLOW+_EM_INEXACT+_EM_DENORMAL)\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "_clear87 _clearfp\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "_status87 _statusfp\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_fpecode (*(__fpecode()))\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_SIGN_DEFINED \0"
	.byte	0x1
	.uleb128 0x120
	.ascii "_copysignl copysignl\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_CFLOAT 1\0"
	.byte	0x4
	.file 58 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ciso646"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x3a
	.byte	0x4
	.file 59 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/climits"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x3b
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x2d
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_CLIMITS 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_LOCALE \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO \0"
	.file 60 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_print_push.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3c
	.byte	0x4
	.byte	0x1
	.uleb128 0x13
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_NFILE _NSTREAM_\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_NSTREAM_ 512\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_IOB_ENTRIES 20\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_FILE_DEFINED \0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "L_tmpnam (sizeof(_P_tmpdir) + 12)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "FILENAME_MAX 260\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "FOPEN_MAX 20\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_SYS_OPEN 20\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "TMP_MAX 32767\0"
	.file 61 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_off_t.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x2
	.ascii "_OFF_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "_OFF_T_ \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "_OFF64_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_FILE_OFFSET_BITS_SET_OFFT \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x55
	.ascii "_iob __iob_func()\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "_FPOS_T_DEFINED \0"
	.byte	0x2
	.uleb128 0x64
	.ascii "_FPOSOFF\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "_FPOSOFF(fp) ((long)(fp))\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_STDSTREAM_DEFINED \0"
	.byte	0x1
	.uleb128 0x73
	.ascii "stdin (&__iob_func()[0])\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "stdout (&__iob_func()[1])\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "stderr (&__iob_func()[2])\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "_IOREAD 0x0001\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "_IOWRT 0x0002\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "_IONBF 0x0004\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_IOMYBUF 0x0008\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "_IOEOF 0x0010\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_IOERR 0x0020\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_IOSTRG 0x0040\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "_IORW 0x0080\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "_TWO_DIGIT_EXPONENT 0x1\0"
	.byte	0x2
	.uleb128 0xc2
	.ascii "__MINGW_PRINTF_FORMAT\0"
	.byte	0x2
	.uleb128 0xc3
	.ascii "__MINGW_SCANF_FORMAT\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "__MINGW_PRINTF_FORMAT gnu_printf\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__MINGW_SCANF_FORMAT gnu_scanf\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "__builtin_vsnprintf __mingw_vsnprintf\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "__builtin_vsprintf __mingw_vsprintf\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "_FILE_OFFSET_BITS_SET_FSEEKO \0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "_FILE_OFFSET_BITS_SET_FTELLO \0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "popen _popen\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "pclose _pclose\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "_CRT_DIRECTORY_DEFINED \0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "_WSTDIO_DEFINED \0"
	.byte	0x3
	.uleb128 0x338
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_SWPRINTF_INL \0"
	.byte	0x2
	.uleb128 0xc
	.ascii "__mingw_ovr\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__mingw_ovr static __attribute__ ((__unused__)) __inline__ __cdecl\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x34f
	.ascii "wpopen _wpopen\0"
	.byte	0x2
	.uleb128 0x358
	.ascii "_CRT_GETPUTWCHAR_NOINLINE\0"
	.byte	0x1
	.uleb128 0x35b
	.ascii "getwchar() fgetwc(stdin)\0"
	.byte	0x1
	.uleb128 0x35c
	.ascii "putwchar(_c) fputwc((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x362
	.ascii "getwc(_stm) fgetwc(_stm)\0"
	.byte	0x1
	.uleb128 0x363
	.ascii "putwc(_c,_stm) fputwc(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x364
	.ascii "_putwc_nolock(_c,_stm) _fputwc_nolock(_c,_stm)\0"
	.byte	0x1
	.uleb128 0x365
	.ascii "_getwc_nolock(_c) _fgetwc_nolock(_c)\0"
	.byte	0x1
	.uleb128 0x368
	.ascii "_STDIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x36b
	.ascii "_fgetc_nolock(_stream) (--(_stream)->_cnt >= 0 ? 0xff & *(_stream)->_ptr++ : _filbuf(_stream))\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "_fputc_nolock(_c,_stream) (--(_stream)->_cnt >= 0 ? 0xff & (*(_stream)->_ptr++ = (char)(_c)) : _flsbuf((_c),(_stream)))\0"
	.byte	0x1
	.uleb128 0x36d
	.ascii "_getc_nolock(_stream) _fgetc_nolock(_stream)\0"
	.byte	0x1
	.uleb128 0x36e
	.ascii "_putc_nolock(_c,_stream) _fputc_nolock(_c,_stream)\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "_getchar_nolock() _getc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x370
	.ascii "_putchar_nolock(_c) _putc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x371
	.ascii "_getwchar_nolock() _getwc_nolock(stdin)\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "_putwchar_nolock(_c) _putwc_nolock((_c),stdout)\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "P_tmpdir _P_tmpdir\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "SYS_OPEN _SYS_OPEN\0"
	.byte	0x1
	.uleb128 0x391
	.ascii "__MINGW_MBWC_CONVERT_DEFINED \0"
	.file 62 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/stdio_s.h"
	.byte	0x3
	.uleb128 0x3bf
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STDIO_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.file 63 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_print_pop.h"
	.byte	0x3
	.uleb128 0x3c1
	.uleb128 0x3f
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x21
	.ascii "LC_ALL 0\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "LC_COLLATE 1\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "LC_CTYPE 2\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "LC_MONETARY 3\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "LC_NUMERIC 4\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "LC_TIME 5\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "LC_MIN LC_ALL\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "LC_MAX LC_TIME\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_LCONV_DEFINED \0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_CONFIG_LOCALE_SWT \0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_ENABLE_PER_THREAD_LOCALE 0x1\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_DISABLE_PER_THREAD_LOCALE 0x2\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_ENABLE_PER_THREAD_LOCALE_GLOBAL 0x10\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_DISABLE_PER_THREAD_LOCALE_GLOBAL 0x20\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_ENABLE_PER_THREAD_LOCALE_NEW 0x100\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_DISABLE_PER_THREAD_LOCALE_NEW 0x200\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "_WLOCALE_DEFINED \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CLOCALE 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "setlocale\0"
	.byte	0x2
	.uleb128 0x31
	.ascii "localeconv\0"
	.byte	0x4
	.file 64 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cmath"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x40
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x21
	.ascii "_CPP_TYPE_TRAITS_H 1\0"
	.byte	0x4
	.file 65 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ext/type_traits.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_TYPE_TRAITS 1\0"
	.byte	0x4
	.file 66 "C:/MinGW64/x86_64-w64-mingw32/include/math.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x42
	.byte	0x1
	.uleb128 0x7
	.ascii "_MATH_H_ \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_DOMAIN 1\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_SING 2\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_OVERFLOW 3\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_UNDERFLOW 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "_TLOSS 5\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_PLOSS 6\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DOMAIN _DOMAIN\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "SING _SING\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "OVERFLOW _OVERFLOW\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "UNDERFLOW _UNDERFLOW\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "TLOSS _TLOSS\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "PLOSS _PLOSS\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "M_E 2.7182818284590452354\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "M_LOG2E 1.4426950408889634074\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "M_LOG10E 0.43429448190325182765\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "M_LN2 0.69314718055994530942\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "M_LN10 2.30258509299404568402\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "M_PI 3.14159265358979323846\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "M_PI_2 1.57079632679489661923\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "M_PI_4 0.78539816339744830962\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "M_1_PI 0.31830988618379067154\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "M_2_PI 0.63661977236758134308\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "M_2_SQRTPI 1.12837916709551257390\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "M_SQRT2 1.41421356237309504880\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "M_SQRT1_2 0.70710678118654752440\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__MINGW_SOFTMATH \0"
	.byte	0x1
	.uleb128 0x70
	.ascii "_HUGE (* __MINGW_IMP_SYMBOL(_HUGE))\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "HUGE_VAL __builtin_huge_val()\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_EXCEPTION_DEFINED \0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__setusermatherr __mingw_setusermatherr\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "EDOM 33\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "ERANGE 34\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "_COMPLEX_DEFINED \0"
	.byte	0x1
	.uleb128 0xec
	.ascii "_CRT_MATHERR_DEFINED \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "FP_SNAN _FPCLASS_SNAN\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "FP_QNAN _FPCLASS_QNAN\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "FP_NINF _FPCLASS_NINF\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "FP_PINF _FPCLASS_PINF\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "FP_NDENORM _FPCLASS_ND\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "FP_PDENORM _FPCLASS_PD\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "FP_NZERO _FPCLASS_NZ\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "FP_PZERO _FPCLASS_PZ\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "FP_NNORM _FPCLASS_NN\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "FP_PNORM _FPCLASS_PN\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "HUGE_VALF __builtin_huge_valf()\0"
	.byte	0x1
	.uleb128 0x132
	.ascii "HUGE_VALL __builtin_huge_vall()\0"
	.byte	0x1
	.uleb128 0x133
	.ascii "INFINITY __builtin_inf()\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "NAN __builtin_nan(\"\")\0"
	.byte	0x1
	.uleb128 0x158
	.ascii "FP_NAN 0x0100\0"
	.byte	0x1
	.uleb128 0x159
	.ascii "FP_NORMAL 0x0400\0"
	.byte	0x1
	.uleb128 0x15a
	.ascii "FP_INFINITE (FP_NAN | FP_NORMAL)\0"
	.byte	0x1
	.uleb128 0x15b
	.ascii "FP_ZERO 0x4000\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "FP_SUBNORMAL (FP_NORMAL | FP_ZERO)\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "fpclassify(x) (sizeof (x) == sizeof (float) ? __fpclassifyf (x) : sizeof (x) == sizeof (double) ? __fpclassify (x) : __fpclassifyl (x))\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "isfinite(x) ((fpclassify(x) & FP_NAN) == 0)\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "isinf(x) (fpclassify(x) == FP_INFINITE)\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "isnan(x) (sizeof (x) == sizeof (float) ? __isnanf (x) : sizeof (x) == sizeof (double) ? __isnan (x) : __isnanl (x))\0"
	.byte	0x1
	.uleb128 0x1e5
	.ascii "isnormal(x) (fpclassify(x) == FP_NORMAL)\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "signbit(x) (sizeof (x) == sizeof (float) ? __signbitf (x) : sizeof (x) == sizeof (double) ? __signbit (x) : __signbitl (x))\0"
	.byte	0x1
	.uleb128 0x263
	.ascii "FP_ILOGB0 ((int)0x80000000)\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "FP_ILOGBNAN ((int)0x80000000)\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "_nan() nan(\"\")\0"
	.byte	0x1
	.uleb128 0x3a9
	.ascii "_nanf() nanf(\"\")\0"
	.byte	0x1
	.uleb128 0x3aa
	.ascii "_nanl() nanl(\"\")\0"
	.byte	0x1
	.uleb128 0x3dd
	.ascii "isgreater(x,y) __builtin_isgreater(x, y)\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "isgreaterequal(x,y) __builtin_isgreaterequal(x, y)\0"
	.byte	0x1
	.uleb128 0x3df
	.ascii "isless(x,y) __builtin_isless(x, y)\0"
	.byte	0x1
	.uleb128 0x3e0
	.ascii "islessequal(x,y) __builtin_islessequal(x, y)\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "islessgreater(x,y) __builtin_islessgreater(x, y)\0"
	.byte	0x1
	.uleb128 0x3e2
	.ascii "isunordered(x,y) __builtin_isunordered(x, y)\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "_copysignl copysignl\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "_hypotl hypotl\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "matherr _matherr\0"
	.byte	0x1
	.uleb128 0x413
	.ascii "HUGE _HUGE\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2f
	.ascii "_GLIBCXX_CMATH 1\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "abs\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "div\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "acos\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "asin\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "atan\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "atan2\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "ceil\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "cos\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "cosh\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "exp\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "fabs\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "floor\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "fmod\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "frexp\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "ldexp\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "log\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "log10\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "modf\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "pow\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "sin\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "sinh\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "sqrt\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "tan\0"
	.byte	0x2
	.uleb128 0x49
	.ascii "tanh\0"
	.byte	0x2
	.uleb128 0x21e
	.ascii "fpclassify\0"
	.byte	0x2
	.uleb128 0x21f
	.ascii "isfinite\0"
	.byte	0x2
	.uleb128 0x220
	.ascii "isinf\0"
	.byte	0x2
	.uleb128 0x221
	.ascii "isnan\0"
	.byte	0x2
	.uleb128 0x222
	.ascii "isnormal\0"
	.byte	0x2
	.uleb128 0x223
	.ascii "signbit\0"
	.byte	0x2
	.uleb128 0x224
	.ascii "isgreater\0"
	.byte	0x2
	.uleb128 0x225
	.ascii "isgreaterequal\0"
	.byte	0x2
	.uleb128 0x226
	.ascii "isless\0"
	.byte	0x2
	.uleb128 0x227
	.ascii "islessequal\0"
	.byte	0x2
	.uleb128 0x228
	.ascii "islessgreater\0"
	.byte	0x2
	.uleb128 0x229
	.ascii "isunordered\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_SETJMP \0"
	.byte	0x1
	.uleb128 0x74
	.ascii "_JBLEN 16\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "_JMP_BUF_DEFINED \0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "setjmp(BUF) _setjmp((BUF), __builtin_frame_address (0))\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSETJMP 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "longjmp\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_SIGNAL \0"
	.file 67 "C:/MinGW64/x86_64-w64-mingw32/include/pthread_signal.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x43
	.byte	0x1
	.uleb128 0x18
	.ascii "WIN_PTHREADS_SIGNAL_H \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "pthread_sigmask(H,S1,S2) 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x11
	.ascii "_SIG_ATOMIC_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "NSIG 23\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SIGINT 2\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SIGILL 4\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SIGABRT_COMPAT 6\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SIGFPE 8\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "SIGSEGV 11\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "SIGTERM 15\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "SIGBREAK 21\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "SIGABRT 22\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "SIGABRT2 22\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "SIG_DFL (__p_sig_fn_t)0\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "SIG_IGN (__p_sig_fn_t)1\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "SIG_GET (__p_sig_fn_t)2\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "SIG_SGE (__p_sig_fn_t)3\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "SIG_ACK (__p_sig_fn_t)4\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "SIG_ERR (__p_sig_fn_t)-1\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_pxcptinfoptrs (*__pxcptinfoptrs())\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSIGNAL 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "raise\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xb
	.file 68 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stdarg.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x44
	.file 69 "C:/MinGW64/x86_64-w64-mingw32/include/stdarg.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x45
	.byte	0x1
	.uleb128 0x24
	.ascii "_STDARG_H \0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_ANSI_STDARG_H_ \0"
	.byte	0x2
	.uleb128 0x27
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "va_start(v,l) __builtin_va_start(v,l)\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "va_end(v) __builtin_va_end(v)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "va_arg(v,l) __builtin_va_arg(v,l)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__va_copy(d,s) __builtin_va_copy(d,s)\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_VA_LIST_ \0"
	.byte	0x1
	.uleb128 0x74
	.ascii "_VA_LIST \0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_VA_LIST_T_H \0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__va_list__ \0"
	.file 70 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_stdarg.h"
	.byte	0x3
	.uleb128 0x8c
	.uleb128 0x46
	.byte	0x1
	.uleb128 0x8
	.ascii "_INC_STDARG \0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSTDARG 1\0"
	.byte	0x4
	.file 71 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/cstddef"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x47
	.byte	0x1
	.uleb128 0x28
	.ascii "_GLIBCXX_CSTDDEF 1\0"
	.file 72 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x48
	.file 73 "C:/MinGW64/x86_64-w64-mingw32/include/stddef.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x49
	.byte	0x1
	.uleb128 0xa
	.ascii "_INC_STDDEF \0"
	.byte	0x1
	.uleb128 0x19
	.ascii "_threadid (__threadid())\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_STDDEF_H_ \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "_ANSI_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__STDDEF_H__ \0"
	.byte	0x2
	.uleb128 0xa3
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xf0
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x151
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x18a
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "NULL __null\0"
	.byte	0x2
	.uleb128 0x199
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSTDIO 1\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "clearerr\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "fclose\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "feof\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "ferror\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "fflush\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "fgetc\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "fgetpos\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "fgets\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "fopen\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "fprintf\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "fputc\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "fputs\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "fread\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "freopen\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "fscanf\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "fseek\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "fsetpos\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "ftell\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "fwrite\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "getc\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "getchar\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "gets\0"
	.byte	0x2
	.uleb128 0x4c
	.ascii "perror\0"
	.byte	0x2
	.uleb128 0x4d
	.ascii "printf\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "putc\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "putchar\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "puts\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "remove\0"
	.byte	0x2
	.uleb128 0x52
	.ascii "rename\0"
	.byte	0x2
	.uleb128 0x53
	.ascii "rewind\0"
	.byte	0x2
	.uleb128 0x54
	.ascii "scanf\0"
	.byte	0x2
	.uleb128 0x55
	.ascii "setbuf\0"
	.byte	0x2
	.uleb128 0x56
	.ascii "setvbuf\0"
	.byte	0x2
	.uleb128 0x57
	.ascii "sprintf\0"
	.byte	0x2
	.uleb128 0x58
	.ascii "sscanf\0"
	.byte	0x2
	.uleb128 0x59
	.ascii "tmpfile\0"
	.byte	0x2
	.uleb128 0x5a
	.ascii "tmpnam\0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "ungetc\0"
	.byte	0x2
	.uleb128 0x5c
	.ascii "vfprintf\0"
	.byte	0x2
	.uleb128 0x5d
	.ascii "vprintf\0"
	.byte	0x2
	.uleb128 0x5e
	.ascii "vsprintf\0"
	.byte	0x2
	.uleb128 0x97
	.ascii "snprintf\0"
	.byte	0x2
	.uleb128 0x98
	.ascii "vfscanf\0"
	.byte	0x2
	.uleb128 0x99
	.ascii "vscanf\0"
	.byte	0x2
	.uleb128 0x9a
	.ascii "vsnprintf\0"
	.byte	0x2
	.uleb128 0x9b
	.ascii "vsscanf\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_CSTDLIB 1\0"
	.byte	0x2
	.uleb128 0x4b
	.ascii "abort\0"
	.byte	0x2
	.uleb128 0x4c
	.ascii "abs\0"
	.byte	0x2
	.uleb128 0x4d
	.ascii "atexit\0"
	.byte	0x2
	.uleb128 0x53
	.ascii "atof\0"
	.byte	0x2
	.uleb128 0x54
	.ascii "atoi\0"
	.byte	0x2
	.uleb128 0x55
	.ascii "atol\0"
	.byte	0x2
	.uleb128 0x56
	.ascii "bsearch\0"
	.byte	0x2
	.uleb128 0x57
	.ascii "calloc\0"
	.byte	0x2
	.uleb128 0x58
	.ascii "div\0"
	.byte	0x2
	.uleb128 0x59
	.ascii "exit\0"
	.byte	0x2
	.uleb128 0x5a
	.ascii "free\0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "getenv\0"
	.byte	0x2
	.uleb128 0x5c
	.ascii "labs\0"
	.byte	0x2
	.uleb128 0x5d
	.ascii "ldiv\0"
	.byte	0x2
	.uleb128 0x5e
	.ascii "malloc\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "mblen\0"
	.byte	0x2
	.uleb128 0x60
	.ascii "mbstowcs\0"
	.byte	0x2
	.uleb128 0x61
	.ascii "mbtowc\0"
	.byte	0x2
	.uleb128 0x62
	.ascii "qsort\0"
	.byte	0x2
	.uleb128 0x68
	.ascii "rand\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "realloc\0"
	.byte	0x2
	.uleb128 0x6a
	.ascii "srand\0"
	.byte	0x2
	.uleb128 0x6b
	.ascii "strtod\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "strtol\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "strtoul\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "system\0"
	.byte	0x2
	.uleb128 0x6f
	.ascii "wcstombs\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "wctomb\0"
	.byte	0x2
	.uleb128 0xbb
	.ascii "_Exit\0"
	.byte	0x2
	.uleb128 0xbc
	.ascii "llabs\0"
	.byte	0x2
	.uleb128 0xbd
	.ascii "lldiv\0"
	.byte	0x2
	.uleb128 0xbe
	.ascii "atoll\0"
	.byte	0x2
	.uleb128 0xbf
	.ascii "strtoll\0"
	.byte	0x2
	.uleb128 0xc0
	.ascii "strtoull\0"
	.byte	0x2
	.uleb128 0xc1
	.ascii "strtof\0"
	.byte	0x2
	.uleb128 0xc2
	.ascii "strtold\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STRING \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "_NLSCMP_DEFINED \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "_NLSCMPERROR 2147483647\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_WConst_return _CONST_RETURN\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_CRT_MEMORY_DEFINED \0"
	.byte	0x2
	.uleb128 0x59
	.ascii "strtok_r\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "strncasecmp _strnicmp\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "strcasecmp _stricmp\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "_WSTRING_DEFINED \0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "wcswcs wcsstr\0"
	.file 74 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/string_s.h"
	.byte	0x3
	.uleb128 0xb4
	.uleb128 0x4a
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_STRING_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSTRING 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "memchr\0"
	.byte	0x2
	.uleb128 0x31
	.ascii "memcmp\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "memcpy\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "memmove\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "memset\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "strcat\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "strchr\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "strcmp\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "strcoll\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "strcpy\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "strcspn\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "strerror\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "strlen\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "strncat\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "strncmp\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "strncpy\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "strpbrk\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "strrchr\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "strspn\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "strstr\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "strtok\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "strxfrm\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x7
	.ascii "_TIME_H_ \0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_CLOCK_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x57
	.ascii "_TM_DEFINED \0"
	.byte	0x1
	.uleb128 0x65
	.ascii "CLOCKS_PER_SEC 1000\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "_INC_WTIME_INL \0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "_WTIME_DEFINED \0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "CLK_TCK CLOCKS_PER_SEC\0"
	.file 75 "C:/MinGW64/x86_64-w64-mingw32/include/_timeval.h"
	.byte	0x3
	.uleb128 0x100
	.uleb128 0x4b
	.byte	0x1
	.uleb128 0x8
	.ascii "_TIMEVAL_DEFINED \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "timerisset(tvp) ((tvp)->tv_sec || (tvp)->tv_usec)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "timercmp(tvp,uvp,cmp) ((tvp)->tv_sec cmp (uvp)->tv_sec || ((tvp)->tv_sec == (uvp)->tv_sec && (tvp)->tv_usec cmp (uvp)->tv_usec))\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "timerclear(tvp) (tvp)->tv_sec = (tvp)->tv_usec = 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x103
	.ascii "_TIMEZONE_DEFINED \0"
	.file 76 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/time_s.h"
	.byte	0x3
	.uleb128 0x112
	.uleb128 0x4c
	.byte	0x1
	.uleb128 0x7
	.ascii "_TIME_H__S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.file 77 "C:/MinGW64/x86_64-w64-mingw32/include/sys/timeb.h"
	.byte	0x3
	.uleb128 0x115
	.uleb128 0x4d
	.byte	0x1
	.uleb128 0x7
	.ascii "_TIMEB_H_ \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_TIMEB_DEFINED \0"
	.byte	0x1
	.uleb128 0x51
	.ascii "_timeb __timeb64\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_TIMESPEC_DEFINED \0"
	.file 78 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h"
	.byte	0x3
	.uleb128 0x7c
	.uleb128 0x4e
	.byte	0x1
	.uleb128 0x8
	.ascii "_TIMEB_H_S \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x4d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 79 "C:/MinGW64/x86_64-w64-mingw32/include/pthread_time.h"
	.byte	0x3
	.uleb128 0x11d
	.uleb128 0x4f
	.byte	0x1
	.uleb128 0x1a
	.ascii "WIN_PTHREADS_TIME_H \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "_POSIX_TIMERS 200809L\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_POSIX_MONOTONIC_CLOCK 200809L\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_POSIX_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_POSIX_THREAD_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__clockid_t_defined 1\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "TIMER_ABSTIME 1\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "CLOCK_REALTIME 0\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "CLOCK_MONOTONIC 1\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "CLOCK_PROCESS_CPUTIME_ID 2\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "CLOCK_THREAD_CPUTIME_ID 3\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "WINPTHREAD_API \0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "WINPTHREAD_API\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CTIME 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "clock\0"
	.byte	0x2
	.uleb128 0x31
	.ascii "difftime\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "mktime\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "time\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "asctime\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "ctime\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "gmtime\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "localtime\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "strftime\0"
	.byte	0x4
	.file 80 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/algorithm"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x50
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_ALGORITHM 1\0"
	.file 81 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/utility"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x51
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_UTILITY 1\0"
	.file 82 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_relops.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x52
	.byte	0x1
	.uleb128 0x41
	.ascii "_STL_RELOPS_H 1\0"
	.byte	0x4
	.file 83 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_pair.h"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x53
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_PAIR_H 1\0"
	.file 84 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/move.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x54
	.byte	0x1
	.uleb128 0x1f
	.ascii "_MOVE_H 1\0"
	.file 85 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x55
	.byte	0x1
	.uleb128 0x1f
	.ascii "_CONCEPT_CHECK_H 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__glibcxx_function_requires(...) \0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__glibcxx_class_requires(_a,_b) \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__glibcxx_class_requires2(_a,_b,_c) \0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__glibcxx_class_requires3(_a,_b,_c,_d) \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__glibcxx_class_requires4(_a,_b,_c,_d,_e) \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x91
	.ascii "_GLIBCXX_MOVE(__val) (__val)\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "_GLIBCXX_FORWARD(_Tp,__val) (__val)\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 86 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_algobase.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x56
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_ALGOBASE_H 1\0"
	.file 87 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/functexcept.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x57
	.byte	0x1
	.uleb128 0x25
	.ascii "_FUNCTEXCEPT_H 1\0"
	.file 88 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/exception_defines.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x58
	.byte	0x1
	.uleb128 0x1f
	.ascii "_EXCEPTION_DEFINES_H 1\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__try try\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__catch(X) catch(X)\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__throw_exception_again throw\0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_NUMERIC_TRAITS 1\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__glibcxx_signed(_Tp) ((_Tp)(-1) < 0)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__glibcxx_digits(_Tp) (sizeof(_Tp) * __CHAR_BIT__ - __glibcxx_signed(_Tp))\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__glibcxx_min(_Tp) (__glibcxx_signed(_Tp) ? (_Tp)1 << __glibcxx_digits(_Tp) : (_Tp)0)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__glibcxx_max(_Tp) (__glibcxx_signed(_Tp) ? (((((_Tp)1 << (__glibcxx_digits(_Tp) - 1)) - 1) << 1) + 1) : ~(_Tp)0)\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "__glibcxx_signed\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "__glibcxx_digits\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "__glibcxx_min\0"
	.byte	0x2
	.uleb128 0x52
	.ascii "__glibcxx_max\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "__glibcxx_floating(_Tp,_Fval,_Dval,_LDval) (std::__are_same<_Tp, float>::__value ? _Fval : std::__are_same<_Tp, double>::__value ? _Dval : _LDval)\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__glibcxx_max_digits10(_Tp) (2 + __glibcxx_floating(_Tp, __FLT_MANT_DIG__, __DBL_MANT_DIG__, __LDBL_MANT_DIG__) * 643L / 2136)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__glibcxx_digits10(_Tp) __glibcxx_floating(_Tp, __FLT_DIG__, __DBL_DIG__, __LDBL_DIG__)\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__glibcxx_max_exponent10(_Tp) __glibcxx_floating(_Tp, __FLT_MAX_10_EXP__, __DBL_MAX_10_EXP__, __LDBL_MAX_10_EXP__)\0"
	.byte	0x2
	.uleb128 0x85
	.ascii "__glibcxx_floating\0"
	.byte	0x2
	.uleb128 0x86
	.ascii "__glibcxx_max_digits10\0"
	.byte	0x2
	.uleb128 0x87
	.ascii "__glibcxx_digits10\0"
	.byte	0x2
	.uleb128 0x88
	.ascii "__glibcxx_max_exponent10\0"
	.byte	0x4
	.file 89 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_iterator_base_types.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x59
	.byte	0x1
	.uleb128 0x3c
	.ascii "_STL_ITERATOR_BASE_TYPES_H 1\0"
	.byte	0x4
	.file 90 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_iterator_base_funcs.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x5a
	.byte	0x1
	.uleb128 0x3c
	.ascii "_STL_ITERATOR_BASE_FUNCS_H 1\0"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_DEBUG_MACRO_SWITCH_H 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_GLIBCXX_DEBUG_ASSERT(_Condition) \0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_GLIBCXX_DEBUG_PEDASSERT(_Condition) \0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_GLIBCXX_DEBUG_ONLY(_Statement) ;\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__glibcxx_requires_cond(_Cond,_Msg) \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__glibcxx_requires_valid_range(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__glibcxx_requires_non_empty_range(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__glibcxx_requires_sorted(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__glibcxx_requires_sorted_pred(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__glibcxx_requires_sorted_set(_First1,_Last1,_First2) \0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__glibcxx_requires_sorted_set_pred(_First1,_Last1,_First2,_Pred) \0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__glibcxx_requires_partitioned_lower(_First,_Last,_Value) \0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__glibcxx_requires_partitioned_upper(_First,_Last,_Value) \0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__glibcxx_requires_partitioned_lower_pred(_First,_Last,_Value,_Pred) \0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__glibcxx_requires_partitioned_upper_pred(_First,_Last,_Value,_Pred) \0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__glibcxx_requires_heap(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__glibcxx_requires_heap_pred(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__glibcxx_requires_nonempty() \0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__glibcxx_requires_string(_String) \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__glibcxx_requires_string_len(_String,_Len) \0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__glibcxx_requires_subscript(_N) \0"
	.byte	0x4
	.byte	0x4
	.file 91 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_iterator.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x5b
	.byte	0x1
	.uleb128 0x3d
	.ascii "_STL_ITERATOR_H 1\0"
	.file 92 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/ptr_traits.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x5c
	.byte	0x1
	.uleb128 0x1f
	.ascii "_PTR_TRAITS_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x489
	.ascii "_GLIBCXX_MAKE_MOVE_ITERATOR(_Iter) (_Iter)\0"
	.byte	0x1
	.uleb128 0x48a
	.ascii "_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(_Iter) (_Iter)\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_PREDEFINED_OPS_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1f7
	.ascii "_GLIBCXX_MOVE3(_Tp,_Up,_Vp) std::copy(_Tp, _Up, _Vp)\0"
	.byte	0x1
	.uleb128 0x2ab
	.ascii "_GLIBCXX_MOVE_BACKWARD3(_Tp,_Up,_Vp) std::copy_backward(_Tp, _Up, _Vp)\0"
	.byte	0x4
	.file 93 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_algo.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x5d
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_ALGO_H 1\0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xd
	.byte	0x4
	.file 94 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/algorithmfwd.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x5e
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_ALGORITHMFWD_H 1\0"
	.byte	0x4
	.file 95 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_heap.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x5f
	.byte	0x1
	.uleb128 0x38
	.ascii "_STL_HEAP_H 1\0"
	.byte	0x4
	.file 96 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_tempbuf.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x60
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_TEMPBUF_H 1\0"
	.file 97 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_construct.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x61
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_CONSTRUCT_H 1\0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x23
	.ascii "_NEW \0"
	.file 98 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/exception"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x62
	.byte	0x1
	.uleb128 0x1f
	.ascii "__EXCEPTION__ \0"
	.file 99 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/atomic_lockfree_defines.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x63
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_ATOMIC_LOCK_FREE_H 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 100 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ext/alloc_traits.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x64
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_ALLOC_TRAITS_H 1\0"
	.file 101 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/allocator.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x65
	.byte	0x1
	.uleb128 0x2c
	.ascii "_ALLOCATOR_H 1\0"
	.file 102 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/c++allocator.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x66
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CXX_ALLOCATOR_H 1\0"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x1e
	.ascii "_NEW_ALLOCATOR_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x34
	.ascii "__allocator_base __gnu_cxx::new_allocator\0"
	.byte	0x4
	.file 103 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/memoryfwd.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x67
	.byte	0x1
	.uleb128 0x2c
	.ascii "_MEMORYFWD_H 1\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x9c
	.ascii "__allocator_base\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 104 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bitset"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x68
	.byte	0x1
	.uleb128 0x2b
	.ascii "_GLIBCXX_BITSET 1\0"
	.file 105 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/string"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x69
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_STRING 1\0"
	.file 106 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stringfwd.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x6a
	.byte	0x1
	.uleb128 0x23
	.ascii "_STRINGFWD_H 1\0"
	.byte	0x4
	.file 107 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/char_traits.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x6b
	.byte	0x1
	.uleb128 0x23
	.ascii "_CHAR_TRAITS_H 1\0"
	.file 108 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/postypes.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x6c
	.byte	0x1
	.uleb128 0x24
	.ascii "_GLIBCXX_POSTYPES_H 1\0"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_WCHAR \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x3c
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "__USE_MINGW_STRTOX 1\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "WCHAR_MIN 0U\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "WCHAR_MAX 0xffffU\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_FSIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_wfinddata_t _wfinddata64i32_t\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "_wfinddatai64_t _wfinddata64_t\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "_wfindfirst _wfindfirst64i32\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "_wfindnext _wfindnext64i32\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_wfindfirsti64 _wfindfirst64\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "_wfindnexti64 _wfindnext64\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "_WFINDDATA_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x96
	.ascii "_WConst_return _CONST_RETURN\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "_UPPER 0x1\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "_LOWER 0x2\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "_DIGIT 0x4\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_SPACE 0x8\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "_PUNCT 0x10\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "_CONTROL 0x20\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "_BLANK 0x40\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "_HEX 0x80\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "_LEADBYTE 0x8000\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "_ALPHA (0x0100|_UPPER|_LOWER)\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "_WDIRECT_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WIO_DEFINED \0"
	.byte	0x1
	.uleb128 0x130
	.ascii "_WPROCESS_DEFINED \0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "_INO_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x174
	.ascii "_DEV_T_DEFINED \0"
	.file 109 "C:/MinGW64/x86_64-w64-mingw32/include/_mingw_stat64.h"
	.byte	0x3
	.uleb128 0x17c
	.uleb128 0x6d
	.byte	0x1
	.uleb128 0xb
	.ascii "_fstat _fstat64i32\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "_fstati64 _fstat64\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_stat _stat64i32\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "_stati64 _stat64\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "_wstat _wstat64i32\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "_wstati64 _wstat64\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "__stat64 _stat64\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "stat64 _stat64\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "fstat64 _fstat64\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "_STAT_DEFINED \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x17f
	.ascii "_WSTAT_DEFINED \0"
	.byte	0x1
	.uleb128 0x189
	.ascii "_WCONIO_DEFINED \0"
	.file 110 "C:/MinGW64/x86_64-w64-mingw32/include/sec_api/wchar_s.h"
	.byte	0x3
	.uleb128 0x410
	.uleb128 0x6e
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_WCHAR_S \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x412
	.uleb128 0x3f
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x30
	.ascii "_GLIBCXX_CWCHAR 1\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "btowc\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "fgetwc\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "fgetws\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "fputwc\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "fputws\0"
	.byte	0x2
	.uleb128 0x49
	.ascii "fwide\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "fwprintf\0"
	.byte	0x2
	.uleb128 0x4b
	.ascii "fwscanf\0"
	.byte	0x2
	.uleb128 0x4c
	.ascii "getwc\0"
	.byte	0x2
	.uleb128 0x4d
	.ascii "getwchar\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "mbrlen\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "mbrtowc\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "mbsinit\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "mbsrtowcs\0"
	.byte	0x2
	.uleb128 0x52
	.ascii "putwc\0"
	.byte	0x2
	.uleb128 0x53
	.ascii "putwchar\0"
	.byte	0x2
	.uleb128 0x54
	.ascii "swprintf\0"
	.byte	0x2
	.uleb128 0x55
	.ascii "swscanf\0"
	.byte	0x2
	.uleb128 0x56
	.ascii "ungetwc\0"
	.byte	0x2
	.uleb128 0x57
	.ascii "vfwprintf\0"
	.byte	0x2
	.uleb128 0x59
	.ascii "vfwscanf\0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "vswprintf\0"
	.byte	0x2
	.uleb128 0x5d
	.ascii "vswscanf\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "vwprintf\0"
	.byte	0x2
	.uleb128 0x61
	.ascii "vwscanf\0"
	.byte	0x2
	.uleb128 0x63
	.ascii "wcrtomb\0"
	.byte	0x2
	.uleb128 0x64
	.ascii "wcscat\0"
	.byte	0x2
	.uleb128 0x65
	.ascii "wcschr\0"
	.byte	0x2
	.uleb128 0x66
	.ascii "wcscmp\0"
	.byte	0x2
	.uleb128 0x67
	.ascii "wcscoll\0"
	.byte	0x2
	.uleb128 0x68
	.ascii "wcscpy\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "wcscspn\0"
	.byte	0x2
	.uleb128 0x6a
	.ascii "wcsftime\0"
	.byte	0x2
	.uleb128 0x6b
	.ascii "wcslen\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "wcsncat\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "wcsncmp\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "wcsncpy\0"
	.byte	0x2
	.uleb128 0x6f
	.ascii "wcspbrk\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "wcsrchr\0"
	.byte	0x2
	.uleb128 0x71
	.ascii "wcsrtombs\0"
	.byte	0x2
	.uleb128 0x72
	.ascii "wcsspn\0"
	.byte	0x2
	.uleb128 0x73
	.ascii "wcsstr\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "wcstod\0"
	.byte	0x2
	.uleb128 0x76
	.ascii "wcstof\0"
	.byte	0x2
	.uleb128 0x78
	.ascii "wcstok\0"
	.byte	0x2
	.uleb128 0x79
	.ascii "wcstol\0"
	.byte	0x2
	.uleb128 0x7a
	.ascii "wcstoul\0"
	.byte	0x2
	.uleb128 0x7b
	.ascii "wcsxfrm\0"
	.byte	0x2
	.uleb128 0x7c
	.ascii "wctob\0"
	.byte	0x2
	.uleb128 0x7d
	.ascii "wmemchr\0"
	.byte	0x2
	.uleb128 0x7e
	.ascii "wmemcmp\0"
	.byte	0x2
	.uleb128 0x7f
	.ascii "wmemcpy\0"
	.byte	0x2
	.uleb128 0x80
	.ascii "wmemmove\0"
	.byte	0x2
	.uleb128 0x81
	.ascii "wmemset\0"
	.byte	0x2
	.uleb128 0x82
	.ascii "wprintf\0"
	.byte	0x2
	.uleb128 0x83
	.ascii "wscanf\0"
	.byte	0x2
	.uleb128 0xed
	.ascii "wcstold\0"
	.byte	0x2
	.uleb128 0xee
	.ascii "wcstoll\0"
	.byte	0x2
	.uleb128 0xef
	.ascii "wcstoull\0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.file 111 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/localefwd.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6f
	.byte	0x1
	.uleb128 0x23
	.ascii "_LOCALE_FWD_H 1\0"
	.file 112 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/c++locale.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x70
	.byte	0x1
	.uleb128 0x25
	.ascii "_GLIBCXX_CXX_LOCALE_H 1\0"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.uleb128 0x2b
	.ascii "_GLIBCXX_NUM_CATEGORIES 0\0"
	.byte	0x4
	.file 113 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/iosfwd"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x71
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_IOSFWD 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.file 114 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/ostream_insert.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x72
	.byte	0x1
	.uleb128 0x1f
	.ascii "_OSTREAM_INSERT_H 1\0"
	.file 115 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/cxxabi_forced.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x73
	.byte	0x1
	.uleb128 0x20
	.ascii "_CXXABI_FORCED_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 116 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_function.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x74
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_FUNCTION_H 1\0"
	.file 117 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/backward/binders.h"
	.byte	0x3
	.uleb128 0x43c
	.uleb128 0x75
	.byte	0x1
	.uleb128 0x39
	.ascii "_BACKWARD_BINDERS_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 118 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/range_access.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x76
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_RANGE_ACCESS_H 1\0"
	.byte	0x4
	.file 119 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/basic_string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x77
	.byte	0x1
	.uleb128 0x23
	.ascii "_BASIC_STRING_H 1\0"
	.file 120 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ext/atomicity.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x78
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_ATOMICITY_H 1\0"
	.file 121 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/gthr.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x79
	.byte	0x1
	.uleb128 0x1b
	.ascii "_GLIBCXX_GCC_GTHR_H \0"
	.byte	0x2
	.uleb128 0x8c
	.ascii "_GLIBCXX_GTHREAD_USE_WEAK\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_GLIBCXX_GTHREAD_USE_WEAK 0\0"
	.file 122 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/gthr-default.h"
	.byte	0x3
	.uleb128 0x94
	.uleb128 0x7a
	.byte	0x1
	.uleb128 0x1b
	.ascii "_GLIBCXX_GCC_GTHR_POSIX_H \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__GTHREADS 1\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__GTHREADS_CXX0X 1\0"
	.file 123 "C:/MinGW64/x86_64-w64-mingw32/include/pthread.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x7b
	.byte	0x1
	.uleb128 0x3c
	.ascii "WIN_PTHREADS_H \0"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x49
	.byte	0x4
	.byte	0x4
	.file 124 "C:/MinGW64/x86_64-w64-mingw32/include/sys/types.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x7c
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_TYPES \0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_PID_T_ \0"
	.byte	0x2
	.uleb128 0x43
	.ascii "pid_t\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_MODE_T_ \0"
	.byte	0x1
	.uleb128 0x65
	.ascii "_SIGSET_T_ \0"
	.byte	0x4
	.file 125 "C:/MinGW64/x86_64-w64-mingw32/include/process.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x7d
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_PROCESS \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_P_WAIT 0\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_P_NOWAIT 1\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_OLD_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "_P_NOWAITO 3\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "_P_DETACH 4\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_P_OVERLAY 2\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "_WAIT_CHILD 0\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_WAIT_GRANDCHILD 1\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "P_WAIT _P_WAIT\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "P_NOWAIT _P_NOWAIT\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "P_OVERLAY _P_OVERLAY\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "OLD_P_OVERLAY _OLD_P_OVERLAY\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "P_NOWAITO _P_NOWAITO\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "P_DETACH _P_DETACH\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "WAIT_CHILD _WAIT_CHILD\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "WAIT_GRANDCHILD _WAIT_GRANDCHILD\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x2d
	.byte	0x4
	.file 126 "C:/MinGW64/x86_64-w64-mingw32/include/pthread_compat.h"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x7e
	.byte	0x1
	.uleb128 0x3d
	.ascii "WIN_PTHREADS_PTHREAD_COMPAT_H \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "WINPTHREADS_INLINE inline\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "WINPTHREADS_ATTRIBUTE(X) __attribute__(X)\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "WINPTHREADS_SECTION(X) __section__(X)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4e
	.ascii "__WINPTHREADS_VERSION_MAJOR 0\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__WINPTHREADS_VERSION_MINOR 5\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__WINPTHREADS_VERSION_PATCHLEVEL 0\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__WINPTHREADS_VERSION 0x00050000\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "WINPTHREAD_API \0"
	.byte	0x1
	.uleb128 0x62
	.ascii "RWLS_PER_THREAD 8\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "PTHREAD_CANCEL_DISABLE 0\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "PTHREAD_CANCEL_ENABLE 0x01\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "PTHREAD_CANCEL_DEFERRED 0\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "PTHREAD_CANCEL_ASYNCHRONOUS 0x02\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "PTHREAD_CREATE_JOINABLE 0\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "PTHREAD_CREATE_DETACHED 0x04\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "PTHREAD_EXPLICIT_SCHED 0\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "PTHREAD_INHERIT_SCHED 0x08\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "PTHREAD_SCOPE_PROCESS 0\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "PTHREAD_SCOPE_SYSTEM 0x10\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "PTHREAD_DEFAULT_ATTR (PTHREAD_CANCEL_ENABLE)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "PTHREAD_CANCELED ((void *) (intptr_t) 0xDEADBEEF)\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_PTHREAD_NULL_THREAD ((pthread_t) 0)\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "PTHREAD_ONCE_INIT 0\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "PTHREAD_DESTRUCTOR_ITERATIONS 256\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "PTHREAD_KEYS_MAX (1<<20)\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "PTHREAD_MUTEX_NORMAL 0\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "PTHREAD_MUTEX_ERRORCHECK 1\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "PTHREAD_MUTEX_RECURSIVE 2\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "PTHREAD_MUTEX_DEFAULT PTHREAD_MUTEX_NORMAL\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "PTHREAD_MUTEX_SHARED 1\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "PTHREAD_MUTEX_PRIVATE 0\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "PTHREAD_PRIO_NONE 0\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "PTHREAD_PRIO_INHERIT 8\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "PTHREAD_PRIO_PROTECT 16\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "PTHREAD_PRIO_MULT 32\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "PTHREAD_PROCESS_SHARED 1\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "PTHREAD_PROCESS_PRIVATE 0\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "PTHREAD_MUTEX_FAST_NP PTHREAD_MUTEX_NORMAL\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "PTHREAD_MUTEX_TIMED_NP PTHREAD_MUTEX_FAST_NP\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "PTHREAD_MUTEX_ADAPTIVE_NP PTHREAD_MUTEX_FAST_NP\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "PTHREAD_MUTEX_ERRORCHECK_NP PTHREAD_MUTEX_ERRORCHECK\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "PTHREAD_MUTEX_RECURSIVE_NP PTHREAD_MUTEX_RECURSIVE\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "PTHREAD_BARRIER_SERIAL_THREAD 1\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "MAX_READ_LOCKS (INT_MAX - 1)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "pthread_atfork(F1,F2,F3) 0\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "pthread_mutex_getprioceiling(M,P) ENOTSUP\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "pthread_mutex_setprioceiling(M,P) ENOTSUP\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "pthread_getcpuclockid(T,C) ENOTSUP\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "pthread_attr_getguardsize(A,S) ENOTSUP\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "pthread_attr_setgaurdsize(A,S) ENOTSUP\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "pthread_cleanup_push(F,A) { const _pthread_cleanup _pthread_cup = {(F), (A), *pthread_getclean()}; __sync_synchronize(); *pthread_getclean() = (_pthread_cleanup *) &_pthread_cup; __sync_synchronize()\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "pthread_cleanup_pop(E) (*pthread_getclean() = _pthread_cup.next, (E?_pthread_cup.func((pthread_once_t *)_pthread_cup.arg):0));}\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "SCHED_OTHER 0\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "SCHED_FIFO 1\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "SCHED_RR 2\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "SCHED_MIN SCHED_OTHER\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "SCHED_MAX SCHED_RR\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "PTHREAD_MUTEX_NORMAL 0\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "PTHREAD_MUTEX_ERRORCHECK 1\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "PTHREAD_MUTEX_RECURSIVE 2\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "GENERIC_INITIALIZER ((void *) (size_t) -1)\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "GENERIC_ERRORCHECK_INITIALIZER ((void *) (size_t) -2)\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "GENERIC_RECURSIVE_INITIALIZER ((void *) (size_t) -3)\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "GENERIC_NORMAL_INITIALIZER ((void *) (size_t) -1)\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "PTHREAD_MUTEX_INITIALIZER (pthread_mutex_t)GENERIC_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "PTHREAD_RECURSIVE_MUTEX_INITIALIZER (pthread_mutex_t)GENERIC_RECURSIVE_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "PTHREAD_ERRORCHECK_MUTEX_INITIALIZER (pthread_mutex_t)GENERIC_ERRORCHECK_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "PTHREAD_NORMAL_MUTEX_INITIALIZER (pthread_mutex_t)GENERIC_NORMAL_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x11e
	.ascii "PTHREAD_DEFAULT_MUTEX_INITIALIZER PTHREAD_NORMAL_MUTEX_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "PTHREAD_COND_INITIALIZER (pthread_cond_t)GENERIC_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "PTHREAD_RWLOCK_INITIALIZER (pthread_rwlock_t)GENERIC_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x121
	.ascii "PTHREAD_SPINLOCK_INITIALIZER (pthread_spinlock_t)GENERIC_INITIALIZER\0"
	.byte	0x2
	.uleb128 0x1a1
	.ascii "localtime_r\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "localtime_r(_Time,_Tm) ({ struct tm *___tmp_tm; pthread_testcancel(); ___tmp_tm = localtime((_Time)); if (___tmp_tm) { *(_Tm) = *___tmp_tm; ___tmp_tm = (_Tm); } ___tmp_tm; })\0"
	.byte	0x2
	.uleb128 0x1ab
	.ascii "gmtime_r\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "gmtime_r(_Time,_Tm) ({ struct tm *___tmp_tm; pthread_testcancel(); ___tmp_tm = gmtime((_Time)); if (___tmp_tm) { *(_Tm) = *___tmp_tm; ___tmp_tm = (_Tm); } ___tmp_tm; })\0"
	.byte	0x2
	.uleb128 0x1b5
	.ascii "ctime_r\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "ctime_r(_Time,_Str) ({ char *___tmp_tm; pthread_testcancel(); ___tmp_tm = ctime((_Time)); if (___tmp_tm) ___tmp_tm = strcpy((_Str),___tmp_tm); ___tmp_tm; })\0"
	.byte	0x2
	.uleb128 0x1be
	.ascii "asctime_r\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "asctime_r(_Tm,_Buf) ({ char *___tmp_tm; pthread_testcancel(); ___tmp_tm = asctime((_Tm)); if (___tmp_tm) ___tmp_tm = strcpy((_Buf),___tmp_tm); ___tmp_tm; })\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "rand_r(__seed) (__seed == __seed ? rand () : rand ())\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "SIG_BLOCK 0\0"
	.byte	0x1
	.uleb128 0x1cf
	.ascii "SIG_UNBLOCK 1\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "SIG_SETMASK 2\0"
	.file 127 "C:/MinGW64/x86_64-w64-mingw32/include/pthread_unistd.h"
	.byte	0x3
	.uleb128 0x1d5
	.uleb128 0x7f
	.byte	0x1
	.uleb128 0x18
	.ascii "WIN_PTHREADS_UNISTD_H \0"
	.byte	0x2
	.uleb128 0x50
	.ascii "_POSIX_THREADS\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "_POSIX_THREADS 200112L\0"
	.byte	0x2
	.uleb128 0x64
	.ascii "_POSIX_READER_WRITER_LOCKS\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "_POSIX_READER_WRITER_LOCKS 200112L\0"
	.byte	0x2
	.uleb128 0x72
	.ascii "_POSIX_SPIN_LOCKS\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "_POSIX_SPIN_LOCKS 200112L\0"
	.byte	0x2
	.uleb128 0x81
	.ascii "_POSIX_BARRIERS\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_POSIX_BARRIERS 200112L\0"
	.byte	0x2
	.uleb128 0x95
	.ascii "_POSIX_THREAD_SAFE_FUNCTIONS\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "_POSIX_THREAD_SAFE_FUNCTIONS 200112L\0"
	.byte	0x2
	.uleb128 0xa4
	.ascii "_POSIX_TIMEOUTS\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "_POSIX_TIMEOUTS 200112L\0"
	.byte	0x2
	.uleb128 0xc0
	.ascii "_POSIX_CLOCK_SELECTION\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_POSIX_CLOCK_SELECTION 200112\0"
	.byte	0x2
	.uleb128 0xd1
	.ascii "_POSIX_SEMAPHORES\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "_POSIX_SEMAPHORES 200112\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x1d7
	.ascii "_POSIX_THREAD_DESTRUCTOR_ITERATIONS\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "_POSIX_THREAD_DESTRUCTOR_ITERATIONS PTHREAD_DESTRUCTOR_ITERATIONS\0"
	.byte	0x2
	.uleb128 0x1da
	.ascii "_POSIX_THREAD_KEYS_MAX\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "_POSIX_THREAD_KEYS_MAX PTHREAD_KEYS_MAX\0"
	.byte	0x2
	.uleb128 0x1dd
	.ascii "PTHREAD_THREADS_MAX\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "PTHREAD_THREADS_MAX 2019\0"
	.byte	0x2
	.uleb128 0x1e0
	.ascii "_POSIX_SEM_NSEMS_MAX\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "_POSIX_SEM_NSEMS_MAX 256\0"
	.byte	0x2
	.uleb128 0x1e3
	.ascii "SEM_NSEMS_MAX\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "SEM_NSEMS_MAX 1024\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x24
	.ascii "_GTHREAD_USE_MUTEX_INIT_FUNC 1\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__GTHREAD_HAS_COND 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__GTHREAD_MUTEX_INIT PTHREAD_MUTEX_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "__GTHREAD_MUTEX_INIT_FUNCTION __gthread_mutex_init_function\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__GTHREAD_ONCE_INIT PTHREAD_ONCE_INIT\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__GTHREAD_RECURSIVE_MUTEX_INIT PTHREAD_RECURSIVE_MUTEX_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__GTHREAD_COND_INIT PTHREAD_COND_INITIALIZER\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__GTHREAD_TIME_INIT {0,0}\0"
	.byte	0x2
	.uleb128 0x4b
	.ascii "__GTHREAD_MUTEX_INIT\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__gthrw2(name,name2,type) \0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__gthrw_(name) name\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__gthrw(name) __gthrw2(__gthrw_ ## name,name,name)\0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_ATOMIC_WORD_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x6f
	.ascii "_GLIBCXX_READ_MEM_BARRIER __asm __volatile (\"\":::\"memory\")\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_GLIBCXX_WRITE_MEM_BARRIER __asm __volatile (\"\":::\"memory\")\0"
	.byte	0x4
	.byte	0x4
	.file 128 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/basic_string.tcc"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x80
	.byte	0x1
	.uleb128 0x26
	.ascii "_BASIC_STRING_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x35
	.ascii "_GLIBCXX_BITSET_BITS_PER_WORD (__CHAR_BIT__ * __SIZEOF_LONG__)\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_GLIBCXX_BITSET_WORDS(__n) ((__n) / _GLIBCXX_BITSET_BITS_PER_WORD + ((__n) % _GLIBCXX_BITSET_BITS_PER_WORD == 0 ? 0 : 1))\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_GLIBCXX_BITSET_BITS_PER_ULL (__CHAR_BIT__ * __SIZEOF_LONG_LONG__)\0"
	.byte	0x2
	.uleb128 0x60b
	.ascii "_GLIBCXX_BITSET_WORDS\0"
	.byte	0x2
	.uleb128 0x60c
	.ascii "_GLIBCXX_BITSET_BITS_PER_WORD\0"
	.byte	0x2
	.uleb128 0x60d
	.ascii "_GLIBCXX_BITSET_BITS_PER_ULL\0"
	.byte	0x4
	.file 129 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/complex"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x81
	.byte	0x1
	.uleb128 0x25
	.ascii "_GLIBCXX_COMPLEX 1\0"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x40
	.byte	0x4
	.file 130 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/sstream"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x82
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_SSTREAM 1\0"
	.file 131 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/istream"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x83
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_ISTREAM 1\0"
	.file 132 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ios"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x84
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_IOS 1\0"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x23
	.ascii "_IOS_BASE_H 1\0"
	.file 133 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_classes.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x85
	.byte	0x1
	.uleb128 0x23
	.ascii "_LOCALE_CLASSES_H 1\0"
	.file 134 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_classes.tcc"
	.byte	0x3
	.uleb128 0x313
	.uleb128 0x86
	.byte	0x1
	.uleb128 0x23
	.ascii "_LOCALE_CLASSES_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 135 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/streambuf"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x87
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBXX_STREAMBUF 1\0"
	.file 136 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/streambuf.tcc"
	.byte	0x3
	.uleb128 0x33c
	.uleb128 0x88
	.byte	0x1
	.uleb128 0x23
	.ascii "_STREAMBUF_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 137 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/basic_ios.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x89
	.byte	0x1
	.uleb128 0x1f
	.ascii "_BASIC_IOS_H 1\0"
	.file 138 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_facets.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x8a
	.byte	0x1
	.uleb128 0x23
	.ascii "_LOCALE_FACETS_H 1\0"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x7
	.ascii "_INC_WCTYPE \0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "_UPPER 0x1\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "_LOWER 0x2\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "_DIGIT 0x4\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "_SPACE 0x8\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "_PUNCT 0x10\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "_CONTROL 0x20\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "_BLANK 0x40\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "_HEX 0x80\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "_LEADBYTE 0x8000\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "_ALPHA (0x0100|_UPPER|_LOWER)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x36
	.ascii "_GLIBCXX_CWCTYPE 1\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "iswalnum\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "iswalpha\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "iswblank\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "iswcntrl\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "iswctype\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "iswdigit\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "iswgraph\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "iswlower\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "iswprint\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "iswpunct\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "iswspace\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "iswupper\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "iswxdigit\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "towctrans\0"
	.byte	0x2
	.uleb128 0x49
	.ascii "towlower\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "towupper\0"
	.byte	0x2
	.uleb128 0x4b
	.ascii "wctrans\0"
	.byte	0x2
	.uleb128 0x4c
	.ascii "wctype\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x32
	.byte	0x4
	.file 139 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/ctype_base.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x8b
	.byte	0x4
	.file 140 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/streambuf_iterator.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x8c
	.byte	0x1
	.uleb128 0x1f
	.ascii "_STREAMBUF_ITERATOR_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_NUM_FACETS 28\0"
	.file 141 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/ctype_inline.h"
	.byte	0x3
	.uleb128 0x5e7
	.uleb128 0x8d
	.byte	0x4
	.file 142 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_facets.tcc"
	.byte	0x3
	.uleb128 0xa30
	.uleb128 0x8e
	.byte	0x1
	.uleb128 0x1f
	.ascii "_LOCALE_FACETS_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 143 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/basic_ios.tcc"
	.byte	0x3
	.uleb128 0x1db
	.uleb128 0x8f
	.byte	0x1
	.uleb128 0x1f
	.ascii "_BASIC_IOS_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 144 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/ostream"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x90
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_OSTREAM 1\0"
	.file 145 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/ostream.tcc"
	.byte	0x3
	.uleb128 0x261
	.uleb128 0x91
	.byte	0x1
	.uleb128 0x23
	.ascii "_OSTREAM_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 146 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/istream.tcc"
	.byte	0x3
	.uleb128 0x36f
	.uleb128 0x92
	.byte	0x1
	.uleb128 0x23
	.ascii "_ISTREAM_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 147 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/sstream.tcc"
	.byte	0x3
	.uleb128 0x258
	.uleb128 0x93
	.byte	0x1
	.uleb128 0x23
	.ascii "_SSTREAM_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.uleb128 0x30
	.ascii "complex\0"
	.byte	0x4
	.file 148 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/deque"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x94
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_DEQUE 1\0"
	.file 149 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_uninitialized.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x95
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_UNINITIALIZED_H 1\0"
	.byte	0x4
	.file 150 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_deque.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x96
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_DEQUE_H 1\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_GLIBCXX_DEQUE_BUF_SIZE 512\0"
	.byte	0x2
	.uleb128 0x826
	.ascii "_GLIBCXX_DEQUE_BUF_SIZE\0"
	.byte	0x4
	.file 151 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/deque.tcc"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x97
	.byte	0x1
	.uleb128 0x39
	.ascii "_DEQUE_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 152 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/fstream"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x98
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_FSTREAM 1\0"
	.file 153 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/codecvt.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x99
	.byte	0x1
	.uleb128 0x25
	.ascii "_CODECVT_H 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0xc
	.byte	0x4
	.file 154 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/basic_file.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x9a
	.byte	0x1
	.uleb128 0x23
	.ascii "_GLIBCXX_BASIC_FILE_STDIO_H 1\0"
	.file 155 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/c++io.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x9b
	.byte	0x1
	.uleb128 0x21
	.ascii "_GLIBCXX_CXX_IO_H 1\0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 156 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/fstream.tcc"
	.byte	0x3
	.uleb128 0x3ab
	.uleb128 0x9c
	.byte	0x1
	.uleb128 0x23
	.ascii "_FSTREAM_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 157 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/functional"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x9d
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_FUNCTIONAL 1\0"
	.byte	0x4
	.file 158 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/iomanip"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x9e
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_IOMANIP 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_IOSTREAM 1\0"
	.byte	0x4
	.file 159 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/iterator"
	.byte	0x3
	.uleb128 0x4c
	.uleb128 0x9f
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_ITERATOR 1\0"
	.file 160 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stream_iterator.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0xa0
	.byte	0x1
	.uleb128 0x1f
	.ascii "_STREAM_ITERATOR_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 161 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/limits"
	.byte	0x3
	.uleb128 0x4d
	.uleb128 0xa1
	.byte	0x1
	.uleb128 0x26
	.ascii "_GLIBCXX_NUMERIC_LIMITS 1\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__glibcxx_integral_traps true\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__glibcxx_float_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__glibcxx_float_traps false\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__glibcxx_float_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__glibcxx_double_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__glibcxx_double_traps false\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__glibcxx_double_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__glibcxx_long_double_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__glibcxx_long_double_traps false\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__glibcxx_long_double_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__glibcxx_signed(T) ((T)(-1) < 0)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__glibcxx_min(T) (__glibcxx_signed (T) ? -__glibcxx_max (T) - 1 : (T)0)\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__glibcxx_max(T) (__glibcxx_signed (T) ? (((((T)1 << (__glibcxx_digits (T) - 1)) - 1) << 1) + 1) : ~(T)0)\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "__glibcxx_digits(T) (sizeof(T) * __CHAR_BIT__ - __glibcxx_signed (T))\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__glibcxx_digits10(T) (__glibcxx_digits (T) * 643L / 2136)\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__glibcxx_max_digits10(T) (2 + (T) * 643L / 2136)\0"
	.byte	0x2
	.uleb128 0x656
	.ascii "__glibcxx_float_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x657
	.ascii "__glibcxx_float_traps\0"
	.byte	0x2
	.uleb128 0x658
	.ascii "__glibcxx_float_tinyness_before\0"
	.byte	0x2
	.uleb128 0x6a1
	.ascii "__glibcxx_double_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x6a2
	.ascii "__glibcxx_double_traps\0"
	.byte	0x2
	.uleb128 0x6a3
	.ascii "__glibcxx_double_tinyness_before\0"
	.byte	0x2
	.uleb128 0x6ec
	.ascii "__glibcxx_long_double_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x6ed
	.ascii "__glibcxx_long_double_traps\0"
	.byte	0x2
	.uleb128 0x6ee
	.ascii "__glibcxx_long_double_tinyness_before\0"
	.byte	0x2
	.uleb128 0x6f3
	.ascii "__glibcxx_signed\0"
	.byte	0x2
	.uleb128 0x6f4
	.ascii "__glibcxx_min\0"
	.byte	0x2
	.uleb128 0x6f5
	.ascii "__glibcxx_max\0"
	.byte	0x2
	.uleb128 0x6f6
	.ascii "__glibcxx_digits\0"
	.byte	0x2
	.uleb128 0x6f7
	.ascii "__glibcxx_digits10\0"
	.byte	0x2
	.uleb128 0x6f8
	.ascii "__glibcxx_max_digits10\0"
	.byte	0x4
	.file 162 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/list"
	.byte	0x3
	.uleb128 0x4e
	.uleb128 0xa2
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_LIST 1\0"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_LIST_H 1\0"
	.byte	0x4
	.file 163 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/list.tcc"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0xa3
	.byte	0x1
	.uleb128 0x39
	.ascii "_LIST_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 164 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/locale"
	.byte	0x3
	.uleb128 0x4f
	.uleb128 0xa4
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_LOCALE 1\0"
	.file 165 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_facets_nonio.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0xa5
	.byte	0x1
	.uleb128 0x23
	.ascii "_LOCALE_FACETS_NONIO_H 1\0"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0xf
	.byte	0x4
	.file 166 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/time_members.h"
	.byte	0x3
	.uleb128 0x15c
	.uleb128 0xa6
	.byte	0x4
	.file 167 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/x86_64-w64-mingw32/bits/messages_members.h"
	.byte	0x3
	.uleb128 0x76a
	.uleb128 0xa7
	.byte	0x4
	.file 168 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/locale_facets_nonio.tcc"
	.byte	0x3
	.uleb128 0x76f
	.uleb128 0xa8
	.byte	0x1
	.uleb128 0x1f
	.ascii "_LOCALE_FACETS_NONIO_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 169 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/map"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0xa9
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_MAP 1\0"
	.file 170 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_tree.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xaa
	.byte	0x1
	.uleb128 0x3b
	.ascii "_STL_TREE_H 1\0"
	.byte	0x4
	.file 171 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_map.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xab
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_MAP_H 1\0"
	.byte	0x4
	.file 172 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_multimap.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xac
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_MULTIMAP_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 173 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/memory"
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xad
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_MEMORY 1\0"
	.file 174 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_raw_storage_iter.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0xae
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_RAW_STORAGE_ITERATOR_H 1\0"
	.byte	0x4
	.file 175 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/backward/auto_ptr.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0xaf
	.byte	0x1
	.uleb128 0x1f
	.ascii "_BACKWARD_AUTO_PTR_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 176 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/numeric"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0xb0
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_NUMERIC 1\0"
	.file 177 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_numeric.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xb1
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_NUMERIC_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 178 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/queue"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0xb2
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_QUEUE 1\0"
	.file 179 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/vector"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xb3
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_VECTOR 1\0"
	.file 180 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_vector.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0xb4
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_VECTOR_H 1\0"
	.byte	0x4
	.file 181 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_bvector.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0xb5
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_BVECTOR_H 1\0"
	.byte	0x4
	.file 182 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/vector.tcc"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0xb6
	.byte	0x1
	.uleb128 0x39
	.ascii "_VECTOR_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 183 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_queue.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0xb7
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_QUEUE_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 184 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/set"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0xb8
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_SET 1\0"
	.file 185 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_set.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xb9
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_SET_H 1\0"
	.byte	0x4
	.file 186 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_multiset.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xba
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_MULTISET_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 187 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/stack"
	.byte	0x3
	.uleb128 0x58
	.uleb128 0xbb
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_STACK 1\0"
	.file 188 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/stl_stack.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xbc
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_STACK_H 1\0"
	.byte	0x4
	.byte	0x4
	.file 189 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/stdexcept"
	.byte	0x3
	.uleb128 0x59
	.uleb128 0xbd
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_STDEXCEPT 1\0"
	.byte	0x4
	.file 190 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/typeinfo"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0xbe
	.byte	0x1
	.uleb128 0x1e
	.ascii "_TYPEINFO \0"
	.byte	0x4
	.file 191 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/valarray"
	.byte	0x3
	.uleb128 0x5e
	.uleb128 0xbf
	.byte	0x1
	.uleb128 0x20
	.ascii "_GLIBCXX_VALARRAY 1\0"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x40
	.byte	0x4
	.file 192 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/valarray_array.h"
	.byte	0x3
	.uleb128 0x59
	.uleb128 0xc0
	.byte	0x1
	.uleb128 0x21
	.ascii "_VALARRAY_ARRAY_H 1\0"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.uleb128 0x20f
	.ascii "_DEFINE_ARRAY_FUNCTION(_Op,_Name) template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __n, const _Tp& __t) { for (_Tp* __p = __a._M_data; __p < __a._M_data + __n; ++__p) *__p _Op ##= __t; } template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __n, _Array<_Tp> __b) { _Tp* __p = __a._M_data; for (_Tp* __q = __b._M_data; __q < __b._M_data + __n; ++__p, ++__q) *__p _Op ##= *__q; } template<typename _Tp, class _Dom> void _Array_augmented_ ##_Name(_Array<_Tp> __a, const _Expr<_Dom, _Tp>& __e, size_t __n) { _Tp* __p(__a._M_data); for (size_t __i = 0; __i < __n; ++__i, ++__p) *__p _Op ##= __e[__i]; } template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __n, size_t __s, _Array<_Tp> __b) { _Tp* __q(__b._M_data); for (_Tp* __p = __a._M_data; __p < __a._M_data + __s * __n; __p += __s, ++__q) *__p _Op ##= *__q; } template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, _Array<_Tp> __b, size_t __n, size_t __s) { _Tp* __q(__b._M_data); for (_Tp* __p = __a._M_data; __p < __a._M_data + __n; ++__p, __q += __s) *__p _Op ##= *__q; } template<typename _Tp, class _Dom> void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __s, const _Expr<_Dom, _Tp>& __e, size_t __n) { _Tp* __p(__a._M_data); for (size_t __i = 0; __i < __n; ++__i, __p += __s) *__p _Op ##= __e[__i]; } template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, _Array<size_t> __i, _Array<_Tp> __b, size_t __n) { _Tp* __q(__b._M_data); for (size_t* __j = __i._M_data; __j < __i._M_data + __n; ++__j, ++__q) __a._M_data[*__j] _Op ##= *__q; } template<typename _Tp> inline void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __n, _Array<_Tp> __b, _Array<size_t> __i) { _Tp* __p(__a._M_data); for (size_t* __j = __i._M_data; __j<__i._M_data + __n; ++__j, ++__p) *__p _Op ##= __b._M_data[*__j]; } template<typename _Tp, class _Dom> void _Array_augmented_ ##_Name(_Array<_Tp> __a, _Array<size_t> __i, const _Expr<_Dom, _Tp>& __e, size_t __n) { size_t* __j(__i._M_data); for (size_t __k = 0; __k<__n; ++__k, ++__j) __a._M_data[*__j] _Op ##= __e[__k]; } template<typename _Tp> void _Array_augmented_ ##_Name(_Array<_Tp> __a, _Array<bool> __m, _Array<_Tp> __b, size_t __n) { bool* __ok(__m._M_data); _Tp* __p(__a._M_data); for (_Tp* __q = __b._M_data; __q < __b._M_data + __n; ++__q, ++__ok, ++__p) { while (! *__ok) { ++__ok; ++__p; } *__p _Op ##= *__q; } } template<typename _Tp> void _Array_augmented_ ##_Name(_Array<_Tp> __a, size_t __n, _Array<_Tp> __b, _Array<bool> __m) { bool* __ok(__m._M_data); _Tp* __q(__b._M_data); for (_Tp* __p = __a._M_data; __p < __a._M_data + __n; ++__p, ++__ok, ++__q) { while (! *__ok) { ++__ok; ++__q; } *__p _Op ##= *__q; } } template<typename _Tp, class _Dom> void _Array_augmented_ ##_Name(_Array<_Tp> __a, _Array<bool> __m, const _Expr<_Dom, _Tp>& __e, size_t __n) { bool* __ok(__m._M_data); _Tp* __p(__a._M_data); for (size_t __i = 0; __i < __n; ++__i, ++__ok, ++__p) { while (! *__ok) { ++__ok; ++__p; } *__p _Op ##= __e[__i]; } }\0"
	.byte	0x2
	.uleb128 0x2ae
	.ascii "_DEFINE_ARRAY_FUNCTION\0"
	.file 193 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/valarray_array.tcc"
	.byte	0x3
	.uleb128 0x2b3
	.uleb128 0xc1
	.byte	0x1
	.uleb128 0x21
	.ascii "_VALARRAY_ARRAY_TCC 1\0"
	.byte	0x4
	.byte	0x4
	.file 194 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/valarray_before.h"
	.byte	0x3
	.uleb128 0x5a
	.uleb128 0xc2
	.byte	0x1
	.uleb128 0x21
	.ascii "_VALARRAY_BEFORE_H 1\0"
	.file 195 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/slice_array.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xc3
	.byte	0x1
	.uleb128 0x21
	.ascii "_SLICE_ARRAY_H 1\0"
	.byte	0x2
	.uleb128 0xee
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "_DEFINE_VALARRAY_OPERATOR(_Op,_Name) template<typename _Tp> inline void slice_array<_Tp>::operator _Op ##=(const valarray<_Tp>& __v) const { _Array_augmented_ ##_Name(_M_array, _M_sz, _M_stride, _Array<_Tp>(__v)); } template<typename _Tp> template<class _Dom> inline void slice_array<_Tp>::operator _Op ##=(const _Expr<_Dom,_Tp>& __e) const { _Array_augmented_ ##_Name(_M_array, _M_stride, __e, _M_sz); }\0"
	.byte	0x2
	.uleb128 0x10b
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x4
	.byte	0x4
	.file 196 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/valarray_after.h"
	.byte	0x3
	.uleb128 0x24b
	.uleb128 0xc4
	.byte	0x1
	.uleb128 0x21
	.ascii "_VALARRAY_AFTER_H 1\0"
	.byte	0x1
	.uleb128 0x142
	.ascii "_DEFINE_EXPR_UNARY_OPERATOR(_Op,_Name) template<class _Dom, typename _Tp> inline _Expr<_UnClos<_Name, std::_Expr, _Dom>, _Tp> _Expr<_Dom, _Tp>::operator _Op() const { typedef _UnClos<_Name, std::_Expr, _Dom> _Closure; return _Expr<_Closure, _Tp>(_Closure(this->_M_closure)); }\0"
	.byte	0x2
	.uleb128 0x14f
	.ascii "_DEFINE_EXPR_UNARY_OPERATOR\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "_DEFINE_EXPR_BINARY_OPERATOR(_Op,_Name) template<class _Dom1, class _Dom2> inline _Expr<_BinClos<_Name, _Expr, _Expr, _Dom1, _Dom2>, typename __fun<_Name, typename _Dom1::value_type>::result_type> operator _Op(const _Expr<_Dom1, typename _Dom1::value_type>& __v, const _Expr<_Dom2, typename _Dom2::value_type>& __w) { typedef typename _Dom1::value_type _Arg; typedef typename __fun<_Name, _Arg>::result_type _Value; typedef _BinClos<_Name, _Expr, _Expr, _Dom1, _Dom2> _Closure; return _Expr<_Closure, _Value>(_Closure(__v(), __w())); } template<class _Dom> inline _Expr<_BinClos<_Name, _Expr, _Constant, _Dom, typename _Dom::value_type>, typename __fun<_Name, typename _Dom::value_type>::result_type> operator _Op(const _Expr<_Dom, typename _Dom::value_type>& __v, const typename _Dom::value_type& __t) { typedef typename _Dom::value_type _Arg; typedef typename __fun<_Name, _Arg>::result_type _Value; typedef _BinClos<_Name, _Expr, _Constant, _Dom, _Arg> _Closure; return _Expr<_Closure, _Value>(_Closure(__v(), __t)); } template<class _Dom> inline _Expr<_BinClos<_Name, _Constant, _Expr, typename _Dom::value_type, _Dom>, typename __fun<_Name, typename _Dom::value_type>::result_type> operator _Op(const typename _Dom::value_type& __t, const _Expr<_Dom, typename _Dom::value_type>& __v) { typedef typename _Dom::value_type _Arg; typedef typename __fun<_Name, _Arg>::result_type _Value; typedef _BinClos<_Name, _Constant, _Expr, _Arg, _Dom> _Closure; return _Expr<_Closure, _Value>(_Closure(__t, __v())); } template<class _Dom> inline _Expr<_BinClos<_Name, _Expr, _ValArray, _Dom, typename _Dom::value_type>, typename __fun<_Name, typename _Dom::value_type>::result_type> operator _Op(const _Expr<_Dom,typename _Dom::value_type>& __e, const valarray<typename _Dom::value_type>& __v) { typedef typename _Dom::value_type _Arg; typedef typename __fun<_Name, _Arg>::result_type _Value; typedef _BinClos<_Name, _Expr, _ValArray, _Dom, _Arg> _Closure; return _Expr<_Closure, _Value>(_Closure(__e(), __v)); } template<class _Dom> inline _Expr<_BinClos<_Name, _ValArray, _Expr, typename _Dom::value_type, _Dom>, typename __fun<_Name, typename _Dom::value_type>::result_type> operator _Op(const valarray<typename _Dom::value_type>& __v, const _Expr<_Dom, typename _Dom::value_type>& __e) { typedef typename _Dom::value_type _Tp; typedef typename __fun<_Name, _Tp>::result_type _Value; typedef _BinClos<_Name, _ValArray, _Expr, _Tp, _Dom> _Closure; return _Expr<_Closure, _Value>(_Closure(__v, __e ())); }\0"
	.byte	0x2
	.uleb128 0x1a5
	.ascii "_DEFINE_EXPR_BINARY_OPERATOR\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "_DEFINE_EXPR_UNARY_FUNCTION(_Name,_UName) template<class _Dom> inline _Expr<_UnClos<_UName, _Expr, _Dom>, typename _Dom::value_type> _Name(const _Expr<_Dom, typename _Dom::value_type>& __e) { typedef typename _Dom::value_type _Tp; typedef _UnClos<_UName, _Expr, _Dom> _Closure; return _Expr<_Closure, _Tp>(_Closure(__e())); } template<typename _Tp> inline _Expr<_UnClos<_UName, _ValArray, _Tp>, _Tp> _Name(const valarray<_Tp>& __v) { typedef _UnClos<_UName, _ValArray, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__v)); }\0"
	.byte	0x2
	.uleb128 0x1c9
	.ascii "_DEFINE_EXPR_UNARY_FUNCTION\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "_DEFINE_EXPR_BINARY_FUNCTION(_Fun,_UFun) template<class _Dom1, class _Dom2> inline _Expr<_BinClos<_UFun, _Expr, _Expr, _Dom1, _Dom2>, typename _Dom1::value_type> _Fun(const _Expr<_Dom1, typename _Dom1::value_type>& __e1, const _Expr<_Dom2, typename _Dom2::value_type>& __e2) { typedef typename _Dom1::value_type _Tp; typedef _BinClos<_UFun, _Expr, _Expr, _Dom1, _Dom2> _Closure; return _Expr<_Closure, _Tp>(_Closure(__e1(), __e2())); } template<class _Dom> inline _Expr<_BinClos<_UFun, _Expr, _ValArray, _Dom, typename _Dom::value_type>, typename _Dom::value_type> _Fun(const _Expr<_Dom, typename _Dom::value_type>& __e, const valarray<typename _Dom::value_type>& __v) { typedef typename _Dom::value_type _Tp; typedef _BinClos<_UFun, _Expr, _ValArray, _Dom, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__e(), __v)); } template<class _Dom> inline _Expr<_BinClos<_UFun, _ValArray, _Expr, typename _Dom::value_type, _Dom>, typename _Dom::value_type> _Fun(const valarray<typename _Dom::valarray>& __v, const _Expr<_Dom, typename _Dom::value_type>& __e) { typedef typename _Dom::value_type _Tp; typedef _BinClos<_UFun, _ValArray, _Expr, _Tp, _Dom> _Closure; return _Expr<_Closure, _Tp>(_Closure(__v, __e())); } template<class _Dom> inline _Expr<_BinClos<_UFun, _Expr, _Constant, _Dom, typename _Dom::value_type>, typename _Dom::value_type> _Fun(const _Expr<_Dom, typename _Dom::value_type>& __e, const typename _Dom::value_type& __t) { typedef typename _Dom::value_type _Tp; typedef _BinClos<_UFun, _Expr, _Constant, _Dom, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__e(), __t)); } template<class _Dom> inline _Expr<_BinClos<_UFun, _Constant, _Expr, typename _Dom::value_type, _Dom>, typename _Dom::value_type> _Fun(const typename _Dom::value_type& __t, const _Expr<_Dom, typename _Dom::value_type>& __e) { typedef typename _Dom::value_type _Tp; typedef _BinClos<_UFun, _Constant, _Expr, _Tp, _Dom> _Closure; return _Expr<_Closure, _Tp>(_Closure(__t, __e())); } template<typename _Tp> inline _Expr<_BinClos<_UFun, _ValArray, _ValArray, _Tp, _Tp>, _Tp> _Fun(const valarray<_Tp>& __v, const valarray<_Tp>& __w) { typedef _BinClos<_UFun, _ValArray, _ValArray, _Tp, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__v, __w)); } template<typename _Tp> inline _Expr<_BinClos<_UFun, _ValArray, _Constant, _Tp, _Tp>, _Tp> _Fun(const valarray<_Tp>& __v, const _Tp& __t) { typedef _BinClos<_UFun, _ValArray, _Constant, _Tp, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__v, __t)); } template<typename _Tp> inline _Expr<_BinClos<_UFun, _Constant, _ValArray, _Tp, _Tp>, _Tp> _Fun(const _Tp& __t, const valarray<_Tp>& __v) { typedef _BinClos<_UFun, _Constant, _ValArray, _Tp, _Tp> _Closure; return _Expr<_Closure, _Tp>(_Closure(__t, __v)); }\0"
	.byte	0x2
	.uleb128 0x222
	.ascii "_DEFINE_EXPR_BINARY_FUNCTION\0"
	.byte	0x4
	.file 197 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/gslice.h"
	.byte	0x3
	.uleb128 0x24d
	.uleb128 0xc5
	.byte	0x1
	.uleb128 0x21
	.ascii "_GSLICE_H 1\0"
	.byte	0x4
	.file 198 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/gslice_array.h"
	.byte	0x3
	.uleb128 0x24e
	.uleb128 0xc6
	.byte	0x1
	.uleb128 0x21
	.ascii "_GSLICE_ARRAY_H 1\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "_DEFINE_VALARRAY_OPERATOR(_Op,_Name) template<typename _Tp> inline void gslice_array<_Tp>::operator _Op ##=(const valarray<_Tp>& __v) const { _Array_augmented_ ##_Name(_M_array, _Array<size_t>(_M_index), _Array<_Tp>(__v), __v.size()); } template<typename _Tp> template<class _Dom> inline void gslice_array<_Tp>::operator _Op ##= (const _Expr<_Dom, _Tp>& __e) const { _Array_augmented_ ##_Name(_M_array, _Array<size_t>(_M_index), __e, _M_index.size()); }\0"
	.byte	0x2
	.uleb128 0xd3
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x4
	.file 199 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/mask_array.h"
	.byte	0x3
	.uleb128 0x24f
	.uleb128 0xc7
	.byte	0x1
	.uleb128 0x21
	.ascii "_MASK_ARRAY_H 1\0"
	.byte	0x2
	.uleb128 0xac
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "_DEFINE_VALARRAY_OPERATOR(_Op,_Name) template<typename _Tp> inline void mask_array<_Tp>::operator _Op ##=(const valarray<_Tp>& __v) const { _Array_augmented_ ##_Name(_M_array, _M_mask, _Array<_Tp>(__v), __v.size()); } template<typename _Tp> template<class _Dom> inline void mask_array<_Tp>::operator _Op ##=(const _Expr<_Dom, _Tp>& __e) const { _Array_augmented_ ##_Name(_M_array, _M_mask, __e, __e.size()); }\0"
	.byte	0x2
	.uleb128 0xc9
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x4
	.file 200 "C:/MinGW64/lib/gcc/x86_64-w64-mingw32/4.9.2/include/c++/bits/indirect_array.h"
	.byte	0x3
	.uleb128 0x250
	.uleb128 0xc8
	.byte	0x1
	.uleb128 0x21
	.ascii "_INDIRECT_ARRAY_H 1\0"
	.byte	0x2
	.uleb128 0xb1
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_DEFINE_VALARRAY_OPERATOR(_Op,_Name) template<typename _Tp> inline void indirect_array<_Tp>::operator _Op ##=(const valarray<_Tp>& __v) const { _Array_augmented_ ##_Name(_M_array, _M_index, _Array<_Tp>(__v), _M_sz); } template<typename _Tp> template<class _Dom> inline void indirect_array<_Tp>::operator _Op ##=(const _Expr<_Dom,_Tp>& __e) const { _Array_augmented_ ##_Name(_M_array, _M_index, __e, _M_sz); }\0"
	.byte	0x2
	.uleb128 0xcd
	.ascii "_DEFINE_VALARRAY_OPERATOR\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x427
	.ascii "_DEFINE_VALARRAY_UNARY_OPERATOR(_Op,_Name) template<typename _Tp> inline typename valarray<_Tp>::template _UnaryOp<_Name>::_Rt valarray<_Tp>::operator _Op() const { typedef _UnClos<_Name, _ValArray, _Tp> _Closure; typedef typename __fun<_Name, _Tp>::result_type _Rt; return _Expr<_Closure, _Rt>(_Closure(*this)); }\0"
	.byte	0x2
	.uleb128 0x436
	.ascii "_DEFINE_VALARRAY_UNARY_OPERATOR\0"
	.byte	0x1
	.uleb128 0x438
	.ascii "_DEFINE_VALARRAY_AUGMENTED_ASSIGNMENT(_Op,_Name) template<class _Tp> inline valarray<_Tp>& valarray<_Tp>::operator _Op ##=(const _Tp &__t) { _Array_augmented_ ##_Name(_Array<_Tp>(_M_data), _M_size, __t); return *this; } template<class _Tp> inline valarray<_Tp>& valarray<_Tp>::operator _Op ##=(const valarray<_Tp> &__v) { _GLIBCXX_DEBUG_ASSERT(_M_size == __v._M_size); _Array_augmented_ ##_Name(_Array<_Tp>(_M_data), _M_size, _Array<_Tp>(__v._M_data)); return *this; }\0"
	.byte	0x2
	.uleb128 0x456
	.ascii "_DEFINE_VALARRAY_AUGMENTED_ASSIGNMENT\0"
	.byte	0x1
	.uleb128 0x458
	.ascii "_DEFINE_VALARRAY_EXPR_AUGMENTED_ASSIGNMENT(_Op,_Name) template<class _Tp> template<class _Dom> inline valarray<_Tp>& valarray<_Tp>::operator _Op ##=(const _Expr<_Dom, _Tp>& __e) { _Array_augmented_ ##_Name(_Array<_Tp>(_M_data), __e, _M_size); return *this; }\0"
	.byte	0x2
	.uleb128 0x46c
	.ascii "_DEFINE_VALARRAY_EXPR_AUGMENTED_ASSIGNMENT\0"
	.byte	0x1
	.uleb128 0x46f
	.ascii "_DEFINE_BINARY_OPERATOR(_Op,_Name) template<typename _Tp> inline _Expr<_BinClos<_Name, _ValArray, _ValArray, _Tp, _Tp>, typename __fun<_Name, _Tp>::result_type> operator _Op(const valarray<_Tp>& __v, const valarray<_Tp>& __w) { _GLIBCXX_DEBUG_ASSERT(__v.size() == __w.size()); typedef _BinClos<_Name, _ValArray, _ValArray, _Tp, _Tp> _Closure; typedef typename __fun<_Name, _Tp>::result_type _Rt; return _Expr<_Closure, _Rt>(_Closure(__v, __w)); } template<typename _Tp> inline _Expr<_BinClos<_Name, _ValArray,_Constant, _Tp, _Tp>, typename __fun<_Name, _Tp>::result_type> operator _Op(const valarray<_Tp>& __v, const _Tp& __t) { typedef _BinClos<_Name, _ValArray, _Constant, _Tp, _Tp> _Closure; typedef typename __fun<_Name, _Tp>::result_type _Rt; return _Expr<_Closure, _Rt>(_Closure(__v, __t)); } template<typename _Tp> inline _Expr<_BinClos<_Name, _Constant, _ValArray, _Tp, _Tp>, typename __fun<_Name, _Tp>::result_type> operator _Op(const _Tp& __t, const valarray<_Tp>& __v) { typedef _BinClos<_Name, _Constant, _ValArray, _Tp, _Tp> _Closure; typedef typename __fun<_Name, _Tp>::result_type _Rt; return _Expr<_Closure, _Rt>(_Closure(__t, __v)); }\0"
	.byte	0x2
	.uleb128 0x4a2
	.ascii "_DEFINE_BINARY_OPERATOR\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF0:
	.ascii "__min\0"
.LASF1:
	.ascii "__max\0"
.LASF3:
	.ascii "__digits\0"
.LASF4:
	.ascii "_Value\0"
.LASF2:
	.ascii "__is_signed\0"
	.ident	"GCC: (tdm64-1) 4.9.2"
	.def	__mingw_vscanf;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
