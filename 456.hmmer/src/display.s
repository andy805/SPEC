	.file	"display.c"
	.text
	.globl	DisplayPlan7Posteriors
	.type	DisplayPlan7Posteriors, @function
DisplayPlan7Posteriors:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$2, %r9d
	movq	%rdi, %r8
	movl	%eax, %edi
	call	DisplayPlan7PostAlign
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	DisplayPlan7Posteriors, .-DisplayPlan7Posteriors
	.section	.rodata
.LC0:
	.string	"unknown state"
	.text
	.globl	DisplayPlan7PostAlign
	.type	DisplayPlan7PostAlign, @function
DisplayPlan7PostAlign:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-72(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -24(%rbp)
	movl	-72(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	-72(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L4
.L49:
	movl	$0, -44(%rbp)
	jmp	.L5
.L8:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L6:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-48(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L9
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jl	.L8
	jmp	.L9
.L11:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L9:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-48(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jg	.L10
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jl	.L11
.L10:
	addl	$1, -44(%rbp)
.L5:
	movl	-44(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L6
	movb	$1, -49(%rbp)
	jmp	.L13
.L48:
	cmpb	$1, -49(%rbp)
	je	.L14
	cmpb	$6, -49(%rbp)
	jne	.L15
.L14:
	movl	$1, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -32(%rbp)
	jmp	.L16
.L15:
	cmpb	$2, -49(%rbp)
	jne	.L17
	movl	$2, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L16
.L17:
	cmpb	$3, -49(%rbp)
	jne	.L18
	movl	$1, -36(%rbp)
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L16
.L18:
	movl	$0, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
.L16:
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L19
.L34:
	movsbl	-49(%rbp), %eax
	cmpl	$2, %eax
	je	.L21
	cmpl	$2, %eax
	jg	.L22
	cmpl	$1, %eax
	je	.L23
	jmp	.L29
.L22:
	cmpl	$3, %eax
	je	.L24
	cmpl	$6, %eax
	je	.L25
	jmp	.L29
.L23:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L26
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jge	.L26
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-48(%rbp), %eax
	leal	1(%rax), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$1, %ecx
	movl	%eax, %esi
	movl	$1, %edi
	call	PrintTransition
	addq	$48, %rsp
.L26:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L27
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jge	.L27
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-40(%rbp), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%edi, %r9d
	movl	$3, %ecx
	movl	%eax, %esi
	movl	$1, %edi
	call	PrintTransition
	addq	$48, %rsp
.L27:
	movq	-80(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jge	.L28
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-48(%rbp), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$2, %ecx
	movl	%eax, %esi
	movl	$1, %edi
	call	PrintTransition
	addq	$48, %rsp
.L28:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	376(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-48(%rbp), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	$0, %r9d
	movl	%edi, %r8d
	movl	$7, %ecx
	movl	%eax, %esi
	movl	$1, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L29
.L21:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L30
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-48(%rbp), %eax
	leal	1(%rax), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$1, %ecx
	movl	%eax, %esi
	movl	$2, %edi
	call	PrintTransition
	addq	$48, %rsp
.L30:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-48(%rbp), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$2, %ecx
	movl	%eax, %esi
	movl	$2, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L29
.L24:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L31
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-48(%rbp), %eax
	leal	1(%rax), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$1, %ecx
	movl	%eax, %esi
	movl	$3, %edi
	call	PrintTransition
	addq	$48, %rsp
.L31:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L50
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-40(%rbp), %edi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %esi
	pushq	%rsi
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rcx
	movl	%edi, %r9d
	movl	$3, %ecx
	movl	%eax, %esi
	movl	$3, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L50
.L25:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L51
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movq	368(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	leal	1(%rax), %edi
	movl	-40(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L51
.L50:
	nop
	jmp	.L29
.L51:
	nop
.L29:
	addl	$1, -40(%rbp)
.L19:
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L34
	movsbl	-49(%rbp), %eax
	cmpl	$10, %eax
	ja	.L35
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L37(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L37(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L37:
	.long	.L35-.L37
	.long	.L52-.L37
	.long	.L52-.L37
	.long	.L52-.L37
	.long	.L38-.L37
	.long	.L39-.L37
	.long	.L52-.L37
	.long	.L40-.L37
	.long	.L41-.L37
	.long	.L52-.L37
	.long	.L42-.L37
	.text
.L39:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	336(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$6, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	PrintTransition
	addq	$48, %rsp
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L53
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	340(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	leal	1(%rax), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L53
.L42:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	360(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$6, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$10, %edi
	call	PrintTransition
	addq	$48, %rsp
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L54
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	364(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	leal	1(%rax), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$10, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$10, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L54
.L41:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$9, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$8, %edi
	call	PrintTransition
	addq	$48, %rsp
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	356(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	leal	1(%rax), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$8, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$8, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L55
.L40:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	344(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$8, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	PrintTransition
	addq	$48, %rsp
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	348(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$10, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L44
.L38:
	cmpl	$0, -48(%rbp)
	jne	.L56
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-48(%rbp), %esi
	movl	-48(%rbp), %eax
	movl	-72(%rbp), %ecx
	pushq	%rcx
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-104(%rbp)
	pushq	%rdx
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$5, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	PrintTransition
	addq	$48, %rsp
	jmp	.L56
.L35:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L44
.L52:
	nop
	jmp	.L44
.L53:
	nop
	jmp	.L44
.L54:
	nop
	jmp	.L44
.L55:
	nop
	jmp	.L44
.L56:
	nop
.L44:
	movzbl	-49(%rbp), %eax
	addl	$1, %eax
	movb	%al, -49(%rbp)
.L13:
	cmpb	$10, -49(%rbp)
	jle	.L48
	addl	$1, -48(%rbp)
.L4:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DisplayPlan7PostAlign, .-DisplayPlan7PostAlign
	.section	.rodata
.LC1:
	.string	"         *      "
.LC2:
	.string	"    %c      "
.LC3:
	.string	"\nN    "
.LC4:
	.string	"\nM%-3d "
.LC5:
	.string	"\nI%-3d "
.LC6:
	.string	"\nE    "
.LC7:
	.string	"\nC    "
.LC8:
	.string	"\nJ    "
.LC9:
	.string	"\nB    "
.LC10:
	.string	"\nD%-3d "
.LC11:
	.string	"\n"
	.text
	.globl	DisplayPlan7Matrix
	.type	DisplayPlan7Matrix, @function
DisplayPlan7Matrix:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -8(%rbp)
	jmp	.L58
.L59:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L58:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L59
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L60
.L61:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L60:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L61
	movl	$1, -4(%rbp)
	jmp	.L62
.L65:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L63
.L64:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L63:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L64
	addl	$1, -4(%rbp)
.L62:
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L65
	movl	$1, -4(%rbp)
	jmp	.L66
.L69:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L67
.L68:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L67:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L68
	addl	$1, -4(%rbp)
.L66:
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L69
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L70
.L71:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L70:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L71
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L72
.L73:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L72:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L73
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L74
.L75:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L74:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L75
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L76
.L77:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L76:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L77
	movl	$2, -4(%rbp)
	jmp	.L78
.L81:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L79
.L80:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	PrintIscore
	addl	$1, -8(%rbp)
.L79:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L80
	addl	$1, -4(%rbp)
.L78:
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L81
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DisplayPlan7Matrix, .-DisplayPlan7Matrix
	.section	.rodata
.LC13:
	.string	"%- #11.3e"
	.text
	.globl	PrintIscore
	.type	PrintIscore, @function
PrintIscore:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cvtsi2sd	-20(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PrintIscore, .-PrintIscore
	.section	.rodata
.LC14:
	.string	"M%d"
.LC15:
	.string	"D%d"
.LC16:
	.string	"I%d"
.LC17:
	.string	"bad transition"
.LC19:
	.string	"%d\t%s\t%d\t%s\t%-14.7g\t"
	.text
	.globl	PrintTransition
	.type	PrintTransition, @function
PrintTransition:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%edi, %edx
	movb	%dl, -52(%rbp)
	movb	%al, -64(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L84
.L95:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -32(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	jmp	.L85
.L94:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L86
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
.L86:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -52(%rbp)
	jne	.L87
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jne	.L87
	movl	-56(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L87
	movl	$1, -24(%rbp)
.L87:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -64(%rbp)
	jne	.L88
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jne	.L88
	movl	-68(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L88
	movl	$1, -24(%rbp)
.L88:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jge	.L89
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L90
	jmp	.L91
.L92:
	addl	$1, -36(%rbp)
.L91:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L90
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L92
.L90:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L93
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.L93:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -52(%rbp)
	jne	.L89
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jne	.L89
	movl	-56(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L89
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -64(%rbp)
	jne	.L89
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jne	.L89
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L89
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L89:
	addl	$1, -40(%rbp)
.L85:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jle	.L94
	addl	$1, -44(%rbp)
.L84:
	movl	-44(%rbp), %eax
	cmpl	56(%rbp), %eax
	jl	.L95
	cmpl	$0, -24(%rbp)
	je	.L129
	movsbl	-52(%rbp), %eax
	cmpl	$10, %eax
	ja	.L98
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L100(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L100(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L100:
	.long	.L98-.L100
	.long	.L99-.L100
	.long	.L101-.L100
	.long	.L102-.L100
	.long	.L103-.L100
	.long	.L104-.L100
	.long	.L105-.L100
	.long	.L106-.L100
	.long	.L107-.L100
	.long	.L108-.L100
	.long	.L109-.L100
	.text
.L99:
	movl	-60(%rbp), %edx
	leaq	-20(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L110
.L101:
	movl	-60(%rbp), %edx
	leaq	-20(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L110
.L102:
	movl	-60(%rbp), %edx
	leaq	-20(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L110
.L103:
	leaq	-20(%rbp), %rax
	movw	$83, (%rax)
	jmp	.L110
.L104:
	leaq	-20(%rbp), %rax
	movw	$78, (%rax)
	jmp	.L110
.L105:
	leaq	-20(%rbp), %rax
	movw	$66, (%rax)
	jmp	.L110
.L106:
	leaq	-20(%rbp), %rax
	movw	$69, (%rax)
	jmp	.L110
.L107:
	leaq	-20(%rbp), %rax
	movw	$67, (%rax)
	jmp	.L110
.L109:
	leaq	-20(%rbp), %rax
	movw	$74, (%rax)
	jmp	.L110
.L108:
	leaq	-20(%rbp), %rax
	movw	$84, (%rax)
	jmp	.L110
.L98:
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L110:
	movsbl	-64(%rbp), %eax
	cmpl	$10, %eax
	ja	.L111
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L113(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L113(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L113:
	.long	.L111-.L113
	.long	.L112-.L113
	.long	.L114-.L113
	.long	.L115-.L113
	.long	.L116-.L113
	.long	.L117-.L113
	.long	.L118-.L113
	.long	.L119-.L113
	.long	.L120-.L113
	.long	.L121-.L113
	.long	.L122-.L113
	.text
.L112:
	movl	-72(%rbp), %edx
	leaq	-14(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L123
.L114:
	movl	-72(%rbp), %edx
	leaq	-14(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L123
.L115:
	movl	-72(%rbp), %edx
	leaq	-14(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L123
.L116:
	leaq	-14(%rbp), %rax
	movw	$83, (%rax)
	jmp	.L123
.L117:
	leaq	-14(%rbp), %rax
	movw	$78, (%rax)
	jmp	.L123
.L118:
	leaq	-14(%rbp), %rax
	movw	$66, (%rax)
	jmp	.L123
.L119:
	leaq	-14(%rbp), %rax
	movw	$69, (%rax)
	jmp	.L123
.L120:
	leaq	-14(%rbp), %rax
	movw	$67, (%rax)
	jmp	.L123
.L122:
	leaq	-14(%rbp), %rax
	movw	$74, (%rax)
	jmp	.L123
.L121:
	leaq	-14(%rbp), %rax
	movw	$84, (%rax)
	jmp	.L123
.L111:
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L123:
	movss	.LC18(%rip), %xmm0
	movl	16(%rbp), %edi
	call	Score2Prob@PLT
	cvtss2sd	%xmm0, %xmm0
	leaq	-14(%rbp), %rsi
	movl	-68(%rbp), %ecx
	leaq	-20(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, -44(%rbp)
	jmp	.L124
.L127:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L125
	movl	$42, %edi
	call	putchar@PLT
.L125:
	movl	56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jge	.L126
	movl	$9, %edi
	call	putchar@PLT
.L126:
	addl	$1, -44(%rbp)
.L124:
	movl	-44(%rbp), %eax
	cmpl	56(%rbp), %eax
	jl	.L127
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L83
.L129:
	nop
.L83:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PrintTransition, .-PrintTransition
	.section	.rodata
	.align 8
.LC12:
	.long	3100409327
	.long	1083607751
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
