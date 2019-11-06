	.file	"clustal.c"
	.text
	.section	.rodata
.LC0:
	.string	"CLUSTAL"
.LC1:
	.string	"multiple sequence alignment"
.LC2:
	.string	" \t\n"
.LC3:
	.string	"\n"
.LC4:
	.string	".*:"
	.align 8
.LC5:
	.string	"Parse failed at line %d, file %s: possibly using spaces as gaps"
	.text
	.globl	ReadClustal
	.type	ReadClustal, @function
ReadClustal:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L4
	movl	$0, %eax
	jmp	.L14
.L6:
	movq	-64(%rbp), %rax
	movl	$7, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L16
.L4:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L6
	jmp	.L5
.L16:
	nop
.L5:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L7
	movl	$0, %eax
	jmp	.L14
.L7:
	movl	$0, %esi
	movl	$10, %edi
	call	MSAAlloc@PLT
	movq	%rax, -56(%rbp)
	jmp	.L8
.L13:
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L9
	jmp	.L8
.L9:
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L10
	jmp	.L8
.L10:
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strpbrk@PLT
	testq	%rax, %rax
	je	.L11
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strpbrk@PLT
	testq	%rax, %rax
	je	.L11
	jmp	.L8
.L11:
	cmpq	$0, -32(%rbp)
	je	.L12
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L12:
	movq	-56(%rbp), %rax
	movl	352(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAGetSeqidx@PLT
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 352(%rax)
	movl	-72(%rbp), %ecx
	movq	-56(%rbp), %rax
	movq	328(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-56(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
.L8:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-56(%rbp), %rax
.L14:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadClustal, .-ReadClustal
	.section	.rodata
	.align 8
.LC6:
	.string	"CLUSTAL W(1.5) multiple sequence alignment\n"
.LC7:
	.string	"%*s %s\n"
	.text
	.globl	WriteClustal
	.type	WriteClustal, @function
WriteClustal:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$50, -88(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L18
.L20:
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jle	.L19
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
.L19:
	addl	$1, -100(%rbp)
.L18:
	movq	-128(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L20
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -92(%rbp)
	jmp	.L21
.L24:
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	$0, -100(%rbp)
	jmp	.L22
.L23:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-92(%rbp), %eax
	cltq
	addq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-88(%rbp), %eax
	cltq
	movb	$0, -80(%rbp,%rax)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-80(%rbp), %rsi
	movl	-96(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -100(%rbp)
.L22:
	movq	-128(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -100(%rbp)
	jl	.L23
	movl	-88(%rbp), %eax
	addl	%eax, -92(%rbp)
.L21:
	movq	-128(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L24
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WriteClustal, .-WriteClustal
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
