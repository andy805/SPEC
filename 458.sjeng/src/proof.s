	.file	"proof.c"
	.text
	.comm	nodecount,4,4
	.comm	nodecount2,4,4
	.comm	pn2,4,4
	.comm	frees,4,4
	.comm	iters,4,4
	.comm	forwards,4,4
	.comm	maxply,4,4
	.comm	pn_time,4,4
	.comm	pn_move,24,16
	.comm	pn_saver,24,16
	.comm	kibitzed,4,4
	.comm	forcedwin,4,4
	.comm	rootlosers,1200,32
	.comm	alllosers,4,4
	.comm	membuff,8,8
	.globl	bufftop
	.bss
	.align 4
	.type	bufftop, @object
	.size	bufftop, 4
bufftop:
	.zero	4
	.text
	.globl	Xmalloc
	.type	Xmalloc, @function
Xmalloc:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	bufftop(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	bufftop(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, bufftop(%rip)
	movq	membuff(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Xmalloc, .-Xmalloc
	.globl	Xfree
	.type	Xfree, @function
Xfree:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, bufftop(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Xfree, .-Xfree
	.globl	freenodes
	.type	freenodes, @function
freenodes:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L11
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	je	.L7
	movl	$0, -4(%rbp)
	jmp	.L8
.L10:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	freenodes
.L9:
	addl	$1, -4(%rbp)
.L8:
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L10
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L4
.L11:
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	freenodes, .-freenodes
	.globl	pn_eval
	.type	pn_eval, @function
pn_eval:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	suicide_pn_eval
	jmp	.L16
.L13:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	losers_pn_eval
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	std_pn_eval
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pn_eval, .-pn_eval
	.globl	std_pn_eval
	.type	std_pn_eval, @function
std_pn_eval:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12336, %rsp
	movq	%rdi, -12328(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-12328(%rbp), %rax
	movb	$1, 3(%rax)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L18
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	jne	.L19
.L18:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L20
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L20
.L19:
	movl	$0, -12308(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12308(%rbp)
	movl	$1, -12316(%rbp)
	movl	$0, -12312(%rbp)
	jmp	.L21
.L24:
	movl	-12312(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12312(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L22
	movl	$0, -12316(%rbp)
	movl	-12312(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L23
.L22:
	movl	-12312(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12312(%rbp)
.L21:
	movl	-12312(%rbp), %eax
	cmpl	-12308(%rbp), %eax
	jl	.L24
.L23:
	cmpl	$1, -12316(%rbp)
	jne	.L25
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L26
	movq	-12328(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L29
.L26:
	movq	-12328(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L29
.L25:
	movq	-12328(%rbp), %rax
	movb	$2, (%rax)
	jmp	.L29
.L20:
	movq	-12328(%rbp), %rax
	movb	$2, (%rax)
.L29:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	std_pn_eval, .-std_pn_eval
	.globl	suicide_pn_eval
	.type	suicide_pn_eval, @function
suicide_pn_eval:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movb	$1, 3(%rax)
	movl	$1, -20(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L32
.L40:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L48
	addl	$1, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
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
	.long	.L36-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.long	.L38-.L37
	.long	.L36-.L37
	.long	.L38-.L37
	.text
.L36:
	addl	$1, -12(%rbp)
	jmp	.L35
.L38:
	addl	$1, -8(%rbp)
	nop
.L35:
	cmpl	$0, -12(%rbp)
	je	.L34
	cmpl	$0, -8(%rbp)
	jne	.L49
	jmp	.L34
.L48:
	nop
.L34:
	addl	$1, -20(%rbp)
.L32:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L40
	jmp	.L39
.L49:
	nop
.L39:
	cmpl	$0, -12(%rbp)
	jne	.L41
	movl	root_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-40(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L50
.L42:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L50
.L41:
	cmpl	$0, -8(%rbp)
	jne	.L45
	movl	root_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L46
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L50
.L46:
	movq	-40(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L50
.L45:
	movq	-40(%rbp), %rax
	movb	$2, (%rax)
.L50:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	suicide_pn_eval, .-suicide_pn_eval
	.globl	losers_pn_eval
	.type	losers_pn_eval, @function
losers_pn_eval:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12352, %rsp
	movq	%rdi, -12344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12316(%rbp)
	movl	$0, -12312(%rbp)
	movq	-12344(%rbp), %rax
	movb	$1, 3(%rax)
	movl	$1, -12324(%rbp)
	movl	$1, -12320(%rbp)
	jmp	.L52
.L60:
	movl	-12324(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12328(%rbp)
	cmpl	$0, -12328(%rbp)
	je	.L86
	addl	$1, -12320(%rbp)
	movl	-12328(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L55
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L57(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L57(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L57:
	.long	.L55-.L57
	.long	.L56-.L57
	.long	.L58-.L57
	.long	.L56-.L57
	.long	.L58-.L57
	.long	.L55-.L57
	.long	.L55-.L57
	.long	.L56-.L57
	.long	.L58-.L57
	.long	.L56-.L57
	.long	.L58-.L57
	.long	.L56-.L57
	.long	.L58-.L57
	.text
.L56:
	addl	$1, -12316(%rbp)
	jmp	.L55
.L58:
	addl	$1, -12312(%rbp)
	nop
.L55:
	cmpl	$0, -12316(%rbp)
	je	.L54
	cmpl	$0, -12312(%rbp)
	jne	.L87
	jmp	.L54
.L86:
	nop
.L54:
	addl	$1, -12324(%rbp)
.L52:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -12320(%rbp)
	jle	.L60
	jmp	.L59
.L87:
	nop
.L59:
	cmpl	$0, -12316(%rbp)
	jne	.L61
	movl	root_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L62
	movq	-12344(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L51
.L62:
	movq	-12344(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L51
.L61:
	cmpl	$0, -12312(%rbp)
	jne	.L65
	movl	root_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L66
	movq	-12344(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L51
.L66:
	movq	-12344(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L51
.L65:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L68
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	jne	.L69
.L68:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L70
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L70
.L69:
	movl	$1, captures(%rip)
	movl	$0, -12308(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12308(%rbp)
	movl	$0, captures(%rip)
	movl	$1, -12332(%rbp)
	movl	$0, -12328(%rbp)
	jmp	.L71
.L74:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12328(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L72
	movl	$0, -12332(%rbp)
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L73
.L72:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12328(%rbp)
.L71:
	movl	-12328(%rbp), %eax
	cmpl	-12308(%rbp), %eax
	jl	.L74
.L73:
	cmpl	$1, -12332(%rbp)
	jne	.L75
	movl	$0, captures(%rip)
	movl	$0, -12308(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12308(%rbp)
	movl	$0, -12328(%rbp)
	jmp	.L76
.L78:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12328(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L77
	movl	$0, -12332(%rbp)
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L75
.L77:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12328(%rbp)
.L76:
	movl	-12328(%rbp), %eax
	cmpl	-12308(%rbp), %eax
	jl	.L78
.L75:
	cmpl	$1, -12332(%rbp)
	jne	.L79
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L80
	movq	-12344(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L51
.L80:
	movq	-12344(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L51
.L79:
	movq	-12344(%rbp), %rax
	movb	$2, (%rax)
	jmp	.L51
.L70:
	movq	-12344(%rbp), %rax
	movb	$2, (%rax)
.L51:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	losers_pn_eval, .-losers_pn_eval
	.globl	select_most_proving
	.type	select_most_proving, @function
select_most_proving:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L89
.L96:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L90
	movl	$0, -12(%rbp)
	jmp	.L91
.L92:
	addl	$1, -12(%rbp)
.L91:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L92
	jmp	.L93
.L90:
	movl	$0, -12(%rbp)
	jmp	.L94
.L95:
	addl	$1, -12(%rbp)
.L94:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L95
.L93:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	ply(%rip), %edx
	movl	maxply(%rip), %eax
	cmpl	%eax, %edx
	jle	.L89
	movl	ply(%rip), %eax
	movl	%eax, maxply(%rip)
.L89:
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	jne	.L96
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	select_most_proving, .-select_most_proving
	.globl	set_proof_and_disproof_numbers
	.type	set_proof_and_disproof_numbers, @function
set_proof_and_disproof_numbers:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12352, %rsp
	movq	%rdi, -12344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-12344(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	je	.L99
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	je	.L100
	movl	$0, -12328(%rbp)
	movl	$100000000, -12324(%rbp)
	movl	$0, -12320(%rbp)
	jmp	.L101
.L104:
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	addl	%eax, -12328(%rbp)
	cmpl	$100000000, -12328(%rbp)
	jle	.L102
	movl	$100000000, -12328(%rbp)
.L102:
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -12324(%rbp)
	jle	.L103
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -12324(%rbp)
.L103:
	addl	$1, -12320(%rbp)
.L101:
	movq	-12344(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12320(%rbp)
	jl	.L104
	cmpl	$0, -12328(%rbp)
	je	.L105
	cmpl	$100000000, -12324(%rbp)
	jne	.L106
.L105:
	movl	forwards(%rip), %eax
	addl	$1, %eax
	movl	%eax, forwards(%rip)
	movl	$200, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$-1000000, %edx
	movl	$1000000, %esi
	movl	$999500, %edi
	call	StoreTT@PLT
	jmp	.L109
.L106:
	cmpl	$0, -12324(%rbp)
	je	.L108
	cmpl	$100000000, -12328(%rbp)
	jne	.L109
.L108:
	movl	forwards(%rip), %eax
	addl	$1, %eax
	movl	%eax, forwards(%rip)
	movl	$200, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$-1000000, %edx
	movl	$1000000, %esi
	movl	$-999500, %edi
	call	StoreTT@PLT
	jmp	.L109
.L100:
	movl	$0, -12324(%rbp)
	movl	$100000000, -12328(%rbp)
	movl	$0, -12320(%rbp)
	jmp	.L110
.L113:
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, -12324(%rbp)
	cmpl	$100000000, -12324(%rbp)
	jle	.L111
	movl	$100000000, -12324(%rbp)
.L111:
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -12328(%rbp)
	jle	.L112
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12320(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, -12328(%rbp)
.L112:
	addl	$1, -12320(%rbp)
.L110:
	movq	-12344(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12320(%rbp)
	jl	.L113
	cmpl	$0, -12328(%rbp)
	je	.L114
	cmpl	$100000000, -12324(%rbp)
	jne	.L115
.L114:
	movl	forwards(%rip), %eax
	addl	$1, %eax
	movl	%eax, forwards(%rip)
	movl	$200, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$-1000000, %edx
	movl	$1000000, %esi
	movl	$999500, %edi
	call	StoreTT@PLT
	jmp	.L109
.L115:
	cmpl	$0, -12324(%rbp)
	je	.L116
	cmpl	$100000000, -12328(%rbp)
	jne	.L109
.L116:
	movl	forwards(%rip), %eax
	addl	$1, %eax
	movl	%eax, forwards(%rip)
	movl	$200, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$-1000000, %edx
	movl	$1000000, %esi
	movl	$-999500, %edi
	call	StoreTT@PLT
.L109:
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movq	-12344(%rbp), %rax
	movl	-12328(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	-12324(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L98
.L99:
	movq	-12344(%rbp), %rax
	movzbl	3(%rax), %eax
	testb	%al, %al
	je	.L118
	movq	-12344(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L119
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	call	is_draw@PLT
	testl	%eax, %eax
	jne	.L120
	movl	ply(%rip), %eax
	cmpl	$200, %eax
	jle	.L121
.L120:
	movq	-12344(%rbp), %rax
	movl	$50000, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	$50000, 8(%rax)
	jmp	.L98
.L121:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L123
	movl	$0, -12312(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12312(%rbp)
	call	in_check@PLT
	movl	%eax, -12308(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L124
	movl	$0, -12316(%rbp)
	movl	$0, -12320(%rbp)
	jmp	.L125
.L127:
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
	je	.L126
	addl	$1, -12316(%rbp)
.L126:
	movl	-12320(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12320(%rbp)
.L125:
	movl	-12320(%rbp), %eax
	cmpl	-12312(%rbp), %eax
	jl	.L127
	jmp	.L129
.L124:
	movl	numb_moves(%rip), %eax
	movl	%eax, -12316(%rbp)
	jmp	.L129
.L123:
	movl	$0, -12316(%rbp)
	movl	$1, captures(%rip)
	movl	$0, -12312(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12312(%rbp)
	movl	$0, captures(%rip)
	call	in_check@PLT
	movl	%eax, -12308(%rbp)
	cmpl	$0, -12312(%rbp)
	je	.L130
	movl	$0, -12320(%rbp)
	jmp	.L131
.L133:
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
	je	.L132
	addl	$1, -12316(%rbp)
.L132:
	movl	-12320(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12320(%rbp)
.L131:
	movl	-12320(%rbp), %eax
	cmpl	-12312(%rbp), %eax
	jl	.L133
.L130:
	cmpl	$0, -12316(%rbp)
	jne	.L129
	movl	$0, captures(%rip)
	movl	$0, -12312(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12312(%rbp)
	movl	$0, -12320(%rbp)
	jmp	.L134
.L136:
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
	je	.L135
	addl	$1, -12316(%rbp)
.L135:
	movl	-12320(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12320(%rbp)
.L134:
	movl	-12320(%rbp), %eax
	cmpl	-12312(%rbp), %eax
	jl	.L136
.L129:
	cmpl	$0, -12316(%rbp)
	jne	.L137
	movq	-12344(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L98
.L137:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L139
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L140
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L140
	movl	ply(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L140:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L142
	movl	phase(%rip), %eax
	cmpl	$2, %eax
	jne	.L143
	movl	ply(%rip), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L143:
	movl	ply(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L142:
	movl	ply(%rip), %ecx
	movl	$458129845, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$458129845, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L139:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L145
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L145
	movl	ply(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L145:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L146
	movl	phase(%rip), %eax
	cmpl	$2, %eax
	jne	.L147
	movl	ply(%rip), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L147:
	movl	ply(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L146:
	movl	ply(%rip), %ecx
	movl	$458129845, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12316(%rbp), %eax
	addl	%eax, %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	ply(%rip), %ecx
	movl	$458129845, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L119:
	movq	-12344(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L150
	movq	-12344(%rbp), %rax
	movl	$100000000, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L98
.L150:
	movq	-12344(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L151
	movq	-12344(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	$100000000, 8(%rax)
	jmp	.L98
.L151:
	movq	-12344(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L98
	movq	-12344(%rbp), %rax
	movl	$50000, 4(%rax)
	movq	-12344(%rbp), %rax
	movl	$50000, 8(%rax)
	jmp	.L98
.L118:
	movq	-12344(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-12344(%rbp), %rax
	movl	8(%rax), %edx
	movq	-12344(%rbp), %rax
	movl	%edx, 4(%rax)
.L98:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L152
	call	__stack_chk_fail@PLT
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	set_proof_and_disproof_numbers, .-set_proof_and_disproof_numbers
	.globl	develop_node
	.type	develop_node, @function
develop_node:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12352, %rsp
	movq	%rdi, -12344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	in_check@PLT
	movl	%eax, -12316(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L154
	movl	$0, -12332(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12332(%rbp)
	jmp	.L155
.L154:
	movl	$1, captures(%rip)
	movl	$0, -12320(%rbp)
	movl	$0, -12332(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12332(%rbp)
	movl	$0, captures(%rip)
	movl	$0, -12328(%rbp)
	jmp	.L156
.L159:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12316(%rbp), %edx
	movl	-12328(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L157
	movl	$1, -12320(%rbp)
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L158
.L157:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12328(%rbp)
.L156:
	movl	-12328(%rbp), %eax
	cmpl	-12332(%rbp), %eax
	jl	.L159
.L158:
	cmpl	$0, -12320(%rbp)
	jne	.L155
	movl	$0, captures(%rip)
	movl	$0, -12332(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12332(%rbp)
.L155:
	movl	-12332(%rbp), %eax
	cltq
	sall	$3, %eax
	movl	%eax, %edi
	call	Xmalloc
	movq	%rax, %rdx
	movq	-12344(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$0, -12324(%rbp)
	movl	$0, -12328(%rbp)
	jmp	.L160
.L163:
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12316(%rbp), %edx
	movl	-12328(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L161
	movl	$56, %edi
	call	Xmalloc
	movq	%rax, -12312(%rbp)
	movq	-12312(%rbp), %rax
	movb	$0, (%rax)
	movq	-12312(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-12312(%rbp), %rax
	movl	8(%rax), %edx
	movq	-12312(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-12312(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-12312(%rbp), %rax
	movq	-12344(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-12312(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-12312(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-12312(%rbp), %rcx
	movl	-12328(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 48(%rcx)
	movq	-12344(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12324(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-12312(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -12324(%rbp)
	movq	-12312(%rbp), %rax
	movq	%rax, %rdi
	call	pn_eval
	movq	-12312(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L162
.L161:
	movl	-12328(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
.L162:
	addl	$1, -12328(%rbp)
.L160:
	movl	-12328(%rbp), %eax
	cmpl	-12332(%rbp), %eax
	jl	.L163
	movq	-12344(%rbp), %rax
	movb	$1, 2(%rax)
	movl	-12324(%rbp), %eax
	movl	%eax, %edx
	movq	-12344(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-12344(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	jne	.L164
	movq	-12344(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-12344(%rbp), %rax
	movb	$1, 3(%rax)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L165
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L165
	movq	-12344(%rbp), %rax
	movb	$3, (%rax)
	jmp	.L164
.L165:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L166
	movq	-12344(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L164
.L166:
	movq	-12344(%rbp), %rax
	movb	$0, (%rax)
.L164:
	movl	nodecount(%rip), %edx
	movl	-12332(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, nodecount(%rip)
	movl	frees(%rip), %edx
	movl	-12332(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, frees(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L167
	call	__stack_chk_fail@PLT
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	develop_node, .-develop_node
	.globl	update_ancestors
	.type	update_ancestors, @function
update_ancestors:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L169
.L171:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
.L170:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L169:
	cmpq	$0, -16(%rbp)
	jne	.L171
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L174
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	nop
.L174:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	update_ancestors, .-update_ancestors
	.globl	pn2_eval
	.type	pn2_eval, @function
pn2_eval:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, nodecount2(%rip)
	movl	$1, pn2(%rip)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	pn_eval
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L176
.L178:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	select_most_proving
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	develop_node
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	update_ancestors
.L176:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L177
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L177
	movl	nodecount2(%rip), %edx
	movl	nodecount(%rip), %eax
	cmpl	%eax, %edx
	jl	.L178
.L177:
	movq	-40(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-40(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$0, pn2(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	pn2_eval, .-pn2_eval
	.section	.rodata
.LC0:
	.string	"tellics kibitz Forced win!"
	.align 8
.LC1:
	.string	"tellics kibitz Forced win! (alt)"
	.align 8
.LC4:
	.string	"tellics whisper proof %d, disproof %d, %d losers, highest depth %d, primary %d, secondary %d\n"
.LC5:
	.string	"tellics whisper Forced reply"
	.text
	.globl	proofnumberscan
	.type	proofnumberscan, @function
proofnumberscan:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16496, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16472(%rbp)
	movl	$0, -16468(%rbp)
	call	rtime@PLT
	movq	%rax, -16432(%rbp)
	movl	PBSize(%rip), %eax
	cltq
	movl	$56, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, membuff(%rip)
	movl	$56, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -16424(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -16444(%rbp)
	movl	$0, alllosers(%rip)
	movl	$1200, %edx
	movl	$0, %esi
	leaq	rootlosers(%rip), %rdi
	call	memset@PLT
	leaq	-14352(%rbp), %rax
	movl	$2048, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
	movl	$0, -16480(%rbp)
	call	in_check@PLT
	movl	%eax, -16440(%rbp)
	movl	$0, -16488(%rbp)
	jmp	.L180
.L183:
	movl	-16488(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-16440(%rbp), %edx
	movl	-16488(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L181
	addl	$1, -16480(%rbp)
	movl	-16488(%rbp), %eax
	cltq
	movl	$1, -16400(%rbp,%rax,4)
	jmp	.L182
.L181:
	movl	-16488(%rbp), %eax
	cltq
	movl	$0, -16400(%rbp,%rax,4)
.L182:
	movl	-16488(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -16488(%rbp)
.L180:
	movl	-16488(%rbp), %eax
	cmpl	-16444(%rbp), %eax
	jl	.L183
	cmpl	$0, -16480(%rbp)
	jne	.L184
	call	Xfree
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16424(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L179
.L184:
	movl	$0, -16464(%rbp)
	movl	$1, nodecount(%rip)
	movl	$0, iters(%rip)
	movl	$0, maxply(%rip)
	movl	$0, forwards(%rip)
	movl	$0, -16460(%rbp)
	movl	$0, -16456(%rbp)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, root_to_move(%rip)
	movq	-16424(%rbp), %rax
	movq	%rax, %rdi
	call	pn_eval
	movq	-16424(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L186
	movq	-16424(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L187
.L186:
	call	Xfree
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16424(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L179
.L187:
	movq	-16424(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	jmp	.L188
.L203:
	movl	iters(%rip), %eax
	addl	$1, %eax
	movl	%eax, iters(%rip)
	movl	nodecount(%rip), %eax
	movl	%eax, -16436(%rbp)
	movl	nodecount(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$65, %eax
	jg	.L189
	addl	$1, -16460(%rbp)
	movq	-16424(%rbp), %rax
	movq	%rax, -16416(%rbp)
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	select_most_proving
	movq	%rax, -16408(%rbp)
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	develop_node
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	update_ancestors
	movl	$0, -16488(%rbp)
	jmp	.L190
.L191:
	addl	$1, -16488(%rbp)
.L190:
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16488(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movq	-16424(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L191
	movl	-16488(%rbp), %eax
	cltq
	movl	-14352(%rbp,%rax,4), %edx
	movl	nodecount(%rip), %eax
	subl	-16436(%rbp), %eax
	addl	%eax, %edx
	movl	-16488(%rbp), %eax
	cltq
	movl	%edx, -14352(%rbp,%rax,4)
	movq	-16424(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L192
	movq	-16424(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$100000000, %eax
	jne	.L192
	movl	$1, forcedwin(%rip)
	movl	kibitzed(%rip), %eax
	testl	%eax, %eax
	jne	.L193
	movl	$1, kibitzed(%rip)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L193:
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16488(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L188
.L192:
	movq	-16424(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L188
	movq	-16424(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$100000000, %eax
	jne	.L188
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
	addl	$1, -16464(%rbp)
	jmp	.L188
.L189:
	addl	$1, -16456(%rbp)
	movl	$100000000, -16476(%rbp)
	movl	$0, -16484(%rbp)
	movl	$0, -16488(%rbp)
	jmp	.L195
.L198:
	movl	-16488(%rbp), %eax
	cltq
	movl	-14352(%rbp,%rax,4), %eax
	cmpl	%eax, -16476(%rbp)
	jle	.L196
	movl	-16488(%rbp), %eax
	cltq
	movl	-16400(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L196
	movl	-16488(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L196
	movl	-16488(%rbp), %eax
	cltq
	movl	-14352(%rbp,%rax,4), %eax
	movl	%eax, -16476(%rbp)
	movl	-16488(%rbp), %eax
	movl	%eax, -16468(%rbp)
	movl	-16484(%rbp), %eax
	movl	%eax, -16472(%rbp)
.L196:
	movl	-16488(%rbp), %eax
	cltq
	movl	-16400(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L197
	addl	$1, -16484(%rbp)
.L197:
	addl	$1, -16488(%rbp)
.L195:
	movl	-16488(%rbp), %eax
	cmpl	-16444(%rbp), %eax
	jl	.L198
	cmpl	$100000000, -16476(%rbp)
	jne	.L199
	movl	nodecount(%rip), %eax
	addl	$30, %eax
	movl	%eax, nodecount(%rip)
	jmp	.L188
.L199:
	movl	-16468(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16416(%rbp)
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	select_most_proving
	movq	%rax, -16408(%rbp)
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	develop_node
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	update_ancestors
	movl	-16468(%rbp), %eax
	cltq
	movl	-14352(%rbp,%rax,4), %edx
	movl	nodecount(%rip), %eax
	subl	-16436(%rbp), %eax
	addl	%eax, %edx
	movl	-16468(%rbp), %eax
	cltq
	movl	%edx, -14352(%rbp,%rax,4)
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L200
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$100000000, %eax
	jne	.L200
	movl	$1, forcedwin(%rip)
	movl	kibitzed(%rip), %eax
	testl	%eax, %eax
	jne	.L201
	movl	$1, kibitzed(%rip)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L201:
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L188
.L200:
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L188
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16472(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$100000000, %eax
	jne	.L188
	movl	-16468(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	$1, (%rdx,%rax)
	addl	$1, -16464(%rbp)
.L188:
	call	rtime@PLT
	movq	%rax, %rdx
	movq	-16432(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rdifftime@PLT
	movl	%eax, %edx
	movl	pn_time(%rip), %eax
	cmpl	%eax, %edx
	jge	.L202
	call	interrupt@PLT
	testl	%eax, %eax
	jne	.L202
	movl	bufftop(%rip), %eax
	movl	%eax, %ecx
	movl	PBSize(%rip), %eax
	subl	$10000, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	cmpq	%rax, %rcx
	jnb	.L202
	movq	-16424(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L202
	movq	-16424(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L203
.L202:
	movl	$0, -16484(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -16452(%rbp)
	movl	$0, -16448(%rbp)
	movq	-16424(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	je	.L204
	movl	$0, -16488(%rbp)
	jmp	.L205
.L212:
	movl	-16488(%rbp), %eax
	cltq
	movl	-16400(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L206
	leaq	-16(%rbp), %rcx
	subq	$8, %rsp
	movl	-16488(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$12304, %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rcx, %rdi
	call	comp_to_san@PLT
	addq	$32, %rsp
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L207
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-16452(%rbp), %xmm0
	jbe	.L208
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16452(%rbp)
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
.L208:
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L211
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$100000000, %eax
	jne	.L211
	addl	$1, -16448(%rbp)
	jmp	.L211
.L207:
	movl	$1, forcedwin(%rip)
	movq	-16424(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16484(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -16452(%rbp)
.L211:
	addl	$1, -16484(%rbp)
.L206:
	addl	$1, -16488(%rbp)
.L205:
	movl	-16488(%rbp), %eax
	cmpl	-16444(%rbp), %eax
	jl	.L212
.L204:
	leaq	-16(%rbp), %rsi
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rcx
	movq	pn_move(%rip), %rax
	movq	8+pn_move(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+pn_move(%rip), %rax
	movq	%rax, 16(%rcx)
	movq	%rsi, %rdi
	call	comp_to_san@PLT
	addq	$32, %rsp
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L213
	movl	post(%rip), %eax
	testl	%eax, %eax
	je	.L213
	movl	maxply(%rip), %edi
	movq	-16424(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16424(%rbp), %rax
	movl	4(%rax), %eax
	movl	-16460(%rbp), %r8d
	movl	-16448(%rbp), %ecx
	subq	$8, %rsp
	movl	-16456(%rbp), %esi
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L213:
	movl	-16480(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16448(%rbp)
	jne	.L214
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, -16488(%rbp)
	jmp	.L215
.L217:
	movl	-16488(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rootlosers(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L216
	movl	-16488(%rbp), %eax
	cltq
	movl	-16400(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L216
	movl	$1, forcedwin(%rip)
	movl	-16488(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-12304(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L214
.L216:
	addl	$1, -16488(%rbp)
.L215:
	movl	-16488(%rbp), %eax
	cmpl	-16444(%rbp), %eax
	jl	.L217
.L214:
	movl	-16448(%rbp), %eax
	cmpl	-16480(%rbp), %eax
	jne	.L218
	movl	$1, alllosers(%rip)
.L218:
	call	Xfree
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16424(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
.L179:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L220
	call	__stack_chk_fail@PLT
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	proofnumberscan, .-proofnumberscan
	.section	.rodata
	.align 8
.LC7:
	.string	"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d MaxDepth: %d\n"
	.align 8
.LC8:
	.string	"tellics whisper proof %d, disproof %d, %d nodes, %d forwards, %d iters, highest depth %d\n"
.LC10:
	.string	"Time : %f\n"
.LC11:
	.string	"This position is WON."
.LC12:
	.string	"PV: "
.LC13:
	.string	"%s "
	.align 8
.LC14:
	.string	"\ntellics kibitz Forced win in %d moves.\n"
.LC15:
	.string	"\n1-0 {White mates}"
.LC16:
	.string	"\n0-1 {Black mates}"
.LC17:
	.string	"This position is LOST."
.LC18:
	.string	"This position is UNKNOWN."
	.text
	.globl	proofnumbersearch
	.type	proofnumbersearch, @function
proofnumbersearch:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, nodecount(%rip)
	movl	$0, iters(%rip)
	movl	$0, frees(%rip)
	movl	$1, ply(%rip)
	movl	$0, maxply(%rip)
	movl	$0, forwards(%rip)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, root_to_move(%rip)
	call	rtime@PLT
	movq	%rax, -16424(%rbp)
	movl	$56, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -16416(%rbp)
	movl	PBSize(%rip), %eax
	cltq
	movl	$56, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, membuff(%rip)
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	pn_eval
	movq	-16416(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L223
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
	call	Xfree
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L222
.L223:
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	movq	-16416(%rbp), %rax
	movq	%rax, -16432(%rbp)
	jmp	.L225
.L227:
	movq	-16432(%rbp), %rax
	movq	%rax, %rdi
	call	select_most_proving
	movq	%rax, -16408(%rbp)
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	develop_node
	movq	-16408(%rbp), %rax
	movq	%rax, %rdi
	call	update_ancestors
	movl	iters(%rip), %eax
	addl	$1, %eax
	movl	%eax, iters(%rip)
	movl	iters(%rip), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L225
	call	rtime@PLT
	movq	%rax, %rdx
	movq	-16424(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rdifftime@PLT
	movl	%eax, %edx
	movl	pn_time(%rip), %eax
	cmpl	%eax, %edx
	jle	.L225
	call	interrupt@PLT
	testl	%eax, %eax
	je	.L262
.L225:
	movq	-16416(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L226
	movq	-16416(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L226
	movl	bufftop(%rip), %eax
	movl	%eax, %ecx
	movl	PBSize(%rip), %eax
	subl	$10000, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	cmpq	%rax, %rcx
	jb	.L227
	jmp	.L226
.L262:
	nop
.L226:
	movl	maxply(%rip), %esi
	movl	iters(%rip), %r8d
	movl	nodecount(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	testq	%rax, %rax
	js	.L228
	cvtsi2ssq	%rax, %xmm0
	jmp	.L229
.L228:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L229:
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	frees(%rip), %edi
	movl	nodecount(%rip), %ecx
	movq	-16416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16416(%rbp), %rax
	movl	4(%rax), %eax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L230
	movl	post(%rip), %eax
	testl	%eax, %eax
	je	.L230
	movl	maxply(%rip), %esi
	movl	iters(%rip), %r8d
	movl	forwards(%rip), %edi
	movl	nodecount(%rip), %ecx
	movq	-16416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16416(%rbp), %rax
	movl	4(%rax), %eax
	subq	$8, %rsp
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L230:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	jne	.L232
	call	rtime@PLT
	movq	%rax, %rdx
	movq	-16424(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rdifftime@PLT
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC9(%rip), %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L232
.L233:
	movq	-16432(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movq	-16432(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16432(%rbp)
.L232:
	movq	-16432(%rbp), %rax
	cmpq	-16416(%rbp), %rax
	jne	.L233
	movq	-16416(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L234
	movq	-16416(%rbp), %rax
	movb	$1, (%rax)
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16400(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-8208(%rbp), %rax
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, ply(%rip)
	jmp	.L235
.L243:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	root_to_move(%rip), %eax
	cmpl	%eax, %edx
	jne	.L236
	movl	$0, -16444(%rbp)
	jmp	.L237
.L238:
	addl	$1, -16444(%rbp)
.L237:
	movq	-16432(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movq	-16432(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L238
	jmp	.L239
.L236:
	movl	$0, -16444(%rbp)
	jmp	.L240
.L241:
	addl	$1, -16444(%rbp)
.L240:
	movq	-16432(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	movq	-16432(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L241
.L239:
	movq	-16432(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16432(%rbp)
	leaq	-16400(%rbp), %rdx
	subq	$8, %rsp
	movq	-16432(%rbp), %rax
	pushq	48(%rax)
	pushq	40(%rax)
	pushq	32(%rax)
	movq	%rdx, %rdi
	call	comp_to_coord@PLT
	addq	$32, %rsp
	leaq	-16400(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16400(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-8208(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-8208(%rbp), %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
	movq	-16432(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	ply(%rip), %eax
	cmpl	$1, %eax
	jne	.L242
	movq	-16432(%rbp), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
.L242:
	movl	$1, forcedwin(%rip)
.L235:
	movq	-16432(%rbp), %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	jne	.L243
	movl	ply(%rip), %eax
	movl	%eax, -16436(%rbp)
	jmp	.L244
.L245:
	movq	-16432(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movq	-16432(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16432(%rbp)
.L244:
	movq	-16432(%rbp), %rax
	cmpq	-16416(%rbp), %rax
	jne	.L245
	movl	kibitzed(%rip), %eax
	testl	%eax, %eax
	jne	.L246
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L246
	movl	post(%rip), %eax
	testl	%eax, %eax
	je	.L246
	movl	$1, kibitzed(%rip)
	movl	-16436(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L246:
	cmpl	$1, -16436(%rbp)
	jne	.L247
	movq	-16416(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L248
	movq	-16416(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L247
.L248:
	movl	root_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L249
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$3, result(%rip)
	jmp	.L247
.L249:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$2, result(%rip)
.L247:
	movl	$10, %edi
	call	putchar@PLT
	jmp	.L250
.L234:
	movq	-16416(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L251
	movq	-16416(%rbp), %rax
	movb	$0, (%rax)
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L250
.L251:
	movq	-16416(%rbp), %rax
	movb	$2, (%rax)
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movq	dummy(%rip), %rax
	movq	8+dummy(%rip), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	16+dummy(%rip), %rax
	movq	%rax, 16+pn_move(%rip)
.L250:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -16440(%rbp)
	movl	$0, -16444(%rbp)
	jmp	.L252
.L258:
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L253
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-16440(%rbp), %xmm0
	jbe	.L256
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16440(%rbp)
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L256
.L253:
	movq	-16416(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16444(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdx
	movq	%rax, pn_move(%rip)
	movq	%rdx, 8+pn_move(%rip)
	movq	48(%rcx), %rax
	movq	%rax, 16+pn_move(%rip)
	jmp	.L257
.L256:
	addl	$1, -16444(%rbp)
.L252:
	movq	-16416(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -16444(%rbp)
	jl	.L258
.L257:
	movq	pn_move(%rip), %rax
	movq	8+pn_move(%rip), %rdx
	movq	%rax, pn_saver(%rip)
	movq	%rdx, 8+pn_saver(%rip)
	movq	16+pn_move(%rip), %rax
	movq	%rax, 16+pn_saver(%rip)
	movq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	call	Xfree
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
.L222:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L260
	call	__stack_chk_fail@PLT
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	proofnumbersearch, .-proofnumbersearch
	.section	.rodata
	.align 8
.LC19:
	.string	"P: %d D: %d N: %d S: %d Mem: %2.2fM Iters: %d\n"
	.text
	.globl	proofnumbercheck
	.type	proofnumbercheck, @function
proofnumbercheck:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	piece_count(%rip), %eax
	cmpl	$3, %eax
	jg	.L264
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L264
	movq	-72(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	32(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L263
.L264:
	movl	$0, nodecount(%rip)
	movl	$0, iters(%rip)
	movl	$0, frees(%rip)
	movl	$1, ply(%rip)
	movl	$0, maxply(%rip)
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	make@PLT
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, root_to_move(%rip)
	call	rtime@PLT
	movq	%rax, -56(%rbp)
	movl	$56, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -48(%rbp)
	movl	PBSize(%rip), %eax
	cltq
	movl	$56, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, membuff(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	pn_eval
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	set_proof_and_disproof_numbers
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L266
.L268:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	select_most_proving
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	develop_node
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	update_ancestors
	movl	iters(%rip), %eax
	addl	$1, %eax
	movl	%eax, iters(%rip)
	movl	iters(%rip), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L266
	call	rtime@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rdifftime@PLT
	movl	%eax, %edx
	movl	pn_time(%rip), %eax
	cmpl	%eax, %edx
	jg	.L277
.L266:
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L267
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L267
	movl	bufftop(%rip), %eax
	movl	%eax, %ecx
	movl	PBSize(%rip), %eax
	subl	$10000, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	cmpq	%rax, %rcx
	jb	.L268
	jmp	.L267
.L277:
	nop
.L267:
	movl	iters(%rip), %edi
	movl	nodecount(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	testq	%rax, %rax
	js	.L269
	cvtsi2ssq	%rax, %xmm0
	jmp	.L270
.L269:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L270:
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	frees(%rip), %esi
	movl	nodecount(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC19(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L271
.L272:
	movq	-64(%rbp), %rax
	addq	$32, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.L271:
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L272
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	unmake@PLT
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L273
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movq	pn_move(%rip), %rax
	movq	8+pn_move(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16+pn_move(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$1, s_threat(%rip)
	jmp	.L274
.L273:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L275
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L274
.L275:
	movq	-48(%rbp), %rax
	movb	$2, (%rax)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L274:
	call	Xfree
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	membuff(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
.L263:
	movq	-72(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	proofnumbercheck, .-proofnumbercheck
	.section	.rodata
	.align 4
.LC2:
	.long	3212836864
	.align 4
.LC3:
	.long	1287568416
	.align 4
.LC6:
	.long	1233125376
	.align 8
.LC9:
	.long	0
	.long	1079574528
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
