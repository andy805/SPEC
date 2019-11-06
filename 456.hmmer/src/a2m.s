	.file	"a2m.c"
	.text
	.section	.rodata
.LC0:
	.string	" \t\n"
	.align 8
.LC1:
	.string	"Blank name in A2M file %s (line %d)\n"
.LC2:
	.string	"\n"
	.text
	.globl	ReadA2M
	.type	ReadA2M, @function
ReadA2M:
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
	je	.L2
	movl	$0, %eax
	jmp	.L12
.L2:
	movq	$0, -56(%rbp)
	movl	$0, %esi
	movl	$10, %edi
	call	MSAAlloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L4
.L10:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L5
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	leaq	-76(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L6
	movq	-88(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L6:
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jl	.L7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MSAExpand@PLT
.L7:
	movl	-76(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	cmpq	$0, -32(%rbp)
	je	.L8
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqDescription@PLT
.L8:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 28(%rax)
	jmp	.L4
.L5:
	cmpq	$0, -56(%rbp)
	je	.L4
	leaq	-76(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L9
	jmp	.L4
.L9:
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-48(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
.L4:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L10
	cmpq	$0, -56(%rbp)
	jne	.L11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFree@PLT
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-48(%rbp), %rax
.L12:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadA2M, .-ReadA2M
	.section	.rodata
.LC3:
	.string	""
.LC4:
	.string	">%s %s\n"
.LC5:
	.string	"%s\n"
	.text
	.globl	WriteA2M
	.type	WriteA2M, @function
WriteA2M:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$60, -84(%rbp)
	movl	-84(%rbp), %eax
	cltq
	movb	$0, -80(%rbp,%rax)
	movl	$0, -92(%rbp)
	jmp	.L15
.L20:
	movq	-112(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-112(%rbp), %rax
	movq	104(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-112(%rbp), %rax
	movq	104(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L17
.L16:
	leaq	.LC3(%rip), %rax
.L17:
	movq	-112(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movq	-104(%rbp), %rdi
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -88(%rbp)
	jmp	.L18
.L19:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-88(%rbp), %eax
	cltq
	addq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-84(%rbp), %eax
	addl	%eax, -88(%rbp)
.L18:
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -88(%rbp)
	jl	.L19
	addl	$1, -92(%rbp)
.L15:
	movq	-112(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L20
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WriteA2M, .-WriteA2M
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
