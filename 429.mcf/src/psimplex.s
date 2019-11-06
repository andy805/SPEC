	.file	"psimplex.c"
	.text
	.globl	primal_net_simplex
	.type	primal_net_simplex, @function
primal_net_simplex:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -136(%rbp)
	movq	-184(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-184(%rbp), %rax
	addq	$600, %rax
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	addq	$608, %rax
	movq	%rax, -64(%rbp)
	movq	-184(%rbp), %rax
	addq	$616, %rax
	movq	%rax, -56(%rbp)
	jmp	.L2
.L18:
	leaq	-152(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	primal_bea_mpp@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L3
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jle	.L4
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.L5
.L4:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
.L5:
	movq	$1, -176(%rbp)
	leaq	-160(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	leaq	-168(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	primal_iminus@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L6
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L7
	movq	-48(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L8
.L7:
	movq	-48(%rbp), %rax
	movl	$2, 24(%rax)
.L8:
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	je	.L2
	movq	-160(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	primal_update_flow@PLT
	jmp	.L2
.L6:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L11
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
.L11:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L12
	movq	$1, -104(%rbp)
	jmp	.L13
.L12:
	movq	$2, -104(%rbp)
.L13:
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jle	.L14
	movq	-176(%rbp), %rax
	movl	$1, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -144(%rbp)
	jmp	.L15
.L14:
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
.L15:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -120(%rbp)
	jne	.L16
	movq	$1, -128(%rbp)
	jmp	.L17
.L16:
	movq	$0, -128(%rbp)
.L17:
	movq	-184(%rbp), %rax
	movq	512(%rax), %r9
	movq	-152(%rbp), %r8
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %r11
	movq	-120(%rbp), %r10
	movq	-144(%rbp), %rcx
	movq	-128(%rbp), %rsi
	pushq	%r9
	pushq	%r8
	pushq	-48(%rbp)
	pushq	%rdi
	pushq	-24(%rbp)
	pushq	-40(%rbp)
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	update_tree@PLT
	addq	$48, %rsp
	movq	-48(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-104(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rcx
	movabsq	$-6640827866535438581, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	jne	.L2
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	refresh_potential@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L2
.L3:
	movq	$1, -136(%rbp)
.L2:
	cmpq	$0, -136(%rbp)
	je	.L18
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	refresh_potential@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	primal_feasible@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	dual_feasible@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	primal_net_simplex, .-primal_net_simplex
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
