	.file	"treeup.c"
	.text
	.globl	update_tree
	.type	update_tree, @function
update_tree:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -128(%rbp)
	jne	.L2
	cmpq	$0, 48(%rbp)
	js	.L3
.L2:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -120(%rbp)
	jne	.L4
	cmpq	$0, 48(%rbp)
	jle	.L4
.L3:
	movq	48(%rbp), %rax
	sarq	$63, %rax
	xorq	%rax, 48(%rbp)
	subq	%rax, 48(%rbp)
	jmp	.L5
.L4:
	movq	48(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	48(%rbp), %rax
	subq	%rdx, %rax
	negq	%rax
	movq	%rax, 48(%rbp)
.L5:
	movq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L6:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L35
	nop
	jmp	.L8
.L37:
	nop
.L8:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L6
.L35:
	nop
.L7:
	movq	-72(%rbp), %rax
	cmpq	16(%rbp), %rax
	je	.L36
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L37
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.L7
.L36:
	nop
.L10:
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L12
.L19:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, 40(%rax)
.L13:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L15
.L14:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
.L15:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L16:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L17
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.L18
.L17:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
.L18:
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
.L12:
	movq	-64(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L19
	movq	-104(%rbp), %rax
	cmpq	56(%rbp), %rax
	jle	.L20
	movq	24(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L21
.L24:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	cmpq	%rax, -88(%rbp)
	je	.L22
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 80(%rax)
	jmp	.L23
.L22:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 80(%rax)
.L23:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.L21:
	movq	-64(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L24
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L25
.L28:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	cmpq	%rax, -88(%rbp)
	jne	.L26
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 80(%rax)
	jmp	.L27
.L26:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	subq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 80(%rax)
.L27:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.L25:
	movq	-64(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L28
	jmp	.L38
.L20:
	movq	24(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L30
.L31:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.L30:
	movq	-64(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L31
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L32
.L33:
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.L32:
	movq	-64(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L33
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	update_tree, .-update_tree
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
