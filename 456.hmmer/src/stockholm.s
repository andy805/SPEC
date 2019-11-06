	.file	"stockholm.c"
	.text
	.section	.rodata
.LC0:
	.string	"# STOCKHOLM 1."
	.align 8
.LC1:
	.ascii	"File %s doesn't appear to be in Stockholm format.\nAssuming "
	.ascii	"there isn't some o"
	.string	"ther problem with your file (it is an\nalignment file, right?), please either:\n  a) use the Babelfish format autotranslator option (-B, usually);\n  b) specify the file's format with the --informat option; or\n  a) reformat the alignment to Stockholm format.\n"
.LC2:
	.string	"#=GF"
.LC3:
	.string	"#=GS"
.LC4:
	.string	"#=GC"
.LC5:
	.string	"#=GR"
.LC6:
	.string	"//"
.LC7:
	.string	""
	.align 8
.LC8:
	.string	"Stockholm format parse error: line %d of file %s while reading alignment %s"
	.align 8
.LC9:
	.string	"Didn't find // at end of alignment %s"
	.text
	.globl	ReadStockholm
	.type	ReadStockholm, @function
ReadStockholm:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, %esi
	movl	$10, %edi
	call	MSAAlloc@PLT
	movq	%rax, -8(%rbp)
.L5:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFree@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	IsBlankline@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-16(%rbp), %rax
	movl	$14, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L7
.L9:
	addq	$1, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L9
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L9
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L10
	movq	-16(%rbp), %rax
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_gf
	movl	%eax, -20(%rbp)
	jmp	.L16
.L11:
	movq	-16(%rbp), %rax
	movl	$4, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L13
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_gs
	movl	%eax, -20(%rbp)
	jmp	.L16
.L13:
	movq	-16(%rbp), %rax
	movl	$4, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_gc
	movl	%eax, -20(%rbp)
	jmp	.L16
.L14:
	movq	-16(%rbp), %rax
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_gr
	movl	%eax, -20(%rbp)
	jmp	.L16
.L15:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_comment
	movl	%eax, -20(%rbp)
	jmp	.L16
.L10:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L19
	jmp	.L7
.L19:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_sequence
	movl	%eax, -20(%rbp)
.L16:
	cmpl	$0, -20(%rbp)
	jne	.L7
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L21
.L20:
	leaq	.LC7(%rip), %rax
.L21:
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movl	16(%rcx), %esi
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	jmp	.L18
.L27:
	nop
.L18:
	cmpq	$0, -16(%rbp)
	jne	.L23
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L25
.L24:
	leaq	.LC7(%rip), %rax
.L25:
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L23:
	cmpq	$0, -16(%rbp)
	jne	.L26
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFree@PLT
	movl	$0, %eax
	jmp	.L3
.L26:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadStockholm, .-ReadStockholm
	.globl	WriteStockholm
	.type	WriteStockholm, @function
WriteStockholm:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	actually_write_stockholm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WriteStockholm, .-WriteStockholm
	.globl	WriteStockholmOneBlock
	.type	WriteStockholmOneBlock, @function
WriteStockholmOneBlock:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	actually_write_stockholm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	WriteStockholmOneBlock, .-WriteStockholmOneBlock
	.section	.rodata
.LC10:
	.string	"stockholm.c"
.LC11:
	.string	"# STOCKHOLM 1.0\n"
.LC12:
	.string	"# %s\n"
.LC13:
	.string	"#=GF ID    %s\n"
.LC14:
	.string	"#=GF AC    %s\n"
.LC15:
	.string	"#=GF DE    %s\n"
.LC16:
	.string	"#=GF AU    %s\n"
.LC17:
	.string	"#=GF GA    %.1f %.1f\n"
.LC18:
	.string	"#=GF GA    %.1f\n"
.LC19:
	.string	"#=GF NC    %.1f %.1f\n"
.LC20:
	.string	"#=GF NC    %.1f\n"
.LC21:
	.string	"#=GF TC    %.1f %.1f\n"
.LC22:
	.string	"#=GF TC    %.1f\n"
.LC23:
	.string	"#=GF %-5s %s\n"
.LC24:
	.string	"#=GS %-*.*s WT    %.2f\n"
.LC25:
	.string	"#=GS %-*.*s AC    %s\n"
.LC26:
	.string	"#=GS %*.*s DE    %s\n"
.LC27:
	.string	"#=GS %*.*s %5s %s\n"
.LC28:
	.string	"\n"
.LC29:
	.string	"%-*.*s  %s\n"
.LC30:
	.string	"#=GR %-*.*s SS     %s\n"
.LC31:
	.string	"#=GR %-*.*s SA     %s\n"
.LC32:
	.string	"#=GR %-*.*s %5s  %s\n"
.LC33:
	.string	"SS_cons"
.LC34:
	.string	"#=GC %-*.*s %s\n"
.LC35:
	.string	"SA_cons"
.LC36:
	.string	"RF"
.LC37:
	.string	"//\n"
	.text
	.type	actually_write_stockholm, @function
actually_write_stockholm:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L31
.L33:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L32
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
.L32:
	addl	$1, -60(%rbp)
.L31:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L33
	movq	-80(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movl	$4, -44(%rbp)
	movl	$2, -48(%rbp)
.L34:
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movl	$4, -44(%rbp)
	movl	$2, -48(%rbp)
.L35:
	movl	$0, -60(%rbp)
	jmp	.L36
.L38:
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L37
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.L37:
	addl	$1, -60(%rbp)
.L36:
	movq	-80(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L38
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$4, -44(%rbp)
	cmpl	$1, -48(%rbp)
	jg	.L39
	movl	$2, -48(%rbp)
.L39:
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movl	$4, -44(%rbp)
	cmpl	$6, -48(%rbp)
	jg	.L40
	movl	$7, -48(%rbp)
.L40:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movl	$4, -44(%rbp)
	cmpl	$6, -48(%rbp)
	jg	.L41
	movl	$7, -48(%rbp)
.L41:
	movl	$0, -60(%rbp)
	jmp	.L42
.L44:
	movq	-80(%rbp), %rax
	movq	248(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L43
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.L43:
	addl	$1, -60(%rbp)
.L42:
	movq	-80(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L44
	movl	-84(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%eax, %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	addl	$61, %eax
	cltq
	movq	%rax, %rdx
	movl	$251, %esi
	leaq	.LC10(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -60(%rbp)
	jmp	.L45
.L46:
	movq	-80(%rbp), %rax
	movq	176(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -60(%rbp)
.L45:
	movq	-80(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L46
	movq	-80(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	jle	.L47
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L47:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L48:
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-80(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L49:
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L50:
	movq	-80(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L51:
	movq	-80(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-80(%rbp), %rax
	movl	164(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-80(%rbp), %rax
	movss	140(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-80(%rbp), %rax
	movss	136(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L53
.L52:
	movq	-80(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L53
	movq	-80(%rbp), %rax
	movss	136(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L53:
	movq	-80(%rbp), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	je	.L54
	movq	-80(%rbp), %rax
	movl	172(%rax), %eax
	testl	%eax, %eax
	je	.L54
	movq	-80(%rbp), %rax
	movss	148(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-80(%rbp), %rax
	movss	144(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L55
.L54:
	movq	-80(%rbp), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	je	.L55
	movq	-80(%rbp), %rax
	movss	144(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L55:
	movq	-80(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L56
	movq	-80(%rbp), %rax
	movl	156(%rax), %eax
	testl	%eax, %eax
	je	.L56
	movq	-80(%rbp), %rax
	movss	132(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-80(%rbp), %rax
	movss	128(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L57
.L56:
	movq	-80(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L57
	movq	-80(%rbp), %rax
	movss	128(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L57:
	movl	$0, -60(%rbp)
	jmp	.L58
.L59:
	movq	-80(%rbp), %rax
	movq	200(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	192(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -60(%rbp)
.L58:
	movq	-80(%rbp), %rax
	movl	208(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L59
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-80(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L60
	movl	$0, -60(%rbp)
	jmp	.L61
.L62:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -60(%rbp)
.L61:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L62
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L60:
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movl	$0, -60(%rbp)
	jmp	.L64
.L66:
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L65:
	addl	$1, -60(%rbp)
.L64:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L66
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L63:
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movl	$0, -60(%rbp)
	jmp	.L68
.L70:
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L69:
	addl	$1, -60(%rbp)
.L68:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L70
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L67:
	movl	$0, -60(%rbp)
	jmp	.L71
.L77:
	movl	$0, -56(%rbp)
	jmp	.L72
.L76:
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L74
.L75:
	movq	-80(%rbp), %rax
	movq	216(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L74:
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L75
.L73:
	addl	$1, -56(%rbp)
.L72:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L76
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -60(%rbp)
.L71:
	movq	-80(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L77
	movl	$0, -40(%rbp)
	jmp	.L78
.L92:
	cmpl	$0, -40(%rbp)
	jle	.L79
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L79:
	movl	$0, -60(%rbp)
	jmp	.L80
.L86:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-80(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-80(%rbp), %rax
	movq	112(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	112(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L81:
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	120(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L82:
	movl	$0, -56(%rbp)
	jmp	.L83
.L85:
	movq	-80(%rbp), %rax
	movq	288(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	288(%rax), %rax
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L84:
	addl	$1, -56(%rbp)
.L83:
	movq	-80(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L85
	addl	$1, -60(%rbp)
.L80:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L86
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	72(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC33(%rip), %r8
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L87:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	80(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC35(%rip), %r8
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L88:
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	88(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC36(%rip), %r8
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L89:
	movl	$0, -56(%rbp)
	jmp	.L90
.L91:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	256(%rax), %rax
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	248(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -56(%rbp)
.L90:
	movq	-80(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L91
	movl	-84(%rbp), %eax
	addl	%eax, -40(%rbp)
.L78:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L92
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC37(%rip), %rdi
	call	fwrite@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	actually_write_stockholm, .-actually_write_stockholm
	.section	.rodata
.LC38:
	.string	" \t\n"
.LC39:
	.string	"ID"
.LC40:
	.string	"AC"
.LC41:
	.string	"DE"
.LC42:
	.string	"AU"
.LC43:
	.string	"GA"
.LC44:
	.string	"NC"
.LC45:
	.string	"TC"
	.text
	.type	parse_gf, @function
parse_gf:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L116
.L95:
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L116
.L97:
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L116
.L101:
	addq	$1, -32(%rbp)
.L99:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L100
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L101
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L101
.L100:
	movq	-16(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L102
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L103
.L102:
	movq	-16(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L104
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L103
.L104:
	movq	-16(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L105
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L103
.L105:
	movq	-16(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L106
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L103
.L106:
	movq	-16(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L107
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L108
	movl	$0, %eax
	jmp	.L116
.L108:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 136(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 160(%rax)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L103
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 140(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 164(%rax)
	jmp	.L103
.L107:
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L110
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L116
.L111:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 144(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 168(%rax)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L103
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 148(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 172(%rax)
	jmp	.L103
.L110:
	movq	-16(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L116
.L114:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 128(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 152(%rax)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L103
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, 132(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 156(%rax)
	jmp	.L103
.L113:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAAddGF@PLT
.L103:
	movl	$1, %eax
.L116:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	parse_gf, .-parse_gf
	.section	.rodata
.LC46:
	.string	"WT"
	.text
	.type	parse_gs, @function
parse_gs:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L131
.L119:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L121
	movl	$0, %eax
	jmp	.L131
.L121:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L122
	movl	$0, %eax
	jmp	.L131
.L122:
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L131
.L126:
	addq	$1, -40(%rbp)
.L124:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L125
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L126
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L126
.L125:
	movq	-72(%rbp), %rax
	movl	352(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAGetSeqidx@PLT
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 352(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L127
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movl	32(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L128
.L127:
	movq	-16(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L129
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqAccession@PLT
	jmp	.L128
.L129:
	movq	-16(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L130
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqDescription@PLT
	jmp	.L128
.L130:
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	MSAAddGS@PLT
.L128:
	movl	$1, %eax
.L131:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	parse_gs, .-parse_gs
	.type	parse_gc, @function
parse_gc:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L134
	movl	$0, %eax
	jmp	.L142
.L134:
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L142
.L136:
	leaq	-44(%rbp), %rdx
	leaq	-40(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L142
.L137:
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	sre_strcat@PLT
	jmp	.L139
.L138:
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L140
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	sre_strcat@PLT
	jmp	.L139
.L140:
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L141
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	88(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	sre_strcat@PLT
	jmp	.L139
.L141:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAAppendGC@PLT
.L139:
	movl	$1, %eax
.L142:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	parse_gc, .-parse_gc
	.section	.rodata
.LC47:
	.string	"SS"
.LC48:
	.string	"SA"
	.text
	.type	parse_gr, @function
parse_gr:
.LFB12:
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
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L145
	movl	$0, %eax
	jmp	.L159
.L145:
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L147
	movl	$0, %eax
	jmp	.L159
.L147:
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L148
	movl	$0, %eax
	jmp	.L159
.L148:
	leaq	-76(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L149
	movl	$0, %eax
	jmp	.L159
.L149:
	movq	-88(%rbp), %rax
	movl	352(%rax), %edx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAGetSeqidx@PLT
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 352(%rax)
	movq	-40(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L150
	movq	-88(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$561, %esi
	leaq	.LC10(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$562, %esi
	leaq	.LC10(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 336(%rax)
	movl	$0, -72(%rbp)
	jmp	.L152
.L153:
	movq	-88(%rbp), %rax
	movq	112(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	336(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
.L152:
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L153
.L151:
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rax
	movq	336(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-88(%rbp), %rdx
	movq	112(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-88(%rbp), %rdx
	movq	336(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
	jmp	.L154
.L150:
	movq	-40(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-88(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$575, %esi
	leaq	.LC10(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$576, %esi
	leaq	.LC10(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 344(%rax)
	movl	$0, -72(%rbp)
	jmp	.L157
.L158:
	movq	-88(%rbp), %rax
	movq	120(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	344(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
.L157:
	movq	-88(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L158
.L156:
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rax
	movq	344(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-88(%rbp), %rdx
	movq	120(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-88(%rbp), %rdx
	movq	344(%rdx), %rdx
	movl	-68(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
	jmp	.L154
.L155:
	movq	-32(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	MSAAppendGR@PLT
.L154:
	movl	$1, %eax
.L159:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L160
	call	__stack_chk_fail@PLT
.L160:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	parse_gr, .-parse_gr
	.type	parse_comment, @function
parse_comment:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L162
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L163
.L162:
	leaq	-24(%rbp), %rax
	movl	$0, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L165
.L163:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAAddComment@PLT
	movl	$1, %eax
.L165:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	parse_comment, .-parse_comment
	.type	parse_sequence, @function
parse_sequence:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L171
.L168:
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L170
	movl	$0, %eax
	jmp	.L171
.L170:
	movq	-72(%rbp), %rax
	movl	352(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSAGetSeqidx@PLT
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 352(%rax)
	movl	-56(%rbp), %ecx
	movq	-72(%rbp), %rax
	movq	328(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-52(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-72(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-52(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
	movl	$1, %eax
.L171:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L172
	call	__stack_chk_fail@PLT
.L172:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	parse_sequence, .-parse_sequence
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
