	.file	"pbla.c"
	.text
	.globl	primal_iminus
	.type	primal_iminus, @function
primal_iminus:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L10:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L3
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L4
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L6
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jle	.L6
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	$1, %edx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L6:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L2
.L3:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L7
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L9
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$1, (%rax)
	jmp	.L9
.L7:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cmpq	%rax, %rdx
	jl	.L9
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movl	$1, %edx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$1, (%rax)
.L9:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.L2:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L10
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	primal_iminus, .-primal_iminus
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
