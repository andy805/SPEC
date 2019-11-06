	.file	"prior.c"
	.text
	.section	.rodata
.LC0:
	.string	"prior.c"
	.text
	.globl	P7AllocPrior
	.type	P7AllocPrior, @function
P7AllocPrior:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$40016, %edx
	movl	$37, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7AllocPrior, .-P7AllocPrior
	.globl	P7FreePrior
	.type	P7FreePrior, @function
P7FreePrior:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7FreePrior, .-P7FreePrior
	.globl	P7LaplacePrior
	.type	P7LaplacePrior, @function
P7LaplacePrior:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	P7AllocPrior
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$808, %rax
	movss	.LC1(%rip), %xmm0
	movl	$8, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movl	$1, 6408(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 6412(%rax)
	movl	Alphabet_size(%rip), %eax
	movq	-8(%rbp), %rdx
	addq	$7212, %rdx
	movss	.LC1(%rip), %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movl	$1, 23212(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 23216(%rax)
	movl	Alphabet_size(%rip), %eax
	movq	-8(%rbp), %rdx
	addq	$24016, %rdx
	movss	.LC1(%rip), %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7LaplacePrior, .-P7LaplacePrior
	.section	.rodata
	.align 8
.LC2:
	.string	"Can't set prior; alphabet type not set yet"
	.text
	.globl	P7DefaultPrior
	.type	P7DefaultPrior, @function
P7DefaultPrior:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	je	.L8
	cmpl	$3, %eax
	je	.L9
	testl	%eax, %eax
	je	.L10
	jmp	.L7
.L9:
	call	default_amino_prior
	jmp	.L11
.L8:
	call	default_nucleic_prior
	jmp	.L11
.L10:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L7:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7DefaultPrior, .-P7DefaultPrior
	.section	.rodata
.LC3:
	.string	"r"
	.align 8
.LC4:
	.string	"Failed to open HMMER prior file %s\n"
.LC5:
	.string	"DIRICHLET"
	.align 8
.LC6:
	.string	"No such prior strategy %s; failed to parse file %s"
.LC7:
	.string	"AMINO"
	.align 8
.LC8:
	.string	"HMM and/or sequences are DNA/RNA; can't use protein prior %s"
.LC9:
	.string	"NUCLEIC"
	.align 8
.LC10:
	.string	"HMM and/or sequences are protein; can't use DNA/RNA prior %s"
	.align 8
.LC11:
	.string	"Alphabet \"%s\" in prior file %s isn't valid."
	.align 8
.LC12:
	.string	"%d is bad; need at least one state transition mixture component"
	.align 8
.LC13:
	.string	"%d is bad, too many transition components (MAXDCHLET = %d)\n"
	.align 8
.LC14:
	.string	"%d is bad; need at least one match emission mixture component"
	.align 8
.LC15:
	.string	"%d is bad; too many match components (MAXDCHLET = %d)\n"
	.align 8
.LC16:
	.string	"%d is bad; need at least one insert emission mixture component"
	.align 8
.LC17:
	.string	"%d is bad; too many insert components (MAXDCHLET = %d)\n"
	.text
	.globl	P7ReadPrior
	.type	P7ReadPrior, @function
P7ReadPrior:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L13
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L13:
	call	P7AllocPrior
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L15
.L14:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L15:
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L16
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	je	.L18
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L18
.L16:
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L19
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	je	.L18
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L18
.L19:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L18:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L21
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L21:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$200, %eax
	jle	.L22
	movl	$200, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L22:
	movl	$0, -32(%rbp)
	jmp	.L23
.L26:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	movss	%xmm0, 8(%rax,%rdx,4)
	movl	$0, -28(%rbp)
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	$200, %rax
	movss	%xmm0, 8(%rcx,%rax,4)
	addl	$1, -28(%rbp)
.L24:
	cmpl	$6, -28(%rbp)
	jle	.L25
	addl	$1, -32(%rbp)
.L23:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L26
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 6408(%rax)
	movq	-16(%rbp), %rax
	movl	6408(%rax), %eax
	testl	%eax, %eax
	jns	.L27
	movq	-16(%rbp), %rax
	movl	6408(%rax), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L27:
	movq	-16(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	$200, %eax
	jle	.L28
	movq	-16(%rbp), %rax
	movl	6408(%rax), %eax
	movl	$200, %edx
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L28:
	movl	$0, -32(%rbp)
	jmp	.L29
.L32:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1600, %rdx
	movss	%xmm0, 12(%rax,%rdx,4)
	movl	$0, -28(%rbp)
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$1800, %rax
	movss	%xmm0, 12(%rcx,%rax,4)
	addl	$1, -28(%rbp)
.L30:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L31
	addl	$1, -32(%rbp)
.L29:
	movq	-16(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L32
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 23212(%rax)
	movq	-16(%rbp), %rax
	movl	23212(%rax), %eax
	testl	%eax, %eax
	jns	.L33
	movq	-16(%rbp), %rax
	movl	23212(%rax), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L33:
	movq	-16(%rbp), %rax
	movl	23212(%rax), %eax
	cmpl	$200, %eax
	jle	.L34
	movq	-16(%rbp), %rax
	movl	23212(%rax), %eax
	movl	$200, %edx
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L34:
	movl	$0, -32(%rbp)
	jmp	.L35
.L38:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addq	$5804, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movl	$0, -28(%rbp)
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$6004, %rax
	movss	%xmm0, (%rcx,%rax,4)
	addl	$1, -28(%rbp)
.L36:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L37
	addl	$1, -32(%rbp)
.L35:
	movq	-16(%rbp), %rax
	movl	23212(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P7ReadPrior, .-P7ReadPrior
	.section	.rodata
	.align 8
.LC18:
	.string	"PAM prior is only valid for protein sequences"
	.align 8
.LC19:
	.string	"PAM prior may only be applied over an existing Dirichlet prior"
	.align 8
.LC20:
	.string	"PAM prior requires that the insert emissions be a single Dirichlet"
.LC21:
	.string	"aa"
.LC22:
	.string	"BLASTMAT"
	.align 8
.LC23:
	.string	"Failed to open PAM scoring matrix file %s"
	.align 8
.LC24:
	.string	"Failed to parse PAM scoring matrix file %s"
	.text
	.globl	PAMPrior
	.type	PAMPrior, @function
PAMPrior:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movss	%xmm0, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	je	.L41
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L41:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L42
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L42:
	movq	-80(%rbp), %rax
	movl	23212(%rax), %eax
	cmpl	$1, %eax
	je	.L53
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L53:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rdi
	call	FileConcat@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	movq	-72(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	EnvFileOpen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	movq	-16(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	EnvFileOpen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L44:
	leaq	-52(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ParsePAMFile@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movl	$20, 6408(%rax)
	movl	$0, -48(%rbp)
	jmp	.L46
.L49:
	movl	$0, -44(%rbp)
	jmp	.L47
.L48:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	aafq(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -96(%rbp)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-52(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	mulsd	-96(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$1800, %rax
	movss	%xmm0, 12(%rcx,%rax,4)
	addl	$1, -44(%rbp)
.L47:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L48
	addl	$1, -48(%rbp)
.L46:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L49
	movl	$0, -48(%rbp)
	jmp	.L50
.L51:
	movl	Alphabet_size(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1600, %rdx
	movss	%xmm0, 12(%rax,%rdx,4)
	movl	Alphabet_size(%rip), %ecx
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	7200(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movl	Alphabet_size(%rip), %ecx
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	7200(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdx
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
	movss	-96(%rbp), %xmm0
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	FScale@PLT
	addl	$1, -48(%rbp)
.L50:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L51
	movq	-32(%rbp), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PAMPrior, .-PAMPrior
	.globl	P7DefaultNullModel
	.type	P7DefaultNullModel, @function
P7DefaultNullModel:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L55
	movl	$0, -4(%rbp)
	jmp	.L56
.L57:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	aafq(%rip), %rax
	movss	(%rcx,%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -4(%rbp)
.L56:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L57
	movq	-32(%rbp), %rax
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L61
.L55:
	movl	$0, -4(%rbp)
	jmp	.L59
.L60:
	movl	Alphabet_size(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC1(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L59:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L60
	movq	-32(%rbp), %rax
	movss	.LC27(%rip), %xmm0
	movss	%xmm0, (%rax)
.L61:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7DefaultNullModel, .-P7DefaultNullModel
	.section	.rodata
	.align 8
.LC28:
	.string	"Failed to open null model file %s\n"
	.align 8
.LC29:
	.string	"Alphabet type conflict; null model in %s is inappropriate\n"
	.align 8
.LC30:
	.string	"%s is not in HMMER null model file format"
	.text
	.globl	P7ReadNullModel
	.type	P7ReadNullModel, @function
P7ReadNullModel:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L63
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L63:
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$2, -20(%rbp)
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$3, -20(%rbp)
.L67:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L69
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L70
.L69:
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, -20(%rbp)
	je	.L70
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L70:
	movl	$0, -24(%rbp)
	jmp	.L71
.L73:
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -24(%rbp)
.L71:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L73
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L62
.L76:
	nop
	jmp	.L65
.L77:
	nop
	jmp	.L65
.L78:
	nop
	jmp	.L65
.L79:
	nop
.L65:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	P7ReadNullModel, .-P7ReadNullModel
	.section	.rodata
.LC33:
	.string	"X-PRT annotation out of range"
.LC34:
	.string	"X-PRM annotation out of range"
.LC35:
	.string	"X-PRI annotation out of range"
	.text
	.globl	P7PriorifyHMM
	.type	P7PriorifyHMM, @function
P7PriorifyHMM:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2448, %rsp
	movq	%rdi, -2440(%rbp)
	movq	%rsi, -2448(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-2440(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-2440(%rbp), %rax
	movq	216(%rax), %rax
	addq	$4, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-2440(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	.LC32(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -2420(%rbp)
	movq	-2440(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC25(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvtss2sd	-2420(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-2440(%rbp), %rax
	movss	%xmm0, 168(%rax)
	movq	-2440(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC25(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvtss2sd	-2420(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-2440(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-2440(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, (%rax)
	movl	$1, -2424(%rbp)
	jmp	.L81
.L91:
	movq	-2440(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-2440(%rbp), %rax
	movq	88(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L82
	movq	-2440(%rbp), %rax
	movq	88(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-2448(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jl	.L83
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L83:
	movq	-2448(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-2416(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movq	88(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -2416(%rbp,%rax,4)
	jmp	.L84
.L82:
	movq	-2448(%rbp), %rax
	movl	4(%rax), %edx
	movq	-2448(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-2416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
.L84:
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L85
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	%eax, %edx
	jl	.L86
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L86:
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	leaq	-1616(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -1616(%rbp,%rax,4)
	jmp	.L87
.L85:
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-2448(%rbp), %rax
	leaq	6412(%rax), %rcx
	leaq	-1616(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
.L87:
	movq	-2440(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-2440(%rbp), %rax
	movq	104(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L88
	movq	-2440(%rbp), %rax
	movq	104(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-2448(%rbp), %rax
	movl	23212(%rax), %eax
	cmpl	%eax, %edx
	jl	.L89
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L89:
	movq	-2448(%rbp), %rax
	movl	23212(%rax), %edx
	leaq	-816(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movq	104(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -816(%rbp,%rax,4)
	jmp	.L90
.L88:
	movq	-2448(%rbp), %rax
	movl	23212(%rax), %edx
	movq	-2448(%rbp), %rax
	leaq	23216(%rax), %rcx
	leaq	-816(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
.L90:
	movq	-2440(%rbp), %rax
	movq	144(%rax), %rax
	movl	-2424(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-2416(%rbp), %rdx
	movq	-2448(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7PriorifyTransitionVector
	movq	-2448(%rbp), %rax
	leaq	7212(%rax), %rdi
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-2440(%rbp), %rax
	movq	152(%rax), %rax
	movl	-2424(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	-1616(%rbp), %rcx
	movq	-2448(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7PriorifyEmissionVector
	movq	-2448(%rbp), %rax
	leaq	24016(%rax), %rdi
	movq	-2448(%rbp), %rax
	movl	23212(%rax), %edx
	movq	-2440(%rbp), %rax
	movq	160(%rax), %rax
	movl	-2424(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	-816(%rbp), %rcx
	movq	-2448(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7PriorifyEmissionVector
	addl	$1, -2424(%rbp)
.L81:
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -2424(%rbp)
	jl	.L91
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L92
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	%eax, %edx
	jl	.L93
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L93:
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	leaq	-1616(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-2440(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -1616(%rbp,%rax,4)
	jmp	.L94
.L92:
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-2448(%rbp), %rax
	leaq	6412(%rax), %rcx
	leaq	-1616(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
.L94:
	movq	-2448(%rbp), %rax
	leaq	7212(%rax), %rdi
	movq	-2448(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-2440(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-2440(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	-1616(%rbp), %rcx
	movq	-2448(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7PriorifyEmissionVector
	movq	-2440(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7Renormalize@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L95
	call	__stack_chk_fail@PLT
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	P7PriorifyHMM, .-P7PriorifyHMM
	.globl	P7PriorifyEmissionVector
	.type	P7PriorifyEmissionVector, @function
P7PriorifyEmissionVector:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$896, %rsp
	movq	%rdi, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movl	%edx, -868(%rbp)
	movq	%rcx, -880(%rbp)
	movq	%r8, -888(%rbp)
	movq	%r9, -896(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L97
	cmpl	$1, -868(%rbp)
	jle	.L97
	movl	$0, -832(%rbp)
	jmp	.L98
.L102:
	movl	-832(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-880(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L115
	movl	-832(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-880(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L101
.L115:
	movss	.LC36(%rip), %xmm0
.L101:
	movl	-832(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	movl	-832(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-888(%rbp), %rax
	addq	%rax, %rdx
	movl	Alphabet_size(%rip), %ecx
	movq	-856(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Logp_cvec@PLT
	movaps	%xmm0, %xmm1
	movl	-832(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movl	-832(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	addl	$1, -832(%rbp)
.L98:
	movl	-832(%rbp), %eax
	cmpl	-868(%rbp), %eax
	jl	.L102
	movl	-868(%rbp), %edx
	leaq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	LogNorm@PLT
	jmp	.L103
.L97:
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L103
	cmpl	$1, -868(%rbp)
	jle	.L103
	movl	$0, -832(%rbp)
	jmp	.L104
.L105:
	movl	-832(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-832(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	addl	$1, -832(%rbp)
.L104:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -832(%rbp)
	jl	.L105
	movl	Alphabet_size(%rip), %edx
	leaq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
.L103:
	movl	Alphabet_size(%rip), %edx
	movq	-856(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -824(%rbp)
	movl	$0, -836(%rbp)
	jmp	.L106
.L109:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -828(%rbp)
	movl	$0, -832(%rbp)
	jmp	.L107
.L108:
	movl	Alphabet_size(%rip), %ecx
	movl	-832(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-888(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -820(%rbp)
	movl	-832(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm1
	movl	-836(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-832(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-888(%rbp), %rax
	addq	%rax, %rdx
	movl	-836(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	-824(%rbp), %xmm1
	addss	-820(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-828(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -828(%rbp)
	addl	$1, -832(%rbp)
.L107:
	movl	-832(%rbp), %eax
	cmpl	-868(%rbp), %eax
	jl	.L108
	movl	-836(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	-828(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -836(%rbp)
.L106:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -836(%rbp)
	jl	.L109
	movl	Alphabet_size(%rip), %edx
	movq	-856(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	cmpq	$0, -896(%rbp)
	je	.L116
	movl	$0, -832(%rbp)
	jmp	.L111
.L112:
	movl	-832(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-896(%rbp), %rax
	addq	%rax, %rdx
	movl	-832(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -832(%rbp)
.L111:
	movl	-832(%rbp), %eax
	cmpl	-868(%rbp), %eax
	jl	.L112
.L116:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	P7PriorifyEmissionVector, .-P7PriorifyEmissionVector
	.globl	P7PriorifyTransitionVector
	.type	P7PriorifyTransitionVector, @function
P7PriorifyTransitionVector:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$880, %rsp
	movq	%rdi, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movq	%rdx, -872(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L118
	movq	-864(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L119
.L118:
	movq	-864(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	$1, %eax
	jle	.L119
	movl	$0, -836(%rbp)
	jmp	.L120
.L124:
	movl	-836(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-872(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L136
	movl	-836(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-872(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L123
.L136:
	movss	.LC36(%rip), %xmm0
.L123:
	movl	-836(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	leaq	800(%rax), %rdx
	movq	-864(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-856(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	Logp_cvec@PLT
	movaps	%xmm0, %xmm1
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movl	-836(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	leaq	800(%rax), %rdx
	movq	-864(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	leaq	12(%rax), %rdx
	movq	-856(%rbp), %rax
	addq	$12, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Logp_cvec@PLT
	movaps	%xmm0, %xmm1
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movl	-836(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	leaq	800(%rax), %rdx
	movq	-864(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	leaq	20(%rax), %rdx
	movq	-856(%rbp), %rax
	addq	$20, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	Logp_cvec@PLT
	movaps	%xmm0, %xmm1
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movl	-836(%rbp), %eax
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	addl	$1, -836(%rbp)
.L120:
	movq	-864(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -836(%rbp)
	jl	.L124
	movq	-864(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	LogNorm@PLT
.L119:
	movq	-856(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -828(%rbp)
	movq	-856(%rbp), %rax
	addq	$12, %rax
	movss	(%rax), %xmm1
	movq	-856(%rbp), %rax
	addq	$16, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -824(%rbp)
	movq	-856(%rbp), %rax
	addq	$20, %rax
	movss	(%rax), %xmm1
	movq	-856(%rbp), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -820(%rbp)
	movl	$0, -840(%rbp)
	jmp	.L125
.L133:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -832(%rbp)
	movl	$0, -836(%rbp)
	jmp	.L126
.L132:
	cmpl	$6, -840(%rbp)
	ja	.L127
	movl	-840(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L129(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L129(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L129:
	.long	.L128-.L129
	.long	.L128-.L129
	.long	.L128-.L129
	.long	.L130-.L129
	.long	.L130-.L129
	.long	.L131-.L129
	.long	.L131-.L129
	.text
.L128:
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm1
	movl	-840(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movq	-864(%rbp), %rcx
	movl	-840(%rbp), %eax
	movslq	%eax, %rsi
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	$200, %rax
	movss	8(%rcx,%rax,4), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm1, -876(%rbp)
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	leaq	800(%rax), %rdx
	movq	-864(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	addss	-828(%rbp), %xmm0
	movss	-876(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	-832(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -832(%rbp)
	jmp	.L127
.L130:
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm1
	movl	-840(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movq	-864(%rbp), %rcx
	movl	-840(%rbp), %eax
	movslq	%eax, %rsi
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	$200, %rax
	movss	8(%rcx,%rax,4), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movq	-864(%rbp), %rcx
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$820, %rax
	movss	(%rax), %xmm1
	addss	-824(%rbp), %xmm1
	movq	-864(%rbp), %rcx
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$824, %rax
	movss	(%rax), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	-832(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -832(%rbp)
	jmp	.L127
.L131:
	movl	-836(%rbp), %eax
	cltq
	movss	-816(%rbp,%rax,4), %xmm1
	movl	-840(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movq	-864(%rbp), %rcx
	movl	-840(%rbp), %eax
	movslq	%eax, %rsi
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	$200, %rax
	movss	8(%rcx,%rax,4), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movq	-864(%rbp), %rcx
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$828, %rax
	movss	(%rax), %xmm1
	addss	-820(%rbp), %xmm1
	movq	-864(%rbp), %rcx
	movl	-836(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$832, %rax
	movss	(%rax), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	-832(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -832(%rbp)
	nop
.L127:
	addl	$1, -836(%rbp)
.L126:
	movq	-864(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -836(%rbp)
	jl	.L132
	movl	-840(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movss	-832(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -840(%rbp)
.L125:
	cmpl	$6, -840(%rbp)
	jle	.L133
	movq	-856(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movq	-856(%rbp), %rax
	addq	$12, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movq	-856(%rbp), %rax
	addq	$20, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	P7PriorifyTransitionVector, .-P7PriorifyTransitionVector
	.type	default_amino_prior, @function
default_amino_prior:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	P7AllocPrior
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, 808(%rax)
	movq	-8(%rbp), %rax
	movss	.LC38(%rip), %xmm0
	movss	%xmm0, 812(%rax)
	movq	-8(%rbp), %rax
	movss	.LC39(%rip), %xmm0
	movss	%xmm0, 816(%rax)
	movq	-8(%rbp), %rax
	movss	.LC40(%rip), %xmm0
	movss	%xmm0, 820(%rax)
	movq	-8(%rbp), %rax
	movss	.LC41(%rip), %xmm0
	movss	%xmm0, 824(%rax)
	movq	-8(%rbp), %rax
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, 828(%rax)
	movq	-8(%rbp), %rax
	movss	.LC43(%rip), %xmm0
	movss	%xmm0, 832(%rax)
	movq	-8(%rbp), %rax
	movl	$9, 6408(%rax)
	movl	$0, -16(%rbp)
	jmp	.L138
.L141:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	defmq.6689(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1600, %rdx
	movss	%xmm0, 12(%rax,%rdx,4)
	movl	$0, -12(%rbp)
	jmp	.L139
.L140:
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	defm.6690(%rip), %rax
	movss	(%rdx,%rax), %xmm0
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$1800, %rax
	movss	%xmm0, 12(%rcx,%rax,4)
	addl	$1, -12(%rbp)
.L139:
	cmpl	$19, -12(%rbp)
	jle	.L140
	addl	$1, -16(%rbp)
.L138:
	movq	-8(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L141
	movq	-8(%rbp), %rax
	movl	$1, 23212(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 23216(%rax)
	movq	-8(%rbp), %rax
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, 24016(%rax)
	movq	-8(%rbp), %rax
	movss	.LC45(%rip), %xmm0
	movss	%xmm0, 24020(%rax)
	movq	-8(%rbp), %rax
	movss	.LC46(%rip), %xmm0
	movss	%xmm0, 24024(%rax)
	movq	-8(%rbp), %rax
	movss	.LC47(%rip), %xmm0
	movss	%xmm0, 24028(%rax)
	movq	-8(%rbp), %rax
	movss	.LC48(%rip), %xmm0
	movss	%xmm0, 24032(%rax)
	movq	-8(%rbp), %rax
	movss	.LC49(%rip), %xmm0
	movss	%xmm0, 24036(%rax)
	movq	-8(%rbp), %rax
	movss	.LC50(%rip), %xmm0
	movss	%xmm0, 24040(%rax)
	movq	-8(%rbp), %rax
	movss	.LC51(%rip), %xmm0
	movss	%xmm0, 24044(%rax)
	movq	-8(%rbp), %rax
	movss	.LC52(%rip), %xmm0
	movss	%xmm0, 24048(%rax)
	movq	-8(%rbp), %rax
	movss	.LC53(%rip), %xmm0
	movss	%xmm0, 24052(%rax)
	movq	-8(%rbp), %rax
	movss	.LC54(%rip), %xmm0
	movss	%xmm0, 24056(%rax)
	movq	-8(%rbp), %rax
	movss	.LC55(%rip), %xmm0
	movss	%xmm0, 24060(%rax)
	movq	-8(%rbp), %rax
	movss	.LC56(%rip), %xmm0
	movss	%xmm0, 24064(%rax)
	movq	-8(%rbp), %rax
	movss	.LC57(%rip), %xmm0
	movss	%xmm0, 24068(%rax)
	movq	-8(%rbp), %rax
	movss	.LC58(%rip), %xmm0
	movss	%xmm0, 24072(%rax)
	movq	-8(%rbp), %rax
	movss	.LC59(%rip), %xmm0
	movss	%xmm0, 24076(%rax)
	movq	-8(%rbp), %rax
	movss	.LC46(%rip), %xmm0
	movss	%xmm0, 24080(%rax)
	movq	-8(%rbp), %rax
	movss	.LC60(%rip), %xmm0
	movss	%xmm0, 24084(%rax)
	movq	-8(%rbp), %rax
	movss	.LC61(%rip), %xmm0
	movss	%xmm0, 24088(%rax)
	movq	-8(%rbp), %rax
	movss	.LC62(%rip), %xmm0
	movss	%xmm0, 24092(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	default_amino_prior, .-default_amino_prior
	.type	default_nucleic_prior, @function
default_nucleic_prior:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	P7AllocPrior
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movss	.LC37(%rip), %xmm0
	movss	%xmm0, 808(%rax)
	movq	-8(%rbp), %rax
	movss	.LC38(%rip), %xmm0
	movss	%xmm0, 812(%rax)
	movq	-8(%rbp), %rax
	movss	.LC39(%rip), %xmm0
	movss	%xmm0, 816(%rax)
	movq	-8(%rbp), %rax
	movss	.LC40(%rip), %xmm0
	movss	%xmm0, 820(%rax)
	movq	-8(%rbp), %rax
	movss	.LC41(%rip), %xmm0
	movss	%xmm0, 824(%rax)
	movq	-8(%rbp), %rax
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, 828(%rax)
	movq	-8(%rbp), %rax
	movss	.LC43(%rip), %xmm0
	movss	%xmm0, 832(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 6408(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 6412(%rax)
	movl	Alphabet_size(%rip), %eax
	movq	-8(%rbp), %rdx
	addq	$7212, %rdx
	movss	.LC1(%rip), %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movl	$1, 23212(%rax)
	movq	-8(%rbp), %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, 23216(%rax)
	movl	Alphabet_size(%rip), %eax
	movq	-8(%rbp), %rdx
	addq	$24016, %rdx
	movss	.LC1(%rip), %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	default_nucleic_prior, .-default_nucleic_prior
	.data
	.align 32
	.type	defmq.6689, @object
	.size	defmq.6689, 36
defmq.6689:
	.long	1043750269
	.long	1030212599
	.long	1036297641
	.long	1033895708
	.long	1034617048
	.long	1035545109
	.long	1038773811
	.long	1032565597
	.long	1047541517
	.align 32
	.type	defm.6690, @object
	.size	defm.6690, 720
defm.6690:
	.long	1049269604
	.long	1025718184
	.long	1016069003
	.long	1015445696
	.long	1013564500
	.long	1040651517
	.long	1011549087
	.long	1018765706
	.long	1017562578
	.long	1023129393
	.long	1014688708
	.long	1027986464
	.long	1029464201
	.long	1017725787
	.long	1019309556
	.long	1046304164
	.long	1041678954
	.long	1032193116
	.long	997607623
	.long	1008574822
	.long	1018156894
	.long	1009303893
	.long	1010851155
	.long	1009929884
	.long	1053127692
	.long	1015446233
	.long	1033637030
	.long	1024505124
	.long	1013191912
	.long	1035961815
	.long	1018462374
	.long	1021983710
	.long	1012295338
	.long	1018986897
	.long	1016761567
	.long	1022285968
	.long	1016378778
	.long	1024712088
	.long	1033042982
	.long	1054268207
	.long	1057995719
	.long	1027221423
	.long	1054896514
	.long	1061396595
	.long	1035135974
	.long	1048881815
	.long	1046223163
	.long	1041591846
	.long	1061363661
	.long	1048396148
	.long	1039336720
	.long	1055003821
	.long	1043530890
	.long	1057482017
	.long	1055807953
	.long	1058363861
	.long	1055138777
	.long	1047035852
	.long	1022476021
	.long	1039662601
	.long	1032824610
	.long	1010205836
	.long	1017090668
	.long	1036114823
	.long	1012376942
	.long	1027916670
	.long	1033744941
	.long	1023863563
	.long	1058250397
	.long	1033113178
	.long	1021794195
	.long	1034197523
	.long	1025131116
	.long	1044216407
	.long	1057078408
	.long	1033306318
	.long	1033018420
	.long	1026438665
	.long	1010328242
	.long	1022053503
	.long	1026055071
	.long	1014129289
	.long	1001903127
	.long	1009213698
	.long	1042106840
	.long	1006599674
	.long	1005263939
	.long	1050241474
	.long	1009893377
	.long	1065343921
	.long	1045904329
	.long	1003013376
	.long	1012225544
	.long	1017261930
	.long	1013823272
	.long	1011181867
	.long	1024631289
	.long	1043884084
	.long	1011928118
	.long	1020841786
	.long	1038926685
	.long	1025055954
	.long	1011573783
	.long	1016392736
	.long	1028920619
	.long	1015896668
	.long	1000402036
	.long	1061945461
	.long	1015799494
	.long	1049779195
	.long	1033585356
	.long	1013865148
	.long	1014449264
	.long	1010465681
	.long	1011876578
	.long	1021415701
	.long	1035266031
	.long	1064419396
	.long	999246690
	.long	1015620716
	.long	1035954299
	.long	1000028374
	.long	1053181413
	.long	1051858999
	.long	1009864386
	.long	1037620746
	.long	1028383211
	.long	1014310751
	.long	1036063687
	.long	1021537033
	.long	1009024720
	.long	1044406459
	.long	1028448173
	.long	1038179361
	.long	1025401430
	.long	1039445302
	.long	1032241971
	.long	1020285587
	.long	995275456
	.long	1016694995
	.long	1055359733
	.long	1038793272
	.long	1031788047
	.long	1038939436
	.long	1049725105
	.long	1041207715
	.long	1036879999
	.long	1057807328
	.long	1041462125
	.long	1060330940
	.long	1049467877
	.long	1039324238
	.long	1036492378
	.long	1040299665
	.long	1041437899
	.long	1049548508
	.long	1052216052
	.long	1059678323
	.long	1031539207
	.long	1045178480
	.long	1001007627
	.long	998529430
	.long	1004291129
	.long	1003000491
	.long	996362083
	.long	1015722721
	.long	997130882
	.long	990847345
	.long	1000633964
	.long	1002719171
	.long	985731502
	.long	998784981
	.long	1007967084
	.long	997057867
	.long	1003992629
	.long	995090772
	.long	997315565
	.long	994210304
	.long	993372785
	.long	993003418
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 8
.LC25:
	.long	0
	.long	1072693248
	.align 4
.LC26:
	.long	1065305418
	.align 4
.LC27:
	.long	1065336456
	.align 4
.LC32:
	.long	1073741824
	.align 4
.LC36:
	.long	3296313344
	.align 4
.LC37:
	.long	1061895432
	.align 4
.LC38:
	.long	1021557971
	.align 4
.LC39:
	.long	1012739867
	.align 4
.LC40:
	.long	1042207369
	.align 4
.LC41:
	.long	1040730974
	.align 4
.LC42:
	.long	1063678850
	.align 4
.LC43:
	.long	1058021573
	.align 4
.LC44:
	.long	1143619584
	.align 4
.LC45:
	.long	1123024896
	.align 4
.LC46:
	.long	1142669312
	.align 4
.LC47:
	.long	1143128064
	.align 4
.LC48:
	.long	1134329856
	.align 4
.LC49:
	.long	1147240448
	.align 4
.LC50:
	.long	1131479040
	.align 4
.LC51:
	.long	1136230400
	.align 4
.LC52:
	.long	1143717888
	.align 4
.LC53:
	.long	1143537664
	.align 4
.LC54:
	.long	1125056512
	.align 4
.LC55:
	.long	1141440512
	.align 4
.LC56:
	.long	1143062528
	.align 4
.LC57:
	.long	1137672192
	.align 4
.LC58:
	.long	1141489664
	.align 4
.LC59:
	.long	1147633664
	.align 4
.LC60:
	.long	1140621312
	.align 4
.LC61:
	.long	1120665600
	.align 4
.LC62:
	.long	1132888064
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
