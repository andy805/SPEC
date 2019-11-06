	.file	"crazy.c"
	.text
	.comm	holding,128,32
	.comm	num_holding,8,8
	.comm	realholdings,255,32
	.comm	userealholdings,4,4
	.comm	drop_piece,4,4
	.comm	white_hand_eval,4,4
	.comm	black_hand_eval,4,4
	.comm	hold_hash,4,4
	.globl	ProcessHoldings
	.type	ProcessHoldings, @function
ProcessHoldings:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$128, %edx
	movl	$0, %esi
	leaq	holding(%rip), %rdi
	call	memset@PLT
	movl	$-1056969216, hold_hash(%rip)
	movl	$0, white_hand_eval(%rip)
	movl	$0, black_hand_eval(%rip)
	call	reset_ecache@PLT
	movl	$0, num_holding(%rip)
	movl	$0, 4+num_holding(%rip)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L56
.L3:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L5
	jmp	.L6
.L44:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$66, %eax
	cmpl	$48, %eax
	ja	.L57
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L9(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L8-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L10-.L9
	.long	.L57-.L9
	.long	.L11-.L9
	.long	.L12-.L9
	.long	.L13-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L8-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L57-.L9
	.long	.L10-.L9
	.long	.L57-.L9
	.long	.L11-.L9
	.long	.L12-.L9
	.long	.L13-.L9
	.text
.L11:
	cmpl	$0, -8(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$2, %eax
.L15:
	movslq	%eax, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	holding(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L16
	movl	$1, %esi
	jmp	.L17
.L16:
	movl	$2, %esi
.L17:
	cmpl	$0, -8(%rbp)
	jne	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	$2, %eax
.L19:
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L6
.L12:
	cmpl	$0, -8(%rbp)
	jne	.L20
	movl	$9, %eax
	jmp	.L21
.L20:
	movl	$10, %eax
.L21:
	movslq	%eax, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	holding(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L22
	movl	$9, %esi
	jmp	.L23
.L22:
	movl	$10, %esi
.L23:
	cmpl	$0, -8(%rbp)
	jne	.L24
	movl	$9, %eax
	jmp	.L25
.L24:
	movl	$10, %eax
.L25:
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L6
.L13:
	cmpl	$0, -8(%rbp)
	jne	.L26
	movl	$7, %eax
	jmp	.L27
.L26:
	movl	$8, %eax
.L27:
	movslq	%eax, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	holding(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L28
	movl	$7, %esi
	jmp	.L29
.L28:
	movl	$8, %esi
.L29:
	cmpl	$0, -8(%rbp)
	jne	.L30
	movl	$7, %eax
	jmp	.L31
.L30:
	movl	$8, %eax
.L31:
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L6
.L8:
	cmpl	$0, -8(%rbp)
	jne	.L32
	movl	$11, %eax
	jmp	.L33
.L32:
	movl	$12, %eax
.L33:
	movslq	%eax, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	holding(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L34
	movl	$11, %esi
	jmp	.L35
.L34:
	movl	$12, %esi
.L35:
	cmpl	$0, -8(%rbp)
	jne	.L36
	movl	$11, %eax
	jmp	.L37
.L36:
	movl	$12, %eax
.L37:
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L6
.L10:
	cmpl	$0, -8(%rbp)
	jne	.L38
	movl	$3, %eax
	jmp	.L39
.L38:
	movl	$4, %eax
.L39:
	movslq	%eax, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	holding(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L40
	movl	$3, %esi
	jmp	.L41
.L40:
	movl	$4, %esi
.L41:
	cmpl	$0, -8(%rbp)
	jne	.L42
	movl	$3, %eax
	jmp	.L43
.L42:
	movl	$4, %eax
.L43:
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	nop
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L44
	addl	$1, -8(%rbp)
.L2:
	cmpl	$1, -8(%rbp)
	jle	.L3
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L1
	movl	userealholdings(%rip), %eax
	testl	%eax, %eax
	jne	.L1
	movq	-24(%rbp), %rax
	movl	$200, %edx
	movq	%rax, %rsi
	leaq	realholdings(%rip), %rdi
	call	strncpy@PLT
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L46
	movl	72+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L47
	movl	72+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 72+holding(%rip)
	movl	4+num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+num_holding(%rip)
	movl	72+holding(%rip), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L47:
	movl	112+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L48
	movl	112+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 112+holding(%rip)
	movl	4+num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+num_holding(%rip)
	movl	112+holding(%rip), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L48:
	movl	80+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L49
	movl	80+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 80+holding(%rip)
	movl	4+num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+num_holding(%rip)
	movl	80+holding(%rip), %eax
	cltq
	addq	$576, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L49:
	movl	96+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L50
	movl	96+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 96+holding(%rip)
	movl	4+num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+num_holding(%rip)
	movl	96+holding(%rip), %eax
	cltq
	addq	$576, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L50:
	movl	104+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L1
	movl	104+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 104+holding(%rip)
	movl	4+num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+num_holding(%rip)
	movl	104+holding(%rip), %eax
	cltq
	addq	$576, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L1
.L46:
	movl	36+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L52
	movl	36+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 36+holding(%rip)
	movl	num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_holding(%rip)
	movl	36+holding(%rip), %eax
	cltq
	addq	$1296, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L52:
	movl	28+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L53
	movl	28+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 28+holding(%rip)
	movl	num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_holding(%rip)
	movl	28+holding(%rip), %eax
	cltq
	addq	$1296, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L53:
	movl	44+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L54
	movl	44+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 44+holding(%rip)
	movl	num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_holding(%rip)
	movl	44+holding(%rip), %eax
	cltq
	addq	$1296, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L54:
	movl	12+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L55
	movl	12+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 12+holding(%rip)
	movl	num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_holding(%rip)
	movl	12+holding(%rip), %eax
	cltq
	addq	$1296, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L55:
	movl	4+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L1
	movl	4+holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, 4+holding(%rip)
	movl	num_holding(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_holding(%rip)
	movl	4+holding(%rip), %eax
	cltq
	addq	$1296, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	jmp	.L1
.L56:
	nop
	jmp	.L1
.L57:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ProcessHoldings, .-ProcessHoldings
	.globl	text_to_piece
	.type	text_to_piece, @function
text_to_piece:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	subl	$66, %eax
	cmpl	$48, %eax
	ja	.L59
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L61(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L61(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L61:
	.long	.L60-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L62-.L61
	.long	.L59-.L61
	.long	.L63-.L61
	.long	.L64-.L61
	.long	.L65-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L60-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L59-.L61
	.long	.L62-.L61
	.long	.L59-.L61
	.long	.L63-.L61
	.long	.L64-.L61
	.long	.L65-.L61
	.text
.L63:
	cmpl	$0, -8(%rbp)
	jne	.L66
	movl	$1, %eax
	jmp	.L68
.L66:
	movl	$2, %eax
	jmp	.L68
.L60:
	cmpl	$0, -8(%rbp)
	jne	.L69
	movl	$11, %eax
	jmp	.L68
.L69:
	movl	$12, %eax
	jmp	.L68
.L62:
	cmpl	$0, -8(%rbp)
	jne	.L71
	movl	$3, %eax
	jmp	.L68
.L71:
	movl	$4, %eax
	jmp	.L68
.L65:
	cmpl	$0, -8(%rbp)
	jne	.L73
	movl	$7, %eax
	jmp	.L68
.L73:
	movl	$8, %eax
	jmp	.L68
.L64:
	cmpl	$0, -8(%rbp)
	jne	.L75
	movl	$9, %eax
	jmp	.L68
.L75:
	movl	$10, %eax
	jmp	.L68
.L59:
	movl	$13, %eax
.L68:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	text_to_piece, .-text_to_piece
	.globl	SwitchColor
	.type	SwitchColor, @function
SwitchColor:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$8, -36(%rbp)
	movl	$7, -32(%rbp)
	movl	$10, -28(%rbp)
	movl	$9, -24(%rbp)
	movl	$12, -20(%rbp)
	movl	$11, -16(%rbp)
	movl	-68(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L79
	call	__stack_chk_fail@PLT
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SwitchColor, .-SwitchColor
	.globl	SwitchPromoted
	.type	SwitchPromoted, @function
SwitchPromoted:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$2, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$2, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$1, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$1, -16(%rbp)
	movl	-68(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SwitchPromoted, .-SwitchPromoted
	.globl	addHolding
	.type	addHolding, @function
addHolding:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	jne	.L84
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
.L84:
	cmpl	$0, -8(%rbp)
	jne	.L85
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hand_value(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	white_hand_eval(%rip), %eax
	addl	%edx, %eax
	movl	%eax, white_hand_eval(%rip)
	jmp	.L86
.L85:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hand_value(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	black_hand_eval(%rip), %eax
	addl	%edx, %eax
	movl	%eax, black_hand_eval(%rip)
.L86:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	addHolding, .-addHolding
	.globl	removeHolding
	.type	removeHolding, @function
removeHolding:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	jne	.L89
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L89:
	cmpl	$0, -8(%rbp)
	jne	.L90
	movl	white_hand_eval(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hand_value(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, white_hand_eval(%rip)
	jmp	.L91
.L90:
	movl	black_hand_eval(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hand_value(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, black_hand_eval(%rip)
.L91:
	movl	Material(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	removeHolding, .-removeHolding
	.globl	DropaddHolding
	.type	DropaddHolding, @function
DropaddHolding:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	cmpl	$0, -8(%rbp)
	jne	.L94
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hand_value(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	white_hand_eval(%rip), %eax
	addl	%edx, %eax
	movl	%eax, white_hand_eval(%rip)
	jmp	.L95
.L94:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hand_value(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	black_hand_eval(%rip), %eax
	addl	%edx, %eax
	movl	%eax, black_hand_eval(%rip)
.L95:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	DropaddHolding, .-DropaddHolding
	.globl	DropremoveHolding
	.type	DropremoveHolding, @function
DropremoveHolding:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hold_hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hold_hash(%rip)
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num_holding(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	cmpl	$0, -8(%rbp)
	jne	.L98
	movl	white_hand_eval(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hand_value(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, white_hand_eval(%rip)
	jmp	.L99
.L98:
	movl	black_hand_eval(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hand_value(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, black_hand_eval(%rip)
.L99:
	movl	Material(%rip), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	DropremoveHolding, .-DropremoveHolding
	.section	.rodata
	.align 8
.LC0:
	.string	"WP: %d WR: %d WB: %d WN: %d WQ: %d\n"
	.align 8
.LC1:
	.string	"BP: %d BR: %d BB: %d BN: %d BQ: %d\n"
	.text
	.globl	printHolding
	.type	printHolding, @function
printHolding:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	36+holding(%rip), %edi
	movl	12+holding(%rip), %esi
	movl	44+holding(%rip), %ecx
	movl	28+holding(%rip), %edx
	movl	4+holding(%rip), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	104+holding(%rip), %edi
	movl	80+holding(%rip), %esi
	movl	112+holding(%rip), %ecx
	movl	96+holding(%rip), %edx
	movl	72+holding(%rip), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	printHolding, .-printHolding
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
