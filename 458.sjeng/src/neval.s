	.file	"neval.c"
	.text
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	evalRoutines, @object
	.size	evalRoutines, 56
evalRoutines:
	.quad	ErrorIt
	.quad	Pawn
	.quad	Knight
	.quad	King
	.quad	Rook
	.quad	Queen
	.quad	Bishop
	.comm	maxposdiff,4,4
	.comm	distance,82944,32
	.comm	rookdistance,82944,32
	.comm	king_locs,8,8
	.comm	wmat,4,4
	.comm	bmat,4,4
	.data
	.align 32
	.type	sbishop, @object
	.size	sbishop, 576
sbishop:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	8
	.long	5
	.long	5
	.long	5
	.long	5
	.long	8
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	3
	.long	3
	.long	5
	.long	5
	.long	3
	.long	3
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	2
	.long	5
	.long	4
	.long	4
	.long	5
	.long	2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	2
	.long	5
	.long	4
	.long	4
	.long	5
	.long	2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	3
	.long	3
	.long	5
	.long	5
	.long	3
	.long	3
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	8
	.long	5
	.long	5
	.long	5
	.long	5
	.long	8
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sknight, @object
	.size	sknight, 576
sknight:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	10
	.long	10
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	10
	.long	10
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	swhite_pawn, @object
	.size	swhite_pawn, 576
swhite_pawn:
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
	.long	1
	.long	2
	.long	3
	.long	10
	.long	10
	.long	3
	.long	2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	4
	.long	6
	.long	12
	.long	12
	.long	6
	.long	4
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	6
	.long	9
	.long	14
	.long	14
	.long	9
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	12
	.long	14
	.long	16
	.long	16
	.long	14
	.long	12
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	20
	.long	22
	.long	24
	.long	26
	.long	26
	.long	24
	.long	22
	.long	20
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sblack_pawn, @object
	.size	sblack_pawn, 576
sblack_pawn:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	20
	.long	22
	.long	24
	.long	26
	.long	26
	.long	24
	.long	22
	.long	20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	12
	.long	14
	.long	16
	.long	16
	.long	14
	.long	12
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	6
	.long	9
	.long	14
	.long	14
	.long	9
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	4
	.long	6
	.long	12
	.long	12
	.long	6
	.long	4
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	10
	.long	10
	.long	3
	.long	2
	.long	1
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
	.align 32
	.type	swhite_king, @object
	.size	swhite_king, 576
swhite_king:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	14
	.long	0
	.long	0
	.long	0
	.long	9
	.long	14
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	-5
	.long	-6
	.long	-6
	.long	-6
	.long	-6
	.long	-5
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-8
	.long	-8
	.long	-8
	.long	-8
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-8
	.long	-8
	.long	-13
	.long	-13
	.long	-13
	.long	-13
	.long	-8
	.long	-8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-13
	.long	-13
	.long	-21
	.long	-21
	.long	-21
	.long	-21
	.long	-13
	.long	-13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-21
	.long	-21
	.long	-34
	.long	-34
	.long	-34
	.long	-34
	.long	-21
	.long	-21
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-34
	.long	-34
	.long	-55
	.long	-55
	.long	-55
	.long	-55
	.long	-34
	.long	-34
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-55
	.long	-55
	.long	-89
	.long	-89
	.long	-89
	.long	-89
	.long	-55
	.long	-55
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sblack_king, @object
	.size	sblack_king, 576
sblack_king:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-55
	.long	-55
	.long	-89
	.long	-89
	.long	-89
	.long	-89
	.long	-55
	.long	-55
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-34
	.long	-34
	.long	-55
	.long	-55
	.long	-55
	.long	-55
	.long	-34
	.long	-34
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-21
	.long	-21
	.long	-34
	.long	-34
	.long	-34
	.long	-34
	.long	-21
	.long	-21
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-13
	.long	-13
	.long	-21
	.long	-21
	.long	-21
	.long	-21
	.long	-13
	.long	-13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-8
	.long	-8
	.long	-13
	.long	-13
	.long	-13
	.long	-13
	.long	-8
	.long	-8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-8
	.long	-8
	.long	-8
	.long	-8
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	-5
	.long	-6
	.long	-6
	.long	-6
	.long	-6
	.long	-5
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	14
	.long	0
	.long	0
	.long	0
	.long	9
	.long	14
	.long	2
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	send_king, @object
	.size	send_king, 576
send_king:
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-3
	.long	-1
	.long	0
	.long	0
	.long	-1
	.long	-3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	10
	.long	25
	.long	25
	.long	25
	.long	25
	.long	10
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	25
	.long	50
	.long	50
	.long	25
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	25
	.long	50
	.long	50
	.long	25
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	10
	.long	25
	.long	25
	.long	25
	.long	25
	.long	10
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-3
	.long	-1
	.long	0
	.long	0
	.long	-1
	.long	-3
	.long	-5
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
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	srev_rank, @object
	.size	srev_rank, 36
srev_rank:
	.long	0
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.globl	std_p_tropism
	.align 32
	.type	std_p_tropism, @object
	.size	std_p_tropism, 32
std_p_tropism:
	.long	9999
	.long	15
	.long	10
	.long	7
	.long	2
	.long	0
	.long	0
	.long	0
	.globl	std_own_p_tropism
	.align 32
	.type	std_own_p_tropism, @object
	.size	std_own_p_tropism, 32
std_own_p_tropism:
	.long	9999
	.long	30
	.long	10
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	std_r_tropism
	.align 32
	.type	std_r_tropism, @object
	.size	std_r_tropism, 64
std_r_tropism:
	.long	9999
	.long	0
	.long	15
	.long	5
	.long	2
	.long	1
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
	.globl	std_n_tropism
	.align 32
	.type	std_n_tropism, @object
	.size	std_n_tropism, 32
std_n_tropism:
	.long	9999
	.long	14
	.long	9
	.long	6
	.long	1
	.long	0
	.long	0
	.long	0
	.globl	std_q_tropism
	.align 32
	.type	std_q_tropism, @object
	.size	std_q_tropism, 32
std_q_tropism:
	.long	9999
	.long	200
	.long	50
	.long	15
	.long	3
	.long	2
	.long	1
	.long	0
	.globl	std_b_tropism
	.align 32
	.type	std_b_tropism, @object
	.size	std_b_tropism, 32
std_b_tropism:
	.long	9999
	.long	12
	.long	7
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	check_phase
	.type	check_phase, @function
check_phase:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L2
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	addl	$1, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L4
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L4
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L4
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L4
	addl	$1, -16(%rbp)
	jmp	.L4
.L11:
	nop
.L4:
	addl	$1, -12(%rbp)
.L2:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L5
	cmpl	$11, -16(%rbp)
	jle	.L6
	movl	white_castled(%rip), %eax
	testl	%eax, %eax
	je	.L7
	movl	black_castled(%rip), %eax
	testl	%eax, %eax
	jne	.L6
.L7:
	movl	120+board(%rip), %eax
	cmpl	$5, %eax
	je	.L8
	movl	456+board(%rip), %eax
	cmpl	$6, %eax
	jne	.L6
.L8:
	movl	$0, phase(%rip)
	jmp	.L12
.L6:
	cmpl	$6, -16(%rbp)
	jg	.L10
	movl	$2, phase(%rip)
	jmp	.L12
.L10:
	movl	$1, phase(%rip)
.L12:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	check_phase, .-check_phase
	.type	bishop_mobility, @function
bishop_mobility:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)
	movl	$0, %r13d
	movl	$0, %ebx
	jmp	.L14
.L17:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dir.4026(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	leal	(%rdx,%rax), %r12d
	jmp	.L15
.L16:
	addl	$1, %r13d
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dir.4026(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %r12d
.L15:
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L16
	addl	$1, %ebx
.L14:
	cmpl	$3, %ebx
	jle	.L17
	movl	%r13d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bishop_mobility, .-bishop_mobility
	.type	rook_mobility, @function
rook_mobility:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)
	movl	$0, %r13d
	movl	$0, %ebx
	jmp	.L20
.L23:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dir.4039(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	leal	(%rdx,%rax), %r12d
	jmp	.L21
.L22:
	addl	$1, %r13d
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dir.4039(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %r12d
.L21:
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L22
	addl	$1, %ebx
.L20:
	cmpl	$3, %ebx
	jle	.L23
	movl	%r13d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	rook_mobility, .-rook_mobility
	.globl	King
	.type	King, @function
King:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jle	.L26
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$4, %eax
	jne	.L26
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L26
	addl	$2, -4(%rbp)
.L26:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jle	.L27
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$4, %eax
	jne	.L27
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L27
	addl	$2, -4(%rbp)
.L27:
	cmpl	$1, -24(%rbp)
	jne	.L28
	negl	-4(%rbp)
.L28:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	King, .-King
	.globl	Queen
	.type	Queen, @function
Queen:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	-24(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$900, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_q_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	rook_mobility
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	bishop_mobility
	addl	%eax, %eax
	addl	%eax, -8(%rbp)
	cmpl	$4, -8(%rbp)
	jg	.L31
	cmpl	$0, -8(%rbp)
	jne	.L32
	subl	$15, -8(%rbp)
	jmp	.L31
.L32:
	cmpl	$2, -8(%rbp)
	jne	.L33
	subl	$10, -8(%rbp)
	jmp	.L31
.L33:
	subl	$5, -8(%rbp)
.L31:
	movl	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L34
	negl	-12(%rbp)
.L34:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Queen, .-Queen
	.globl	Rook
	.type	Rook, @function
Rook:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	-24(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$500, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rookdistance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_r_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	rook_mobility
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jg	.L37
	subl	$5, -8(%rbp)
.L37:
	movl	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L38
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L38
	subl	$5, -12(%rbp)
.L38:
	movl	wmat(%rip), %eax
	cmpl	$1300, %eax
	jne	.L39
	movl	bmat(%rip), %eax
	cmpl	$1300, %eax
	je	.L40
.L39:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	square_d1.4062(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L41
	addl	$10, -12(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	square_d1.4062(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$4, %eax
	jne	.L41
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	square_d1.4062(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L41
	addl	$5, -12(%rbp)
.L41:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	square_d1.4062(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L40
	addl	$10, -12(%rbp)
.L40:
	cmpl	$1, -24(%rbp)
	jne	.L42
	negl	-12(%rbp)
.L42:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Rook, .-Rook
	.globl	Bishop
	.type	Bishop, @function
Bishop:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	-24(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$325, -12(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sbishop(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_b_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	bishop_mobility
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jg	.L45
	subl	$5, -8(%rbp)
.L45:
	movl	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L46
	cmpl	$39, -20(%rbp)
	jne	.L46
	movl	208+board(%rip), %eax
	cmpl	$1, %eax
	je	.L47
.L46:
	cmpl	$1, -24(%rbp)
	jne	.L48
	cmpl	$99, -20(%rbp)
	jne	.L48
	movl	352+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L48
.L47:
	subl	$5, -12(%rbp)
.L48:
	cmpl	$1, -24(%rbp)
	jne	.L49
	negl	-12(%rbp)
.L49:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Bishop, .-Bishop
	.globl	Knight
	.type	Knight, @function
Knight:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	-24(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$310, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sknight(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_n_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -8(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L52
	negl	-8(%rbp)
.L52:
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Knight, .-Knight
	.globl	Pawn
	.type	Pawn, @function
Pawn:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	-24(%rbp), %eax
	xorl	$1, %eax
	movl	%eax, -4(%rbp)
	addl	$100, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_p_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	king_locs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	std_own_p_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$1, %eax
	jne	.L55
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L55
	addl	$5, -8(%rbp)
.L55:
	movl	-20(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$1, %eax
	jne	.L56
	movl	-20(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L56
	addl	$1, -8(%rbp)
	jmp	.L57
.L56:
	movl	-20(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$1, %eax
	jne	.L57
	movl	-20(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jne	.L57
	addl	$1, -8(%rbp)
.L57:
	cmpl	$1, -24(%rbp)
	jne	.L58
	negl	-8(%rbp)
.L58:
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Pawn, .-Pawn
	.section	.rodata
	.align 8
.LC0:
	.string	"Illegal piece detected sq=%i c=%i\n"
	.text
	.globl	ErrorIt
	.type	ErrorIt, @function
ErrorIt:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ErrorIt, .-ErrorIt
	.globl	std_eval
	.type	std_eval, @function
std_eval:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movl	%edi, -324(%rbp)
	movl	%esi, -328(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -312(%rbp)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L63
	movl	Material(%rip), %eax
	negl	%eax
	jmp	.L64
.L63:
	movl	Material(%rip), %eax
.L64:
	movl	maxposdiff(%rip), %edx
	subl	%edx, %eax
	cmpl	%eax, -328(%rbp)
	jg	.L65
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L66
	movl	Material(%rip), %eax
	negl	%eax
	jmp	.L67
.L66:
	movl	Material(%rip), %eax
.L67:
	movl	maxposdiff(%rip), %edx
	subl	%edx, %eax
	jmp	.L208
.L65:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L69
	movl	Material(%rip), %eax
	negl	%eax
	jmp	.L70
.L69:
	movl	Material(%rip), %eax
.L70:
	movl	maxposdiff(%rip), %edx
	addl	%edx, %eax
	cmpl	%eax, -324(%rbp)
	jl	.L71
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L72
	movl	Material(%rip), %eax
	negl	%eax
	jmp	.L73
.L72:
	movl	Material(%rip), %eax
.L73:
	movl	maxposdiff(%rip), %edx
	addl	%edx, %eax
	jmp	.L208
.L71:
	movl	$0, -308(%rbp)
	leaq	-308(%rbp), %rdx
	leaq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	checkECache@PLT
	movl	-308(%rbp), %eax
	testl	%eax, %eax
	je	.L74
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L75
	movl	-312(%rbp), %eax
	jmp	.L208
.L75:
	movl	-312(%rbp), %eax
	negl	%eax
	jmp	.L208
.L74:
	leaq	-96(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -304(%rbp)
	jmp	.L76
.L77:
	movl	-304(%rbp), %eax
	cltq
	movl	$7, -192(%rbp,%rax,4)
	movl	-304(%rbp), %eax
	cltq
	movl	$2, -144(%rbp,%rax,4)
	addl	$1, -304(%rbp)
.L76:
	cmpl	$10, -304(%rbp)
	jle	.L77
	movl	$0, wmat(%rip)
	movl	$0, bmat(%rip)
	movl	wking_loc(%rip), %eax
	movl	%eax, king_locs(%rip)
	movl	bking_loc(%rip), %eax
	movl	%eax, 4+king_locs(%rip)
	movl	$1, -296(%rbp)
	movl	$1, -300(%rbp)
	jmp	.L78
.L85:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.L210
	addl	$1, -300(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$1, %eax
	je	.L81
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$3, %eax
	je	.L81
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L82
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wmat(%rip), %eax
	addl	%edx, %eax
	movl	%eax, wmat(%rip)
	jmp	.L81
.L82:
	movl	-304(%rbp), %eax
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
	movl	bmat(%rip), %edx
	addl	%edx, %eax
	movl	%eax, bmat(%rip)
.L81:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cmpl	$1, %eax
	jne	.L80
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -200(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L83
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	%edx, -96(%rbp,%rax,4)
	movl	-204(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L80
	movl	-204(%rbp), %eax
	cltq
	movl	-200(%rbp), %edx
	movl	%edx, -192(%rbp,%rax,4)
	jmp	.L80
.L83:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-204(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-204(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L80
	movl	-204(%rbp), %eax
	cltq
	movl	-200(%rbp), %edx
	movl	%edx, -144(%rbp,%rax,4)
	jmp	.L80
.L210:
	nop
.L80:
	addl	$1, -296(%rbp)
.L78:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -300(%rbp)
	jle	.L85
	movl	$0, -228(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -284(%rbp)
	movl	$0, -280(%rbp)
	movl	$0, -268(%rbp)
	movl	$0, -264(%rbp)
	movl	$0, -276(%rbp)
	movl	$0, -272(%rbp)
	movl	$0, -252(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -256(%rbp)
	movl	$1, -296(%rbp)
	movl	$1, -300(%rbp)
	jmp	.L86
.L160:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.L211
	addl	$1, -300(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	evalRoutines(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-304(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	board(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	addl	$1, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	movl	-304(%rbp), %edx
	movl	%ecx, %esi
	movl	%edx, %edi
	call	*%rax
	movl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -200(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L88
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L90(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L90(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L90:
	.long	.L88-.L90
	.long	.L89-.L90
	.long	.L91-.L90
	.long	.L92-.L90
	.long	.L93-.L90
	.long	.L94-.L90
	.long	.L95-.L90
	.long	.L96-.L90
	.long	.L97-.L90
	.long	.L98-.L90
	.long	.L99-.L90
	.long	.L100-.L90
	.long	.L101-.L90
	.text
.L89:
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	swhite_pawn(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	addl	$1, -284(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L102
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L102
	movl	-312(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -312(%rbp)
	movl	$1, -288(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L102
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L102
	movl	-312(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -312(%rbp)
	movl	$1, -292(%rbp)
.L102:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L103
	cmpl	$0, -288(%rbp)
	je	.L104
	movl	-312(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -312(%rbp)
.L104:
	cmpl	$0, -292(%rbp)
	je	.L103
	movl	-312(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -312(%rbp)
.L103:
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L105
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sall	$2, %eax
	subl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L105:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L106
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jl	.L106
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jl	.L106
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	swhite_pawn(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	30(%rax), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L107
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$109, %eax
	movl	%eax, -196(%rbp)
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xfile(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L109
	addl	$800, -228(%rbp)
	jmp	.L109
.L107:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$109, %eax
	movl	%eax, -196(%rbp)
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xfile(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	leal	-1(%rax), %esi
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jle	.L109
	addl	$800, -228(%rbp)
.L109:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L110
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L111
.L110:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	swhite_pawn(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$6, %eax
	leal	(%rax,%rax), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L111:
	cmpl	$0, -292(%rbp)
	jne	.L106
	movl	-312(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -312(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L112
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L112
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %edx
	movl	-204(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L112
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L112
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	$5, %eax
	jle	.L112
	movl	-312(%rbp), %eax
	addl	$50, %eax
	movl	%eax, -312(%rbp)
.L112:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L106
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L106
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %edx
	movl	-204(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L106
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L106
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	$5, %eax
	jle	.L106
	movl	-312(%rbp), %eax
	addl	$50, %eax
	movl	%eax, -312(%rbp)
.L106:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L212
	movl	-312(%rbp), %eax
	subl	$7, %eax
	movl	%eax, -312(%rbp)
	jmp	.L212
.L91:
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	movl	-312(%rbp), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	sblack_pawn(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
	addl	$1, -280(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L114
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L114
	movl	-312(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -312(%rbp)
	movl	$1, -288(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L114
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L114
	movl	-312(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -312(%rbp)
	movl	$1, -292(%rbp)
.L114:
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L115
	cmpl	$0, -288(%rbp)
	je	.L116
	movl	-312(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -312(%rbp)
.L116:
	cmpl	$0, -292(%rbp)
	je	.L115
	movl	-312(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -312(%rbp)
.L115:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L117
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	-1(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L117:
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L118
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jg	.L118
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jg	.L118
	movl	-312(%rbp), %ecx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sblack_pawn(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$30, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -312(%rbp)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L119
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$25, %eax
	movl	%eax, -196(%rbp)
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xfile(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L121
	subl	$800, -224(%rbp)
	jmp	.L121
.L119:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$25, %eax
	movl	%eax, -196(%rbp)
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xfile(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	leal	-1(%rax), %esi
	movl	-196(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jle	.L121
	subl	$800, -224(%rbp)
.L121:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L122
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L123
.L122:
	movl	-312(%rbp), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	sblack_pawn(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	$6, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
.L123:
	cmpl	$0, -292(%rbp)
	jne	.L118
	movl	-312(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -312(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L124
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L124
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %edx
	movl	-204(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jg	.L124
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$9, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	sall	$3, %eax
	subl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L124
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	$3, %eax
	jg	.L124
	movl	-312(%rbp), %eax
	subl	$50, %eax
	movl	%eax, -312(%rbp)
.L124:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L118
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L118
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %edx
	movl	-204(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jg	.L118
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$9, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	sall	$3, %eax
	subl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L118
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	$3, %eax
	jg	.L118
	movl	-312(%rbp), %eax
	subl	$50, %eax
	movl	%eax, -312(%rbp)
.L118:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L213
	movl	-312(%rbp), %eax
	addl	$7, %eax
	movl	%eax, -312(%rbp)
	jmp	.L213
.L96:
	addl	$1, -252(%rbp)
	cmpl	$1, -252(%rbp)
	jne	.L126
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -232(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -236(%rbp)
.L126:
	cmpl	$7, -200(%rbp)
	jne	.L127
	movl	-312(%rbp), %eax
	addl	$25, %eax
	movl	%eax, -312(%rbp)
	cmpl	$2, -252(%rbp)
	jne	.L127
	cmpl	$7, -236(%rbp)
	jne	.L127
	movl	-312(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -312(%rbp)
.L127:
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L214
	movl	-312(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -312(%rbp)
	cmpl	$2, -252(%rbp)
	jne	.L129
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -232(%rbp)
	jne	.L129
	movl	-312(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -312(%rbp)
.L129:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L214
	movl	-312(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -312(%rbp)
	jmp	.L214
.L97:
	addl	$1, -248(%rbp)
	cmpl	$1, -248(%rbp)
	jne	.L130
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -240(%rbp)
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -244(%rbp)
.L130:
	cmpl	$2, -200(%rbp)
	jne	.L131
	movl	-312(%rbp), %eax
	subl	$25, %eax
	movl	%eax, -312(%rbp)
	cmpl	$2, -252(%rbp)
	jne	.L131
	cmpl	$2, -244(%rbp)
	jne	.L131
	movl	-312(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -312(%rbp)
.L131:
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L215
	movl	-312(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -312(%rbp)
	cmpl	$2, -248(%rbp)
	jne	.L133
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -240(%rbp)
	jne	.L133
	movl	-312(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -312(%rbp)
.L133:
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L215
	movl	-312(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -312(%rbp)
	jmp	.L215
.L100:
	addl	$1, -268(%rbp)
	jmp	.L88
.L101:
	addl	$1, -264(%rbp)
	jmp	.L88
.L92:
	addl	$1, -276(%rbp)
	jmp	.L88
.L93:
	addl	$1, -272(%rbp)
	jmp	.L88
.L98:
	addl	$1, -260(%rbp)
	jmp	.L88
.L99:
	addl	$1, -256(%rbp)
	jmp	.L88
.L94:
	movl	wmat(%rip), %eax
	cmpl	$1300, %eax
	jle	.L134
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	swhite_king(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	white_castled(%rip), %eax
	cmpl	$2, %eax
	jne	.L135
	movl	-312(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -312(%rbp)
	jmp	.L136
.L135:
	movl	white_castled(%rip), %eax
	cmpl	$1, %eax
	jne	.L137
	movl	-312(%rbp), %eax
	addl	$25, %eax
	movl	%eax, -312(%rbp)
	jmp	.L136
.L137:
	movl	120+moved(%rip), %eax
	testl	%eax, %eax
	je	.L136
	movl	-312(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -312(%rbp)
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L136
	movl	-312(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -312(%rbp)
.L136:
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	je	.L138
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L138
	movl	-204(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L139
	movl	-204(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L139
	movl	-204(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	subl	-200(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	negl	%eax
	movl	-312(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L140
.L139:
	movl	-312(%rbp), %eax
	subl	$22, %eax
	movl	%eax, -312(%rbp)
.L140:
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L141
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L141
	movl	-312(%rbp), %edx
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	subl	-200(%rbp), %eax
	subl	$1, %eax
	sall	$3, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L142
.L141:
	movl	-312(%rbp), %eax
	subl	$16, %eax
	movl	%eax, -312(%rbp)
.L142:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jge	.L143
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L143
	movl	-312(%rbp), %edx
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	subl	-200(%rbp), %eax
	subl	$1, %eax
	sall	$3, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L146
.L143:
	movl	-312(%rbp), %eax
	subl	$16, %eax
	movl	%eax, -312(%rbp)
	jmp	.L146
.L138:
	movl	-312(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -312(%rbp)
	jmp	.L88
.L134:
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	send_king(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L88
.L146:
	jmp	.L88
.L95:
	movl	bmat(%rip), %eax
	cmpl	$1300, %eax
	jle	.L147
	movl	-312(%rbp), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	sblack_king(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	black_castled(%rip), %eax
	cmpl	$4, %eax
	jne	.L148
	movl	-312(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -312(%rbp)
	jmp	.L149
.L148:
	movl	black_castled(%rip), %eax
	cmpl	$3, %eax
	jne	.L150
	movl	-312(%rbp), %eax
	subl	$25, %eax
	movl	%eax, -312(%rbp)
	jmp	.L149
.L150:
	movl	456+moved(%rip), %eax
	testl	%eax, %eax
	je	.L149
	movl	-312(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -312(%rbp)
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L149
	movl	-312(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -312(%rbp)
.L149:
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	je	.L151
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L151
	movl	-204(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L152
	movl	-204(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L152
	movl	-204(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	movl	-200(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L153
.L152:
	movl	-312(%rbp), %eax
	addl	$22, %eax
	movl	%eax, -312(%rbp)
.L153:
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L154
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L154
	movl	-204(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	movl	-200(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	0(,%rax,8), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L155
.L154:
	movl	-312(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -312(%rbp)
.L155:
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L156
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L156
	movl	-204(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	movl	-200(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	0(,%rax,8), %edx
	movl	-312(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L159
.L156:
	movl	-312(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -312(%rbp)
	jmp	.L159
.L151:
	movl	-312(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -312(%rbp)
	jmp	.L88
.L147:
	movl	-312(%rbp), %edx
	movl	-304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	send_king(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -312(%rbp)
	jmp	.L88
.L159:
	jmp	.L88
.L211:
	nop
	jmp	.L88
.L212:
	nop
	jmp	.L88
.L213:
	nop
	jmp	.L88
.L214:
	nop
	jmp	.L88
.L215:
	nop
.L88:
	addl	$1, -296(%rbp)
.L86:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -300(%rbp)
	jle	.L160
	movl	wmat(%rip), %eax
	cmpl	$2200, %eax
	jg	.L161
	movl	bmat(%rip), %eax
	cmpl	$2200, %eax
	jle	.L162
.L161:
	movl	164+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L163
	movl	212+board(%rip), %eax
	cmpl	$13, %eax
	je	.L163
	movl	-312(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -312(%rbp)
.L163:
	movl	168+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L164
	movl	216+board(%rip), %eax
	cmpl	$13, %eax
	je	.L164
	movl	-312(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -312(%rbp)
.L164:
	movl	404+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L165
	movl	356+board(%rip), %eax
	cmpl	$13, %eax
	je	.L165
	movl	-312(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -312(%rbp)
.L165:
	movl	408+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L162
	movl	360+board(%rip), %eax
	cmpl	$13, %eax
	je	.L162
	movl	-312(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -312(%rbp)
.L162:
	movl	wmat(%rip), %eax
	cmpl	$1300, %eax
	jg	.L166
	movl	bmat(%rip), %eax
	cmpl	$1300, %eax
	jle	.L167
.L166:
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-212(%rbp), %eax
	subl	-208(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$2, %eax
	jle	.L167
	movl	-212(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -220(%rbp)
	movl	-212(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -220(%rbp)
	movl	-212(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	srev_rank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -220(%rbp)
	movl	-208(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -216(%rbp)
	movl	-208(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -216(%rbp)
	movl	-208(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, -216(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L168
	addl	$8, -220(%rbp)
.L168:
	movl	-212(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L169
	addl	$6, -220(%rbp)
.L169:
	movl	-212(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L170
	addl	$6, -220(%rbp)
.L170:
	movl	-208(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L171
	addl	$8, -216(%rbp)
.L171:
	movl	-208(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L172
	addl	$6, -216(%rbp)
.L172:
	movl	-208(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L167
	addl	$6, -216(%rbp)
.L167:
	movl	bmat(%rip), %eax
	cmpl	$1300, %eax
	jle	.L173
	cmpl	$0, -256(%rbp)
	je	.L173
	movl	-312(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, -312(%rbp)
.L173:
	movl	wmat(%rip), %eax
	cmpl	$1300, %eax
	jle	.L174
	cmpl	$0, -260(%rbp)
	je	.L174
	movl	-312(%rbp), %edx
	movl	-216(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L174:
	cmpl	$0, -252(%rbp)
	jne	.L175
	cmpl	$0, -260(%rbp)
	jne	.L175
	cmpl	$0, -268(%rbp)
	jne	.L175
	cmpl	$0, -276(%rbp)
	jne	.L175
	movl	-312(%rbp), %edx
	movl	-224(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L175:
	cmpl	$0, -248(%rbp)
	jne	.L176
	cmpl	$0, -256(%rbp)
	jne	.L176
	cmpl	$0, -264(%rbp)
	jne	.L176
	cmpl	$0, -272(%rbp)
	jne	.L176
	movl	-312(%rbp), %edx
	movl	-228(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
.L176:
	cmpl	$0, -284(%rbp)
	jne	.L177
	cmpl	$0, -280(%rbp)
	jne	.L177
	cmpl	$0, -252(%rbp)
	jne	.L178
	cmpl	$0, -248(%rbp)
	jne	.L178
	cmpl	$0, -260(%rbp)
	jne	.L178
	cmpl	$0, -256(%rbp)
	jne	.L178
	cmpl	$0, -264(%rbp)
	jne	.L179
	cmpl	$0, -268(%rbp)
	jne	.L179
	cmpl	$2, -276(%rbp)
	jg	.L216
	cmpl	$2, -272(%rbp)
	jg	.L216
	movl	$0, -312(%rbp)
	jmp	.L216
.L179:
	cmpl	$0, -276(%rbp)
	jne	.L182
	cmpl	$0, -272(%rbp)
	jne	.L182
	movl	-268(%rbp), %eax
	subl	-264(%rbp), %eax
	cmpl	$-1, %eax
	jl	.L217
	movl	-268(%rbp), %eax
	subl	-264(%rbp), %eax
	cmpl	$1, %eax
	jg	.L217
	movl	$0, -312(%rbp)
	jmp	.L217
.L182:
	cmpl	$2, -276(%rbp)
	jg	.L184
	cmpl	$0, -268(%rbp)
	je	.L185
.L184:
	cmpl	$1, -268(%rbp)
	jne	.L218
	cmpl	$0, -276(%rbp)
	jne	.L218
.L185:
	cmpl	$2, -272(%rbp)
	jg	.L186
	cmpl	$0, -264(%rbp)
	je	.L187
.L186:
	cmpl	$1, -264(%rbp)
	jne	.L218
	cmpl	$0, -272(%rbp)
	jne	.L218
.L187:
	movl	$0, -312(%rbp)
	jmp	.L218
.L216:
	nop
	jmp	.L218
.L217:
	nop
	jmp	.L218
.L178:
	cmpl	$0, -260(%rbp)
	jne	.L219
	cmpl	$0, -256(%rbp)
	jne	.L219
	cmpl	$1, -252(%rbp)
	jne	.L189
	cmpl	$1, -248(%rbp)
	jne	.L189
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jg	.L220
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	jg	.L220
	movl	$0, -312(%rbp)
	jmp	.L220
.L189:
	cmpl	$1, -252(%rbp)
	jne	.L191
	cmpl	$0, -248(%rbp)
	jne	.L191
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L221
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	je	.L193
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.L221
.L193:
	movl	$0, -312(%rbp)
	jmp	.L221
.L191:
	cmpl	$1, -248(%rbp)
	jne	.L219
	cmpl	$0, -252(%rbp)
	jne	.L219
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L219
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	addl	%edx, %eax
	cmpl	$1, %eax
	je	.L194
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.L219
.L194:
	movl	$0, -312(%rbp)
	jmp	.L219
.L218:
	nop
	jmp	.L219
.L220:
	nop
	jmp	.L219
.L221:
	nop
	jmp	.L219
.L177:
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	je	.L196
	movl	-260(%rbp), %edx
	movl	-252(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-256(%rbp), %edx
	movl	-248(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L197
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L198
	movl	-312(%rbp), %eax
	addl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L198:
	movl	-312(%rbp), %eax
	subl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L197:
	movl	-252(%rbp), %edx
	movl	-260(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-248(%rbp), %edx
	movl	-256(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L201
	movl	-268(%rbp), %edx
	movl	-276(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-264(%rbp), %edx
	movl	-272(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, %ecx
	jle	.L202
	movl	-312(%rbp), %eax
	addl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L202:
	movl	-264(%rbp), %edx
	movl	-272(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-268(%rbp), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	%eax, %ecx
	jle	.L195
	movl	-312(%rbp), %eax
	subl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L201:
	movl	-252(%rbp), %edx
	movl	-260(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-248(%rbp), %edx
	movl	-256(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$2, %eax
	jne	.L195
	movl	-268(%rbp), %edx
	movl	-276(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-264(%rbp), %edx
	movl	-272(%rbp), %eax
	addl	%edx, %eax
	addl	$2, %eax
	cmpl	%eax, %ecx
	jle	.L204
	movl	-312(%rbp), %eax
	addl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L204:
	movl	-264(%rbp), %edx
	movl	-272(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-268(%rbp), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	addl	$2, %eax
	cmpl	%eax, %ecx
	jle	.L195
	movl	-312(%rbp), %eax
	subl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L196:
	movl	-260(%rbp), %edx
	movl	-252(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-256(%rbp), %edx
	movl	-248(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jne	.L195
	cmpl	$0, -260(%rbp)
	je	.L205
	cmpl	$0, -256(%rbp)
	jne	.L205
	movl	-312(%rbp), %eax
	addl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L205:
	cmpl	$0, -260(%rbp)
	jne	.L195
	cmpl	$0, -256(%rbp)
	je	.L195
	movl	-312(%rbp), %eax
	subl	$120, %eax
	movl	%eax, -312(%rbp)
	jmp	.L195
.L219:
	nop
.L195:
	movl	-312(%rbp), %eax
	movl	%eax, %edi
	call	storeECache@PLT
	movl	Material(%rip), %edx
	movl	-312(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	maxposdiff(%rip), %edx
	cmpl	%edx, %eax
	jle	.L206
	movl	Material(%rip), %edx
	movl	-312(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	$1000, %edx
	cmpl	$1000, %eax
	cmovg	%edx, %eax
	movl	%eax, maxposdiff(%rip)
.L206:
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L207
	movl	-312(%rbp), %eax
	jmp	.L208
.L207:
	movl	-312(%rbp), %eax
	negl	%eax
.L208:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L209
	call	__stack_chk_fail@PLT
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	std_eval, .-std_eval
	.section	.rodata
	.align 16
	.type	dir.4026, @object
	.size	dir.4026, 16
dir.4026:
	.long	-13
	.long	-11
	.long	11
	.long	13
	.align 16
	.type	dir.4039, @object
	.size	dir.4039, 16
dir.4039:
	.long	-1
	.long	1
	.long	12
	.long	-12
	.align 8
	.type	square_d1.4062, @object
	.size	square_d1.4062, 8
square_d1.4062:
	.long	29
	.long	113
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
