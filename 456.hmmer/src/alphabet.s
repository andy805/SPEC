	.file	"alphabet.c"
	.text
	.section	.rodata
.LC0:
	.string	"No such alphabet type"
	.align 8
.LC1:
	.string	"Looks like nucleic acid sequence, hope that's right"
	.align 8
.LC2:
	.string	"Looks like amino acid sequence, hope that's right"
	.align 8
.LC3:
	.string	"Sorry, I can't tell if that's protein or DNA"
	.text
	.globl	DetermineAlphabet
	.type	DetermineAlphabet, @function
DetermineAlphabet:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L10:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Seqtype@PLT
	cmpl	$1, %eax
	je	.L4
	cmpl	$1, %eax
	jg	.L5
	testl	%eax, %eax
	je	.L6
	jmp	.L3
.L5:
	cmpl	$2, %eax
	je	.L7
	cmpl	$3, %eax
	je	.L8
	jmp	.L3
.L7:
	addl	$1, -12(%rbp)
	jmp	.L9
.L4:
	addl	$1, -12(%rbp)
	jmp	.L9
.L8:
	addl	$1, -8(%rbp)
	jmp	.L9
.L6:
	addl	$1, -16(%rbp)
	jmp	.L9
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L9:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L10
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L11
	movl	$2, -4(%rbp)
	jmp	.L12
.L11:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L13
	movl	$3, -4(%rbp)
	jmp	.L12
.L13:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L14
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L14
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movl	$2, -4(%rbp)
	jmp	.L12
.L14:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L15
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L15
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movl	$3, -4(%rbp)
	jmp	.L12
.L15:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L12:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	DetermineAlphabet, .-DetermineAlphabet
	.section	.rodata
	.align 8
.LC4:
	.string	"An alphabet type conflict occurred.\nYou probably mixed a DNA seq file with a protein model, or vice versa."
.LC5:
	.string	"S"
.LC6:
	.string	"ND"
.LC7:
	.string	"QE"
.LC8:
	.string	"ACDEFGHIKLMNPQRSTVWY"
.LC9:
	.string	"T"
.LC10:
	.string	"ACGT"
.LC11:
	.string	"AG"
.LC12:
	.string	"CT"
.LC13:
	.string	"AC"
.LC14:
	.string	"GT"
.LC15:
	.string	"CG"
.LC16:
	.string	"AT"
.LC17:
	.string	"ACT"
.LC18:
	.string	"CGT"
.LC19:
	.string	"ACG"
.LC20:
	.string	"AGT"
	.align 8
.LC21:
	.string	"No support for non-nucleic or protein alphabets"
	.text
	.globl	SetAlphabet
	.type	SetAlphabet, @function
SetAlphabet:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	je	.L17
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, -20(%rbp)
	je	.L32
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L32
.L17:
	movl	-20(%rbp), %eax
	cmpl	$2, %eax
	je	.L21
	cmpl	$3, %eax
	jne	.L31
	movl	-20(%rbp), %eax
	movl	%eax, Alphabet_type(%rip)
	movabsq	$5280548930227290945, %rax
	movabsq	$6003950658591214667, %rdx
	movq	%rax, Alphabet(%rip)
	movq	%rdx, 8+Alphabet(%rip)
	movabsq	$6366473957580166740, %rax
	movq	%rax, 16+Alphabet(%rip)
	movb	$0, 24+Alphabet(%rip)
	movl	$20, Alphabet_size(%rip)
	movl	$24, Alphabet_iupac(%rip)
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	Degenerate(%rip), %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addl	$1, -4(%rbp)
.L23:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L24
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	leaq	Degenerate(%rip), %rax
	movb	$1, (%rdx,%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	DegenCount(%rip), %rax
	movl	$1, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L25:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L26
	leaq	.LC5(%rip), %rsi
	movl	$85, %edi
	call	set_degenerate
	leaq	.LC6(%rip), %rsi
	movl	$66, %edi
	call	set_degenerate
	leaq	.LC7(%rip), %rsi
	movl	$90, %edi
	call	set_degenerate
	leaq	.LC8(%rip), %rsi
	movl	$88, %edi
	call	set_degenerate
	jmp	.L16
.L21:
	movl	-20(%rbp), %eax
	movl	%eax, Alphabet_type(%rip)
	movabsq	$6436292945859003201, %rax
	movabsq	$4924196121046371149, %rdx
	movq	%rax, Alphabet(%rip)
	movq	%rdx, 8+Alphabet(%rip)
	movw	$88, 16+Alphabet(%rip)
	movl	$4, Alphabet_size(%rip)
	movl	$17, Alphabet_iupac(%rip)
	movl	$0, -4(%rbp)
	jmp	.L27
.L28:
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	Degenerate(%rip), %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	addl	$1, -4(%rbp)
.L27:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L28
	movl	$0, -4(%rbp)
	jmp	.L29
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	leaq	Degenerate(%rip), %rax
	movb	$1, (%rdx,%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	DegenCount(%rip), %rax
	movl	$1, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L29:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L30
	leaq	.LC9(%rip), %rsi
	movl	$85, %edi
	call	set_degenerate
	leaq	.LC10(%rip), %rsi
	movl	$78, %edi
	call	set_degenerate
	leaq	.LC10(%rip), %rsi
	movl	$88, %edi
	call	set_degenerate
	leaq	.LC11(%rip), %rsi
	movl	$82, %edi
	call	set_degenerate
	leaq	.LC12(%rip), %rsi
	movl	$89, %edi
	call	set_degenerate
	leaq	.LC13(%rip), %rsi
	movl	$77, %edi
	call	set_degenerate
	leaq	.LC14(%rip), %rsi
	movl	$75, %edi
	call	set_degenerate
	leaq	.LC15(%rip), %rsi
	movl	$83, %edi
	call	set_degenerate
	leaq	.LC16(%rip), %rsi
	movl	$87, %edi
	call	set_degenerate
	leaq	.LC17(%rip), %rsi
	movl	$72, %edi
	call	set_degenerate
	leaq	.LC18(%rip), %rsi
	movl	$66, %edi
	call	set_degenerate
	leaq	.LC19(%rip), %rsi
	movl	$86, %edi
	call	set_degenerate
	leaq	.LC20(%rip), %rsi
	movl	$68, %edi
	call	set_degenerate
	jmp	.L16
.L31:
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L16
.L32:
	nop
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SetAlphabet, .-SetAlphabet
	.globl	SymbolIndex
	.type	SymbolIndex, @function
SymbolIndex:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	Alphabet_iupac(%rip), %eax
	subl	$1, %eax
	jmp	.L36
.L34:
	movq	-8(%rbp), %rdx
	leaq	Alphabet(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SymbolIndex, .-SymbolIndex
	.section	.rodata
.LC22:
	.string	"alphabet.c"
	.text
	.globl	DigitizeSequence
	.type	DigitizeSequence, @function
DigitizeSequence:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$215, %esi
	leaq	.LC22(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	Alphabet_iupac(%rip), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L38
.L39:
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	SymbolIndex
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L38:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L39
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	DigitizeSequence, .-DigitizeSequence
	.globl	DedigitizeSequence
	.type	DedigitizeSequence, @function
DedigitizeSequence:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$235, %esi
	leaq	.LC22(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L42
.L43:
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	addl	$1, -12(%rbp)
.L42:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L43
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DedigitizeSequence, .-DedigitizeSequence
	.globl	DigitizeAlignment
	.type	DigitizeAlignment, @function
DigitizeAlignment:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$264, %esi
	leaq	.LC22(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L46
.L50:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	addl	$2, %eax
	cltq
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$266, %esi
	leaq	.LC22(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	Alphabet_iupac(%rip), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movb	%dl, (%rax)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L47
.L49:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	SymbolIndex
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	cltq
	addq	%rcx, %rax
	movl	%esi, %edx
	movb	%dl, (%rax)
.L48:
	addl	$1, -28(%rbp)
.L47:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L49
	movl	Alphabet_iupac(%rip), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-32(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addl	$1, -36(%rbp)
.L46:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L50
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DigitizeAlignment, .-DigitizeAlignment
	.globl	P7CountSymbol
	.type	P7CountSymbol, @function
P7CountSymbol:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movss	%xmm0, -32(%rbp)
	movb	%al, -28(%rbp)
	movsbl	-28(%rbp), %edx
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, %edx
	jge	.L52
	movsbq	-28(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movsbq	-28(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addss	-32(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L57
.L52:
	movl	$0, -4(%rbp)
	jmp	.L54
.L56:
	movsbl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	Degenerate(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L55
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movsbl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	DegenCount(%rip), %rax
	movl	(%rdx,%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-32(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm2, %xmm0
	movss	%xmm0, (%rax)
.L55:
	addl	$1, -4(%rbp)
.L54:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L56
.L57:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7CountSymbol, .-P7CountSymbol
	.globl	DefaultGeneticCode
	.type	DefaultGeneticCode, @function
DefaultGeneticCode:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L59
.L62:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stdcode1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L60
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, (%rax)
	jmp	.L61
.L60:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stdcode1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, %rdx
	leaq	Alphabet(%rip), %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
.L61:
	addl	$1, -4(%rbp)
.L59:
	cmpl	$63, -4(%rbp)
	jle	.L62
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	DefaultGeneticCode, .-DefaultGeneticCode
	.globl	DefaultCodonBias
	.type	DefaultCodonBias, @function
DefaultCodonBias:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$36, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$44, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movss	.LC27(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$60, %rax
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$76, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$84, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$92, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$108, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$116, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$124, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$132, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$140, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$148, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$156, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$160, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$164, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$172, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$176, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$180, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$184, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$188, %rax
	movss	.LC24(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$192, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$196, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$200, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$204, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$212, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$216, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$220, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$224, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$228, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$232, %rax
	movss	.LC27(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$236, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$240, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$244, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$248, %rax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	addq	$252, %rax
	movss	.LC23(%rip), %xmm0
	movss	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	DefaultCodonBias, .-DefaultCodonBias
	.type	set_degenerate, @function
set_degenerate:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movb	%al, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movsbl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, %rdx
	leaq	Alphabet(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%ebx, %ecx
	leaq	0(,%rax,4), %rdx
	leaq	DegenCount(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L65
.L66:
	movsbl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, %rdx
	leaq	Alphabet(%rip), %rax
	movq	%rdx, %rbx
	subq	%rax, %rbx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, %rdx
	leaq	Alphabet(%rip), %rax
	subq	%rax, %rdx
	movq	%rbx, %rax
	salq	$2, %rax
	addq	%rbx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	leaq	Degenerate(%rip), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	addq	$1, -32(%rbp)
.L65:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L66
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	set_degenerate, .-set_degenerate
	.section	.rodata
	.align 4
.LC23:
	.long	1056964608
	.align 4
.LC24:
	.long	1048576000
	.align 4
.LC25:
	.long	1042983595
	.align 4
.LC26:
	.long	1051372203
	.align 4
.LC27:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
