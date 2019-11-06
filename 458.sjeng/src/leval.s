	.file	"leval.c"
	.text
	.data
	.align 32
	.type	lcentral, @object
	.size	lcentral, 576
lcentral:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	30
	.long	30
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	30
	.long	30
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	0
	.long	3
	.long	5
	.long	5
	.long	3
	.long	0
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
	.long	-15
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
	.text
	.type	l_bishop_mobility, @function
l_bishop_mobility:
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
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	l_bishop_mobility, .-l_bishop_mobility
	.type	l_rook_mobility, @function
l_rook_mobility:
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
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	l_rook_mobility, .-l_rook_mobility
	.type	l_knight_mobility, @function
l_knight_mobility:
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
	leaq	knight_o.4002(%rip), %rax
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
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	l_knight_mobility, .-l_knight_mobility
	.type	l_pawn_mobility, @function
l_pawn_mobility:
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
	movl	%ebx, %eax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	l_pawn_mobility, .-l_pawn_mobility
	.type	l_king_mobility, @function
l_king_mobility:
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
	leaq	king_o.4015(%rip), %rax
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
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	l_king_mobility, .-l_king_mobility
	.globl	losers_eval
	.type	losers_eval, @function
losers_eval:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -252(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -260(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -212(%rbp)
	movl	$0, -208(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -256(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-260(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	checkECache@PLT
	movl	-256(%rbp), %eax
	testl	%eax, %eax
	je	.L37
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L38
	movl	-260(%rbp), %eax
	jmp	.L93
.L38:
	movl	-260(%rbp), %eax
	negl	%eax
	jmp	.L93
.L37:
	leaq	-96(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -236(%rbp)
	jmp	.L40
.L41:
	movl	-236(%rbp), %eax
	cltq
	movl	$7, -192(%rbp,%rax,4)
	movl	-236(%rbp), %eax
	cltq
	movl	$2, -144(%rbp,%rax,4)
	addl	$1, -236(%rbp)
.L40:
	cmpl	$10, -236(%rbp)
	jle	.L41
	movl	$1, -228(%rbp)
	movl	$1, -232(%rbp)
	jmp	.L42
.L47:
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.L95
	addl	$1, -232(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -252(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L45
	movl	-248(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	%edx, -96(%rbp,%rax,4)
	movl	-248(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jge	.L44
	movl	-248(%rbp), %eax
	cltq
	movl	-252(%rbp), %edx
	movl	%edx, -192(%rbp,%rax,4)
	jmp	.L44
.L45:
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L44
	movl	-248(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-248(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jle	.L44
	movl	-248(%rbp), %eax
	cltq
	movl	-252(%rbp), %edx
	movl	%edx, -144(%rbp,%rax,4)
	jmp	.L44
.L95:
	nop
.L44:
	addl	$1, -228(%rbp)
.L42:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -232(%rbp)
	jle	.L47
	movl	$1, -228(%rbp)
	movl	$1, -232(%rbp)
	jmp	.L48
.L82:
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.L96
	addl	$1, -232(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L50
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L52(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L52(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L52:
	.long	.L50-.L52
	.long	.L51-.L52
	.long	.L53-.L52
	.long	.L54-.L52
	.long	.L55-.L52
	.long	.L56-.L52
	.long	.L57-.L52
	.long	.L58-.L52
	.long	.L59-.L52
	.long	.L60-.L52
	.long	.L61-.L52
	.long	.L62-.L52
	.long	.L63-.L52
	.text
.L51:
	addl	$1, -224(%rbp)
	addl	$1, -200(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_pawn_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	$2, %eax
	leal	0(,%rax,8), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jge	.L64
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jge	.L64
	movl	-260(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -260(%rbp)
	movl	$1, -240(%rbp)
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L64
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L64
	movl	-260(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -260(%rbp)
	movl	$1, -244(%rbp)
.L64:
	movl	-248(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L65
	cmpl	$0, -240(%rbp)
	je	.L66
	movl	-260(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -260(%rbp)
.L66:
	cmpl	$0, -244(%rbp)
	je	.L65
	movl	-260(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -260(%rbp)
.L65:
	movl	-248(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L67
	movl	-260(%rbp), %eax
	movl	-248(%rbp), %edx
	movslq	%edx, %rdx
	addq	$11, %rdx
	movl	-96(%rbp,%rdx,4), %edx
	subl	$1, %edx
	sall	$3, %edx
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
.L67:
	movl	-248(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L68
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jl	.L68
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jl	.L68
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-2(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	leal	25(%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L69
	movl	-260(%rbp), %eax
	addl	$50, %eax
	movl	%eax, -260(%rbp)
.L69:
	addl	$1, -208(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L70
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L71
.L70:
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
.L71:
	cmpl	$0, -244(%rbp)
	jne	.L68
	movl	-260(%rbp), %eax
	addl	$24, %eax
	movl	%eax, -260(%rbp)
.L68:
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L97
	movl	-260(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -260(%rbp)
	jmp	.L97
.L53:
	addl	$1, -220(%rbp)
	addl	$1, -196(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	lcentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_pawn_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	$7, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -240(%rbp)
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jle	.L73
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jle	.L73
	movl	-260(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -260(%rbp)
	movl	$1, -240(%rbp)
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L73
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L73
	movl	-260(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -260(%rbp)
	movl	$1, -244(%rbp)
.L73:
	movl	-248(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L74
	cmpl	$0, -240(%rbp)
	je	.L75
	movl	-260(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -260(%rbp)
.L75:
	cmpl	$0, -244(%rbp)
	je	.L74
	movl	-260(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -260(%rbp)
.L74:
	movl	-248(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	$1, %eax
	jle	.L76
	movl	-248(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	subl	$1, %eax
	leal	0(,%rax,8), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
.L76:
	movl	-248(%rbp), %eax
	cltq
	addq	$11, %rax
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L77
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jg	.L77
	movl	-248(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	cmpl	%eax, -252(%rbp)
	jg	.L77
	movl	-260(%rbp), %ecx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	$25, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L78
	movl	-260(%rbp), %eax
	subl	$50, %eax
	movl	%eax, -260(%rbp)
.L78:
	addl	$1, -204(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L79
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	jne	.L80
.L79:
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
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
	movl	%eax, -260(%rbp)
.L80:
	cmpl	$0, -244(%rbp)
	jne	.L77
	movl	-260(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -260(%rbp)
.L77:
	movl	-248(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L98
	movl	-260(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -260(%rbp)
	jmp	.L98
.L58:
	addl	$1, -224(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_rook_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L59:
	addl	$1, -220(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_rook_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	lcentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L62:
	addl	$1, -224(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_bishop_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L63:
	addl	$1, -220(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_bishop_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	lcentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L54:
	addl	$1, -224(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_knight_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L55:
	addl	$1, -220(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	lcentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_knight_mobility
	leal	0(,%rax,4), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L60:
	addl	$1, -224(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_bishop_mobility
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_rook_mobility
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L61:
	addl	$1, -220(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_bishop_mobility
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_rook_mobility
	leal	(%rax,%rax), %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %edx
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	lcentral(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L56:
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %eax
	movl	%eax, -216(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_king_mobility
	movl	%eax, %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L57:
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	lcentral(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %eax
	movl	%eax, -212(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, %edi
	call	l_king_mobility
	movl	%eax, %edx
	movl	-260(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L50
.L96:
	nop
	jmp	.L50
.L97:
	nop
	jmp	.L50
.L98:
	nop
.L50:
	addl	$1, -228(%rbp)
.L48:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -232(%rbp)
	jle	.L82
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %eax
	addl	%edx, %eax
	cmpl	$10, %eax
	jle	.L83
	movl	-260(%rbp), %edx
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -260(%rbp)
.L83:
	movl	Material(%rip), %eax
	cmpl	$-900, %eax
	jl	.L84
	movl	Material(%rip), %eax
	cmpl	$900, %eax
	jg	.L84
	movl	-260(%rbp), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L85
.L84:
	movl	Material(%rip), %eax
	testl	%eax, %eax
	jle	.L86
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L86
	cmpl	$0, -208(%rbp)
	jne	.L86
	movl	Material(%rip), %eax
	movl	$1800, %edx
	subl	%eax, %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L85
.L86:
	movl	Material(%rip), %eax
	testl	%eax, %eax
	jns	.L87
	movl	comp_color(%rip), %eax
	testl	%eax, %eax
	jne	.L87
	cmpl	$0, -204(%rbp)
	jne	.L87
	movl	Material(%rip), %eax
	movl	$-1800, %edx
	subl	%eax, %edx
	movl	-260(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
	jmp	.L85
.L87:
	movl	-260(%rbp), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -260(%rbp)
.L85:
	cmpl	$0, -200(%rbp)
	jne	.L88
	movl	-260(%rbp), %eax
	addl	$200, %eax
	movl	%eax, -260(%rbp)
	jmp	.L89
.L88:
	cmpl	$0, -196(%rbp)
	jne	.L89
	movl	-260(%rbp), %eax
	subl	$200, %eax
	movl	%eax, -260(%rbp)
.L89:
	cmpl	$0, -224(%rbp)
	jne	.L90
	movl	$1000000, -260(%rbp)
	jmp	.L91
.L90:
	cmpl	$0, -220(%rbp)
	jne	.L91
	movl	$-1000000, -260(%rbp)
.L91:
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	storeECache@PLT
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L92
	movl	-260(%rbp), %eax
	jmp	.L93
.L92:
	movl	-260(%rbp), %eax
	negl	%eax
.L93:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	losers_eval, .-losers_eval
	.section	.rodata
	.align 32
	.type	knight_o.4002, @object
	.size	knight_o.4002, 32
knight_o.4002:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	king_o.4015, @object
	.size	king_o.4015, 32
king_o.4015:
	.long	13
	.long	12
	.long	11
	.long	1
	.long	-1
	.long	-11
	.long	-12
	.long	-13
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
