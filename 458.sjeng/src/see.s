	.file	"see.c"
	.text
	.comm	see_attackers,256,32
	.comm	see_num_attackers,8,8
	.globl	setup_attackers
	.type	setup_attackers, @function
setup_attackers:
.LFB5:
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
	movl	%edi, -44(%rbp)
	movl	see_num_attackers(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	4+see_num_attackers(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	$0, %r13d
	jmp	.L2
.L14:
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3697(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %r12d
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$5, %ebx
	jne	.L3
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L4
.L3:
	cmpl	$6, %ebx
	jne	.L6
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
	jmp	.L4
.L13:
	cmpl	$7, %ebx
	je	.L7
	cmpl	$9, %ebx
	jne	.L8
.L7:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L9
.L8:
	cmpl	$8, %ebx
	je	.L10
	cmpl	$10, %ebx
	jne	.L11
.L10:
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
	jmp	.L9
.L11:
	cmpl	$13, %ebx
	jne	.L34
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rook_o.3697(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %r12d
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
.L6:
	testl	%ebx, %ebx
	jne	.L13
	jmp	.L9
.L34:
	nop
.L9:
	addl	$1, %r13d
.L2:
	cmpl	$3, %r13d
	jle	.L14
.L4:
	movl	$0, %r13d
	jmp	.L15
.L29:
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3698(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %r12d
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$1, %ebx
	jne	.L16
	movl	%r13d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L16
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L17
.L16:
	cmpl	$2, %ebx
	jne	.L18
	movl	%r13d, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
	jmp	.L17
.L18:
	cmpl	$5, %ebx
	jne	.L19
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L17
.L19:
	cmpl	$6, %ebx
	jne	.L21
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
	jmp	.L17
.L28:
	cmpl	$11, %ebx
	je	.L22
	cmpl	$9, %ebx
	jne	.L23
.L22:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L24
.L23:
	cmpl	$12, %ebx
	je	.L25
	cmpl	$10, %ebx
	jne	.L26
.L25:
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
	jmp	.L24
.L26:
	cmpl	$13, %ebx
	jne	.L35
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	bishop_o.3698(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %r12d
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
.L21:
	testl	%ebx, %ebx
	jne	.L28
	jmp	.L24
.L35:
	nop
.L24:
	addl	$1, %r13d
.L15:
	cmpl	$3, %r13d
	jle	.L29
.L17:
	movl	$0, %r13d
	jmp	.L30
.L33:
	movslq	%r13d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.3699(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %r12d
	movslq	%r12d, %rax
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$3, %ebx
	jne	.L31
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -32(%rbp)
	jmp	.L32
.L31:
	cmpl	$4, %ebx
	jne	.L32
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	%ebx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+see_attackers(%rip), %rax
	movl	%r12d, (%rdx,%rax)
	addl	$1, -28(%rbp)
.L32:
	addl	$1, %r13d
.L30:
	cmpl	$7, %r13d
	jle	.L33
	movl	-32(%rbp), %eax
	movl	%eax, see_num_attackers(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, 4+see_num_attackers(%rip)
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	setup_attackers, .-setup_attackers
	.globl	findlowest
	.type	findlowest, @function
findlowest:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -16(%rbp)
	subl	%eax, -16(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L37
.L39:
	movl	-12(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	%eax, -16(%rbp)
	jle	.L38
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -16(%rbp)
	subl	%eax, -16(%rbp)
.L38:
	addl	$1, -12(%rbp)
.L37:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L39
	movl	-40(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rcx
	leaq	see_attackers(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	leaq	0(,%rdx,8), %rsi
	leaq	see_attackers(%rip), %rdx
	movq	(%rsi,%rdx), %rdx
	movq	%rdx, (%rcx,%rax)
	movl	-20(%rbp), %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rcx
	leaq	see_attackers(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rcx,%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	findlowest, .-findlowest
	.globl	see
	.type	see, @function
see:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, see_num_attackers(%rip)
	movl	$0, 4+see_num_attackers(%rip)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-52(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rcx
	leaq	see_attackers(%rip), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-52(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rcx
	leaq	4+see_attackers(%rip), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	setup_attackers
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -32(%rbp)
	subl	%eax, -32(%rbp)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	jmp	.L50
.L41:
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$-1000000, -28(%rbp)
	movl	-52(%rbp), %eax
	cltq
	movl	$1, -16(%rbp,%rax,4)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movl	$0, -16(%rbp,%rax,4)
	cmpl	$0, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.L43
.L49:
	movl	-36(%rbp), %eax
	cltq
	movl	-16(%rbp,%rax,4), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	findlowest
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L44
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	subl	$1, %eax
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	addl	%eax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rdx,%rax), %edx
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jg	.L45
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L45
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.L45:
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L47
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L47
.L44:
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %edx
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	subl	$1, %eax
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	see_attackers(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	subl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L48
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.L48:
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rdx,%rax), %edx
	cmpl	$0, -36(%rbp)
	sete	%al
	movzbl	%al, %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jg	.L47
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L47
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.L47:
	movl	-36(%rbp), %eax
	cltq
	movl	-16(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	movl	%edx, -16(%rbp,%rax,4)
	xorl	$1, -36(%rbp)
.L43:
	movl	-36(%rbp), %eax
	cltq
	movl	-16(%rbp,%rax,4), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	see_num_attackers(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jl	.L49
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-24(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	cmovle	-28(%rbp), %eax
.L50:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	see, .-see
	.section	.rodata
	.align 16
	.type	rook_o.3697, @object
	.size	rook_o.3697, 16
rook_o.3697:
	.long	12
	.long	-12
	.long	1
	.long	-1
	.align 16
	.type	bishop_o.3698, @object
	.size	bishop_o.3698, 16
bishop_o.3698:
	.long	11
	.long	-11
	.long	13
	.long	-13
	.align 32
	.type	knight_o.3699, @object
	.size	knight_o.3699, 32
knight_o.3699:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
