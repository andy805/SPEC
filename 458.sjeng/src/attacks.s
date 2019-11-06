	.file	"attacks.c"
	.text
	.globl	calc_attackers
	.type	calc_attackers, @function
calc_attackers:
.LFB5:
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
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L4
	movl	$0, -8(%rbp)
	jmp	.L5
.L14:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3968(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L8
	addl	$1, -4(%rbp)
	jmp	.L7
.L13:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L9
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L10
.L9:
	addl	$1, -4(%rbp)
	jmp	.L11
.L10:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L54
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3968(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
.L8:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L13
	jmp	.L11
.L54:
	nop
.L11:
	addl	$1, -8(%rbp)
.L5:
	cmpl	$3, -8(%rbp)
	jle	.L14
.L7:
	movl	$0, -8(%rbp)
	jmp	.L15
.L25:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3969(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L16
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L16
	addl	$1, -4(%rbp)
	jmp	.L17
.L16:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L19
	addl	$1, -4(%rbp)
	jmp	.L17
.L24:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L20
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L21
.L20:
	addl	$1, -4(%rbp)
	jmp	.L22
.L21:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L55
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3969(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
.L19:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L24
	jmp	.L22
.L55:
	nop
.L22:
	addl	$1, -8(%rbp)
.L15:
	cmpl	$3, -8(%rbp)
	jle	.L25
.L17:
	movl	$0, -8(%rbp)
	jmp	.L26
.L28:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.3970(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jne	.L27
	addl	$1, -4(%rbp)
.L27:
	addl	$1, -8(%rbp)
.L26:
	cmpl	$7, -8(%rbp)
	jle	.L28
	jmp	.L29
.L4:
	movl	$0, -8(%rbp)
	jmp	.L30
.L39:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3968(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	jne	.L33
	addl	$1, -4(%rbp)
	jmp	.L32
.L38:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L34
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L35
.L34:
	addl	$1, -4(%rbp)
	jmp	.L36
.L35:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L56
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3968(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
.L33:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L38
	jmp	.L36
.L56:
	nop
.L36:
	addl	$1, -8(%rbp)
.L30:
	cmpl	$3, -8(%rbp)
	jle	.L39
.L32:
	movl	$0, -8(%rbp)
	jmp	.L40
.L50:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3969(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L41
	movl	-8(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L41
	addl	$1, -4(%rbp)
	jmp	.L42
.L41:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	jne	.L44
	addl	$1, -4(%rbp)
	jmp	.L42
.L49:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L45
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L46
.L45:
	addl	$1, -4(%rbp)
	jmp	.L47
.L46:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L57
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3969(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -12(%rbp)
.L44:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L49
	jmp	.L47
.L57:
	nop
.L47:
	addl	$1, -8(%rbp)
.L40:
	cmpl	$3, -8(%rbp)
	jle	.L50
.L42:
	movl	$0, -8(%rbp)
	jmp	.L51
.L53:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.3970(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	jne	.L52
	addl	$1, -4(%rbp)
.L52:
	addl	$1, -8(%rbp)
.L51:
	cmpl	$7, -8(%rbp)
	jle	.L53
.L29:
	movl	-4(%rbp), %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	calc_attackers, .-calc_attackers
	.globl	is_attacked
	.type	is_attacked, @function
is_attacked:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L59
	movl	$0, %ebx
	jmp	.L60
.L70:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.4009(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$1, %r12d
	jne	.L61
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	cmpl	$5, %r12d
	jne	.L64
	movl	$1, %eax
	jmp	.L62
.L69:
	cmpl	$11, %r12d
	je	.L65
	cmpl	$9, %r12d
	jne	.L66
.L65:
	movl	$1, %eax
	jmp	.L62
.L66:
	cmpl	$13, %r12d
	jne	.L105
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L64:
	testl	%r12d, %r12d
	jne	.L69
	jmp	.L68
.L105:
	nop
.L68:
	addl	$1, %ebx
.L60:
	cmpl	$3, %ebx
	jle	.L70
	movl	$0, %ebx
	jmp	.L71
.L73:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4010(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jne	.L72
	movl	$1, %eax
	jmp	.L62
.L72:
	addl	$1, %ebx
.L71:
	cmpl	$7, %ebx
	jle	.L73
	movl	$0, %ebx
	jmp	.L74
.L82:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4008(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$5, %r12d
	jne	.L76
	movl	$1, %eax
	jmp	.L62
.L81:
	cmpl	$7, %r12d
	je	.L77
	cmpl	$9, %r12d
	jne	.L78
.L77:
	movl	$1, %eax
	jmp	.L62
.L78:
	cmpl	$13, %r12d
	jne	.L106
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L76:
	testl	%r12d, %r12d
	jne	.L81
	jmp	.L80
.L106:
	nop
.L80:
	addl	$1, %ebx
.L74:
	cmpl	$3, %ebx
	jle	.L82
	movl	$0, %eax
	jmp	.L62
.L59:
	movl	$0, %ebx
	jmp	.L83
.L92:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.4009(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$2, %r12d
	jne	.L84
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L84
	movl	$1, %eax
	jmp	.L62
.L84:
	cmpl	$6, %r12d
	jne	.L86
	movl	$1, %eax
	jmp	.L62
.L91:
	cmpl	$12, %r12d
	je	.L87
	cmpl	$10, %r12d
	jne	.L88
.L87:
	movl	$1, %eax
	jmp	.L62
.L88:
	cmpl	$13, %r12d
	jne	.L107
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L86:
	testl	%r12d, %r12d
	jne	.L91
	jmp	.L90
.L107:
	nop
.L90:
	addl	$1, %ebx
.L83:
	cmpl	$3, %ebx
	jle	.L92
	movl	$0, %ebx
	jmp	.L93
.L95:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4010(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	jne	.L94
	movl	$1, %eax
	jmp	.L62
.L94:
	addl	$1, %ebx
.L93:
	cmpl	$7, %ebx
	jle	.L95
	movl	$0, %ebx
	jmp	.L96
.L104:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4008(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4008(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	leal	(%rdx,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$6, %r12d
	jne	.L98
	movl	$1, %eax
	jmp	.L62
.L103:
	cmpl	$8, %r12d
	je	.L99
	cmpl	$10, %r12d
	jne	.L100
.L99:
	movl	$1, %eax
	jmp	.L62
.L100:
	cmpl	$13, %r12d
	jne	.L108
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L98:
	testl	%r12d, %r12d
	jne	.L103
	jmp	.L102
.L108:
	nop
.L102:
	addl	$1, %ebx
.L96:
	cmpl	$3, %ebx
	jle	.L104
	movl	$0, %eax
.L62:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	is_attacked, .-is_attacked
	.globl	nk_attacked
	.type	nk_attacked, @function
nk_attacked:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L110
	movl	$0, %ebx
	jmp	.L111
.L120:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.4050(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$1, %r12d
	jne	.L114
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L114
	movl	$1, %eax
	jmp	.L113
.L119:
	cmpl	$11, %r12d
	je	.L115
	cmpl	$9, %r12d
	jne	.L116
.L115:
	movl	$1, %eax
	jmp	.L113
.L116:
	cmpl	$13, %r12d
	jne	.L152
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L114:
	testl	%r12d, %r12d
	jne	.L119
	jmp	.L118
.L152:
	nop
.L118:
	addl	$1, %ebx
.L111:
	cmpl	$3, %ebx
	jle	.L120
	movl	$0, %ebx
	jmp	.L121
.L123:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4051(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jne	.L122
	movl	$1, %eax
	jmp	.L113
.L122:
	addl	$1, %ebx
.L121:
	cmpl	$7, %ebx
	jle	.L123
	movl	$0, %ebx
	jmp	.L124
.L131:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4049(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	jmp	.L125
.L130:
	cmpl	$7, %r12d
	je	.L126
	cmpl	$9, %r12d
	jne	.L127
.L126:
	movl	$1, %eax
	jmp	.L113
.L127:
	cmpl	$13, %r12d
	jne	.L153
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L125:
	testl	%r12d, %r12d
	jne	.L130
	jmp	.L129
.L153:
	nop
.L129:
	addl	$1, %ebx
.L124:
	cmpl	$3, %ebx
	jle	.L131
	movl	$0, %eax
	jmp	.L113
.L110:
	movl	$0, %ebx
	jmp	.L132
.L140:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.4050(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movl	-36(%rbp), %eax
	leal	(%r14,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	cmpl	$2, %r12d
	jne	.L134
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L134
	movl	$1, %eax
	jmp	.L113
.L139:
	cmpl	$12, %r12d
	je	.L135
	cmpl	$10, %r12d
	jne	.L136
.L135:
	movl	$1, %eax
	jmp	.L113
.L136:
	cmpl	$13, %r12d
	jne	.L154
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L134:
	testl	%r12d, %r12d
	jne	.L139
	jmp	.L138
.L154:
	nop
.L138:
	addl	$1, %ebx
.L132:
	cmpl	$3, %ebx
	jle	.L140
	movl	$0, %ebx
	jmp	.L141
.L143:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4051(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	jne	.L142
	movl	$1, %eax
	jmp	.L113
.L142:
	addl	$1, %ebx
.L141:
	cmpl	$7, %ebx
	jle	.L143
	movl	$0, %ebx
	jmp	.L144
.L151:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4049(%rip), %rax
	movl	(%rdx,%rax), %r14d
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.4049(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	leal	(%rdx,%rax), %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
	jmp	.L145
.L150:
	cmpl	$8, %r12d
	je	.L146
	cmpl	$10, %r12d
	jne	.L147
.L146:
	movl	$1, %eax
	jmp	.L113
.L147:
	cmpl	$13, %r12d
	jne	.L155
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %r12d
.L145:
	testl	%r12d, %r12d
	jne	.L150
	jmp	.L149
.L155:
	nop
.L149:
	addl	$1, %ebx
.L144:
	cmpl	$3, %ebx
	jle	.L151
	movl	$0, %eax
.L113:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	nk_attacked, .-nk_attacked
	.section	.rodata
	.align 16
	.type	rook_o.3968, @object
	.size	rook_o.3968, 16
rook_o.3968:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.3969, @object
	.size	bishop_o.3969, 16
bishop_o.3969:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3970, @object
	.size	knight_o.3970, 32
knight_o.3970:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	bishop_o.4009, @object
	.size	bishop_o.4009, 16
bishop_o.4009:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.4010, @object
	.size	knight_o.4010, 32
knight_o.4010:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	rook_o.4008, @object
	.size	rook_o.4008, 16
rook_o.4008:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.4050, @object
	.size	bishop_o.4050, 16
bishop_o.4050:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.4051, @object
	.size	knight_o.4051, 32
knight_o.4051:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 16
	.type	rook_o.4049, @object
	.size	rook_o.4049, 16
rook_o.4049:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
