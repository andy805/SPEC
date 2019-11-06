	.file	"emulation.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will."
.LC1:
	.string	"!!AA_PROFILE 1.0\n"
.LC2:
	.string	"!!NA_PROFILE 1.0\n"
	.align 8
.LC3:
	.string	"No support for profiles with non-biological alphabets"
.LC4:
	.string	"(Peptide) "
.LC5:
	.string	"(Nucleotide) "
.LC6:
	.string	""
.LC7:
	.string	"2.3"
	.align 8
.LC8:
	.string	"HMMCONVERT v%s Length: %d %s|%s|%s\n"
	.align 8
.LC9:
	.string	"   Profile converted from a profile HMM using HMMER v%s emulation.\n"
	.align 8
.LC10:
	.string	"   Compugen XSW extended profile format.\n"
	.align 8
.LC11:
	.string	"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\n"
	.align 8
.LC12:
	.string	"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\n"
	.align 8
.LC13:
	.string	"   WARNING: There is a loss of information in this conversion.\n"
	.align 8
.LC14:
	.string	"      Neither the scores nor even the rank order of hits will be precisely\n"
	.align 8
.LC15:
	.string	"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\n"
	.align 8
.LC16:
	.string	"      The profile score is an approximation of the (single-hit) HMMER score.\n\n"
	.align 8
.LC17:
	.string	"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\n"
	.align 8
.LC18:
	.string	"      to get the closest approximation to HMMER bit scores.\n"
.LC19:
	.string	"Cons"
.LC20:
	.string	"    %c "
.LC21:
	.string	"  Gap   Len  QGap  Qlen ..\n"
.LC22:
	.string	"  Gap   Len ..\n"
.LC23:
	.string	"! %d\n"
.LC24:
	.string	" %c  "
.LC26:
	.string	"%5d "
.LC28:
	.string	"%5d %5d %5d %5d\n"
.LC29:
	.string	"%5d %5d\n"
.LC30:
	.string	" *  "
	.text
	.globl	WriteProfile
	.type	WriteProfile, @function
WriteProfile:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	P7Logoddsify@PLT
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	$1000, %eax
	jle	.L2
	cmpl	$0, -52(%rbp)
	jne	.L2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
.L2:
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L3
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	jmp	.L4
.L3:
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	jne	.L5
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	jmp	.L4
.L5:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L4:
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L6
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	jmp	.L7
.L6:
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	jne	.L7
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L7:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L8
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L9
.L8:
	leaq	.LC6(%rip), %rax
.L9:
	movq	-48(%rbp), %rdx
	movl	456(%rdx), %edx
	andl	$512, %edx
	testl	%edx, %edx
	je	.L10
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	jmp	.L11
.L10:
	leaq	.LC6(%rip), %rdx
.L11:
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-48(%rbp), %rcx
	movl	136(%rcx), %ecx
	movq	-40(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rax
	movq	%rdx, %r9
	movq	%rsi, %r8
	leaq	.LC7(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	cmpl	$0, -52(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$88, %edx
	movl	$1, %esi
	leaq	.LC12(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	leaq	.LC18(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
	call	fwrite@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC19(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -28(%rbp)
	jmp	.L14
.L15:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -28(%rbp)
.L14:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L15
	cmpl	$0, -52(%rbp)
	je	.L16
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC21(%rip), %rdi
	call	fwrite@PLT
	jmp	.L17
.L16:
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$15, %edx
	movl	$1, %esi
	leaq	.LC22(%rip), %rdi
	call	fwrite@PLT
.L17:
	movl	$1, -32(%rbp)
	jmp	.L18
.L33:
	movl	-32(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L19
	cmpl	$10, -32(%rbp)
	jle	.L19
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L19:
	movl	Alphabet_size(%rip), %edx
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FArgMax@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -28(%rbp)
	jmp	.L20
.L22:
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jge	.L21
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -24(%rbp)
.L21:
	movl	-24(%rbp), %eax
	imull	$100, %eax, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -28(%rbp)
.L20:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L22
	cmpl	$1, -32(%rbp)
	jle	.L23
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	subq	$4, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	leal	(%rcx,%rax), %esi
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	imull	$100, %eax, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	jmp	.L24
.L23:
	movl	$100, -16(%rbp)
.L24:
	cmpl	$1, -32(%rbp)
	jle	.L25
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	imull	$100, %eax, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	jmp	.L26
.L25:
	movl	$100, -12(%rbp)
.L26:
	cmpl	$1, -32(%rbp)
	jle	.L27
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	subq	$4, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	leal	(%rcx,%rax), %esi
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	imull	$100, %eax, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -8(%rbp)
	jmp	.L28
.L27:
	movl	$100, -8(%rbp)
.L28:
	cmpl	$1, -32(%rbp)
	jle	.L29
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	imull	$100, %eax, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	jmp	.L30
.L29:
	movl	$100, -4(%rbp)
.L30:
	cmpl	$0, -52(%rbp)
	je	.L31
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L32
.L31:
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L32:
	addl	$1, -32(%rbp)
.L18:
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -28(%rbp)
	jmp	.L34
.L37:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$1, -32(%rbp)
	jmp	.L35
.L36:
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -32(%rbp)
.L35:
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L36
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-20(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %edx
	movq	-40(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -28(%rbp)
.L34:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L37
	jmp	.L38
.L39:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -28(%rbp)
.L38:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L39
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	WriteProfile, .-WriteProfile
	.section	.rodata
	.align 8
.LC25:
	.long	0
	.long	1083129856
	.align 8
.LC27:
	.long	0
	.long	1086556160
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
