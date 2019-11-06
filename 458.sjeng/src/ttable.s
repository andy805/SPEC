	.file	"ttable.c"
	.text
	.comm	zobrist,8064,32
	.comm	hash,4,4
	.comm	TTProbes,4,4
	.comm	TTHits,4,4
	.comm	TTStores,4,4
	.comm	DP_TTable,8,8
	.comm	AS_TTable,8,8
	.comm	QS_TTable,8,8
	.globl	clear_tt
	.type	clear_tt, @function
clear_tt:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	TTSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	DP_TTable(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	TTSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	AS_TTable(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	TTSize(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	QS_TTable(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	clear_tt, .-clear_tt
	.globl	clear_dp_tt
	.type	clear_dp_tt, @function
clear_dp_tt:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	TTSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	DP_TTable(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	clear_dp_tt, .-clear_dp_tt
	.globl	initialize_zobrist
	.type	initialize_zobrist, @function
initialize_zobrist:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$31657, %edi
	call	seedMT@PLT
	movl	$0, -8(%rbp)
	jmp	.L4
.L7:
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	call	randomMT@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	%esi, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L5:
	cmpl	$143, -4(%rbp)
	jle	.L6
	addl	$1, -8(%rbp)
.L4:
	cmpl	$13, -8(%rbp)
	jle	.L7
	movl	$-559038737, hash(%rip)
	movl	$-1056969216, hold_hash(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	initialize_zobrist, .-initialize_zobrist
	.globl	initialize_hash
	.type	initialize_hash, @function
initialize_hash:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-559038737, hash(%rip)
	movl	$0, -4(%rbp)
	jmp	.L9
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L10
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L10
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
.L10:
	addl	$1, -4(%rbp)
.L9:
	cmpl	$143, -4(%rbp)
	jle	.L11
	movl	$-1056969216, hold_hash(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	initialize_hash, .-initialize_hash
	.globl	QStoreTT
	.type	QStoreTT, @function
QStoreTT:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	TTStores(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTStores(%rip)
	movl	hash(%rip), %eax
	movl	TTSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L13
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movb	$1, 1(%rax)
	jmp	.L14
.L13:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L15
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movb	$2, 1(%rax)
	jmp	.L14
.L15:
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movb	$3, 1(%rax)
.L14:
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	hash(%rip), %eax
	movl	%eax, 4(%rdx)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	hold_hash(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movw	%dx, 2(%rax)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 12(%rdx)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%cl
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	QStoreTT, .-QStoreTT
	.globl	StoreTT
	.type	StoreTT, @function
StoreTT:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	TTStores(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTStores(%rip)
	movl	hash(%rip), %eax
	movl	TTSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%rbp)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -40(%rbp)
	jg	.L18
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -40(%rbp)
	jne	.L19
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	3(%rax), %eax
	cmpb	$1, %al
	jne	.L20
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L18
.L20:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L19
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L19
.L18:
	movl	is_pondering(%rip), %eax
	testl	%eax, %eax
	jne	.L19
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L21
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$1, 3(%rax)
	cmpl	$-999500, -20(%rbp)
	jge	.L23
	movl	$-999500, -20(%rbp)
	jmp	.L23
.L21:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L24
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$2, 3(%rax)
	cmpl	$999500, -20(%rbp)
	jle	.L23
	movl	$999500, -20(%rbp)
	jmp	.L23
.L24:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$3, 3(%rax)
	cmpl	$999500, -20(%rbp)
	jle	.L26
	movl	ply(%rip), %eax
	addl	%eax, -20(%rbp)
	jmp	.L23
.L26:
	cmpl	$-999500, -20(%rbp)
	jge	.L23
	movl	ply(%rip), %eax
	subl	%eax, -20(%rbp)
.L23:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hash(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hold_hash(%rip), %eax
	movl	%eax, 12(%rdx)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-32(%rbp), %edx
	movw	%dx, 4(%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 16(%rdx)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%sil
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	%esi, %edx
	movb	%dl, 1(%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-36(%rbp), %edx
	movb	%dl, 2(%rax)
	jmp	.L27
.L19:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L28
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$1, 3(%rax)
	cmpl	$-999500, -20(%rbp)
	jge	.L30
	movl	$-999500, -20(%rbp)
	jmp	.L30
.L28:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L31
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$2, 3(%rax)
	cmpl	$999500, -20(%rbp)
	jle	.L30
	movl	$999500, -20(%rbp)
	jmp	.L30
.L31:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$3, 3(%rax)
	cmpl	$999500, -20(%rbp)
	jle	.L33
	movl	ply(%rip), %eax
	addl	%eax, -20(%rbp)
	jmp	.L30
.L33:
	cmpl	$-999500, -20(%rbp)
	jge	.L30
	movl	ply(%rip), %eax
	subl	%eax, -20(%rbp)
.L30:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hash(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hold_hash(%rip), %eax
	movl	%eax, 12(%rdx)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-32(%rbp), %edx
	movw	%dx, 4(%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 16(%rdx)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%sil
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	%esi, %edx
	movb	%dl, 1(%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-36(%rbp), %edx
	movb	%dl, 2(%rax)
.L27:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	StoreTT, .-StoreTT
	.globl	LearnStoreTT
	.type	LearnStoreTT, @function
LearnStoreTT:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	TTSize(%rip), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%rbp)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-40(%rbp), %edx
	movb	%dl, (%rax)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L36
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L36
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$3, 3(%rax)
	jmp	.L37
.L36:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$1, 3(%rax)
.L37:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, 8(%rdx)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, 12(%rdx)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-36(%rbp), %edx
	movw	%dx, 4(%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 16(%rdx)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-32(%rbp), %edx
	movb	%dl, 1(%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movb	$0, 2(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	LearnStoreTT, .-LearnStoreTT
	.globl	ProbeTT
	.type	ProbeTT, @function
ProbeTT:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movl	TTProbes(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTProbes(%rip)
	movl	hash(%rip), %eax
	movl	TTSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%rbp)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L39
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	12(%rax), %edx
	movl	hold_hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L39
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	1(%rax), %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	cmpb	%al, %dl
	jne	.L39
	movl	TTHits(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTHits(%rip)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	3(%rax), %eax
	cmpb	$1, %al
	jne	.L40
	movl	-32(%rbp), %eax
	leal	-3(%rax), %esi
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L40
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L40
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L40:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	je	.L41
	addl	$1, -32(%rbp)
.L41:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -32(%rbp)
	jg	.L42
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$999500, %eax
	jle	.L43
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	ply(%rip), %eax
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-999500, %eax
	jge	.L44
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	ply(%rip), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L44:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	3(%rax), %eax
	movsbl	%al, %eax
	jmp	.L45
.L42:
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	DP_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L45
.L39:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L46
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	12(%rax), %edx
	movl	hold_hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L46
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	1(%rax), %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	cmpb	%al, %dl
	jne	.L46
	movl	TTHits(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTHits(%rip)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	3(%rax), %eax
	cmpb	$1, %al
	jne	.L47
	movl	-32(%rbp), %eax
	leal	-3(%rax), %esi
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, %esi
	jg	.L47
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L47
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L47:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	testb	%al, %al
	je	.L48
	addl	$1, -32(%rbp)
.L48:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -32(%rbp)
	jg	.L49
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$999500, %eax
	jle	.L50
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	ply(%rip), %eax
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L51
.L50:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-999500, %eax
	jge	.L51
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	ply(%rip), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L51:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	3(%rax), %eax
	movsbl	%al, %eax
	jmp	.L45
.L49:
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	AS_TTable(%rip), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movzbl	2(%rax), %eax
	movsbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L45
.L46:
	movl	$4, %eax
.L45:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ProbeTT, .-ProbeTT
	.globl	QProbeTT
	.type	QProbeTT, @function
QProbeTT:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	TTProbes(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTProbes(%rip)
	movl	hash(%rip), %eax
	movl	TTSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, -4(%rbp)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L53
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	movl	hold_hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L53
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	cmpb	%al, %dl
	jne	.L53
	movl	TTHits(%rip), %eax
	addl	$1, %eax
	movl	%eax, TTHits(%rip)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzwl	2(%rax), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	QS_TTable(%rip), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzbl	1(%rax), %eax
	movsbl	%al, %eax
	jmp	.L54
.L53:
	movl	$4, %eax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	QProbeTT, .-QProbeTT
	.section	.rodata
	.align 8
.LC0:
	.string	"Out of memory allocating hashtables."
	.text
	.globl	alloc_hash
	.type	alloc_hash, @function
alloc_hash:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	TTSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, AS_TTable(%rip)
	movl	TTSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, DP_TTable(%rip)
	movl	TTSize(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, QS_TTable(%rip)
	movq	AS_TTable(%rip), %rax
	testq	%rax, %rax
	je	.L56
	movq	DP_TTable(%rip), %rax
	testq	%rax, %rax
	je	.L56
	movq	QS_TTable(%rip), %rax
	testq	%rax, %rax
	jne	.L59
.L56:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L59:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	alloc_hash, .-alloc_hash
	.globl	free_hash
	.type	free_hash, @function
free_hash:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	AS_TTable(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	DP_TTable(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	QS_TTable(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	free_hash, .-free_hash
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
