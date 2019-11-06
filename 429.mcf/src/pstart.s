	.file	"pstart.c"
	.text
	.globl	primal_start_artificial
	.type	primal_start_artificial, @function
primal_start_artificial:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$104, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	movq	400(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$-100000000, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-40(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$-1, %eax
	je	.L3
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
.L3:
	addq	$64, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L4
	movq	-40(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L6:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	leaq	-104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movq	$100000000, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 80(%rax)
	addq	$64, -24(%rbp)
	addq	$104, -32(%rbp)
.L5:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L6
	subq	$104, -32(%rbp)
	addq	$104, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	primal_start_artificial, .-primal_start_artificial
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
