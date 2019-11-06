	.file	"ucbqsort.c"
	.text
	.local	qcmp
	.comm	qcmp,8,8
	.local	qsz
	.comm	qsz,4,4
	.local	thresh
	.comm	thresh,4,4
	.local	mthresh
	.comm	mthresh,4,4
	.globl	specqsort
	.type	specqsort, @function
specqsort:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	cmpl	$1, -76(%rbp)
	jle	.L18
	movl	-80(%rbp), %eax
	movl	%eax, qsz(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, qcmp(%rip)
	movl	qsz(%rip), %eax
	sall	$2, %eax
	movl	%eax, thresh(%rip)
	movl	qsz(%rip), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, mthresh(%rip)
	movl	qsz(%rip), %eax
	imull	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$3, -76(%rbp)
	jle	.L4
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qst
	movl	thresh(%rip), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	jmp	.L5
.L4:
	movq	-56(%rbp), %rbx
.L5:
	movq	-72(%rbp), %r12
	movq	%r12, %r13
	jmp	.L6
.L7:
	movq	qcmp(%rip), %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jle	.L6
	movq	%r12, %r13
.L6:
	movl	qsz(%rip), %eax
	cltq
	addq	%rax, %r12
	cmpq	%rbx, %r12
	jb	.L7
	cmpq	-72(%rbp), %r13
	je	.L8
	movq	-72(%rbp), %r14
	movl	qsz(%rip), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	jmp	.L9
.L10:
	movzbl	0(%r13), %r15d
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movzbl	(%r14), %edx
	movb	%dl, (%rax)
	movq	%r14, %rax
	leaq	1(%rax), %r14
	movb	%r15b, (%rax)
.L9:
	cmpq	%rbx, %r14
	jb	.L10
.L8:
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L11
.L17:
	nop
.L12:
	movq	qcmp(%rip), %rdx
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	addq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jg	.L12
	movl	qsz(%rip), %eax
	cltq
	addq	%rax, %rbx
	cmpq	-64(%rbp), %rbx
	je	.L11
	movl	qsz(%rip), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	jmp	.L13
.L16:
	movzbl	(%r12), %r15d
	movq	%r12, %r13
	movq	%r13, %r14
	jmp	.L14
.L15:
	movzbl	0(%r13), %eax
	movb	%al, (%r14)
	movq	%r13, %r14
.L14:
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	addq	%rax, %r13
	cmpq	%rbx, %r13
	jnb	.L15
	movb	%r15b, (%r14)
.L13:
	subq	$1, %r12
	cmpq	-64(%rbp), %r12
	jnb	.L16
.L11:
	movl	qsz(%rip), %eax
	cltq
	addq	%rax, -64(%rbp)
	movq	-64(%rbp), %rbx
	cmpq	-56(%rbp), %rbx
	jb	.L17
	jmp	.L1
.L18:
	nop
.L1:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	specqsort, .-specqsort
	.type	qst, @function
qst:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -72(%rbp)
.L44:
	movl	qsz(%rip), %ecx
	movl	-72(%rbp), %eax
	cltd
	idivl	%ecx
	sarl	%eax
	movl	%eax, %edx
	movl	qsz(%rip), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, -64(%rbp)
	movl	mthresh(%rip), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L20
	movq	qcmp(%rip), %rdx
	movq	-88(%rbp), %r13
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jle	.L21
	movq	%r13, %rax
	jmp	.L22
.L21:
	movq	%rbx, %rax
.L22:
	movq	%rax, %r12
	movq	qcmp(%rip), %rdx
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jle	.L23
	cmpq	%r13, %r12
	jne	.L24
	movq	%rbx, %rax
	jmp	.L25
.L24:
	movq	%r13, %rax
.L25:
	movq	%rax, %r12
	movq	qcmp(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jns	.L23
	movq	-56(%rbp), %r12
.L23:
	cmpq	%rbx, %r12
	je	.L20
	movl	qsz(%rip), %r14d
.L26:
	movzbl	(%rbx), %r15d
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	(%r12), %edx
	movb	%dl, (%rax)
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movb	%r15b, (%rax)
	subl	$1, %r14d
	testl	%r14d, %r14d
	jne	.L26
.L20:
	movq	-88(%rbp), %rbx
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	jmp	.L27
.L29:
	movl	qsz(%rip), %eax
	cltq
	addq	%rax, %rbx
.L27:
	cmpq	-64(%rbp), %rbx
	jnb	.L30
	movq	qcmp(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jle	.L29
	jmp	.L30
.L35:
	movq	qcmp(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	testl	%eax, %eax
	jg	.L31
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	addq	%rax, %r12
	jmp	.L30
.L31:
	movl	qsz(%rip), %eax
	cltq
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	cmpq	-64(%rbp), %rbx
	jne	.L32
	movq	%r12, %r13
	movq	%r13, -64(%rbp)
	jmp	.L34
.L32:
	movq	%r12, %r13
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	addq	%rax, %r12
	jmp	.L34
.L30:
	cmpq	-64(%rbp), %r12
	ja	.L35
	cmpq	-64(%rbp), %rbx
	je	.L46
	movq	-64(%rbp), %r13
	movq	%rbx, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	qsz(%rip), %eax
	cltq
	negq	%rax
	addq	%rax, %r12
.L34:
	movl	qsz(%rip), %r14d
.L38:
	movzbl	(%rbx), %r15d
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	0(%r13), %edx
	movb	%dl, (%rax)
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movb	%r15b, (%rax)
	subl	$1, %r14d
	testl	%r14d, %r14d
	jne	.L38
	movq	-56(%rbp), %rbx
	jmp	.L27
.L46:
	nop
	movq	-64(%rbp), %r12
	movl	qsz(%rip), %eax
	cltq
	leaq	(%r12,%rax), %rbx
	movq	%r12, %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rbx, %rdx
	subq	%rdx, %rax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L40
	movl	thresh(%rip), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L41
	movq	-88(%rbp), %rax
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	qst
.L41:
	movq	%rbx, -88(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L42
.L40:
	movl	thresh(%rip), %eax
	cmpl	%eax, -68(%rbp)
	jl	.L43
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	qst
.L43:
	movq	%r12, -96(%rbp)
.L42:
	movl	thresh(%rip), %eax
	cmpl	%eax, -72(%rbp)
	jge	.L44
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	qst, .-qst
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
