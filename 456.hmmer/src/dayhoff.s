	.file	"dayhoff.c"
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"BLOSUM Clustered Scoring Matrix"
.LC3:
	.string	"substitution matrix,"
.LC4:
	.string	" \t\n"
.LC5:
	.string	"calloc failed"
	.align 8
.LC6:
	.string	"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!"
	.text
	.globl	ParsePAMFile
	.type	ParsePAMFile, @function
ParsePAMFile:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$728, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%rdx, -728(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -680(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -684(%rbp)
	cmpq	$0, -712(%rbp)
	jne	.L2
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L2:
	movq	-712(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L4
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L4:
	leaq	-544(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L5
	leaq	-544(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -672(%rbp)
	cmpq	$0, -672(%rbp)
	je	.L5
	addq	$1, -672(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-672(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L6
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L6:
	movq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -684(%rbp)
	movl	$1, -680(%rbp)
	jmp	.L7
.L5:
	leaq	-544(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L7
	jmp	.L8
.L9:
	addq	$2, -672(%rbp)
	movq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	IsReal@PLT
	testl	%eax, %eax
	je	.L8
	movq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -684(%rbp)
	movl	$1, -680(%rbp)
	jmp	.L7
.L8:
	leaq	-544(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	.L9
.L7:
	leaq	-544(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -672(%rbp)
	cmpq	$0, -672(%rbp)
	je	.L2
	movq	-672(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L2
	movl	$0, -696(%rbp)
.L12:
	movq	-672(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	-65(%rax), %edx
	movl	-696(%rbp), %eax
	cltq
	movl	%edx, -656(%rbp,%rax,4)
	movl	-696(%rbp), %eax
	cltq
	movl	-656(%rbp,%rax,4), %eax
	testl	%eax, %eax
	js	.L10
	movl	-696(%rbp), %eax
	cltq
	movl	-656(%rbp,%rax,4), %eax
	cmpl	$25, %eax
	jle	.L11
.L10:
	movl	-696(%rbp), %eax
	cltq
	movl	$26, -656(%rbp,%rax,4)
.L11:
	addl	$1, -696(%rbp)
	leaq	.LC4(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	.L12
	movl	-696(%rbp), %eax
	movl	%eax, -676(%rbp)
	movl	$8, %esi
	movl	$27, %edi
	call	calloc@PLT
	movq	%rax, -664(%rbp)
	cmpq	$0, -664(%rbp)
	jne	.L13
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L13:
	movl	$0, -696(%rbp)
	jmp	.L14
.L16:
	movl	-696(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-664(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %esi
	movl	$27, %edi
	call	calloc@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L15
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L15:
	addl	$1, -696(%rbp)
.L14:
	cmpl	$26, -696(%rbp)
	jle	.L16
	movl	$0, -692(%rbp)
	jmp	.L17
.L26:
	movq	-712(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L18
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L18:
	leaq	-544(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -672(%rbp)
	cmpq	$0, -672(%rbp)
	jne	.L19
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L19:
	movl	$0, -688(%rbp)
	jmp	.L20
.L25:
	cmpq	$0, -672(%rbp)
	jne	.L21
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L29
.L21:
	movq	-672(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L22
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-672(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L23
.L22:
	subl	$1, -688(%rbp)
	jmp	.L24
.L23:
	movl	-692(%rbp), %eax
	cltq
	movl	-656(%rbp,%rax,4), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-664(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-688(%rbp), %eax
	cltq
	movl	-656(%rbp,%rax,4), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
.L24:
	leaq	.LC4(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -672(%rbp)
	addl	$1, -688(%rbp)
.L20:
	movl	-688(%rbp), %eax
	cmpl	-676(%rbp), %eax
	jl	.L25
	addl	$1, -692(%rbp)
.L17:
	movl	-692(%rbp), %eax
	cmpl	-676(%rbp), %eax
	jl	.L26
	cmpq	$0, -728(%rbp)
	je	.L27
	cmpl	$0, -680(%rbp)
	je	.L28
	movq	-728(%rbp), %rax
	movss	-684(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L27
.L28:
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movq	-728(%rbp), %rax
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, (%rax)
.L27:
	movq	-720(%rbp), %rax
	movq	-664(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	addq	$728, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ParsePAMFile, .-ParsePAMFile
	.section	.rodata
	.align 8
.LC2:
	.long	4277811695
	.long	1072049730
	.align 4
.LC7:
	.long	1051816472
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
