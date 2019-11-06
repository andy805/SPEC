	.file	"emit.c"
	.text
	.section	.rodata
.LC0:
	.string	"emit.c"
.LC1:
	.string	"never happens"
.LC2:
	.string	"can't happen."
	.text
	.globl	EmitSequence
	.type	EmitSequence, @function
EmitSequence:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$64, %edi
	call	P7AllocTrace@PLT
	movl	$64, -64(%rbp)
	movl	$64, %edx
	movl	$59, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$64, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	TraceSet@PLT
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	TraceSet@PLT
	movl	Alphabet_iupac(%rip), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, -68(%rbp)
	movl	$0, -72(%rbp)
	movb	$5, -73(%rbp)
	movl	$2, -56(%rbp)
	jmp	.L2
.L49:
	movsbl	-73(%rbp), %eax
	cmpl	$10, %eax
	ja	.L3
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L5(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L5(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L3-.L5
	.long	.L4-.L5
	.long	.L6-.L5
	.long	.L7-.L5
	.long	.L3-.L5
	.long	.L8-.L5
	.long	.L9-.L5
	.long	.L10-.L5
	.long	.L11-.L5
	.long	.L3-.L5
	.long	.L12-.L5
	.text
.L9:
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	movq	-88(%rbp), %rdx
	movss	168(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.L13
	movb	$2, -73(%rbp)
	movl	$1, -72(%rbp)
	jmp	.L15
.L13:
	movb	$1, -73(%rbp)
	jmp	.L15
.L7:
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$3, %eax
.L17:
	movb	%al, -73(%rbp)
	cmpb	$1, -73(%rbp)
	jne	.L57
	addl	$1, -72(%rbp)
	jmp	.L57
.L8:
	movq	-88(%rbp), %rax
	addq	$172, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	cmpl	$1, %eax
	jne	.L19
	movl	$5, %eax
	jmp	.L20
.L19:
	movl	$6, %eax
.L20:
	movb	%al, -73(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L15
.L10:
	movq	-88(%rbp), %rax
	addq	$180, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	cmpl	$1, %eax
	jne	.L21
	movl	$10, %eax
	jmp	.L22
.L21:
	movl	$8, %eax
.L22:
	movb	%al, -73(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L15
.L11:
	movq	-88(%rbp), %rax
	addq	$188, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	cmpl	$1, %eax
	jne	.L23
	movl	$8, %eax
	jmp	.L24
.L23:
	movl	$9, %eax
.L24:
	movb	%al, -73(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L15
.L12:
	movq	-88(%rbp), %rax
	addq	$196, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	cmpl	$1, %eax
	jne	.L25
	movl	$10, %eax
	jmp	.L26
.L25:
	movl	$6, %eax
.L26:
	movb	%al, -73(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L15
.L6:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jge	.L27
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$2, %eax
.L29:
	movb	%al, -73(%rbp)
	addl	$1, -72(%rbp)
	jmp	.L15
.L27:
	movb	$7, -73(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L15
.L4:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jge	.L31
	movq	-88(%rbp), %rax
	movq	144(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
	movq	-88(%rbp), %rax
	movq	216(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	leaq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	cmpl	$1, %eax
	je	.L33
	cmpl	$1, %eax
	jg	.L34
	testl	%eax, %eax
	je	.L35
	jmp	.L32
.L34:
	cmpl	$2, %eax
	je	.L36
	cmpl	$3, %eax
	je	.L37
	jmp	.L32
.L35:
	addl	$1, -72(%rbp)
	movb	$1, -73(%rbp)
	jmp	.L39
.L33:
	movb	$3, -73(%rbp)
	jmp	.L39
.L36:
	addl	$1, -72(%rbp)
	movb	$2, -73(%rbp)
	jmp	.L39
.L37:
	movl	$0, -72(%rbp)
	movb	$7, -73(%rbp)
	jmp	.L39
.L32:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L15
.L31:
	movl	$0, -72(%rbp)
	movb	$7, -73(%rbp)
	jmp	.L15
.L39:
	jmp	.L15
.L3:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L15
.L57:
	nop
.L15:
	movl	$-1, -52(%rbp)
	cmpb	$1, -73(%rbp)
	jne	.L40
	movl	Alphabet_size(%rip), %edx
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	movl	%eax, -52(%rbp)
	jmp	.L41
.L40:
	cmpb	$3, -73(%rbp)
	jne	.L42
	movl	Alphabet_size(%rip), %edx
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	movl	%eax, -52(%rbp)
	jmp	.L41
.L42:
	cmpb	$5, -73(%rbp)
	jne	.L43
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L44
.L43:
	cmpb	$8, -73(%rbp)
	jne	.L45
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L44
.L45:
	cmpb	$10, -73(%rbp)
	jne	.L41
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L41
.L44:
	movl	Alphabet_size(%rip), %eax
	movq	-88(%rbp), %rdx
	addq	$224, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FChoose@PLT
	movl	%eax, -52(%rbp)
.L41:
	cmpl	$-1, -52(%rbp)
	je	.L46
	movl	-68(%rbp), %edi
	jmp	.L47
.L46:
	movl	$0, %edi
.L47:
	movsbl	-73(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	-56(%rbp), %esi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	TraceSet@PLT
	addl	$1, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L48
	addl	$64, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L48:
	cmpl	$-1, -52(%rbp)
	je	.L2
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -60(%rbp)
	jne	.L2
	addl	$64, -60(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$146, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -40(%rbp)
.L2:
	cmpb	$9, -73(%rbp)
	jne	.L49
	movq	-48(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	movl	Alphabet_iupac(%rip), %edx
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	subl	$1, -68(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L50
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L51
.L50:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L51:
	cmpq	$0, -104(%rbp)
	je	.L52
	movq	-104(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L52:
	cmpq	$0, -112(%rbp)
	je	.L53
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L1
.L53:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	nop
.L1:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	EmitSequence, .-EmitSequence
	.globl	EmitConsensusSequence
	.type	EmitConsensusSequence, @function
EmitConsensusSequence:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L59
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	jmp	.L60
.L59:
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
.L60:
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	StateOccupancy
	movl	$0, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$1, -76(%rbp)
	jmp	.L61
.L67:
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jb	.L92
	addl	$1, -88(%rbp)
	jmp	.L64
.L92:
	addl	$1, -84(%rbp)
.L64:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jge	.L65
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jb	.L65
	movq	-104(%rbp), %rax
	movq	144(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movss	(%rax), %xmm1
	movss	.LC5(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	addl	%eax, -80(%rbp)
.L65:
	addl	$1, -76(%rbp)
.L61:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L67
	movl	-88(%rbp), %eax
	leal	6(%rax), %edx
	movl	-84(%rbp), %eax
	addl	%eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	P7AllocTrace@PLT
	movl	-88(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	addl	$3, %eax
	cltq
	movq	%rax, %rdx
	movl	$327, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-88(%rbp), %edx
	movl	-80(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$328, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	TraceSet@PLT
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	TraceSet@PLT
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$6, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	TraceSet@PLT
	movl	Alphabet_iupac(%rip), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	$3, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -76(%rbp)
	jmp	.L68
.L78:
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jb	.L93
	movl	Alphabet_size(%rip), %edx
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FArgMax@PLT
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-64(%rbp), %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-60(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L71
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L71:
	addl	$1, -68(%rbp)
	addl	$1, -72(%rbp)
	jmp	.L73
.L93:
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	addl	$1, -72(%rbp)
.L73:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jge	.L74
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jb	.L74
	movq	-104(%rbp), %rax
	movq	144(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movss	(%rax), %xmm1
	movss	.LC5(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	jmp	.L76
.L77:
	movl	-68(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$120, (%rax)
	movl	Alphabet_iupac(%rip), %eax
	leal	-1(%rax), %edx
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addl	$1, -68(%rbp)
	addl	$1, -72(%rbp)
.L76:
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	testl	%eax, %eax
	jne	.L77
.L74:
	addl	$1, -76(%rbp)
.L68:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L78
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	addl	$1, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	addl	$1, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	TraceSet@PLT
	addl	$1, -72(%rbp)
	movl	Alphabet_iupac(%rip), %edx
	movl	-68(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -112(%rbp)
	je	.L79
	movq	-112(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L80
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L80:
	cmpq	$0, -120(%rbp)
	je	.L81
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L82
.L81:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L82:
	cmpq	$0, -128(%rbp)
	je	.L83
	movq	-128(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L83:
	cmpq	$0, -136(%rbp)
	je	.L84
	movq	-56(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L94
.L84:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
.L94:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L86
	call	__stack_chk_fail@PLT
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	EmitConsensusSequence, .-EmitConsensusSequence
	.globl	StateOccupancy
	.type	StateOccupancy, @function
StateOccupancy:
.LFB7:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$414, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$415, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$416, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	168(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	movss	4(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movq	-16(%rbp), %rax
	addq	$4, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	$2, -28(%rbp)
	jmp	.L96
.L98:
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jge	.L97
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.L97:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm2, %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm2, %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -28(%rbp)
.L96:
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L98
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	StateOccupancy, .-StateOccupancy
	.section	.rodata
	.align 4
.LC3:
	.long	1056964608
	.align 4
.LC4:
	.long	1063675494
	.align 4
.LC5:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
