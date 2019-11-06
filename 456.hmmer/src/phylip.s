	.file	"phylip.c"
	.text
	.section	.rodata
.LC0:
	.string	" \t\n"
	.align 8
.LC1:
	.string	"Failed to parse nseq/alen from first line of PHYLIP file %s\n"
	.align 8
.LC2:
	.string	"nseq and/or alen not an integer in first line of PHYLIP file %s\n"
	.align 8
.LC3:
	.string	"Failed to parse sequence at line %d of PHYLIP file %s\n"
	.text
	.globl	ReadPhylip
	.type	ReadPhylip, @function
ReadPhylip:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L16
.L2:
	movl	$0, -88(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L4
.L10:
	leaq	-72(%rbp), %rax
	movl	$0, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L5
	jmp	.L4
.L5:
	leaq	-72(%rbp), %rax
	movl	$0, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L6
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L6:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	je	.L7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L8
.L7:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L8:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -76(%rbp)
	jmp	.L9
.L4:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L10
.L9:
	movl	-88(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	MSAAlloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L11
.L15:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L12
	jmp	.L11
.L12:
	cmpl	$0, -80(%rbp)
	jne	.L13
	movq	-72(%rbp), %rcx
	leaq	-35(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -25(%rbp)
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	leaq	-35(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	leaq	-35(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movq	%rax, -72(%rbp)
.L13:
	leaq	-92(%rbp), %rdx
	leaq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L14
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L14:
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-48(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
	addl	$1, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.L11
	movl	$0, -84(%rbp)
	addl	$1, -80(%rbp)
.L11:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L15
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-48(%rbp), %rax
.L16:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadPhylip, .-ReadPhylip
	.section	.rodata
.LC4:
	.string	" %d  %d\n"
.LC5:
	.string	"%s\n"
.LC6:
	.string	"%-10.10s%s\n"
	.text
	.globl	WritePhylip
	.type	WritePhylip, @function
WritePhylip:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$50, -68(%rbp)
	movq	-96(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	28(%rax), %edx
	movq	-88(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -72(%rbp)
	jmp	.L19
.L25:
	cmpl	$0, -72(%rbp)
	jle	.L20
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L20:
	movl	$0, -76(%rbp)
	jmp	.L21
.L24:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-72(%rbp), %eax
	cltq
	addq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-68(%rbp), %eax
	cltq
	movb	$0, -64(%rbp,%rax)
	cmpl	$0, -72(%rbp)
	jle	.L22
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L23
.L22:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L23:
	addl	$1, -76(%rbp)
.L21:
	movq	-96(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L24
	movl	-68(%rbp), %eax
	addl	%eax, -72(%rbp)
.L19:
	movq	-96(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L25
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WritePhylip, .-WritePhylip
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
