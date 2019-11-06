	.file	"seval.c"
	.text
	.data
	.align 32
	.type	scentral, @object
	.size	scentral, 576
scentral:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	2
	.long	15
	.long	15
	.long	15
	.long	15
	.long	2
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	7
	.long	15
	.long	25
	.long	25
	.long	15
	.long	7
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	7
	.long	15
	.long	25
	.long	25
	.long	15
	.long	7
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	2
	.long	15
	.long	15
	.long	15
	.long	15
	.long	2
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
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
	.section	.rodata
	.align 16
	.type	rook_o, @object
	.size	rook_o, 16
rook_o:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o, @object
	.size	bishop_o, 16
bishop_o:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o, @object
	.size	knight_o, 32
knight_o:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	king_o, @object
	.size	king_o, 32
king_o:
	.long	13
	.long	12
	.long	11
	.long	1
	.long	-1
	.long	-11
	.long	-12
	.long	-13
	.text
	.type	s_bishop_mobility, @function
s_bishop_mobility:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	movl	$0, %r12d
	movl	-20(%rbp), %eax
	leal	-13(%rax), %ebx
	jmp	.L2
.L3:
	addl	$1, %r12d
	subl	$13, %ebx
.L2:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L3
	movl	-20(%rbp), %eax
	leal	-11(%rax), %ebx
	jmp	.L4
.L5:
	addl	$1, %r12d
	subl	$11, %ebx
.L4:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L5
	movl	-20(%rbp), %eax
	leal	11(%rax), %ebx
	jmp	.L6
.L7:
	addl	$1, %r12d
	addl	$11, %ebx
.L6:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L7
	movl	-20(%rbp), %eax
	leal	13(%rax), %ebx
	jmp	.L8
.L9:
	addl	$1, %r12d
	addl	$13, %ebx
.L8:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L9
	leal	0(,%r12,4), %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	s_bishop_mobility, .-s_bishop_mobility
	.type	s_rook_mobility, @function
s_rook_mobility:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	movl	$0, %r12d
	movl	-20(%rbp), %eax
	leal	-12(%rax), %ebx
	jmp	.L12
.L13:
	addl	$1, %r12d
	subl	$12, %ebx
.L12:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L13
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ebx
	jmp	.L14
.L15:
	addl	$1, %r12d
	subl	$1, %ebx
.L14:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L15
	movl	-20(%rbp), %eax
	leal	1(%rax), %ebx
	jmp	.L16
.L17:
	addl	$1, %r12d
	addl	$1, %ebx
.L16:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L17
	movl	-20(%rbp), %eax
	leal	12(%rax), %ebx
	jmp	.L18
.L19:
	addl	$1, %r12d
	addl	$12, %ebx
.L18:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L19
	leal	0(,%r12,4), %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	s_rook_mobility, .-s_rook_mobility
	.type	s_knight_mobility, @function
s_knight_mobility:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	movl	$0, %r12d
	movl	$0, %ebx
	jmp	.L22
.L24:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L23
	addl	$1, %r12d
.L23:
	addl	$1, %ebx
.L22:
	cmpl	$7, %ebx
	jle	.L24
	leal	0(,%r12,4), %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	s_knight_mobility, .-s_knight_mobility
	.type	s_pawn_mobility, @function
s_pawn_mobility:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	$0, %ebx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L27
	movl	-12(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L29
	addl	$1, %ebx
	jmp	.L29
.L27:
	movl	-12(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L29
	addl	$1, %ebx
.L29:
	leal	0(,%rbx,8), %eax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	s_pawn_mobility, .-s_pawn_mobility
	.type	s_king_mobility, @function
s_king_mobility:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -20(%rbp)
	movl	$0, %r12d
	movl	$0, %ebx
	jmp	.L32
.L34:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	king_o(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L33
	addl	$1, %r12d
.L33:
	addl	$1, %ebx
.L32:
	cmpl	$7, %ebx
	jle	.L34
	leal	0(,%r12,4), %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	s_king_mobility, .-s_king_mobility
	.type	black_saccers, @function
black_saccers:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	$0, %ebx
	movl	-20(%rbp), %eax
	addl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L37
	movl	-20(%rbp), %eax
	addl	$22, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L37
	movl	-20(%rbp), %eax
	addl	$26, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L38
.L37:
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jg	.L40
	movl	-20(%rbp), %eax
	addl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L41
	movl	-20(%rbp), %eax
	addl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L40
.L41:
	movl	$1, %ebx
	jmp	.L42
.L40:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	jne	.L42
	movl	-20(%rbp), %eax
	addl	$35, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L43
	movl	-20(%rbp), %eax
	addl	$37, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L42
.L43:
	movl	$1, %ebx
.L42:
	testl	%ebx, %ebx
	jne	.L44
	movl	-20(%rbp), %eax
	addl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
.L44:
	testl	%ebx, %ebx
	jne	.L45
	movl	-20(%rbp), %eax
	addl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L46
	movl	$2, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	movl	%eax, %ebx
.L45:
	testl	%ebx, %ebx
	jne	.L48
	movl	$0, %eax
	jmp	.L39
.L48:
	cmpl	$1, %ebx
	jne	.L49
	movl	-20(%rbp), %eax
	addl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	cmpl	$1, %eax
	jle	.L50
	movl	$0, %eax
	jmp	.L39
.L50:
	movl	$30, %eax
	jmp	.L39
.L49:
	movl	-20(%rbp), %eax
	addl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	cmpl	$1, %eax
	jle	.L51
	movl	$0, %eax
	jmp	.L39
.L51:
	movl	$30, %eax
.L39:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	black_saccers, .-black_saccers
	.type	white_saccers, @function
white_saccers:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	$0, %ebx
	movl	-20(%rbp), %eax
	subl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L53
	movl	-20(%rbp), %eax
	subl	$22, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L53
	movl	-20(%rbp), %eax
	subl	$26, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jle	.L56
	movl	-20(%rbp), %eax
	subl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L57
	movl	-20(%rbp), %eax
	subl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L56
.L57:
	movl	$1, %ebx
	jmp	.L58
.L56:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L58
	movl	-20(%rbp), %eax
	subl	$35, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L59
	movl	-20(%rbp), %eax
	subl	$37, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L58
.L59:
	movl	$1, %ebx
.L58:
	testl	%ebx, %ebx
	jne	.L60
	movl	-20(%rbp), %eax
	subl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
.L60:
	testl	%ebx, %ebx
	jne	.L61
	movl	-20(%rbp), %eax
	subl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L62
	movl	$2, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	movl	%eax, %ebx
.L61:
	testl	%ebx, %ebx
	jne	.L64
	movl	$0, %eax
	jmp	.L55
.L64:
	cmpl	$1, %ebx
	jne	.L65
	movl	-20(%rbp), %eax
	subl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	cmpl	$1, %eax
	jle	.L66
	movl	$0, %eax
	jmp	.L55
.L66:
	movl	$30, %eax
	jmp	.L55
.L65:
	movl	-20(%rbp), %eax
	subl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	calc_attackers@PLT
	cmpl	$1, %eax
	jle	.L67
	movl	$0, %eax
	jmp	.L55
.L67:
	movl	$30, %eax
.L55:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	white_saccers, .-white_saccers
	.globl	suicide_eval
	.type	suicide_eval, @function
suicide_eval:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	suicide_mid_eval
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	suicide_eval, .-suicide_eval
	.globl	suicide_mid_eval
	.type	suicide_mid_eval, @function
suicide_mid_eval:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -276(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -212(%rbp)
	movl	$0, -208(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -272(%rbp)
	leaq	-272(%rbp), %rdx
	leaq	-276(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	checkECache@PLT
	movl	-272(%rbp), %eax
	testl	%eax, %eax
	je	.L71
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L72
	movl	-276(%rbp), %eax
	jmp	.L119
.L72:
	movl	-276(%rbp), %eax
	negl	%eax
	jmp	.L119
.L71:
	movl	Material(%rip), %eax
	movl	%eax, -276(%rbp)
	leaq	-96(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -260(%rbp)
	jmp	.L74
.L75:
	movl	-260(%rbp), %eax
	cltq
	movl	$7, -192(%rbp,%rax,4)
	movl	-260(%rbp), %eax
	cltq
	movl	$2, -144(%rbp,%rax,4)
	addl	$1, -260(%rbp)
.L74:
	cmpl	$10, -260(%rbp)
	jle	.L75
	movl	$1, -252(%rbp)
	movl	$1, -256(%rbp)
	jmp	.L76
.L81:
	movl	-252(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -260(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L121
	addl	$1, -256(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L79
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	%edx, -96(%rbp,%rax,4)
	movl	-200(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jge	.L78
	movl	-200(%rbp), %eax
	cltq
	movl	-196(%rbp), %edx
	movl	%edx, -192(%rbp,%rax,4)
	jmp	.L78
.L79:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L78
	movl	-200(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-200(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-200(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jle	.L78
	movl	-200(%rbp), %eax
	cltq
	movl	-196(%rbp), %edx
	movl	%edx, -144(%rbp,%rax,4)
	jmp	.L78
.L121:
	nop
.L78:
	addl	$1, -252(%rbp)
.L76:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -256(%rbp)
	jle	.L81
	movl	$1, -252(%rbp)
	movl	$1, -256(%rbp)
	jmp	.L82
.L116:
	movl	-252(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -260(%rbp)
	cmpl	$0, -260(%rbp)
	je	.L122
	addl	$1, -256(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -196(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L84
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L86(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L86(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L86:
	.long	.L84-.L86
	.long	.L85-.L86
	.long	.L87-.L86
	.long	.L88-.L86
	.long	.L89-.L86
	.long	.L90-.L86
	.long	.L91-.L86
	.long	.L92-.L86
	.long	.L93-.L86
	.long	.L94-.L86
	.long	.L95-.L86
	.long	.L96-.L86
	.long	.L97-.L86
	.text
.L85:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_pawn_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	black_saccers
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -208(%rbp)
	movl	$0, -268(%rbp)
	movl	$0, -264(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jge	.L98
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jge	.L98
	movl	-276(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -276(%rbp)
	movl	$1, -264(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L98
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L98
	movl	-276(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -276(%rbp)
	movl	$1, -268(%rbp)
.L98:
	movl	-200(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L99
	cmpl	$0, -264(%rbp)
	je	.L100
	movl	-276(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -276(%rbp)
.L100:
	cmpl	$0, -268(%rbp)
	je	.L99
	movl	-276(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -276(%rbp)
.L99:
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L101
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sall	$4, %eax
	subl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
.L101:
	movl	-200(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L102
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jl	.L102
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jl	.L102
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	30(%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L103
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L104
.L103:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
.L104:
	cmpl	$0, -268(%rbp)
	jne	.L102
	movl	-276(%rbp), %eax
	addl	$6, %eax
	movl	%eax, -276(%rbp)
.L102:
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L123
	movl	-276(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -276(%rbp)
	jmp	.L123
.L87:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_pawn_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	white_saccers
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	$0, -268(%rbp)
	movl	$0, -264(%rbp)
	addl	$1, -204(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jle	.L106
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jle	.L106
	movl	-276(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -276(%rbp)
	movl	$1, -264(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L106
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L106
	movl	-276(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -276(%rbp)
	movl	$1, -268(%rbp)
.L106:
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L107
	cmpl	$0, -264(%rbp)
	je	.L108
	movl	-276(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -276(%rbp)
.L108:
	cmpl	$0, -268(%rbp)
	je	.L107
	movl	-276(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -276(%rbp)
.L107:
	movl	-200(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L109
	movl	-200(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	-1(%rax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
.L109:
	movl	-200(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L110
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jg	.L110
	movl	-200(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jg	.L110
	movl	-276(%rbp), %ecx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$30, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L111
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L112
.L111:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	$9, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
.L112:
	cmpl	$0, -268(%rbp)
	jne	.L110
	movl	-276(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -276(%rbp)
.L110:
	movl	-200(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L124
	movl	-276(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -276(%rbp)
	jmp	.L124
.L92:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_rook_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -224(%rbp)
	jmp	.L84
.L93:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_rook_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -220(%rbp)
	jmp	.L84
.L96:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_bishop_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	cmpl	$0, -248(%rbp)
	je	.L114
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sqcolor(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -240(%rbp)
	je	.L114
	movl	$99, -248(%rbp)
.L114:
	addl	$1, -248(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sqcolor(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -240(%rbp)
	jmp	.L84
.L97:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_bishop_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	cmpl	$0, -244(%rbp)
	je	.L115
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sqcolor(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -236(%rbp)
	je	.L115
	movl	$99, -244(%rbp)
.L115:
	addl	$1, -244(%rbp)
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sqcolor(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -236(%rbp)
	jmp	.L84
.L88:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_knight_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -216(%rbp)
	jmp	.L84
.L89:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_knight_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -212(%rbp)
	jmp	.L84
.L94:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_rook_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_bishop_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	jmp	.L84
.L95:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_rook_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_bishop_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	jmp	.L84
.L90:
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	scentral(%rip), %rax
	movl	(%rdx,%rax), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_king_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -232(%rbp)
	jmp	.L84
.L91:
	movl	-276(%rbp), %edx
	movl	-260(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	scentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	sarl	%eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	s_king_mobility
	movl	%eax, %edx
	movl	-276(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -276(%rbp)
	addl	$1, -228(%rbp)
	jmp	.L84
.L122:
	nop
	jmp	.L84
.L123:
	nop
	jmp	.L84
.L124:
	nop
.L84:
	addl	$1, -252(%rbp)
.L82:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -256(%rbp)
	jle	.L116
	cmpl	$98, -248(%rbp)
	jg	.L117
	cmpl	$98, -244(%rbp)
	jg	.L117
	movl	-240(%rbp), %eax
	cmpl	-236(%rbp), %eax
	je	.L117
	movl	piece_count(%rip), %eax
	cmpl	$31, %eax
	jg	.L117
	movl	-276(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	movl	piece_count(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LC0(%rip), %xmm2
	divss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -276(%rbp)
.L117:
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	storeECache@PLT
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L118
	movl	-276(%rbp), %eax
	jmp	.L119
.L118:
	movl	-276(%rbp), %eax
	negl	%eax
.L119:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L120
	call	__stack_chk_fail@PLT
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	suicide_mid_eval, .-suicide_mid_eval
	.section	.rodata
	.align 4
.LC0:
	.long	1107296256
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
