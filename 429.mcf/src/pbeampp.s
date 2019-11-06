	.file	"pbeampp.c"
	.text
	.globl	bea_is_dual_infeasible
	.type	bea_is_dual_infeasible, @function
bea_is_dual_infeasible:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L3
.L2:
	cmpq	$0, -16(%rbp)
	jle	.L4
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L4
.L3:
	movl	$1, %eax
	jmp	.L6
.L4:
	movl	$0, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bea_is_dual_infeasible, .-bea_is_dual_infeasible
	.local	basket_size
	.comm	basket_size,8,8
	.local	basket
	.comm	basket,8424,32
	.local	perm
	.comm	perm,2808,32
	.globl	sort_basket
	.type	sort_basket, @function
sort_basket:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L8
.L9:
	addq	$1, -32(%rbp)
.L8:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L9
	jmp	.L10
.L11:
	subq	$1, -24(%rbp)
.L10:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jg	.L11
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L12
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	leaq	perm(%rip), %rax
	movq	%rdx, (%rcx,%rax)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	leaq	perm(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rcx,%rax)
.L12:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jg	.L13
	addq	$1, -32(%rbp)
	subq	$1, -24(%rbp)
.L13:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.L8
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L15
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sort_basket
.L15:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.L17
	cmpq	$50, -32(%rbp)
	jg	.L17
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sort_basket
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sort_basket, .-sort_basket
	.local	nr_group
	.comm	nr_group,8,8
	.local	group_pos
	.comm	group_pos,8,8
	.data
	.align 8
	.type	initialize, @object
	.size	initialize, 8
initialize:
	.quad	1
	.text
	.globl	primal_bea_mpp
	.type	primal_bea_mpp, @function
primal_bea_mpp:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	initialize(%rip), %rax
	testq	%rax, %rax
	je	.L19
	movq	$1, -40(%rbp)
	jmp	.L20
.L21:
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	basket(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	addq	$1, -40(%rbp)
.L20:
	cmpq	$350, -40(%rbp)
	jle	.L21
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rcx
	movabsq	$7870610804782742023, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, nr_group(%rip)
	movq	$0, group_pos(%rip)
	movq	$0, basket_size(%rip)
	movq	$0, initialize(%rip)
	jmp	.L22
.L19:
	movq	$2, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L23
.L28:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L24
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L25
.L24:
	cmpq	$0, -16(%rbp)
	jle	.L26
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L26
.L25:
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, 16(%rcx)
.L26:
	addq	$1, -40(%rbp)
.L23:
	cmpq	$50, -40(%rbp)
	jg	.L27
	movq	basket_size(%rip), %rax
	cmpq	%rax, -40(%rbp)
	jle	.L28
.L27:
	movq	-32(%rbp), %rax
	movq	%rax, basket_size(%rip)
.L22:
	movq	group_pos(%rip), %rax
	movq	%rax, -8(%rbp)
.L29:
	movq	group_pos(%rip), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L30
.L32:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L31
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bea_is_dual_infeasible
	testl	%eax, %eax
	je	.L31
	movq	basket_size(%rip), %rax
	addq	$1, %rax
	movq	%rax, basket_size(%rip)
	movq	basket_size(%rip), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	basket_size(%rip), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	basket_size(%rip), %rax
	leaq	0(,%rax,8), %rdx
	leaq	perm(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-16(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, 16(%rcx)
.L31:
	movq	nr_group(%rip), %rax
	salq	$6, %rax
	addq	%rax, -24(%rbp)
.L30:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L32
	movq	group_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, group_pos(%rip)
	movq	group_pos(%rip), %rdx
	movq	nr_group(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L33
	movq	$0, group_pos(%rip)
.L33:
	movq	basket_size(%rip), %rax
	cmpq	$49, %rax
	jg	.L34
	movq	group_pos(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L34
	jmp	.L29
.L34:
	movq	basket_size(%rip), %rax
	testq	%rax, %rax
	jne	.L35
	movq	$1, initialize(%rip)
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	basket_size(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	sort_basket
	movq	8+perm(%rip), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	8+perm(%rip), %rax
	movq	(%rax), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	primal_bea_mpp, .-primal_bea_mpp
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
