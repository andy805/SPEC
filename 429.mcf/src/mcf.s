	.file	"mcf.c"
	.text
	.comm	net,624,32
	.section	.rodata
	.align 8
.LC0:
	.string	"active arcs                : %ld\n"
	.align 8
.LC1:
	.string	"simplex iterations         : %ld\n"
	.align 8
.LC2:
	.string	"objective value            : %0.0f\n"
	.align 8
.LC3:
	.string	"erased arcs                : %ld\n"
	.align 8
.LC4:
	.string	"new implicit arcs          : %ld\n"
.LC5:
	.string	"not enough memory, exit(-1)"
	.align 8
.LC6:
	.string	"checksum                   : %ld\n"
	.text
	.globl	global_opt
	.type	global_opt, @function
global_opt:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$-1, -16(%rbp)
	movq	$5, -8(%rbp)
	jmp	.L2
.L8:
	movq	424+net(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	net(%rip), %rdi
	call	primal_net_simplex@PLT
	movq	600+net(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	net(%rip), %rdi
	call	flow_cost@PLT
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	440+net(%rip), %rax
	testq	%rax, %rax
	je	.L5
	movl	$0, %edx
	movq	$-1, %rsi
	leaq	net(%rip), %rdi
	call	suspend_impl@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	leaq	net(%rip), %rdi
	call	price_out_impl@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L6
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	cmpq	$0, -16(%rbp)
	jns	.L7
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$-1, %edi
	call	exit@PLT
.L7:
	subq	$1, -8(%rbp)
.L2:
	cmpq	$0, -16(%rbp)
	jne	.L8
	jmp	.L4
.L10:
	nop
.L4:
	movq	616+net(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	global_opt, .-global_opt
	.section	.rodata
	.align 8
.LC7:
	.string	"\nMCF SPEC CPU2006 version 1.10"
	.align 8
.LC8:
	.string	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)"
	.align 8
.LC9:
	.string	"Copyright (c) 2000-2002 Andreas Loebel & ZIB"
	.align 8
.LC10:
	.string	"Copyright (c) 2003-2005 Andreas Loebel"
.LC11:
	.string	"read error, exit"
	.align 8
.LC12:
	.string	"nodes                      : %ld\n"
.LC13:
	.string	"done"
.LC14:
	.string	"mcf.out"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$1, -4(%rbp)
	jg	.L12
	movl	$-1, %eax
	jmp	.L13
.L12:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$624, %edx
	movl	$0, %esi
	leaq	net(%rip), %rdi
	call	memset@PLT
	movq	$10000000, 528+net(%rip)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	net(%rip), %rdi
	call	strcpy@PLT
	leaq	net(%rip), %rdi
	call	read_min@PLT
	testq	%rax, %rax
	je	.L14
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	net(%rip), %rdi
	call	getfree@PLT
	movl	$-1, %eax
	jmp	.L13
.L14:
	movq	408+net(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	net(%rip), %rdi
	call	primal_start_artificial@PLT
	call	global_opt
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	net(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	write_circulations@PLT
	testq	%rax, %rax
	je	.L15
	leaq	net(%rip), %rdi
	call	getfree@PLT
	movl	$-1, %eax
	jmp	.L13
.L15:
	leaq	net(%rip), %rdi
	call	getfree@PLT
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
