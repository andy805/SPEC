	.file	"huffman.c"
	.text
	.globl	BZ2_hbMakeCodeLengths
	.type	BZ2_hbMakeCodeLengths, @function
BZ2_hbMakeCodeLengths:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$5296, %rsp
	movq	%rdi, -5272(%rbp)
	movq	%rsi, -5280(%rbp)
	movl	%edx, -5284(%rbp)
	movl	%ecx, -5288(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -5244(%rbp)
	jmp	.L2
.L5:
	movl	-5244(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-5280(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L3
	movl	-5244(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-5280(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	jmp	.L4
.L3:
	movl	$256, %edx
.L4:
	movl	-5244(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	%edx, -4144(%rbp,%rax,4)
	addl	$1, -5244(%rbp)
.L2:
	movl	-5244(%rbp), %eax
	cmpl	-5284(%rbp), %eax
	jl	.L5
.L35:
	movl	-5284(%rbp), %eax
	movl	%eax, -5252(%rbp)
	movl	$0, -5248(%rbp)
	movl	$0, -5184(%rbp)
	movl	$0, -4144(%rbp)
	movl	$-2, -2080(%rbp)
	movl	$1, -5244(%rbp)
	jmp	.L6
.L9:
	movl	-5244(%rbp), %eax
	cltq
	movl	$-1, -2080(%rbp,%rax,4)
	addl	$1, -5248(%rbp)
	movl	-5248(%rbp), %eax
	cltq
	movl	-5244(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
	movl	-5248(%rbp), %eax
	movl	%eax, -5232(%rbp)
	movl	-5232(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5188(%rbp)
	jmp	.L7
.L8:
	movl	-5232(%rbp), %eax
	sarl	%eax
	cltq
	movl	-5184(%rbp,%rax,4), %edx
	movl	-5232(%rbp), %eax
	cltq
	movl	%edx, -5184(%rbp,%rax,4)
	sarl	-5232(%rbp)
.L7:
	movl	-5188(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5232(%rbp), %eax
	sarl	%eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L8
	movl	-5232(%rbp), %eax
	cltq
	movl	-5188(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
	addl	$1, -5244(%rbp)
.L6:
	movl	-5244(%rbp), %eax
	cmpl	-5284(%rbp), %eax
	jle	.L9
	cmpl	$259, -5248(%rbp)
	jle	.L11
	movl	$2001, %edi
	call	BZ2_bz__AssertH__fail@PLT
	jmp	.L11
.L24:
	movl	-5180(%rbp), %eax
	movl	%eax, -5208(%rbp)
	movl	-5248(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5180(%rbp)
	subl	$1, -5248(%rbp)
	movl	$1, -5228(%rbp)
	movl	-5228(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5204(%rbp)
.L16:
	movl	-5228(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -5224(%rbp)
	movl	-5224(%rbp), %eax
	cmpl	-5248(%rbp), %eax
	jg	.L38
	movl	-5224(%rbp), %eax
	cmpl	-5248(%rbp), %eax
	jge	.L14
	movl	-5224(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5224(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	.L14
	addl	$1, -5224(%rbp)
.L14:
	movl	-5204(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5224(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L38
	movl	-5224(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %edx
	movl	-5228(%rbp), %eax
	cltq
	movl	%edx, -5184(%rbp,%rax,4)
	movl	-5224(%rbp), %eax
	movl	%eax, -5228(%rbp)
	jmp	.L16
.L38:
	nop
	movl	-5228(%rbp), %eax
	cltq
	movl	-5204(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
	movl	-5180(%rbp), %eax
	movl	%eax, -5200(%rbp)
	movl	-5248(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5180(%rbp)
	subl	$1, -5248(%rbp)
	movl	$1, -5220(%rbp)
	movl	-5220(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5196(%rbp)
.L21:
	movl	-5220(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -5216(%rbp)
	movl	-5216(%rbp), %eax
	cmpl	-5248(%rbp), %eax
	jg	.L39
	movl	-5216(%rbp), %eax
	cmpl	-5248(%rbp), %eax
	jge	.L19
	movl	-5216(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5216(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	.L19
	addl	$1, -5216(%rbp)
.L19:
	movl	-5196(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5216(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L39
	movl	-5216(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %edx
	movl	-5220(%rbp), %eax
	cltq
	movl	%edx, -5184(%rbp,%rax,4)
	movl	-5216(%rbp), %eax
	movl	%eax, -5220(%rbp)
	jmp	.L21
.L39:
	nop
	movl	-5220(%rbp), %eax
	cltq
	movl	-5196(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
	addl	$1, -5252(%rbp)
	movl	-5200(%rbp), %eax
	cltq
	movl	-5252(%rbp), %edx
	movl	%edx, -2080(%rbp,%rax,4)
	movl	-5200(%rbp), %eax
	cltq
	movl	-2080(%rbp,%rax,4), %edx
	movl	-5208(%rbp), %eax
	cltq
	movl	%edx, -2080(%rbp,%rax,4)
	movl	-5208(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movb	$0, %al
	movl	%eax, %edx
	movl	-5200(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movb	$0, %al
	leal	(%rdx,%rax), %ecx
	movl	-5200(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movzbl	%al, %edx
	movl	-5208(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	$1, %eax
	orl	%ecx, %eax
	movl	%eax, %edx
	movl	-5252(%rbp), %eax
	cltq
	movl	%edx, -4144(%rbp,%rax,4)
	movl	-5252(%rbp), %eax
	cltq
	movl	$-1, -2080(%rbp,%rax,4)
	addl	$1, -5248(%rbp)
	movl	-5248(%rbp), %eax
	cltq
	movl	-5252(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
	movl	-5248(%rbp), %eax
	movl	%eax, -5212(%rbp)
	movl	-5212(%rbp), %eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	movl	%eax, -5192(%rbp)
	jmp	.L22
.L23:
	movl	-5212(%rbp), %eax
	sarl	%eax
	cltq
	movl	-5184(%rbp,%rax,4), %edx
	movl	-5212(%rbp), %eax
	cltq
	movl	%edx, -5184(%rbp,%rax,4)
	sarl	-5212(%rbp)
.L22:
	movl	-5192(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-5212(%rbp), %eax
	sarl	%eax
	cltq
	movl	-5184(%rbp,%rax,4), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jl	.L23
	movl	-5212(%rbp), %eax
	cltq
	movl	-5192(%rbp), %edx
	movl	%edx, -5184(%rbp,%rax,4)
.L11:
	cmpl	$1, -5248(%rbp)
	jg	.L24
	cmpl	$515, -5252(%rbp)
	jle	.L25
	movl	$2002, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L25:
	movb	$0, -5253(%rbp)
	movl	$1, -5244(%rbp)
	jmp	.L26
.L30:
	movl	$0, -5240(%rbp)
	movl	-5244(%rbp), %eax
	movl	%eax, -5236(%rbp)
	jmp	.L27
.L28:
	movl	-5236(%rbp), %eax
	cltq
	movl	-2080(%rbp,%rax,4), %eax
	movl	%eax, -5236(%rbp)
	addl	$1, -5240(%rbp)
.L27:
	movl	-5236(%rbp), %eax
	cltq
	movl	-2080(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jns	.L28
	movl	-5244(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-5272(%rbp), %rax
	addq	%rdx, %rax
	movl	-5240(%rbp), %edx
	movb	%dl, (%rax)
	movl	-5240(%rbp), %eax
	cmpl	-5288(%rbp), %eax
	jle	.L29
	movb	$1, -5253(%rbp)
.L29:
	addl	$1, -5244(%rbp)
.L26:
	movl	-5244(%rbp), %eax
	cmpl	-5284(%rbp), %eax
	jle	.L30
	cmpb	$0, -5253(%rbp)
	je	.L40
	movl	$1, -5244(%rbp)
	jmp	.L33
.L34:
	movl	-5244(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	sarl	$8, %eax
	movl	%eax, -5240(%rbp)
	movl	-5240(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	movl	%eax, -5240(%rbp)
	movl	-5240(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-5244(%rbp), %eax
	cltq
	movl	%edx, -4144(%rbp,%rax,4)
	addl	$1, -5244(%rbp)
.L33:
	movl	-5244(%rbp), %eax
	cmpl	-5284(%rbp), %eax
	jle	.L34
	jmp	.L35
.L40:
	nop
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	BZ2_hbMakeCodeLengths, .-BZ2_hbMakeCodeLengths
	.globl	BZ2_hbAssignCodes
	.type	BZ2_hbAssignCodes, @function
BZ2_hbAssignCodes:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L42
.L46:
	movl	$0, -4(%rbp)
	jmp	.L43
.L45:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L44
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
.L44:
	addl	$1, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L45
	sall	-8(%rbp)
	addl	$1, -12(%rbp)
.L42:
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.L46
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	BZ2_hbAssignCodes, .-BZ2_hbAssignCodes
	.globl	BZ2_hbCreateDecodeTables
	.type	BZ2_hbCreateDecodeTables, @function
BZ2_hbCreateDecodeTables:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L48
.L52:
	movl	$0, -8(%rbp)
	jmp	.L49
.L51:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L50
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
.L50:
	addl	$1, -8(%rbp)
.L49:
	movl	-8(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L51
	addl	$1, -12(%rbp)
.L48:
	movl	-12(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L52
	movl	$0, -12(%rbp)
	jmp	.L53
.L54:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L53:
	cmpl	$22, -12(%rbp)
	jle	.L54
	movl	$0, -12(%rbp)
	jmp	.L55
.L56:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L55:
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L56
	movl	$1, -12(%rbp)
	jmp	.L57
.L58:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L57:
	cmpl	$22, -12(%rbp)
	jle	.L58
	movl	$0, -12(%rbp)
	jmp	.L59
.L60:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L59:
	cmpl	$22, -12(%rbp)
	jle	.L60
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L61
.L62:
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movl	%edx, (%rax)
	sall	-4(%rbp)
	addl	$1, -12(%rbp)
.L61:
	movl	-12(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L62
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L63
.L64:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	leal	(%rax,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L63:
	movl	-12(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L64
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	BZ2_hbCreateDecodeTables, .-BZ2_hbCreateDecodeTables
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
