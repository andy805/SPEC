	.file	"epd.c"
	.text
	.globl	setup_epd_line
	.type	setup_epd_line, @function
setup_epd_line:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	$97, -24(%rbp)
	movl	$49, -20(%rbp)
	movl	$576, %edx
	movl	$0, %esi
	leaq	board(%rip), %rdi
	call	memset@PLT
	movl	$0, white_castled(%rip)
	movl	$0, black_castled(%rip)
	movl	$50, book_ply(%rip)
	movl	rankoffsets.3973(%rip), %eax
	movl	%eax, -40(%rbp)
	jmp	.L2
.L3:
	addl	$1, -48(%rbp)
.L2:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L3
	jmp	.L4
.L47:
	cmpl	$0, -28(%rbp)
	jne	.L5
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L5
	movl	$0, -32(%rbp)
	jmp	.L6
.L7:
	movl	-40(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	addl	$1, -32(%rbp)
.L6:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	cmpl	%eax, -32(%rbp)
	jl	.L7
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	addl	%eax, -36(%rbp)
	jmp	.L8
.L5:
	cmpl	$0, -28(%rbp)
	jne	.L9
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L9
	addl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rankoffsets.3973(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L8
.L9:
	cmpl	$0, -28(%rbp)
	jne	.L10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L10
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$66, %eax
	cmpl	$48, %eax
	ja	.L11
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L13(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L13(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L13:
	.long	.L12-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L14-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L15-.L13
	.long	.L11-.L13
	.long	.L16-.L13
	.long	.L17-.L13
	.long	.L18-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L19-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L20-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L21-.L13
	.long	.L11-.L13
	.long	.L22-.L13
	.long	.L23-.L13
	.long	.L24-.L13
	.text
.L22:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	jmp	.L11
.L16:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L11
.L21:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$4, (%rdx,%rax)
	jmp	.L11
.L15:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$3, (%rdx,%rax)
	jmp	.L11
.L19:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$12, (%rdx,%rax)
	jmp	.L11
.L12:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$11, (%rdx,%rax)
	jmp	.L11
.L24:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$8, (%rdx,%rax)
	jmp	.L11
.L18:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$7, (%rdx,%rax)
	jmp	.L11
.L23:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$10, (%rdx,%rax)
	jmp	.L11
.L17:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$9, (%rdx,%rax)
	jmp	.L11
.L20:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, bking_loc(%rip)
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$6, (%rdx,%rax)
	jmp	.L11
.L14:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, wking_loc(%rip)
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$5, (%rdx,%rax)
	nop
.L11:
	addl	$1, -36(%rbp)
	jmp	.L8
.L10:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L8
	addl	$1, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.L25
	jmp	.L26
.L27:
	addl	$1, -48(%rbp)
.L26:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L27
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$119, %al
	jne	.L28
	movl	$1, white_to_move(%rip)
	jmp	.L8
.L28:
	movl	$0, white_to_move(%rip)
	jmp	.L8
.L25:
	cmpl	$2, -28(%rbp)
	jne	.L30
	movl	$1, 120+moved(%rip)
	movl	120+moved(%rip), %eax
	movl	%eax, 132+moved(%rip)
	movl	132+moved(%rip), %eax
	movl	%eax, 104+moved(%rip)
	movl	$1, 468+moved(%rip)
	movl	468+moved(%rip), %eax
	movl	%eax, 456+moved(%rip)
	movl	456+moved(%rip), %eax
	movl	%eax, 440+moved(%rip)
	jmp	.L31
.L32:
	addl	$1, -48(%rbp)
.L31:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L32
	jmp	.L33
.L41:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$81, %eax
	je	.L35
	cmpl	$81, %eax
	jg	.L36
	cmpl	$45, %eax
	je	.L48
	cmpl	$75, %eax
	je	.L38
	jmp	.L34
.L36:
	cmpl	$107, %eax
	je	.L39
	cmpl	$113, %eax
	je	.L40
	jmp	.L34
.L38:
	movl	$0, 132+moved(%rip)
	movl	132+moved(%rip), %eax
	movl	%eax, 120+moved(%rip)
	jmp	.L34
.L35:
	movl	$0, 104+moved(%rip)
	movl	104+moved(%rip), %eax
	movl	%eax, 120+moved(%rip)
	jmp	.L34
.L39:
	movl	$0, 468+moved(%rip)
	movl	468+moved(%rip), %eax
	movl	%eax, 456+moved(%rip)
	jmp	.L34
.L40:
	movl	$0, 440+moved(%rip)
	movl	440+moved(%rip), %eax
	movl	%eax, 456+moved(%rip)
	jmp	.L34
.L48:
	nop
.L34:
	addl	$1, -48(%rbp)
.L33:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L41
	subl	$1, -48(%rbp)
	jmp	.L8
.L30:
	cmpl	$3, -28(%rbp)
	jne	.L8
	jmp	.L42
.L43:
	addl	$1, -48(%rbp)
.L42:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L43
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L44
	movl	$0, ep_square(%rip)
	jmp	.L8
.L44:
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -48(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -48(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	26(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, ep_square(%rip)
.L8:
	addl	$1, -48(%rbp)
.L4:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L46
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L47
.L46:
	call	reset_piece_square@PLT
	call	initialize_hash@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	setup_epd_line, .-setup_epd_line
	.section	.rodata
.LC0:
	.string	"bm"
.LC1:
	.string	"am"
	.align 8
.LC2:
	.string	"No best-move or avoid-move found!"
	.text
	.globl	check_solution
	.type	check_solution, @function
check_solution:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-272(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	comp_to_san@PLT
	addq	$32, %rsp
	movq	-280(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L50
	leaq	-272(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L51
	movl	$1, %eax
	jmp	.L55
.L51:
	movl	$0, %eax
	jmp	.L55
.L50:
	movq	-280(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L53
	leaq	-272(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	$1, %eax
	jmp	.L55
.L53:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
.L55:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	check_solution, .-check_solution
	.section	.rodata
.LC3:
	.string	"\nName of EPD testsuite: "
.LC4:
	.string	"\nTime per move (s): "
.LC5:
	.string	"r"
.LC7:
	.string	"\nNodes: %i (%0.2f%% qnodes)\n"
	.align 8
.LC9:
	.string	"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\n"
	.align 8
.LC10:
	.string	"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\n"
	.align 8
.LC11:
	.string	"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\n"
	.align 8
.LC12:
	.string	"Check extensions: %u  Razor drops : %u  Razor Material : %u\n"
.LC13:
	.string	"Move ordering : %f%%\n"
	.align 8
.LC14:
	.string	"Material score: %d  Eval : %d  MaxPosDiff: %d\n"
.LC15:
	.string	"Solution found."
.LC16:
	.string	"Solution not found."
.LC17:
	.string	"Solved: %d/%d\n"
	.text
	.globl	run_epd_testsuite
	.type	run_epd_testsuite, @function
run_epd_testsuite:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8184, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -8180(%rbp)
	movl	$0, -8176(%rbp)
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-4128(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-8128(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
	leaq	-8128(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movl	%eax, -8172(%rbp)
	movl	$10, %edi
	call	putchar@PLT
	movl	-8172(%rbp), %eax
	imull	$100, %eax, %eax
	movl	%eax, -8172(%rbp)
	leaq	-4128(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8168(%rbp)
	jmp	.L58
.L80:
	addl	$1, -8180(%rbp)
	leaq	-8128(%rbp), %rax
	movq	%rax, %rdi
	call	setup_epd_line
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, root_to_move(%rip)
	call	clear_tt@PLT
	call	initialize_hash@PLT
	movq	stdout(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_board@PLT
	movl	$0, forcedwin(%rip)
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L59
	movq	stdin(%rip), %rdx
	leaq	-6128(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
.L59:
	movl	-8172(%rbp), %eax
	movl	%eax, fixed_time(%rip)
	leaq	-8160(%rbp), %rax
	movq	%rax, %rdi
	call	think@PLT
	movl	qnodes(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movl	nodes(%rip), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	nodes(%rip), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	ECacheHits(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L60
	cvtsi2ssq	%rax, %xmm0
	jmp	.L61
.L60:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L61:
	movl	ECacheProbes(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L62
	cvtsi2ssq	%rax, %xmm1
	jmp	.L63
.L62:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L63:
	movss	.LC8(%rip), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	ECacheHits(%rip), %edx
	movl	ECacheProbes(%rip), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	TTHits(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L64
	cvtsi2ssq	%rax, %xmm0
	jmp	.L65
.L64:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L65:
	movl	TTProbes(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L66
	cvtsi2ssq	%rax, %xmm1
	jmp	.L67
.L66:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L67:
	movss	.LC8(%rip), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	TTHits(%rip), %ecx
	movl	TTProbes(%rip), %edx
	movl	TTStores(%rip), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	TExt(%rip), %ecx
	movl	NCuts(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L68
	cvtsi2ssq	%rax, %xmm0
	jmp	.L69
.L68:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L69:
	movss	.LC6(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movl	NTries(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L70
	cvtsi2ssq	%rax, %xmm0
	jmp	.L71
.L70:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L71:
	movss	.LC8(%rip), %xmm2
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	NCuts(%rip), %edx
	movl	NTries(%rip), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	razor_material(%rip), %ecx
	movl	razor_drop(%rip), %edx
	movl	ext_check(%rip), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	FHF(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L72
	cvtsi2ssq	%rax, %xmm0
	jmp	.L73
.L72:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L73:
	movss	.LC6(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movl	FH(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L74
	cvtsi2ssq	%rax, %xmm0
	jmp	.L75
.L74:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L75:
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	.LC8(%rip), %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	maxposdiff(%rip), %ebx
	movl	$1000000, %esi
	movl	$-1000000, %edi
	call	eval@PLT
	movl	%eax, %edx
	movl	Material(%rip), %eax
	movl	%ebx, %ecx
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	forcedwin(%rip), %eax
	testl	%eax, %eax
	jne	.L76
	leaq	-8128(%rbp), %rax
	subq	$8, %rsp
	pushq	-8144(%rbp)
	pushq	-8152(%rbp)
	pushq	-8160(%rbp)
	movq	%rax, %rdi
	call	check_solution
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L77
	addl	$1, -8176(%rbp)
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	jmp	.L79
.L77:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	jmp	.L79
.L76:
	addl	$1, -8176(%rbp)
.L79:
	movl	-8180(%rbp), %edx
	movl	-8176(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L58:
	movq	-8168(%rbp), %rdx
	leaq	-8128(%rbp), %rax
	movl	$2000, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L80
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	run_epd_testsuite, .-run_epd_testsuite
	.section	.rodata
.LC18:
	.string	"EPD: %s\n"
.LC19:
	.string	"Searching to %d ply\n"
	.text
	.globl	run_autotest
	.type	run_autotest, @function
run_autotest:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-344(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.L83
	movl	$1, %edi
	call	exit@PLT
.L83:
	call	rtime@PLT
	movq	%rax, -320(%rbp)
	jmp	.L84
.L86:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	setup_epd_line
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, root_to_move(%rip)
	call	clear_tt@PLT
	call	initialize_hash@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	stdout(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_board@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-328(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L85
	movl	$1, %edi
	call	exit@PLT
.L85:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -332(%rbp)
	movl	-332(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-332(%rbp), %eax
	movl	%eax, maxdepth(%rip)
	movl	$1000000, fixed_time(%rip)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	think@PLT
.L84:
	movq	-328(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L86
	call	rtime@PLT
	movq	%rax, -312(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8:
	.size	run_autotest, .-run_autotest
	.data
	.align 32
	.type	rankoffsets.3973, @object
	.size	rankoffsets.3973, 32
rankoffsets.3973:
	.long	110
	.long	98
	.long	86
	.long	74
	.long	62
	.long	50
	.long	38
	.long	26
	.section	.rodata
	.align 4
.LC6:
	.long	1120403456
	.align 4
.LC8:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
