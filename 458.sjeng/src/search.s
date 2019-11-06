	.file	"search.c"
	.text
	.comm	FH,4,4
	.comm	FHF,4,4
	.comm	razor_drop,4,4
	.comm	razor_material,4,4
	.comm	drop_cuts,4,4
	.comm	ext_recap,4,4
	.comm	ext_onerep,4,4
	.comm	true_i_depth,1,1
	.comm	bestmovenum,4,4
	.comm	ugly_ep_hack,4,4
	.comm	postpv,256,32
	.comm	searching_move,20,16
	.comm	moveleft,4,4
	.comm	movetotal,4,4
	.comm	legals,4,4
	.comm	failed,4,4
	.comm	extendedtime,4,4
	.comm	tradefreely,4,4
	.comm	s_threat,4,4
	.comm	rootnodecount,2048,32
	.comm	checks,1200,32
	.comm	recaps,1200,32
	.comm	singular,1200,32
	.globl	order_moves
	.type	order_moves, @function
order_moves:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	searching_pv(%rip), %eax
	testl	%eax, %eax
	je	.L2
	movl	$0, searching_pv(%rip)
	movl	$0, -24(%rbp)
	jmp	.L3
.L25:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$13, -8(%rbp)
	je	.L4
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L5
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$50000000, %edx
	movl	%edx, (%rax)
	jmp	.L9
.L5:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-50, -4(%rbp)
	jl	.L7
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	addl	$50000000, %edx
	movl	%edx, (%rax)
	jmp	.L8
.L7:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L8:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L9
.L4:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L9:
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	7200+pv(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L10
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	7204+pv(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L10
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	7212+pv(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L10
	movl	$1, searching_pv(%rip)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$100000000, (%rax)
	cmpl	$13, -8(%rbp)
	je	.L13
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L12
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L12:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L10:
	cmpl	$-1, -64(%rbp)
	je	.L14
	cmpl	$-2, -64(%rbp)
	je	.L14
	movl	-24(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L14
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$100000000, (%rax)
	cmpl	$13, -8(%rbp)
	je	.L13
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L16
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L16:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L14:
	cmpl	$-2, -64(%rbp)
	jne	.L17
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L13
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	4+pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L13
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	12+pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L13
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$100000000, (%rax)
	cmpl	$13, -8(%rbp)
	je	.L13
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L19
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L19:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L13
.L17:
	movl	ply(%rip), %eax
	cmpl	$1, %eax
	jne	.L20
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jg	.L21
.L20:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	history_h(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rsi,%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L22
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L22
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L22
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$25000000, %edx
	movl	%edx, (%rax)
	jmp	.L23
.L22:
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L24
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L24
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L24
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$20000000, %edx
	movl	%edx, (%rax)
	jmp	.L23
.L24:
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L44
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L44
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L44
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$15000000, %edx
	movl	%edx, (%rax)
	jmp	.L44
.L23:
	jmp	.L44
.L21:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootnodecount(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$1374389535, %edx
	mull	%edx
	shrl	$5, %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	jmp	.L13
.L44:
	nop
.L13:
	addl	$1, -24(%rbp)
.L3:
	movl	-24(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L25
	jmp	.L45
.L2:
	movl	$0, -24(%rbp)
	jmp	.L27
.L43:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$-1, -64(%rbp)
	je	.L28
	movl	-24(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L28
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$100000000, (%rax)
	cmpl	$13, -8(%rbp)
	je	.L31
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L30
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	jmp	.L31
.L30:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L31
.L28:
	cmpl	$-2, -64(%rbp)
	jne	.L32
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L31
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	4+pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L31
	movl	ply(%rip), %eax
	leal	1(%rax), %ecx
	movl	ply(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	12+pv(%rip), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L31
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$100000000, (%rax)
	cmpl	$13, -8(%rbp)
	je	.L31
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L34
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	jmp	.L31
.L34:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L31
.L32:
	cmpl	$13, -8(%rbp)
	je	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	leal	15(%rax), %ecx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jl	.L36
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	material(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sarl	$4, %ecx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	movq	-56(%rbp), %rdx
	addq	%rsi, %rdx
	subl	%ecx, %eax
	movl	%eax, (%rdx)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$50000000, %edx
	movl	%edx, (%rax)
	jmp	.L31
.L36:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	see@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-50, -4(%rbp)
	jl	.L38
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	addl	$50000000, %edx
	movl	%edx, (%rax)
	jmp	.L39
.L38:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L39:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L31
.L35:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L31:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	history_h(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rsi,%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L40
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L40
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L40
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$25000000, %edx
	movl	%edx, (%rax)
	jmp	.L41
.L40:
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L42
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L42
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L42
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$20000000, %edx
	movl	%edx, (%rax)
	jmp	.L41
.L42:
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L41
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L41
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L41
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	addl	$15000000, %edx
	movl	%edx, (%rax)
.L41:
	addl	$1, -24(%rbp)
.L27:
	movl	-24(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L43
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	order_moves, .-order_moves
	.globl	perft
	.type	perft, @function
perft:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12336, %rsp
	movl	%edi, -12324(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12312(%rbp)
	cmpl	$0, -12324(%rbp)
	jne	.L47
	movl	raw_nodes(%rip), %eax
	addl	$1, %eax
	movl	%eax, raw_nodes(%rip)
	jmp	.L46
.L47:
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12312(%rbp)
	call	in_check@PLT
	movl	%eax, -12308(%rbp)
	movl	$0, -12316(%rbp)
	jmp	.L49
.L51:
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12308(%rbp), %edx
	movl	-12316(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L50
	movl	-12324(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	perft
.L50:
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12316(%rbp)
.L49:
	movl	-12316(%rbp), %eax
	cmpl	-12312(%rbp), %eax
	jl	.L51
.L46:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	perft, .-perft
	.section	.rodata
	.align 8
.LC0:
	.string	"Extended from %d to %d, time left %d\n"
	.text
	.globl	qsearch
	.type	qsearch, @function
qsearch:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16488, %rsp
	.cfi_offset 3, -24
	movl	%edi, -16484(%rbp)
	movl	%esi, -16488(%rbp)
	movl	%edx, -16492(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$-1000000, -16452(%rbp)
	movl	$1, -16448(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	nodes(%rip), %eax
	movzwl	%ax, %eax
	testl	%eax, %eax
	jne	.L54
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L55
	movl	$1, time_exit(%rip)
	movl	$0, %eax
	jmp	.L81
.L55:
	movq	start_time(%rip), %rbx
	call	rtime@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime@PLT
	movl	%eax, %edx
	movl	time_for_move(%rip), %eax
	cmpl	%eax, %edx
	jl	.L54
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L54
	movl	failed(%rip), %eax
	cmpl	$1, %eax
	jne	.L57
	movl	extendedtime(%rip), %eax
	testl	%eax, %eax
	jne	.L57
	movl	fixed_time(%rip), %eax
	testl	%eax, %eax
	jne	.L57
	movl	go_fast(%rip), %eax
	testl	%eax, %eax
	jne	.L57
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L57
	movl	time_for_move(%rip), %eax
	sall	$2, %eax
	movl	$1000, %edx
	cmpl	$1000, %eax
	cmovge	%eax, %edx
	movl	time_left(%rip), %eax
	cmpl	%eax, %edx
	jge	.L57
	movl	$1, extendedtime(%rip)
	movl	time_for_move(%rip), %eax
	movl	%eax, -16444(%rbp)
	call	allocate_time@PLT
	movl	%eax, %edx
	movl	time_for_move(%rip), %eax
	addl	%edx, %eax
	movl	%eax, time_for_move(%rip)
	movl	time_left(%rip), %ecx
	movl	time_for_move(%rip), %edx
	movl	-16444(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L54
.L57:
	movl	$1, time_exit(%rip)
	movl	$0, %eax
	jmp	.L81
.L54:
	cmpl	$0, -16492(%rbp)
	jle	.L58
	movl	ply(%rip), %eax
	cmpl	$299, %eax
	jle	.L59
.L58:
	movl	-16488(%rbp), %edx
	movl	-16484(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	eval@PLT
	movl	%eax, -16452(%rbp)
	movl	-16452(%rbp), %eax
	jmp	.L81
.L59:
	movl	qnodes(%rip), %eax
	addl	$1, %eax
	movl	%eax, qnodes(%rip)
	movl	nodes(%rip), %eax
	addl	$1, %eax
	movl	%eax, nodes(%rip)
	movl	-16484(%rbp), %eax
	movl	%eax, -16440(%rbp)
	leaq	-16472(%rbp), %rdx
	leaq	-16468(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	QProbeTT@PLT
	cmpl	$4, %eax
	ja	.L60
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L62(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L62(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L62:
	.long	.L83-.L62
	.long	.L63-.L62
	.long	.L64-.L62
	.long	.L65-.L62
	.long	.L66-.L62
	.text
.L65:
	movl	-16468(%rbp), %eax
	jmp	.L81
.L63:
	movl	-16468(%rbp), %eax
	cmpl	%eax, -16484(%rbp)
	jl	.L84
	movl	-16468(%rbp), %eax
	jmp	.L81
.L64:
	movl	-16468(%rbp), %eax
	cmpl	%eax, -16488(%rbp)
	jg	.L85
	movl	-16468(%rbp), %eax
	jmp	.L81
.L66:
	movl	$-1, -16472(%rbp)
	jmp	.L60
.L83:
	nop
	jmp	.L60
.L84:
	nop
	jmp	.L60
.L85:
	nop
.L60:
	movl	-16488(%rbp), %edx
	movl	-16484(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	eval@PLT
	movl	%eax, -16436(%rbp)
	movl	-16436(%rbp), %eax
	cmpl	-16488(%rbp), %eax
	jl	.L69
	movl	-16488(%rbp), %edx
	movl	-16440(%rbp), %esi
	movl	-16436(%rbp), %eax
	movl	$500, %ecx
	movl	%eax, %edi
	call	QStoreTT@PLT
	movl	-16436(%rbp), %eax
	jmp	.L81
.L69:
	movl	-16436(%rbp), %eax
	cmpl	-16484(%rbp), %eax
	jle	.L70
	movl	-16436(%rbp), %eax
	movl	%eax, -16484(%rbp)
.L70:
	movl	$-1, -16432(%rbp)
	movl	$-1000000, -16456(%rbp)
	movl	$0, -16428(%rbp)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16428(%rbp)
	movl	kingcap(%rip), %eax
	testl	%eax, %eax
	je	.L71
	movl	$50000, %eax
	jmp	.L81
.L71:
	movl	-16484(%rbp), %eax
	subl	$150, %eax
	subl	-16436(%rbp), %eax
	movl	%eax, -16424(%rbp)
	movl	-16472(%rbp), %edi
	movl	-16428(%rbp), %ecx
	leaq	-14368(%rbp), %rdx
	leaq	-16416(%rbp), %rsi
	leaq	-12320(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	order_moves
	jmp	.L72
.L80:
	movl	$0, -16460(%rbp)
	movl	-16476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L73
	movl	-16476(%rbp), %eax
	cltq
	movl	-14368(%rbp,%rax,4), %eax
	movl	%eax, -16420(%rbp)
	movl	-16420(%rbp), %eax
	cmpl	-16424(%rbp), %eax
	jl	.L72
	cmpl	$0, -16420(%rbp)
	jns	.L73
	jmp	.L72
.L73:
	movl	-16476(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16492(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-16484(%rbp), %eax
	negl	%eax
	movl	%eax, %ecx
	movl	-16488(%rbp), %eax
	negl	%eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	qsearch
	negl	%eax
	movl	%eax, -16452(%rbp)
	cmpl	$-50000, -16452(%rbp)
	je	.L75
	movl	$1, -16460(%rbp)
	movl	$0, -16448(%rbp)
.L75:
	movl	-16476(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-16452(%rbp), %eax
	cmpl	-16456(%rbp), %eax
	jle	.L76
	cmpl	$0, -16460(%rbp)
	je	.L76
	movl	-16452(%rbp), %eax
	movl	%eax, -16456(%rbp)
.L76:
	movl	-16452(%rbp), %eax
	cmpl	-16484(%rbp), %eax
	jle	.L72
	cmpl	$0, -16460(%rbp)
	je	.L72
	movl	-16476(%rbp), %eax
	movl	%eax, -16472(%rbp)
	movl	-16452(%rbp), %eax
	cmpl	-16488(%rbp), %eax
	jl	.L77
	movl	-16476(%rbp), %ecx
	movl	-16488(%rbp), %edx
	movl	-16440(%rbp), %esi
	movl	-16452(%rbp), %eax
	movl	%eax, %edi
	call	QStoreTT@PLT
	movl	-16452(%rbp), %eax
	jmp	.L81
.L77:
	movl	-16452(%rbp), %eax
	movl	%eax, -16484(%rbp)
	movl	-16476(%rbp), %esi
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16464(%rbp)
	jmp	.L78
.L79:
	movl	ply(%rip), %eax
	leal	1(%rax), %esi
	movl	ply(%rip), %eax
	movl	-16464(%rbp), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16464(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%esi, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rsi, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -16464(%rbp)
.L78:
	movl	ply(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16464(%rbp)
	jl	.L79
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
.L72:
	movl	-16428(%rbp), %edx
	leaq	-16416(%rbp), %rcx
	leaq	-16476(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_one
	testl	%eax, %eax
	jne	.L80
	movl	-16472(%rbp), %ecx
	movl	-16488(%rbp), %edx
	movl	-16440(%rbp), %esi
	movl	-16484(%rbp), %eax
	movl	%eax, %edi
	call	QStoreTT@PLT
	movl	-16484(%rbp), %eax
.L81:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	addq	$16488, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	qsearch, .-qsearch
	.globl	remove_one
	.type	remove_one, @function
remove_one:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$-1000000, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$-1000000, (%rax)
	movl	$0, -8(%rbp)
	jmp	.L87
.L89:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L88
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L88:
	addl	$1, -8(%rbp)
.L87:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L89
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-999999, %eax
	jl	.L90
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1000000, (%rax)
	movl	$1, %eax
	jmp	.L91
.L90:
	movl	$0, %eax
.L91:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	remove_one, .-remove_one
	.globl	search
	.type	search, @function
search:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16568, %rsp
	.cfi_offset 3, -24
	movl	%edi, -16564(%rbp)
	movl	%esi, -16568(%rbp)
	movl	%edx, -16572(%rbp)
	movl	%ecx, -16576(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$-1000000, -16520(%rbp)
	movl	nodes(%rip), %eax
	addl	$1, %eax
	movl	%eax, nodes(%rip)
	movl	nodes(%rip), %eax
	movzwl	%ax, %eax
	testl	%eax, %eax
	jne	.L93
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L94
	movl	$1, time_exit(%rip)
	movl	$0, %eax
	jmp	.L202
.L94:
	movq	start_time(%rip), %rbx
	call	rtime@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime@PLT
	movl	%eax, %edx
	movl	time_for_move(%rip), %eax
	cmpl	%eax, %edx
	jl	.L93
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L93
	movl	failed(%rip), %eax
	cmpl	$1, %eax
	jne	.L96
	movl	extendedtime(%rip), %eax
	testl	%eax, %eax
	jne	.L96
	movl	fixed_time(%rip), %eax
	testl	%eax, %eax
	jne	.L96
	movl	go_fast(%rip), %eax
	testl	%eax, %eax
	jne	.L96
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L96
	movl	time_for_move(%rip), %eax
	sall	$2, %eax
	movl	$1000, %edx
	cmpl	$1000, %eax
	cmovge	%eax, %edx
	movl	time_left(%rip), %eax
	cmpl	%eax, %edx
	jge	.L96
	movl	$1, extendedtime(%rip)
	movl	time_for_move(%rip), %eax
	movl	%eax, -16476(%rbp)
	call	allocate_time@PLT
	movl	%eax, %edx
	movl	time_for_move(%rip), %eax
	addl	%edx, %eax
	movl	%eax, time_for_move(%rip)
	movl	time_left(%rip), %ecx
	movl	time_for_move(%rip), %edx
	movl	-16476(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L93
.L96:
	movl	$1, time_exit(%rip)
	movl	$0, %eax
	jmp	.L202
.L93:
	movl	-16564(%rbp), %eax
	movl	%eax, -16472(%rbp)
	movl	$-1000000, -16492(%rbp)
	movl	$0, -16540(%rbp)
	movl	$0, -16496(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
	call	is_draw@PLT
	testl	%eax, %eax
	je	.L97
	movl	$0, %eax
	jmp	.L202
.L97:
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	checks(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16468(%rbp)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	recaps(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	cmpl	$299, %eax
	jg	.L98
	cmpl	$0, -16468(%rbp)
	je	.L98
	movl	i_depth(%rip), %eax
	leal	(%rax,%rax), %edx
	movl	ply(%rip), %eax
	cmpl	%eax, %edx
	jge	.L99
	cmpl	$0, -16572(%rbp)
	jne	.L98
.L99:
	addl	$1, -16572(%rbp)
	movl	ext_check(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_check(%rip)
	addl	$1, -16496(%rbp)
	jmp	.L100
.L98:
	movl	ply(%rip), %eax
	cmpl	$299, %eax
	jg	.L100
	movl	ply(%rip), %eax
	cmpl	$2, %eax
	jle	.L100
	movl	i_depth(%rip), %eax
	leal	(%rax,%rax), %edx
	movl	ply(%rip), %eax
	cmpl	%eax, %edx
	jl	.L100
	movl	ply(%rip), %eax
	subl	$2, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	recaps(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L100
	movl	cfg_recap(%rip), %eax
	testl	%eax, %eax
	je	.L100
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+path(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L100
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+path(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rc_index.4096(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	ply(%rip), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+path(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rc_index.4096(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L100
	addl	$1, -16572(%rbp)
	movl	ext_recap(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_recap(%rip)
	addl	$1, -16496(%rbp)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	recaps(%rip), %rax
	movl	$1, (%rdx,%rax)
.L100:
	cmpl	$0, -16572(%rbp)
	jle	.L101
	movl	ply(%rip), %eax
	cmpl	$299, %eax
	jle	.L102
.L101:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L103
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L103
	movl	$1, captures(%rip)
	movl	ply(%rip), %eax
	movl	$300, %edx
	subl	%eax, %edx
	movl	-16568(%rbp), %ecx
	movl	-16564(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	qsearch
	movl	%eax, -16520(%rbp)
	movl	$0, captures(%rip)
	movl	-16520(%rbp), %eax
	jmp	.L202
.L103:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L104
	call	suicide_eval@PLT
	jmp	.L202
.L104:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L102
	call	losers_eval@PLT
	movl	%eax, -16548(%rbp)
	movl	-16548(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1000000, %eax
	jne	.L105
	movl	-16548(%rbp), %eax
	testl	%eax, %eax
	jle	.L106
	movl	ply(%rip), %eax
	movl	$1000000, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L202
.L106:
	movl	ply(%rip), %eax
	subl	$1000000, %eax
	jmp	.L202
.L105:
	movl	-16548(%rbp), %eax
	jmp	.L202
.L102:
	movl	$0, -16528(%rbp)
	movl	$1, -16516(%rbp)
	movl	-16572(%rbp), %r8d
	leaq	-16536(%rbp), %rdi
	leaq	-16540(%rbp), %rcx
	leaq	-16532(%rbp), %rdx
	movl	-16568(%rbp), %esi
	leaq	-16544(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ProbeTT@PLT
	cmpl	$4, %eax
	ja	.L108
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L110(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L110(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L110:
	.long	.L205-.L110
	.long	.L111-.L110
	.long	.L112-.L110
	.long	.L113-.L110
	.long	.L114-.L110
	.text
.L113:
	movl	-16544(%rbp), %eax
	jmp	.L202
.L111:
	movl	-16544(%rbp), %eax
	cmpl	%eax, -16564(%rbp)
	jl	.L206
	movl	-16544(%rbp), %eax
	jmp	.L202
.L112:
	movl	-16544(%rbp), %eax
	cmpl	%eax, -16568(%rbp)
	jg	.L207
	movl	-16544(%rbp), %eax
	jmp	.L202
.L114:
	movl	$-1, -16532(%rbp)
	movl	$0, -16540(%rbp)
	jmp	.L108
.L205:
	nop
	jmp	.L108
.L206:
	nop
	jmp	.L108
.L207:
	nop
.L108:
	movl	-16532(%rbp), %eax
	cmpl	$500, %eax
	jne	.L117
	movl	$-1, -16532(%rbp)
.L117:
	movl	$-1, -16508(%rbp)
	movl	$-1000000, -16504(%rbp)
	movl	ep_square(%rip), %eax
	movl	%eax, -16464(%rbp)
	movl	$0, -16484(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L118
	call	losers_eval@PLT
	movl	%eax, -16548(%rbp)
	movl	-16548(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1000000, %eax
	jne	.L119
	movl	-16548(%rbp), %eax
	testl	%eax, %eax
	jle	.L120
	movl	-16548(%rbp), %edx
	movl	ply(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L202
.L120:
	movl	-16548(%rbp), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	jmp	.L202
.L119:
	movl	$1, captures(%rip)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
	movl	$0, captures(%rip)
	cmpl	$0, -16528(%rbp)
	je	.L122
	movl	$0, -16548(%rbp)
	jmp	.L123
.L125:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16468(%rbp), %edx
	movl	-16548(%rbp), %ecx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L124
	addl	$1, -16484(%rbp)
.L124:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-16548(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16548(%rbp)
.L123:
	movl	-16548(%rbp), %eax
	cmpl	%eax, -16528(%rbp)
	jg	.L125
.L122:
	cmpl	$0, -16484(%rbp)
	jne	.L126
	movl	$0, captures(%rip)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
.L126:
	movl	$0, -16484(%rbp)
.L118:
	cmpl	$0, -16576(%rbp)
	jne	.L127
	movl	phase(%rip), %eax
	cmpl	$2, %eax
	jne	.L128
	movl	phase(%rip), %eax
	cmpl	$2, %eax
	jne	.L127
	cmpl	$6, -16572(%rbp)
	jg	.L127
.L128:
	cmpl	$0, -16468(%rbp)
	jne	.L127
	movl	-16536(%rbp), %eax
	testl	%eax, %eax
	je	.L127
	movl	searching_pv(%rip), %eax
	testl	%eax, %eax
	jne	.L127
	movl	-16540(%rbp), %eax
	testl	%eax, %eax
	jne	.L127
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L129
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L130
.L129:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L127
	movl	-12312(%rbp), %eax
	cmpl	$13, %eax
	jne	.L127
.L130:
	movl	$0, ep_square(%rip)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	movl	fifty(%rip), %eax
	addl	$1, %eax
	movl	%eax, fifty(%rip)
	movl	hash(%rip), %eax
	xorl	$-559038737, %eax
	movl	%eax, hash(%rip)
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	je	.L131
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L131
	cmpl	$3, -16572(%rbp)
	jle	.L132
	movl	-16572(%rbp), %eax
	subl	$3, %eax
	jmp	.L133
.L132:
	movl	-16572(%rbp), %eax
	subl	$2, %eax
.L133:
	movl	$1, %edx
	movl	%edx, %esi
	subl	-16568(%rbp), %esi
	movl	-16568(%rbp), %edx
	movl	%edx, %edi
	negl	%edi
	movl	$1, %ecx
	movl	%eax, %edx
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	jmp	.L134
.L131:
	movl	-16572(%rbp), %eax
	leal	-4(%rax), %edx
	movl	$1, %eax
	subl	-16568(%rbp), %eax
	movl	-16568(%rbp), %ecx
	movl	%ecx, %edi
	negl	%edi
	movl	$1, %ecx
	movl	%eax, %esi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
.L134:
	movl	hash(%rip), %eax
	xorl	$-559038737, %eax
	movl	%eax, hash(%rip)
	movl	fifty(%rip), %eax
	subl	$1, %eax
	movl	%eax, fifty(%rip)
	movl	ply(%rip), %eax
	subl	$1, %eax
	movl	%eax, ply(%rip)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-16464(%rbp), %eax
	movl	%eax, ep_square(%rip)
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	je	.L135
	movl	$0, %eax
	jmp	.L202
.L135:
	movl	NTries(%rip), %eax
	addl	$1, %eax
	movl	%eax, NTries(%rip)
	movl	-16520(%rbp), %eax
	cmpl	-16568(%rbp), %eax
	jl	.L136
	movl	NCuts(%rip), %eax
	addl	$1, %eax
	movl	%eax, NCuts(%rip)
	movl	-16572(%rbp), %ecx
	movl	-16568(%rbp), %edx
	movl	-16564(%rbp), %esi
	movl	-16520(%rbp), %eax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$500, %ecx
	movl	%eax, %edi
	call	StoreTT@PLT
	movl	-16520(%rbp), %eax
	jmp	.L202
.L136:
	cmpl	$-999900, -16520(%rbp)
	jge	.L208
	movl	$1, -16540(%rbp)
	movl	TExt(%rip), %eax
	addl	$1, %eax
	movl	%eax, TExt(%rip)
	addl	$1, -16572(%rbp)
	addl	$1, -16496(%rbp)
	movl	ext_onerep(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_onerep(%rip)
	jmp	.L208
.L127:
	movl	-16540(%rbp), %eax
	cmpl	$1, %eax
	jne	.L138
	movl	TExt(%rip), %eax
	addl	$1, %eax
	movl	%eax, TExt(%rip)
	addl	$1, -16572(%rbp)
	addl	$1, -16496(%rbp)
	movl	ext_onerep(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_onerep(%rip)
	jmp	.L138
.L208:
	nop
.L138:
	movl	$-1000000, -16520(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L139
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
.L139:
	movl	cfg_onerep(%rip), %eax
	testl	%eax, %eax
	je	.L140
	cmpl	$0, -16468(%rbp)
	je	.L140
	cmpl	$0, -16528(%rbp)
	je	.L140
	movl	$0, -16548(%rbp)
	jmp	.L141
.L143:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16468(%rbp), %edx
	movl	-16548(%rbp), %ecx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L142
	addl	$1, -16484(%rbp)
.L142:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-16548(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16548(%rbp)
.L141:
	movl	-16548(%rbp), %eax
	cmpl	%eax, -16528(%rbp)
	jle	.L140
	cmpl	$1, -16484(%rbp)
	jle	.L143
.L140:
	movl	ply(%rip), %eax
	cmpl	$299, %eax
	jg	.L144
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L145
	cmpl	$1, -16528(%rbp)
	jne	.L145
	addl	$1, -16572(%rbp)
	movl	ext_onerep(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_onerep(%rip)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L144
.L145:
	cmpl	$1, -16484(%rbp)
	jne	.L144
	movl	ply(%rip), %eax
	subl	$2, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L144
	addl	$1, -16572(%rbp)
	movl	ext_onerep(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_onerep(%rip)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	$1, (%rdx,%rax)
.L144:
	movl	$1, -16500(%rbp)
	movl	$0, -16488(%rbp)
	movl	phase(%rip), %eax
	cmpl	$2, %eax
	je	.L146
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L146
	movl	cfg_futprune(%rip), %eax
	testl	%eax, %eax
	je	.L146
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L147
	movl	Material(%rip), %eax
	movl	$900, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L148
.L147:
	movl	Material(%rip), %eax
	addl	$900, %eax
.L148:
	movl	%eax, -16460(%rbp)
	cmpl	$0, -16496(%rbp)
	jne	.L149
	cmpl	$3, -16572(%rbp)
	jne	.L149
	movl	-16460(%rbp), %eax
	cmpl	-16564(%rbp), %eax
	jg	.L149
	movl	$2, -16572(%rbp)
.L149:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L150
	movl	Material(%rip), %eax
	movl	$500, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L151
.L150:
	movl	Material(%rip), %eax
	addl	$500, %eax
.L151:
	movl	%eax, -16460(%rbp)
	cmpl	$0, -16496(%rbp)
	jne	.L152
	cmpl	$2, -16572(%rbp)
	jne	.L152
	movl	-16460(%rbp), %eax
	cmpl	-16564(%rbp), %eax
	jg	.L152
	movl	$1, -16488(%rbp)
	movl	-16460(%rbp), %eax
	movl	%eax, -16492(%rbp)
	movl	-16492(%rbp), %eax
	movl	%eax, -16504(%rbp)
.L152:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L153
	movl	Material(%rip), %eax
	negl	%eax
	jmp	.L154
.L153:
	movl	Material(%rip), %eax
.L154:
	movl	Variant(%rip), %edx
	cmpl	$2, %edx
	jne	.L155
	movl	$150, %edx
	jmp	.L156
.L155:
	movl	$200, %edx
.L156:
	addl	%edx, %eax
	movl	%eax, -16460(%rbp)
	cmpl	$0, -16496(%rbp)
	jne	.L146
	cmpl	$1, -16572(%rbp)
	jne	.L146
	movl	-16460(%rbp), %eax
	cmpl	-16564(%rbp), %eax
	jg	.L146
	movl	$1, -16488(%rbp)
	movl	-16460(%rbp), %eax
	movl	%eax, -16492(%rbp)
	movl	-16492(%rbp), %eax
	movl	%eax, -16504(%rbp)
.L146:
	cmpl	$0, -16528(%rbp)
	jle	.L157
	movl	-16532(%rbp), %edi
	movl	-16528(%rbp), %ecx
	leaq	-14368(%rbp), %rdx
	leaq	-16416(%rbp), %rsi
	leaq	-12320(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	order_moves
	jmp	.L158
.L191:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	$0, -16512(%rbp)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-16548(%rbp), %esi
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	path(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	$0, -16496(%rbp)
	movl	-16468(%rbp), %edx
	movl	-16548(%rbp), %ecx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L159
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	f_in_check@PLT
	movl	%eax, -16456(%rbp)
	movl	ply(%rip), %eax
	movl	-16456(%rbp), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	checks(%rip), %rax
	movl	%edx, (%rcx,%rax)
	cmpl	$0, -16456(%rbp)
	jne	.L160
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	je	.L161
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L161
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L160
.L161:
	cmpl	$2, -16572(%rbp)
	jg	.L160
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L162
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jg	.L163
.L162:
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L160
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jg	.L160
.L163:
	addl	$1, -16496(%rbp)
.L160:
	movl	$0, -16480(%rbp)
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L164
	cmpl	$1, -16572(%rbp)
	jle	.L164
	cmpl	$0, -16456(%rbp)
	jne	.L164
	cmpl	$0, -16468(%rbp)
	jne	.L164
	movl	searching_pv(%rip), %eax
	testl	%eax, %eax
	jne	.L164
	movl	cfg_razordrop(%rip), %eax
	testl	%eax, %eax
	je	.L164
	movl	razor_drop(%rip), %eax
	addl	$1, %eax
	movl	%eax, razor_drop(%rip)
	subl	$1, -16496(%rbp)
	jmp	.L165
.L164:
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L165
	cmpl	$1, -16572(%rbp)
	jne	.L165
	cmpl	$0, -16468(%rbp)
	jne	.L165
	movl	cfg_cutdrop(%rip), %eax
	testl	%eax, %eax
	je	.L165
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L166
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	movl	%eax, %ebx
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rdi
	addq	%rdi, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	subl	%eax, %ebx
	movl	%ebx, %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -16480(%rbp)
	cmpl	$0, -16480(%rbp)
	je	.L165
	movl	drop_cuts(%rip), %eax
	addl	$1, %eax
	movl	%eax, drop_cuts(%rip)
	jmp	.L165
.L166:
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	movl	%eax, %ebx
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rdi
	addq	%rdi, %rax
	subq	$12300, %rax
	movl	(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	subl	%eax, %ebx
	movl	%ebx, %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -16480(%rbp)
	cmpl	$0, -16480(%rbp)
	je	.L165
	movl	drop_cuts(%rip), %eax
	addl	$1, %eax
	movl	%eax, drop_cuts(%rip)
.L165:
	cmpl	$0, -16480(%rbp)
	jne	.L168
	cmpl	$0, -16488(%rbp)
	je	.L169
	cmpl	$0, -16456(%rbp)
	jne	.L169
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12296, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	Variant(%rip), %edx
	cmpl	$2, %edx
	je	.L170
	movl	Variant(%rip), %edx
	cmpl	$4, %edx
	jne	.L171
.L170:
	movl	$1, %edx
	jmp	.L172
.L171:
	movl	$2, %edx
.L172:
	imull	%eax, %edx
	movl	-16492(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -16564(%rbp)
	jl	.L169
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L168
.L169:
	cmpl	$1, -16500(%rbp)
	jne	.L173
	movl	-16572(%rbp), %edx
	movl	-16496(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-16564(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16568(%rbp), %eax
	negl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	FULL(%rip), %eax
	addl	$1, %eax
	movl	%eax, FULL(%rip)
	jmp	.L174
.L173:
	movl	-16572(%rbp), %edx
	movl	-16496(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-16564(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16564(%rbp), %eax
	notl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	PVS(%rip), %eax
	addl	$1, %eax
	movl	%eax, PVS(%rip)
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L174
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L174
	cmpl	$-50000, -16520(%rbp)
	je	.L174
	movl	-16520(%rbp), %eax
	cmpl	-16564(%rbp), %eax
	jle	.L175
	movl	-16520(%rbp), %eax
	cmpl	-16568(%rbp), %eax
	jge	.L175
	movl	-16572(%rbp), %edx
	movl	-16496(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-16564(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16568(%rbp), %eax
	negl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	PVSF(%rip), %eax
	addl	$1, %eax
	movl	%eax, PVSF(%rip)
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L174
	movl	-16520(%rbp), %eax
	movl	%eax, -16504(%rbp)
	jmp	.L174
.L175:
	movl	-16520(%rbp), %eax
	movl	%eax, -16504(%rbp)
.L174:
	movl	$1, -16512(%rbp)
	jmp	.L177
.L168:
	movl	razor_material(%rip), %eax
	addl	$1, %eax
	movl	%eax, razor_material(%rip)
.L177:
	addl	$1, -16484(%rbp)
	movl	$0, -16516(%rbp)
.L159:
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L178
	cmpl	$0, -16512(%rbp)
	je	.L178
	movl	-16520(%rbp), %eax
	movl	%eax, -16504(%rbp)
.L178:
	movl	-16548(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	je	.L179
	movl	$0, %eax
	jmp	.L202
.L179:
	movl	-16520(%rbp), %eax
	cmpl	-16564(%rbp), %eax
	jle	.L180
	cmpl	$0, -16512(%rbp)
	je	.L180
	movl	-16520(%rbp), %eax
	cmpl	-16568(%rbp), %eax
	jl	.L181
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %edx
	movl	-16548(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movslq	%ecx, %rdi
	movslq	%edx, %rsi
	movq	%rsi, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	%rdi, %rax
	leaq	0(,%rax,4), %rsi
	leaq	history_h(%rip), %rax
	movl	(%rsi,%rax), %eax
	leal	1(%rax), %esi
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	history_h(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12296, %rax
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	.L182
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L183
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L183
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L183
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L182
.L183:
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L184
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L184
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L184
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores2(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L182
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer1(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, -16448(%rbp)
	movq	%rdx, -16440(%rbp)
	movq	16(%rsi,%rcx), %rax
	movq	%rax, -16432(%rbp)
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer1(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r8
	leaq	killer2(%rip), %rsi
	movq	(%r8,%rsi), %rax
	movq	8(%r8,%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%r8,%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer2(%rip), %rcx
	movq	-16448(%rbp), %rax
	movq	-16440(%rbp), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	-16432(%rbp), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16452(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	-16452(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	jmp	.L182
.L184:
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L186
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L186
	movl	-16548(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L186
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores3(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L182
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer2(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, -16448(%rbp)
	movq	%rdx, -16440(%rbp)
	movq	16(%rsi,%rcx), %rax
	movq	%rax, -16432(%rbp)
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer2(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r8
	leaq	killer3(%rip), %rsi
	movq	(%r8,%rsi), %rax
	movq	8(%r8,%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%r8,%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer3(%rip), %rcx
	movq	-16448(%rbp), %rax
	movq	-16440(%rbp), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	-16432(%rbp), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16452(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores3(%rip), %rax
	movl	-16452(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	jmp	.L182
.L186:
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-16548(%rbp), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer3(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
.L182:
	cmpl	$1, -16500(%rbp)
	jne	.L188
	movl	FHF(%rip), %eax
	addl	$1, %eax
	movl	%eax, FHF(%rip)
.L188:
	movl	FH(%rip), %eax
	addl	$1, %eax
	movl	%eax, FH(%rip)
	movl	-16540(%rbp), %edi
	movl	-16548(%rbp), %ecx
	movl	-16572(%rbp), %r8d
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %esi
	movl	-16520(%rbp), %eax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	StoreTT@PLT
	movl	-16520(%rbp), %eax
	jmp	.L202
.L181:
	movl	-16520(%rbp), %eax
	movl	%eax, -16564(%rbp)
	movl	-16548(%rbp), %eax
	movl	%eax, -16508(%rbp)
	movl	-16548(%rbp), %esi
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16524(%rbp)
	jmp	.L189
.L190:
	movl	ply(%rip), %eax
	leal	1(%rax), %esi
	movl	ply(%rip), %eax
	movl	-16524(%rbp), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%esi, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rsi, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -16524(%rbp)
.L189:
	movl	ply(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16524(%rbp)
	jl	.L190
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
.L180:
	cmpl	$0, -16512(%rbp)
	je	.L158
	movl	$0, -16500(%rbp)
.L158:
	movl	-16528(%rbp), %edx
	leaq	-16416(%rbp), %rcx
	leaq	-16548(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_one
	testl	%eax, %eax
	jne	.L191
	jmp	.L204
.L157:
	movl	-16540(%rbp), %ecx
	movl	ply(%rip), %eax
	movl	$1000000, %edx
	movl	%edx, %edi
	subl	%eax, %edi
	movl	-16572(%rbp), %esi
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %eax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	call	StoreTT@PLT
	movl	ply(%rip), %eax
	movl	$1000000, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L202
.L204:
	cmpl	$0, -16516(%rbp)
	je	.L193
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L194
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L194
	call	in_check@PLT
	testl	%eax, %eax
	je	.L195
	movl	-16540(%rbp), %ecx
	movl	ply(%rip), %eax
	leal	-1000000(%rax), %edi
	movl	-16572(%rbp), %esi
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %eax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	call	StoreTT@PLT
	movl	ply(%rip), %eax
	subl	$1000000, %eax
	jmp	.L202
.L195:
	movl	-16540(%rbp), %ecx
	movl	-16572(%rbp), %esi
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %eax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	movl	$0, %edi
	call	StoreTT@PLT
	movl	$0, %eax
	jmp	.L202
.L194:
	movl	-16540(%rbp), %ecx
	movl	ply(%rip), %eax
	movl	$1000000, %edx
	movl	%edx, %edi
	subl	%eax, %edi
	movl	-16572(%rbp), %esi
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %eax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	%eax, %esi
	call	StoreTT@PLT
	movl	ply(%rip), %eax
	movl	$1000000, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L202
.L193:
	movl	fifty(%rip), %eax
	cmpl	$100, %eax
	jle	.L196
	movl	$0, %eax
	jmp	.L202
.L196:
	cmpl	$-1, -16508(%rbp)
	jne	.L197
	movl	$500, -16508(%rbp)
.L197:
	movl	-16504(%rbp), %eax
	cmpl	-16472(%rbp), %eax
	jg	.L198
	cmpl	$0, -16488(%rbp)
	jne	.L200
	movl	-16540(%rbp), %edi
	movl	-16572(%rbp), %r8d
	movl	-16508(%rbp), %ecx
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %esi
	movl	-16504(%rbp), %eax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	StoreTT@PLT
	jmp	.L200
.L198:
	cmpl	$0, -16488(%rbp)
	jne	.L201
	movl	-16540(%rbp), %edi
	movl	-16572(%rbp), %r8d
	movl	-16508(%rbp), %ecx
	movl	-16568(%rbp), %edx
	movl	-16472(%rbp), %esi
	movl	-16504(%rbp), %eax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	StoreTT@PLT
	jmp	.L200
.L201:
	movl	-16540(%rbp), %ecx
	movl	-16572(%rbp), %esi
	movl	-16508(%rbp), %edx
	movl	-16504(%rbp), %eax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$-1000000, %edx
	movl	$-1000000, %esi
	movl	%eax, %edi
	call	StoreTT@PLT
.L200:
	movl	-16504(%rbp), %eax
.L202:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	addq	$16568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	search, .-search
	.globl	search_root
	.type	search_root, @function
search_root:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16552(%rbp)
	movl	%esi, -16556(%rbp)
	movl	%edx, -16560(%rbp)
	movl	%ecx, -16564(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, -16480(%rbp)
	movq	%rdx, -16472(%rbp)
	movq	16+dummy(%rip), %rax
	movq	%rax, -16464(%rbp)
	movl	$-1000000, -16520(%rbp)
	movl	$0, -16500(%rbp)
	movl	-16556(%rbp), %eax
	movl	%eax, -16504(%rbp)
	movl	-16560(%rbp), %eax
	movl	%eax, -16496(%rbp)
	movl	$0, -16528(%rbp)
	movl	$1, -16516(%rbp)
	movl	$1, ply(%rip)
	movl	$1, searching_pv(%rip)
	movl	$0, time_exit(%rip)
	movl	$0, time_failure(%rip)
	movl	$1, -16508(%rbp)
	movl	$-1000000, cur_score(%rip)
	movl	nodes(%rip), %eax
	addl	$1, %eax
	movl	%eax, nodes(%rip)
	call	is_draw@PLT
	testl	%eax, %eax
	je	.L210
	movl	$5, result(%rip)
	movl	$0, cur_score(%rip)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	$0, (%rdx,%rax)
	movq	-16552(%rbp), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L209
.L210:
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	call	in_check@PLT
	movl	%eax, -16492(%rbp)
	cmpl	$0, -16492(%rbp)
	je	.L212
	movl	ext_check(%rip), %eax
	addl	$1, %eax
	movl	%eax, ext_check(%rip)
	addl	$1, -16564(%rbp)
.L212:
	movl	ply(%rip), %eax
	movl	-16492(%rbp), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	checks(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	recaps(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L213
	movl	$0, legals(%rip)
	movl	$1, captures(%rip)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
	movl	$0, captures(%rip)
	cmpl	$0, -16528(%rbp)
	je	.L214
	movl	$0, -16532(%rbp)
	jmp	.L215
.L217:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16532(%rbp), %ecx
	movl	-16492(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L216
	movl	legals(%rip), %eax
	addl	$1, %eax
	movl	%eax, legals(%rip)
.L216:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-16532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16532(%rbp)
.L215:
	movl	-16532(%rbp), %eax
	cmpl	%eax, -16528(%rbp)
	jg	.L217
.L214:
	movl	legals(%rip), %eax
	testl	%eax, %eax
	jne	.L218
	movl	$0, captures(%rip)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
	movl	$0, -16532(%rbp)
	jmp	.L219
.L221:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16532(%rbp), %ecx
	movl	-16492(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L220
	movl	legals(%rip), %eax
	addl	$1, %eax
	movl	%eax, legals(%rip)
.L220:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-16532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16532(%rbp)
.L219:
	movl	-16532(%rbp), %eax
	cmpl	%eax, -16528(%rbp)
	jg	.L221
	jmp	.L218
.L213:
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16528(%rbp)
.L218:
	movl	legals(%rip), %eax
	movl	%eax, movetotal(%rip)
	movl	-16528(%rbp), %ecx
	leaq	-14368(%rbp), %rdx
	leaq	-16416(%rbp), %rsi
	leaq	-12320(%rbp), %rax
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	order_moves
	jmp	.L222
.L253:
	movl	alllosers(%rip), %eax
	testl	%eax, %eax
	jne	.L223
	movl	-16532(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L223
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L222
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L223
	jmp	.L222
.L223:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	$0, -16512(%rbp)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-16532(%rbp), %esi
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	path(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	nodes(%rip), %eax
	movl	%eax, -16488(%rbp)
	movl	-16532(%rbp), %ecx
	movl	-16492(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L225
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -16500(%rbp)
	movl	movetotal(%rip), %eax
	subl	-16500(%rbp), %eax
	movl	%eax, moveleft(%rip)
	movl	-16532(%rbp), %eax
	subq	$8, %rsp
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	leaq	searching_move(%rip), %rdi
	call	comp_to_san@PLT
	addq	$32, %rsp
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16532(%rbp), %edx
	movl	ply(%rip), %ebx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	f_in_check@PLT
	movl	%eax, %ecx
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	checks(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	recaps(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	singular(%rip), %rax
	movl	$0, (%rdx,%rax)
	cmpl	$1, -16508(%rbp)
	je	.L226
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jg	.L227
.L226:
	movl	-16564(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-16504(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16496(%rbp), %eax
	negl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L265
	movl	post(%rip), %eax
	testl	%eax, %eax
	jne	.L229
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	jne	.L265
.L229:
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L265
	movl	-16520(%rbp), %eax
	cmpl	-16496(%rbp), %eax
	jl	.L230
	movl	-16532(%rbp), %eax
	leaq	-12320(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16520(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	post_fh_thinking@PLT
	jmp	.L231
.L230:
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jg	.L232
	movl	$1, failed(%rip)
	movl	-16532(%rbp), %eax
	leaq	-12320(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16520(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	post_fl_thinking@PLT
	jmp	.L231
.L232:
	movl	-16532(%rbp), %esi
	movl	ply(%rip), %eax
	leal	-1(%rax), %ecx
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movl	ply(%rip), %eax
	movl	%eax, -16524(%rbp)
	jmp	.L233
.L234:
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	leal	-1(%rax), %ecx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%esi, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rsi, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -16524(%rbp)
.L233:
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16524(%rbp)
	jl	.L234
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	leal	-1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-16520(%rbp), %eax
	movl	%eax, %edi
	call	post_thinking@PLT
.L231:
	movl	cur_score(%rip), %eax
	cmpl	%eax, -16520(%rbp)
	jle	.L265
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L265
	movl	-16520(%rbp), %eax
	movl	%eax, cur_score(%rip)
	movl	-16532(%rbp), %eax
	movl	%eax, bestmovenum(%rip)
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -16480(%rbp)
	movq	%rdx, -16472(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16464(%rbp)
	jmp	.L265
.L227:
	movl	-16564(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-16504(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16504(%rbp), %eax
	notl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L236
	movl	-16520(%rbp), %eax
	cmpl	-16496(%rbp), %eax
	jge	.L236
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L236
	movl	-16532(%rbp), %eax
	leaq	-12320(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16520(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	post_fail_thinking@PLT
	movl	-16564(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-16504(%rbp), %eax
	negl	%eax
	movl	%eax, %esi
	movl	-16496(%rbp), %eax
	negl	%eax
	movl	$0, %ecx
	movl	%eax, %edi
	call	search
	negl	%eax
	movl	%eax, -16520(%rbp)
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L236
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L236
	movl	$0, failed(%rip)
	movl	-16520(%rbp), %eax
	movl	%eax, cur_score(%rip)
	movl	-16532(%rbp), %eax
	movl	%eax, bestmovenum(%rip)
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -16480(%rbp)
	movq	%rdx, -16472(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16464(%rbp)
	movl	-16520(%rbp), %eax
	cmpl	-16496(%rbp), %eax
	jge	.L236
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L236
	movl	-16532(%rbp), %esi
	movl	ply(%rip), %eax
	leal	-1(%rax), %ecx
	movl	ply(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movl	ply(%rip), %eax
	movl	%eax, -16524(%rbp)
	jmp	.L237
.L238:
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	leal	-1(%rax), %ecx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ecx, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%esi, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rsi, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -16524(%rbp)
.L237:
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16524(%rbp)
	jl	.L238
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	leal	-1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
.L236:
	movl	-16520(%rbp), %eax
	cmpl	-16496(%rbp), %eax
	jl	.L235
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L235
	movl	-16532(%rbp), %eax
	leaq	-12320(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16520(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	post_fh_thinking@PLT
	jmp	.L235
.L265:
	nop
.L235:
	movl	cur_score(%rip), %eax
	cmpl	%eax, -16520(%rbp)
	jle	.L239
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L239
	movl	-16520(%rbp), %eax
	movl	%eax, cur_score(%rip)
	movl	-16532(%rbp), %eax
	movl	%eax, bestmovenum(%rip)
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -16480(%rbp)
	movq	%rdx, -16472(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16464(%rbp)
.L239:
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	je	.L240
	movl	cur_score(%rip), %eax
	cmpl	$-1000000, %eax
	jne	.L240
	cmpl	$0, -16516(%rbp)
	je	.L240
	movl	$1, time_failure(%rip)
.L240:
	movl	$0, -16516(%rbp)
	movl	$1, -16512(%rbp)
.L225:
	movl	-16532(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	je	.L241
	movq	-16552(%rbp), %rcx
	movq	-16480(%rbp), %rax
	movq	-16472(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16464(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L209
.L241:
	movl	-16520(%rbp), %eax
	cmpl	-16504(%rbp), %eax
	jle	.L242
	cmpl	$0, -16512(%rbp)
	je	.L242
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L243
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L243
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer1(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L243
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L244
.L243:
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L245
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L245
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L245
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores2(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L244
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer1(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, -16448(%rbp)
	movq	%rdx, -16440(%rbp)
	movq	16(%rsi,%rcx), %rax
	movq	%rax, -16432(%rbp)
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer1(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r8
	leaq	killer2(%rip), %rsi
	movq	(%r8,%rsi), %rax
	movq	8(%r8,%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%r8,%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer2(%rip), %rcx
	movq	-16448(%rbp), %rax
	movq	-16440(%rbp), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	-16432(%rbp), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16484(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	-16484(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	jmp	.L244
.L245:
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L247
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L247
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %ecx
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	12+killer3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L247
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	killer_scores3(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L244
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer2(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, -16448(%rbp)
	movq	%rdx, -16440(%rbp)
	movq	16(%rsi,%rcx), %rax
	movq	%rax, -16432(%rbp)
	movl	ply(%rip), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer2(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r8
	leaq	killer3(%rip), %rsi
	movq	(%r8,%rsi), %rax
	movq	8(%r8,%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%r8,%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer3(%rip), %rcx
	movq	-16448(%rbp), %rax
	movq	-16440(%rbp), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	-16432(%rbp), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16484(%rbp)
	movl	ply(%rip), %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores2(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	killer_scores3(%rip), %rax
	movl	-16484(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	jmp	.L244
.L247:
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-16532(%rbp), %esi
	movl	ply(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	killer3(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi,%rcx)
.L244:
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %edx
	movl	-16532(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %ecx
	movslq	%ecx, %rdi
	movslq	%edx, %rsi
	movq	%rsi, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	%rdi, %rax
	leaq	0(,%rax,4), %rsi
	leaq	history_h(%rip), %rax
	movl	(%rsi,%rax), %eax
	leal	1(%rax), %esi
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	history_h(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	-16520(%rbp), %eax
	movl	%eax, -16504(%rbp)
	movl	-16532(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -16480(%rbp)
	movq	%rdx, -16472(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16464(%rbp)
	movl	-16532(%rbp), %eax
	movl	%eax, bestmovenum(%rip)
	movl	-16504(%rbp), %eax
	movl	%eax, cur_score(%rip)
	movl	-16532(%rbp), %esi
	movl	ply(%rip), %eax
	movl	ply(%rip), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rdi
	addq	%rdi, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16524(%rbp)
	jmp	.L249
.L250:
	movl	ply(%rip), %eax
	leal	1(%rax), %esi
	movl	ply(%rip), %eax
	movl	-16524(%rbp), %edx
	movslq	%edx, %rdx
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16524(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%esi, %rsi
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rsi, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -16524(%rbp)
.L249:
	movl	ply(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -16524(%rbp)
	jl	.L250
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	pv_length(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	cur_score(%rip), %eax
	cmpl	%eax, -16496(%rbp)
	jg	.L251
	movq	-16552(%rbp), %rcx
	movq	-16480(%rbp), %rax
	movq	-16472(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16464(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L209
.L251:
	movl	post(%rip), %eax
	testl	%eax, %eax
	je	.L242
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L242
	movl	-16504(%rbp), %eax
	movl	%eax, %edi
	call	post_thinking@PLT
.L242:
	cmpl	$0, -16512(%rbp)
	je	.L252
	movl	$0, -16508(%rbp)
.L252:
	movl	nodes(%rip), %eax
	subl	-16488(%rbp), %eax
	movl	%eax, %edx
	movl	-16532(%rbp), %eax
	movl	%edx, %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootnodecount(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L222:
	movl	-16528(%rbp), %edx
	leaq	-16416(%rbp), %rcx
	leaq	-16532(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_one
	testl	%eax, %eax
	jne	.L253
	cmpl	$0, -16516(%rbp)
	je	.L254
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L254
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L255
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L255
	call	in_check@PLT
	testl	%eax, %eax
	je	.L256
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L257
	movl	$2, result(%rip)
	jmp	.L260
.L257:
	movl	$3, result(%rip)
	jmp	.L260
.L256:
	movl	$1, result(%rip)
	jmp	.L260
.L255:
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L261
	movl	$3, result(%rip)
	jmp	.L262
.L261:
	movl	$2, result(%rip)
	jmp	.L262
.L260:
	jmp	.L262
.L254:
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L262
	movl	fifty(%rip), %eax
	cmpl	$100, %eax
	jle	.L262
	movl	$4, result(%rip)
	movl	$0, cur_score(%rip)
	movl	ply(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pv_length(%rip), %rax
	movl	$0, (%rdx,%rax)
	movq	-16552(%rbp), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L209
.L262:
	movq	-16552(%rbp), %rcx
	movq	-16480(%rbp), %rax
	movq	-16472(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16464(%rbp), %rax
	movq	%rax, 16(%rcx)
.L209:
	movq	-16552(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L264
	call	__stack_chk_fail@PLT
.L264:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	search_root, .-search_root
	.section	.rodata
.LC1:
	.string	"Opening phase."
.LC2:
	.string	"Middlegame phase."
.LC3:
	.string	"Endgame phase."
.LC5:
	.string	"Time for move : %d\n"
	.align 8
.LC8:
	.string	"tellics whisper %d restart(s), ended up with %s\n"
.LC9:
	.string	"tellics kibitz Mate in %d\n"
	.align 8
.LC10:
	.string	"tellics ptell Mate in %d, give him no more pieces.\n"
	.align 8
.LC11:
	.string	"tellics ptell You can trade freely."
.LC12:
	.string	"tellics ptell ---trades"
	.align 8
.LC13:
	.string	"tellics kibitz Both players dead...resigning..."
.LC14:
	.string	"tellics resign"
	.align 8
.LC15:
	.string	"tellics ptell I am forcedly mated (dead). Tell me 'go' to start moving into it."
	.align 8
.LC16:
	.string	"tellics ptell I'll have to sit...(lose piece that mates you)"
	.text
	.globl	think
	.type	think, @function
think:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$12520, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -12488(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -12468(%rbp)
	movl	$0, -12464(%rbp)
	movl	$0, -12452(%rbp)
	movl	$0, userealholdings(%rip)
	movl	$0, -12448(%rbp)
.L267:
	movl	$0, nodes(%rip)
	movl	$0, qnodes(%rip)
	movl	$1, ply(%rip)
	movl	$0, ECacheProbes(%rip)
	movl	$0, ECacheHits(%rip)
	movl	$0, TTProbes(%rip)
	movl	$0, TTHits(%rip)
	movl	$0, TTStores(%rip)
	movl	$0, NCuts(%rip)
	movl	$0, NTries(%rip)
	movl	$0, TExt(%rip)
	movl	$0, FH(%rip)
	movl	$0, FHF(%rip)
	movl	$0, PVS(%rip)
	movl	$0, FULL(%rip)
	movl	$0, PVSF(%rip)
	movl	$0, ext_check(%rip)
	movl	$0, ext_recap(%rip)
	movl	$0, ext_onerep(%rip)
	movl	$0, razor_drop(%rip)
	movl	$0, razor_material(%rip)
	movl	$0, drop_cuts(%rip)
	movl	$0, -12460(%rbp)
	movl	$0, extendedtime(%rip)
	movl	$0, forcedwin(%rip)
	movl	$200, maxposdiff(%rip)
	movb	$0, true_i_depth(%rip)
	movl	$-1, bestmovenum(%rip)
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L268
	movl	is_analyzing(%rip), %eax
	testl	%eax, %eax
	jne	.L269
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	je	.L268
.L269:
	movq	-12488(%rbp), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L266
.L268:
	call	rtime@PLT
	movq	%rax, start_time(%rip)
	movl	$0, legals(%rip)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L271
	movl	$1, captures(%rip)
	jmp	.L272
.L271:
	movl	$0, captures(%rip)
.L272:
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12444(%rbp)
	call	in_check@PLT
	movl	%eax, -12440(%rbp)
	movl	$0, -12456(%rbp)
	jmp	.L273
.L275:
	movl	-12456(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12440(%rbp), %edx
	movl	-12456(%rbp), %ecx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L274
	movl	legals(%rip), %eax
	addl	$1, %eax
	movl	%eax, legals(%rip)
	movl	-12456(%rbp), %eax
	movl	%eax, -12452(%rbp)
.L274:
	movl	-12456(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12456(%rbp)
.L273:
	movl	numb_moves(%rip), %eax
	cmpl	%eax, -12456(%rbp)
	jl	.L275
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L276
	movl	legals(%rip), %eax
	testl	%eax, %eax
	jne	.L276
	movl	$0, captures(%rip)
	movl	$0, -12444(%rbp)
	leaq	-12320(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12444(%rbp)
	movl	$0, -12456(%rbp)
	jmp	.L277
.L279:
	movl	-12456(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12440(%rbp), %edx
	movl	-12456(%rbp), %ecx
	leaq	-12320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L278
	movl	legals(%rip), %eax
	addl	$1, %eax
	movl	%eax, legals(%rip)
	movl	-12456(%rbp), %eax
	movl	%eax, -12452(%rbp)
.L278:
	movl	-12456(%rbp), %edx
	leaq	-12320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12456(%rbp)
.L277:
	movl	numb_moves(%rip), %eax
	cmpl	%eax, -12456(%rbp)
	jl	.L279
.L276:
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L280
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L280
	movl	legals(%rip), %eax
	cmpl	$1, %eax
	jne	.L280
	movl	inc(%rip), %eax
	imull	$100, %eax, %edx
	movl	time_cushion(%rip), %eax
	addl	%edx, %eax
	movl	%eax, time_cushion(%rip)
	movq	-12488(%rbp), %rcx
	movl	-12452(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	jmp	.L266
.L280:
	call	check_phase@PLT
	movl	phase(%rip), %eax
	cmpl	$1, %eax
	je	.L282
	cmpl	$2, %eax
	je	.L283
	testl	%eax, %eax
	jne	.L281
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L281
.L282:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L281
.L283:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	nop
.L281:
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L285
	movl	fixed_time(%rip), %eax
	testl	%eax, %eax
	jne	.L286
	movl	go_fast(%rip), %eax
	testl	%eax, %eax
	je	.L287
	call	allocate_time@PLT
	movl	%eax, -12436(%rbp)
	cmpl	$40, -12436(%rbp)
	jle	.L288
	movl	$40, time_for_move(%rip)
	jmp	.L292
.L288:
	movl	-12436(%rbp), %eax
	movl	%eax, time_for_move(%rip)
	jmp	.L292
.L287:
	call	allocate_time@PLT
	movl	%eax, time_for_move(%rip)
	jmp	.L292
.L286:
	movl	fixed_time(%rip), %eax
	movl	%eax, time_for_move(%rip)
	jmp	.L292
.L285:
	movl	$999999, time_for_move(%rip)
.L292:
	cmpl	$0, -12448(%rbp)
	je	.L293
	movl	time_for_move(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	-12448(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC4(%rip), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, time_for_move(%rip)
.L293:
	movl	time_for_move(%rip), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -12448(%rbp)
	jne	.L294
	call	clear_tt@PLT
	call	reset_ecache@PLT
	movl	$1200, %edx
	movl	$0, %esi
	leaq	rootlosers(%rip), %rdi
	call	memset@PLT
.L294:
	cmpl	$0, -12448(%rbp)
	jne	.L295
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L295
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L296
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L295
.L296:
	movl	piece_count(%rip), %eax
	cmpl	$3, %eax
	jg	.L297
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L295
.L297:
	movl	time_for_move(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, pn_time(%rip)
	call	proofnumberscan@PLT
	jmp	.L298
.L295:
	cmpl	$0, -12448(%rbp)
	jne	.L298
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
.L298:
	movl	result(%rip), %eax
	testl	%eax, %eax
	je	.L299
	movl	4+pn_move(%rip), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L299
	movq	-12488(%rbp), %rcx
	movq	pn_move(%rip), %rax
	movq	8+pn_move(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+pn_move(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L266
.L299:
	movl	forcedwin(%rip), %eax
	testl	%eax, %eax
	jne	.L300
	movl	result(%rip), %eax
	testl	%eax, %eax
	je	.L301
.L300:
	movl	4+pn_move(%rip), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	je	.L301
	movl	is_analyzing(%rip), %eax
	testl	%eax, %eax
	jne	.L301
	movq	pn_move(%rip), %rax
	movq	8+pn_move(%rip), %rdx
	movq	%rax, -12416(%rbp)
	movq	%rdx, -12408(%rbp)
	movq	16+pn_move(%rip), %rax
	movq	%rax, -12400(%rbp)
	jmp	.L302
.L301:
	movl	$0, -12476(%rbp)
	jmp	.L303
.L306:
	movl	$0, -12472(%rbp)
	jmp	.L304
.L305:
	movl	-12472(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12476(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	imulq	$7200, %rcx, %rdx
	addq	%rax, %rdx
	leaq	pv(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	addl	$1, -12472(%rbp)
.L304:
	cmpl	$299, -12472(%rbp)
	jle	.L305
	addl	$1, -12476(%rbp)
.L303:
	cmpl	$299, -12476(%rbp)
	jle	.L306
	movl	$82944, %edx
	movl	$0, %esi
	leaq	history_h(%rip), %rdi
	call	memset@PLT
	movl	$0, -12476(%rbp)
	jmp	.L307
.L308:
	movl	-12476(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12476(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12476(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer1(%rip), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer2(%rip), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rsi,%rcx)
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	leaq	killer3(%rip), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rsi,%rcx)
	addl	$1, -12476(%rbp)
.L307:
	cmpl	$299, -12476(%rbp)
	jle	.L308
	movl	$2048, %edx
	movl	$0, %esi
	leaq	rootnodecount(%rip), %rdi
	call	memset@PLT
	movl	$0, -12464(%rbp)
	movl	$0, cur_score(%rip)
	movl	$0, -12432(%rbp)
	movl	$1, i_depth(%rip)
	jmp	.L309
.L331:
	movq	start_time(%rip), %rbx
	call	rtime@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime@PLT
	movl	%eax, -12428(%rbp)
	cvtsi2sd	-12428(%rbp), %xmm0
	movl	time_for_move(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC7(%rip), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	.LC6(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L310
	movl	i_depth(%rip), %eax
	cmpl	$2, %eax
	jg	.L365
.L310:
	movl	$0, failed(%rip)
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	jne	.L312
	movl	$35, %edx
	jmp	.L313
.L312:
	movl	$100, %edx
.L313:
	movl	-12464(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -12424(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	jne	.L314
	movl	$35, %edx
	jmp	.L315
.L314:
	movl	$100, %edx
.L315:
	movl	-12464(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12420(%rbp)
	movl	i_depth(%rip), %ecx
	leaq	-12384(%rbp), %rax
	movl	-12420(%rbp), %edx
	movl	-12424(%rbp), %esi
	movq	%rax, %rdi
	call	search_root
	movl	result(%rip), %eax
	testl	%eax, %eax
	jne	.L366
	movl	cur_score(%rip), %eax
	cmpl	%eax, -12424(%rbp)
	jl	.L317
	movl	$1, failed(%rip)
	jmp	.L318
.L317:
	movl	$0, failed(%rip)
.L318:
	movl	cur_score(%rip), %eax
	cmpl	%eax, -12424(%rbp)
	jl	.L319
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L319
	addl	$1, -12460(%rbp)
	movl	i_depth(%rip), %edx
	leaq	-12528(%rbp), %rax
	movl	%edx, %ecx
	movl	$1000000, %edx
	movl	$-1000000, %esi
	movq	%rax, %rdi
	call	search_root
	movq	-12528(%rbp), %rax
	movq	-12520(%rbp), %rdx
	movq	%rax, -12384(%rbp)
	movq	%rdx, -12376(%rbp)
	movq	-12512(%rbp), %rax
	movq	%rax, -12368(%rbp)
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L321
	movl	$0, failed(%rip)
	jmp	.L321
.L319:
	movl	cur_score(%rip), %eax
	cmpl	%eax, -12420(%rbp)
	jg	.L321
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L321
	movq	-12384(%rbp), %rax
	movq	-12376(%rbp), %rdx
	movq	%rax, -12416(%rbp)
	movq	%rdx, -12408(%rbp)
	movq	-12368(%rbp), %rax
	movq	%rax, -12400(%rbp)
	movl	cur_score(%rip), %eax
	movl	%eax, -12464(%rbp)
	addl	$1, -12460(%rbp)
	movl	i_depth(%rip), %edx
	leaq	-12528(%rbp), %rax
	movl	%edx, %ecx
	movl	$1000000, %edx
	movl	$-1000000, %esi
	movq	%rax, %rdi
	call	search_root
	movq	-12528(%rbp), %rax
	movq	-12520(%rbp), %rdx
	movq	%rax, -12384(%rbp)
	movq	%rdx, -12376(%rbp)
	movq	-12512(%rbp), %rax
	movq	%rax, -12368(%rbp)
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L321
	movl	$0, failed(%rip)
.L321:
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L322
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L322
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	je	.L323
	movq	-12488(%rbp), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L266
.L323:
	movl	go_fast(%rip), %eax
	testl	%eax, %eax
	je	.L367
.L322:
	movl	time_failure(%rip), %eax
	testl	%eax, %eax
	jne	.L324
	movl	failed(%rip), %eax
	testl	%eax, %eax
	jne	.L324
	movl	cur_score(%rip), %eax
	cmpl	$-1000000, %eax
	jne	.L325
	movq	-12488(%rbp), %rcx
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16(%rcx)
	jmp	.L266
.L325:
	movq	-12384(%rbp), %rax
	movq	-12376(%rbp), %rdx
	movq	%rax, -12416(%rbp)
	movq	%rdx, -12408(%rbp)
	movq	-12368(%rbp), %rax
	movq	%rax, -12400(%rbp)
	movl	cur_score(%rip), %eax
	movl	%eax, -12464(%rbp)
	leaq	postpv(%rip), %rdi
	call	stringize_pv@PLT
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L326
	movl	i_depth(%rip), %eax
	movb	%al, true_i_depth(%rip)
.L326:
	movl	i_depth(%rip), %eax
	cmpl	$1, %eax
	jle	.L327
	movl	cur_score(%rip), %eax
	movl	%eax, %edi
	call	post_thinking@PLT
.L327:
	cmpl	$900000, -12464(%rbp)
	jle	.L324
	movl	cur_score(%rip), %eax
	movl	$1000000, %edx
	subl	%eax, %edx
	movl	i_depth(%rip), %eax
	cmpl	%eax, %edx
	jl	.L368
.L324:
	movl	time_exit(%rip), %eax
	testl	%eax, %eax
	jne	.L369
	movl	$0, -12472(%rbp)
	jmp	.L329
.L330:
	movl	-12472(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12472(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores2(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-12472(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	killer_scores3(%rip), %rax
	movl	$0, (%rdx,%rax)
	addl	$1, -12472(%rbp)
.L329:
	cmpl	$299, -12472(%rbp)
	jle	.L330
	movl	i_depth(%rip), %eax
	addl	$1, %eax
	movl	%eax, i_depth(%rip)
.L309:
	movl	i_depth(%rip), %edx
	movl	maxdepth(%rip), %eax
	cmpl	%eax, %edx
	jle	.L331
	jmp	.L302
.L365:
	nop
	jmp	.L302
.L366:
	nop
	jmp	.L302
.L367:
	nop
	jmp	.L302
.L368:
	nop
	jmp	.L302
.L369:
	nop
.L302:
	movl	forcedwin(%rip), %eax
	testl	%eax, %eax
	jne	.L332
	movq	-12416(%rbp), %rax
	movq	-12408(%rbp), %rdx
	movq	%rax, -12352(%rbp)
	movq	%rdx, -12344(%rbp)
	movq	-12400(%rbp), %rax
	movq	%rax, -12336(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L333
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L332
.L333:
	movl	result(%rip), %eax
	testl	%eax, %eax
	jne	.L332
	movl	alllosers(%rip), %eax
	testl	%eax, %eax
	jne	.L332
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L332
	movl	$0, s_threat(%rip)
	leaq	-12416(%rbp), %rax
	subq	$8, %rsp
	pushq	-12400(%rbp)
	pushq	-12408(%rbp)
	pushq	-12416(%rbp)
	movq	%rax, %rdi
	call	proofnumbercheck@PLT
	addq	$32, %rsp
	cmpl	$9, -12448(%rbp)
	jg	.L332
	movl	s_threat(%rip), %eax
	testl	%eax, %eax
	je	.L332
	addl	$1, -12448(%rbp)
	movl	$0, -12476(%rbp)
	jmp	.L334
.L337:
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12304, %rax
	movl	(%rax), %edx
	movl	-12352(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L335
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12300, %rax
	movl	(%rax), %edx
	movl	-12348(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L335
	movl	-12476(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$12292, %rax
	movl	(%rax), %edx
	movl	-12340(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L335
	movl	-12476(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L336
.L335:
	addl	$1, -12476(%rbp)
.L334:
	movl	-12476(%rbp), %eax
	cmpl	-12444(%rbp), %eax
	jl	.L337
.L336:
	movl	$0, -12472(%rbp)
	jmp	.L338
.L340:
	movl	-12472(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L339
	addl	$1, -12468(%rbp)
.L339:
	addl	$1, -12472(%rbp)
.L338:
	movl	-12472(%rbp), %eax
	cmpl	-12444(%rbp), %eax
	jl	.L340
	movl	legals(%rip), %eax
	cmpl	%eax, -12468(%rbp)
	jne	.L267
	movl	$1, alllosers(%rip)
	jmp	.L267
.L332:
	movl	alllosers(%rip), %eax
	testl	%eax, %eax
	je	.L342
	movq	-12352(%rbp), %rax
	movq	-12344(%rbp), %rdx
	movq	%rax, -12416(%rbp)
	movq	%rdx, -12408(%rbp)
	movq	-12336(%rbp), %rax
	movq	%rax, -12400(%rbp)
.L342:
	cmpl	$0, -12448(%rbp)
	je	.L343
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L343
	leaq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-12400(%rbp)
	pushq	-12408(%rbp)
	pushq	-12416(%rbp)
	movq	%rax, %rdi
	call	comp_to_san@PLT
	addq	$32, %rsp
	leaq	-32(%rbp), %rdx
	movl	-12448(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, result(%rip)
.L343:
	movq	start_time(%rip), %rbx
	call	rtime@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime@PLT
	movl	%eax, -12428(%rbp)
	movl	time_left(%rip), %eax
	subl	-12428(%rbp), %eax
	movl	%eax, time_left(%rip)
	movl	moves_to_tc(%rip), %eax
	testl	%eax, %eax
	je	.L344
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L344
	movl	time_for_move(%rip), %eax
	subl	-12428(%rbp), %eax
	movl	%eax, %edx
	movl	inc(%rip), %eax
	addl	%eax, %edx
	movl	time_cushion(%rip), %eax
	addl	%edx, %eax
	movl	%eax, time_cushion(%rip)
.L344:
	cmpl	$999998, -12464(%rbp)
	jne	.L345
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L345
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L346
	movl	$3, result(%rip)
	jmp	.L348
.L346:
	movl	$2, result(%rip)
	jmp	.L348
.L345:
	cmpl	$-999998, -12464(%rbp)
	jne	.L348
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L348
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L349
	movl	$2, result(%rip)
	jmp	.L348
.L349:
	movl	$3, result(%rip)
.L348:
	movl	post(%rip), %eax
	testl	%eax, %eax
	je	.L350
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L350
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L350
	movl	result(%rip), %eax
	cmpl	$3, %eax
	je	.L350
	movl	result(%rip), %eax
	cmpl	$2, %eax
	je	.L350
	movl	result(%rip), %eax
	cmpl	$4, %eax
	je	.L350
	movl	result(%rip), %eax
	cmpl	$5, %eax
	je	.L350
	movl	result(%rip), %eax
	cmpl	$1, %eax
	je	.L350
	movl	forcedwin(%rip), %eax
	testl	%eax, %eax
	jne	.L350
	cmpl	$999600, -12464(%rbp)
	jle	.L350
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L351
	movl	$1000000, %eax
	subl	-12464(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L350
.L351:
	movl	$1000000, %eax
	subl	-12464(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L350:
	movl	result(%rip), %eax
	cmpl	$2, %eax
	je	.L352
	movl	result(%rip), %eax
	cmpl	$3, %eax
	je	.L352
	movl	result(%rip), %eax
	cmpl	$1, %eax
	je	.L352
	movl	result(%rip), %eax
	cmpl	$4, %eax
	je	.L352
	movl	result(%rip), %eax
	cmpl	$5, %eax
	je	.L352
	movzbl	true_i_depth(%rip), %eax
	cmpb	$2, %al
	jle	.L352
	movl	4+pn_move(%rip), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L352
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L352
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L352
	movl	bestmovenum(%rip), %eax
	cmpl	$-1, %eax
	jne	.L352
	movl	$0, %eax
	movl	$0, (%rax)
.L352:
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L353
	cmpl	$-999899, -12464(%rbp)
	jl	.L353
	movl	tradefreely(%rip), %eax
	testl	%eax, %eax
	jne	.L370
	movl	userealholdings(%rip), %eax
	testl	%eax, %eax
	jne	.L370
	movl	$1, tradefreely(%rip)
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	jmp	.L370
.L353:
	cmpl	$-999900, -12464(%rbp)
	jge	.L356
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L356
	movl	4+pn_move(%rip), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L356
	movl	userealholdings(%rip), %eax
	testl	%eax, %eax
	je	.L357
	movl	$1, must_sit(%rip)
	cmpl	$-999999, -12464(%rbp)
	jl	.L355
	jmp	.L364
.L357:
	movl	$1, userealholdings(%rip)
	leaq	realholdings(%rip), %rdi
	call	ProcessHoldings@PLT
	movl	$0, tradefreely(%rip)
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	jmp	.L267
.L364:
	movl	partnerdead(%rip), %eax
	testl	%eax, %eax
	je	.L360
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	jmp	.L355
.L360:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	jmp	.L355
.L356:
	cmpl	$-59999, -12464(%rbp)
	jl	.L355
	cmpl	$-40000, -12464(%rbp)
	jge	.L355
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L355
	movl	partnerdead(%rip), %eax
	testl	%eax, %eax
	jne	.L355
	movl	4+pn_move(%rip), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L355
	movl	$1, must_sit(%rip)
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	jmp	.L355
.L370:
	nop
.L355:
	movq	-12488(%rbp), %rcx
	movq	-12416(%rbp), %rax
	movq	-12408(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-12400(%rbp), %rax
	movq	%rax, 16(%rcx)
.L266:
	movq	-12488(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L362
	call	__stack_chk_fail@PLT
.L362:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	think, .-think
	.globl	tree
	.type	tree, @function
tree:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12352, %rsp
	movl	%edi, -12324(%rbp)
	movl	%esi, -12328(%rbp)
	movq	%rdx, -12336(%rbp)
	movq	%rcx, -12344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12312(%rbp)
	cmpl	$0, -12324(%rbp)
	je	.L381
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12312(%rbp)
	call	in_check@PLT
	movl	%eax, -12308(%rbp)
	movl	$0, -12320(%rbp)
	jmp	.L374
.L379:
	movl	-12320(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12308(%rbp), %edx
	movl	-12320(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L375
	movl	$0, -12316(%rbp)
	jmp	.L376
.L377:
	movq	-12336(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	fputc@PLT
	addl	$1, -12316(%rbp)
.L376:
	movl	-12316(%rbp), %eax
	cmpl	-12328(%rbp), %eax
	jl	.L377
	movq	-12336(%rbp), %rdx
	movl	-12320(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_move@PLT
	movq	-12336(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-12344(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$121, %al
	jne	.L378
	movq	-12336(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_board@PLT
.L378:
	movl	-12328(%rbp), %eax
	leal	2(%rax), %esi
	movl	-12324(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-12344(%rbp), %rdx
	movq	-12336(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	tree
.L375:
	movl	-12320(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12320(%rbp)
.L374:
	movl	-12320(%rbp), %eax
	cmpl	-12312(%rbp), %eax
	jl	.L379
	jmp	.L371
.L381:
	nop
.L371:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L380
	call	__stack_chk_fail@PLT
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	tree, .-tree
	.section	.rodata
	.align 32
	.type	rc_index.4096, @object
	.size	rc_index.4096, 56
rc_index.4096:
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	5
	.long	5
	.long	3
	.long	3
	.long	4
	.long	4
	.long	2
	.long	2
	.long	0
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1074266112
	.align 8
.LC7:
	.long	3435973837
	.long	1073794252
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
