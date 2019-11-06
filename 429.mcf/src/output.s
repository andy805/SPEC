	.file	"output.c"
	.text
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"()\n"
.LC2:
	.string	"***\n"
.LC3:
	.string	"%d\n"
	.text
	.globl	write_circulations
	.type	write_circulations, @function
write_circulations:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	576(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	440(%rax), %rax
	salq	$6, %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movq	$-1, %rax
	jmp	.L3
.L2:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	refresh_neighbour_lists@PLT
	movq	-64(%rbp), %rax
	movq	552(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L4
.L15:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L6
.L14:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L7
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
.L7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L8
.L11:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L8:
	cmpq	$0, -24(%rbp)
	jne	.L11
	jmp	.L10
.L16:
	nop
.L10:
	cmpq	$0, -24(%rbp)
	jne	.L12
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	$-1, %rax
	jmp	.L3
.L12:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L6
.L13:
	movq	$0, -32(%rbp)
.L6:
	cmpq	$0, -32(%rbp)
	jne	.L14
.L5:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.L4:
	cmpq	$0, -40(%rbp)
	jne	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	write_circulations, .-write_circulations
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
