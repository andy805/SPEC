	.file	"pflowup.c"
	.text
	.globl	primal_update_flow
	.type	primal_update_flow, @function
primal_update_flow:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L2
.L5:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	movq	$1, 80(%rax)
.L4:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L5
	jmp	.L6
.L9:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L7
	movq	-16(%rbp), %rax
	movq	$1, 80(%rax)
	jmp	.L8
.L7:
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.L8:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L6:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L9
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	primal_update_flow, .-primal_update_flow
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
