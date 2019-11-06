	.file	"sre_random.c"
	.text
	.data
	.align 4
	.type	sre_randseed, @object
	.size	sre_randseed, 4
sre_randseed:
	.long	42
	.text
	.globl	sre_random
	.type	sre_random, @function
sre_random:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$40014, -80(%rbp)
	movq	$2147483563, -72(%rbp)
	movq	$53668, -64(%rbp)
	movq	$12211, -56(%rbp)
	movq	$40692, -48(%rbp)
	movq	$2147483399, -40(%rbp)
	movq	$52774, -32(%rbp)
	movq	$3791, -24(%rbp)
	movl	sre_randseed(%rip), %eax
	testl	%eax, %eax
	jle	.L2
	movl	sre_randseed(%rip), %eax
	cltq
	movq	%rax, rnd1.3835(%rip)
	movl	sre_randseed(%rip), %eax
	cltq
	movq	%rax, rnd2.3836(%rip)
	movl	$0, -84(%rbp)
	jmp	.L3
.L7:
	movq	rnd1.3835(%rip), %rax
	cqto
	idivq	-64(%rbp)
	movq	-80(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	rnd1.3835(%rip), %rax
	cqto
	idivq	-64(%rbp)
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, rnd1.3835(%rip)
	movq	rnd1.3835(%rip), %rax
	testq	%rax, %rax
	jns	.L4
	movq	rnd1.3835(%rip), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, rnd1.3835(%rip)
.L4:
	movq	rnd2.3836(%rip), %rax
	cqto
	idivq	-32(%rbp)
	movq	-48(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	rnd2.3836(%rip), %rax
	cqto
	idivq	-32(%rbp)
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, rnd2.3836(%rip)
	movq	rnd2.3836(%rip), %rax
	testq	%rax, %rax
	jns	.L5
	movq	rnd2.3836(%rip), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, rnd2.3836(%rip)
.L5:
	movq	rnd1.3835(%rip), %rdx
	movq	rnd2.3836(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jns	.L6
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	%rcx, (%rdx,%rax)
.L6:
	addl	$1, -84(%rbp)
.L3:
	cmpl	$63, -84(%rbp)
	jle	.L7
	movl	$0, sre_randseed(%rip)
.L2:
	movq	rnd1.3835(%rip), %rax
	cqto
	idivq	-64(%rbp)
	movq	-80(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	rnd1.3835(%rip), %rax
	cqto
	idivq	-64(%rbp)
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, rnd1.3835(%rip)
	movq	rnd1.3835(%rip), %rax
	testq	%rax, %rax
	jns	.L8
	movq	rnd1.3835(%rip), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, rnd1.3835(%rip)
.L8:
	movq	rnd2.3836(%rip), %rax
	cqto
	idivq	-32(%rbp)
	movq	-48(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	rnd2.3836(%rip), %rax
	cqto
	idivq	-32(%rbp)
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, rnd2.3836(%rip)
	movq	rnd2.3836(%rip), %rax
	testq	%rax, %rax
	jns	.L9
	movq	rnd2.3836(%rip), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, rnd2.3836(%rip)
.L9:
	movq	rnd.3837(%rip), %rax
	cvtsi2sdq	%rax, %xmm0
	cvtsi2sdq	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, rnd.3837(%rip)
	movq	rnd1.3835(%rip), %rdx
	movq	rnd2.3836(%rip), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jns	.L10
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tbl.3838(%rip), %rax
	movq	%rcx, (%rdx,%rax)
.L10:
	movq	rnd.3837(%rip), %rax
	cvtsi2sdq	%rax, %xmm0
	cvtsi2sdq	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sre_random, .-sre_random
	.globl	sre_srandom
	.type	sre_srandom, @function
sre_srandom:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L13
	negl	-4(%rbp)
.L13:
	cmpl	$0, -4(%rbp)
	jne	.L14
	movl	$42, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	movl	%eax, sre_randseed(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sre_srandom, .-sre_srandom
	.globl	sre_random_positive
	.type	sre_random_positive, @function
sre_random_positive:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L16:
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L19
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	je	.L16
.L19:
	movsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sre_random_positive, .-sre_random_positive
	.globl	ExponentialRandom
	.type	ExponentialRandom, @function
ExponentialRandom:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
.L21:
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L24
	pxor	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	je	.L21
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC2(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ExponentialRandom, .-ExponentialRandom
	.globl	Gaussrandom
	.type	Gaussrandom, @function
Gaussrandom:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, u.3878(%rip)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, s.3879(%rip)
	movsd	u.3878(%rip), %xmm0
	ucomisd	.LC3(%rip), %xmm0
	jbe	.L26
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, s.3879(%rip)
.L26:
	movsd	u.3878(%rip), %xmm0
	movsd	s.3879(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	u.3878(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, u.3878(%rip)
	movsd	u.3878(%rip), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, u.3878(%rip)
	movsd	u.3878(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, i.3876(%rip)
	movq	i.3876(%rip), %rax
	cmpq	$32, %rax
	jne	.L28
	movq	$31, i.3876(%rip)
.L28:
	movq	i.3876(%rip), %rax
	testq	%rax, %rax
	je	.L60
	movsd	u.3878(%rip), %xmm1
	movq	i.3876(%rip), %rax
	cvtsi2sdq	%rax, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, ustar.3880(%rip)
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	a.3872(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, aa.3881(%rip)
.L31:
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	t.3874(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	ustar.3880(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jnb	.L61
	movsd	ustar.3880(%rip), %xmm0
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	t.3874(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	h.3875(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, w.3882(%rip)
	jmp	.L35
.L62:
	nop
	jmp	.L35
.L65:
	nop
.L35:
	movsd	aa.3881(%rip), %xmm1
	movsd	w.3882(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, y.3883(%rip)
	movsd	y.3883(%rip), %xmm0
	movsd	%xmm0, snorm.3877(%rip)
	movsd	s.3879(%rip), %xmm0
	movsd	.LC4(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L36
	movsd	.LC4(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L36
	movsd	y.3883(%rip), %xmm1
	movq	.LC2(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, snorm.3877(%rip)
.L36:
	movsd	snorm.3877(%rip), %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	jmp	.L59
.L61:
	nop
.L34:
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, u.3878(%rip)
	movq	i.3876(%rip), %rax
	leaq	0(,%rax,8), %rdx
	leaq	a.3872(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	aa.3881(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	u.3878(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, w.3882(%rip)
	movsd	w.3882(%rip), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	aa.3881(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	w.3882(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, tt.3884(%rip)
	jmp	.L39
.L63:
	nop
.L40:
	movsd	u.3878(%rip), %xmm0
	movsd	%xmm0, tt.3884(%rip)
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, ustar.3880(%rip)
.L39:
	movsd	ustar.3880(%rip), %xmm0
	movsd	tt.3884(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L62
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, u.3878(%rip)
	movsd	ustar.3880(%rip), %xmm0
	movsd	u.3878(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jnb	.L63
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, ustar.3880(%rip)
	jmp	.L31
.L60:
	nop
.L30:
	movq	$6, i.3876(%rip)
	movsd	248+a.3872(%rip), %xmm0
	movsd	%xmm0, aa.3881(%rip)
	jmp	.L45
.L64:
	nop
.L46:
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	d.3873(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	aa.3881(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, aa.3881(%rip)
	movq	i.3876(%rip), %rax
	addq	$1, %rax
	movq	%rax, i.3876(%rip)
.L45:
	movsd	u.3878(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, u.3878(%rip)
	movsd	u.3878(%rip), %xmm1
	movsd	.LC4(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L64
	movsd	u.3878(%rip), %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, u.3878(%rip)
.L49:
	movq	i.3876(%rip), %rax
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	leaq	d.3873(%rip), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	u.3878(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, w.3882(%rip)
	movsd	w.3882(%rip), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	aa.3881(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	w.3882(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, tt.3884(%rip)
	jmp	.L50
.L66:
	nop
.L51:
	movsd	u.3878(%rip), %xmm0
	movsd	%xmm0, tt.3884(%rip)
.L50:
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, ustar.3880(%rip)
	movsd	ustar.3880(%rip), %xmm0
	movsd	tt.3884(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L65
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, u.3878(%rip)
	movsd	ustar.3880(%rip), %xmm0
	movsd	u.3878(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jnb	.L66
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, u.3878(%rip)
	jmp	.L49
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Gaussrandom, .-Gaussrandom
	.globl	DChoose
	.type	DChoose, @function
DChoose:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	call	sre_random
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L68
.L72:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L74
	movl	-20(%rbp), %eax
	jmp	.L71
.L74:
	addl	$1, -20(%rbp)
.L68:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L72
	call	sre_random
	movapd	%xmm0, %xmm1
	cvtsi2sd	-44(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DChoose, .-DChoose
	.globl	FChoose
	.type	FChoose, @function
FChoose:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	sre_random
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -4(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L76
.L80:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L82
	movl	-8(%rbp), %eax
	jmp	.L79
.L82:
	addl	$1, -8(%rbp)
.L76:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L80
	call	sre_random
	movapd	%xmm0, %xmm1
	cvtsi2sd	-28(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FChoose, .-FChoose
	.local	rnd1.3835
	.comm	rnd1.3835,8,8
	.local	rnd2.3836
	.comm	rnd2.3836,8,8
	.local	tbl.3838
	.comm	tbl.3838,512,32
	.local	rnd.3837
	.comm	rnd.3837,8,8
	.local	u.3878
	.comm	u.3878,8,8
	.local	s.3879
	.comm	s.3879,8,8
	.local	i.3876
	.comm	i.3876,8,8
	.local	ustar.3880
	.comm	ustar.3880,8,8
	.data
	.align 32
	.type	a.3872, @object
	.size	a.3872, 256
a.3872:
	.long	0
	.long	0
	.long	1923848480
	.long	1067716323
	.long	4035768425
	.long	1068765909
	.long	3128110581
	.long	1069426220
	.long	3420965503
	.long	1069818561
	.long	373888929
	.long	1070152331
	.long	1862627673
	.long	1070488739
	.long	4103762224
	.long	1070712237
	.long	2190337114
	.long	1070883990
	.long	3004415523
	.long	1071058014
	.long	873726915
	.long	1071234679
	.long	130292128
	.long	1071414390
	.long	3477315474
	.long	1071597596
	.long	941346880
	.long	1071714737
	.long	1080160223
	.long	1071810624
	.long	3307330976
	.long	1071909120
	.long	2718927329
	.long	1072010603
	.long	3534709981
	.long	1072115512
	.long	2279397556
	.long	1072224370
	.long	2555319999
	.long	1072337803
	.long	1144536629
	.long	1072456577
	.long	1483626015
	.long	1072581641
	.long	1177851831
	.long	1072703723
	.long	1791929075
	.long	1072774529
	.long	1516226535
	.long	1072850900
	.long	2709196651
	.long	1072934272
	.long	3016510151
	.long	1073026706
	.long	3895844575
	.long	1073131339
	.long	1982969221
	.long	1073253314
	.long	1981869709
	.long	1073402022
	.long	299067163
	.long	1073597888
	.long	3504693314
	.long	1073822498
	.local	aa.3881
	.comm	aa.3881,8,8
	.align 32
	.type	t.3874, @object
	.size	t.3874, 248
t.3874:
	.long	63378489
	.long	1061758278
	.long	1721274458
	.long	1063445979
	.long	2175588265
	.long	1064280141
	.long	3777101717
	.long	1064715937
	.long	3734986024
	.long	1065148721
	.long	539638108
	.long	1065473461
	.long	3792666404
	.long	1065703667
	.long	1617260658
	.long	1065943375
	.long	1642395494
	.long	1066194593
	.long	3554182332
	.long	1066430701
	.long	2135911288
	.long	1066571436
	.long	1162865488
	.long	1066721950
	.long	4168391517
	.long	1066884087
	.long	2339024071
	.long	1067060067
	.long	2119297667
	.long	1067252595
	.long	1065800601
	.long	1067457690
	.long	3253465902
	.long	1067575939
	.long	834540321
	.long	1067708899
	.long	2913331980
	.long	1067860026
	.long	1359491152
	.long	1068033891
	.long	1776239044
	.long	1068236660
	.long	2429744776
	.long	1068476872
	.long	1424010494
	.long	1068632823
	.long	1072243739
	.long	1068811536
	.long	2872298206
	.long	1069037902
	.long	148269143
	.long	1069334451
	.long	922490256
	.long	1069643972
	.long	1561086609
	.long	1069939172
	.long	1487144452
	.long	1070408393
	.long	358165913
	.long	1070933729
	.long	1183569292
	.long	1071822307
	.align 32
	.type	h.3875, @object
	.size	h.3875, 248
h.3875:
	.long	3286704138
	.long	1067717332
	.long	3543286172
	.long	1067721388
	.long	2612714506
	.long	1067727527
	.long	2403708340
	.long	1067735816
	.long	1270716583
	.long	1067746349
	.long	2660829134
	.long	1067759247
	.long	901676501
	.long	1067774665
	.long	1406044474
	.long	1067792793
	.long	3662935027
	.long	1067813866
	.long	2906624959
	.long	1067838172
	.long	1902276062
	.long	1067866061
	.long	1313685498
	.long	1067897961
	.long	1714204598
	.long	1067934398
	.long	3980232
	.long	1067976022
	.long	466621740
	.long	1068023641
	.long	1782099441
	.long	1068078271
	.long	1903232637
	.long	1068141206
	.long	762082504
	.long	1068214113
	.long	3016587117
	.long	1068299179
	.long	4113382951
	.long	1068399330
	.long	3547068492
	.long	1068508756
	.long	1852490176
	.long	1068580733
	.long	1023469404
	.long	1068669156
	.long	690834151
	.long	1068780209
	.long	98318330
	.long	1068923730
	.long	1383493491
	.long	1069116412
	.long	347720552
	.long	1069389143
	.long	563994489
	.long	1069676993
	.long	2349491422
	.long	1070039211
	.long	2262959857
	.long	1070717737
	.long	4110304318
	.long	1072066298
	.local	w.3882
	.comm	w.3882,8,8
	.local	y.3883
	.comm	y.3883,8,8
	.local	snorm.3877
	.comm	snorm.3877,8,8
	.local	tt.3884
	.comm	tt.3884,8,8
	.align 32
	.type	d.3873, @object
	.size	d.3873, 248
d.3873:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	490602088
	.long	1070653492
	.long	3191882255
	.long	1070533252
	.long	2131073437
	.long	1070391140
	.long	1474005288
	.long	1070274260
	.long	2501279002
	.long	1070176030
	.long	1100226310
	.long	1070092031
	.long	698024957
	.long	1070019171
	.long	398792867
	.long	1069955218
	.long	1275928268
	.long	1069898515
	.long	2078736683
	.long	1069847804
	.long	3162030515
	.long	1069802111
	.long	2130798559
	.long	1069760669
	.long	3081986068
	.long	1069722863
	.long	4106675930
	.long	1069688196
	.long	872847306
	.long	1069656263
	.long	2400948566
	.long	1069626723
	.long	714242753
	.long	1069599296
	.long	3387045569
	.long	1069573742
	.long	1118808057
	.long	1069549861
	.long	2376209554
	.long	1069507437
	.long	169984498
	.long	1069465372
	.long	4007664908
	.long	1069425745
	.long	416055200
	.long	1069388336
	.long	3788147411
	.long	1069352942
	.long	690988082
	.long	1069319395
	.long	2504577537
	.long	1069287538
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1078984704
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1077936128
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
