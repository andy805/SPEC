	.file	"squidcore.c"
	.text
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"January 2003"
.LC2:
	.string	"1.9g"
.LC3:
	.string	"SQUID %s (%s)\n"
	.align 8
.LC4:
	.string	"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine"
	.align 8
.LC5:
	.string	"Freely distributed under the GNU General Public License (GPL)"
	.align 8
.LC6:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
	.text
	.globl	SqdBanner
	.type	SqdBanner, @function
SqdBanner:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SqdBanner, .-SqdBanner
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
