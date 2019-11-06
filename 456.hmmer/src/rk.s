	.file	"rk.c"
	.text
	.globl	rkcomp
	.type	rkcomp, @function
rkcomp:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	$16, %eax
	jbe	.L2
	movl	$0, %eax
	jmp	.L9
.L2:
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	seqencode@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L9
.L4:
	movl	$0, -48(%rbp)
	jmp	.L5
.L6:
	salq	$4, -40(%rbp)
	movl	-48(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbq	%al, %rax
	orq	%rax, -40(%rbp)
	addl	$1, -48(%rbp)
.L5:
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	jmp	.L7
.L8:
	salq	$4, -40(%rbp)
	orq	$15, -40(%rbp)
	addl	$1, -48(%rbp)
.L7:
	movl	-48(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L8
	movq	-40(%rbp), %rax
.L9:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	rkcomp, .-rkcomp
	.globl	rkseq
	.type	rkseq, @function
rkseq:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L12
.L15:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L23
	salq	$4, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	orq	%rax, -8(%rbp)
	addq	$1, -24(%rbp)
.L12:
	movq	-24(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L15
	jmp	.L16
.L23:
	nop
	jmp	.L16
.L19:
	movq	-40(%rbp), %rax
	andq	-8(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L17
	movq	-16(%rbp), %rax
	jmp	.L18
.L17:
	salq	$4, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	orq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L16:
	movq	-16(%rbp), %rax
	leaq	15(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	movq	$0, -24(%rbp)
	jmp	.L20
.L22:
	orq	$15, -8(%rbp)
	movq	-40(%rbp), %rax
	andq	-8(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L21
	movq	-16(%rbp), %rax
	jmp	.L18
.L21:
	salq	$4, -8(%rbp)
	addq	$1, -16(%rbp)
	addq	$1, -24(%rbp)
.L20:
	movq	-24(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L22
	movl	$-1, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rkseq, .-rkseq
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
