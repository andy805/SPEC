	.file	"histogram.c"
	.text
	.section	.rodata
.LC0:
	.string	"histogram.c"
	.text
	.globl	AllocHistogram
	.type	AllocHistogram, @function
AllocHistogram:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$64, %edx
	movl	$68, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$2147483647, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$-2147483648, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$75, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L3
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AllocHistogram, .-AllocHistogram
	.globl	FreeHistogram
	.type	FreeHistogram, @function
FreeHistogram:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FreeHistogram, .-FreeHistogram
	.globl	UnfitHistogram
	.type	UnfitHistogram, @function
UnfitHistogram:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	UnfitHistogram, .-UnfitHistogram
	.section	.rodata
	.align 8
.LC1:
	.string	"AddToHistogram(): Can't add to a fitted histogram\n"
	.text
	.globl	AddToHistogram
	.type	AddToHistogram, @function
AddToHistogram:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L10
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L10:
	cvtss2sd	-44(%rbp), %xmm0
	call	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jge	.L11
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$148, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movl	$0, -20(%rbp)
	jmp	.L12
.L13:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -20(%rbp)
.L12:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L13
	jmp	.L14
.L11:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L14
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$159, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L15
.L16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -20(%rbp)
.L15:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L16
.L14:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jge	.L17
	movq	-40(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 20(%rax)
.L17:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L20
	movq	-40(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 16(%rax)
	nop
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	AddToHistogram, .-AddToHistogram
	.section	.rodata
.LC2:
	.string	"exp"
.LC3:
	.string	"obs"
.LC4:
	.string	"score"
	.align 8
.LC5:
	.string	"%5s %6s %6s  (one = represents %d sequences)\n"
.LC6:
	.string	"---"
.LC7:
	.string	"-----"
.LC8:
	.string	"%5s %6s %6s\n"
.LC9:
	.string	"-"
.LC10:
	.string	"<%4d %6d %6s|"
.LC11:
	.string	"oops"
.LC12:
	.string	">%4d %6d %6s|"
.LC13:
	.string	"%5d %6d %6d|"
.LC14:
	.string	"%5d %6d %6s|"
	.align 8
.LC16:
	.string	"\n\n%% No statistical fit available\n"
	.align 8
.LC17:
	.string	"\n\n%% Statistical details of theoretical EVD fit:\n"
.LC18:
	.string	"              mu = %10.4f\n"
.LC19:
	.string	"          lambda = %10.4f\n"
.LC20:
	.string	"chi-sq statistic = %10.4f\n"
.LC21:
	.string	"  P(chi-square)  = %10.4g\n"
	.align 8
.LC22:
	.string	"\n\n%% Statistical details of theoretical Gaussian fit:\n"
.LC23:
	.string	"            mean = %10.4f\n"
.LC24:
	.string	"              sd = %10.4f\n"
	.text
	.globl	PrintASCIIHistogram
	.type	PrintASCIIHistogram, @function
PrintASCIIHistogram:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -108(%rbp)
	movl	$0, -140(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %edx
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -132(%rbp)
	jmp	.L22
.L24:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jge	.L23
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
	movq	-160(%rbp), %rax
	movl	8(%rax), %edx
	movl	-132(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%rbp)
.L23:
	addl	$1, -132(%rbp)
.L22:
	movq	-160(%rbp), %rax
	movl	16(%rax), %edx
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, -132(%rbp)
	jle	.L24
	movl	-124(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	$0, -136(%rbp)
	jmp	.L25
.L29:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	-124(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -132(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L26
	movl	$0, -136(%rbp)
	jmp	.L27
.L26:
	addl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.L27
	movl	-108(%rbp), %eax
	addl	%eax, -124(%rbp)
	jmp	.L28
.L27:
	subl	$1, -124(%rbp)
.L25:
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -124(%rbp)
	jg	.L29
.L28:
	movl	$0, -136(%rbp)
	jmp	.L30
.L34:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	-116(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -132(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L31
	movl	$0, -136(%rbp)
	jmp	.L32
.L31:
	addl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.L32
	movl	-108(%rbp), %eax
	subl	%eax, -116(%rbp)
	jmp	.L33
.L32:
	addl	$1, -116(%rbp)
.L30:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L34
.L33:
	movl	$0, -120(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %edx
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -132(%rbp)
	jmp	.L35
.L36:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -120(%rbp)
	addl	$1, -132(%rbp)
.L35:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	-124(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, -132(%rbp)
	jle	.L36
	movl	$0, -112(%rbp)
	movq	-160(%rbp), %rax
	movl	16(%rax), %edx
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -132(%rbp)
	jmp	.L37
.L38:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -112(%rbp)
	subl	$1, -132(%rbp)
.L37:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	-116(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, -132(%rbp)
	jge	.L38
	movl	-120(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.L39
	movl	-120(%rbp), %eax
	movl	%eax, -140(%rbp)
.L39:
	movl	-112(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.L40
	movl	-112(%rbp), %eax
	movl	%eax, -140(%rbp)
.L40:
	movl	-140(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$582368447, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %r9d
	leaq	.LC2(%rip), %r8
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-152(%rbp), %rax
	leaq	.LC6(%rip), %r8
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movb	$0, -16(%rbp)
	movb	$10, -17(%rbp)
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -132(%rbp)
	jmp	.L41
.L61:
	leaq	-96(%rbp), %rax
	movl	$79, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	-132(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	-132(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L68
	movl	-132(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jg	.L69
	movl	-132(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jne	.L45
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -132(%rbp)
	je	.L45
	movl	-132(%rbp), %eax
	leal	1(%rax), %esi
	movl	-120(%rbp), %edx
	leaq	-96(%rbp), %rax
	leaq	.LC9(%rip), %r8
	movl	%edx, %ecx
	movl	%esi, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	cmpl	$0, -120(%rbp)
	jle	.L46
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-104(%rbp)
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	cmpl	$60, -136(%rbp)
	jle	.L47
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L47:
	movl	$20, -128(%rbp)
	jmp	.L48
.L49:
	movl	-128(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -128(%rbp)
	cltq
	movb	$61, -96(%rbp,%rax)
	subl	$1, -136(%rbp)
.L48:
	cmpl	$0, -136(%rbp)
	jg	.L49
.L46:
	movq	-152(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	jmp	.L43
.L45:
	movl	-132(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jne	.L50
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -132(%rbp)
	je	.L50
	movl	-112(%rbp), %ecx
	movl	-132(%rbp), %edx
	leaq	-96(%rbp), %rax
	leaq	.LC9(%rip), %r8
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	cmpl	$0, -112(%rbp)
	jle	.L51
	movl	-112(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-104(%rbp)
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	$20, -128(%rbp)
	jmp	.L52
.L53:
	movl	-128(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -128(%rbp)
	cltq
	movb	$61, -96(%rbp,%rax)
	subl	$1, -136(%rbp)
.L52:
	cmpl	$0, -136(%rbp)
	jg	.L53
.L51:
	movq	-152(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	jmp	.L43
.L50:
	movq	-160(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L54
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvttss2si	%xmm0, %esi
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-132(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L55
.L54:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-132(%rbp), %edx
	leaq	-96(%rbp), %rax
	leaq	.LC9(%rip), %r8
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L55:
	movb	$32, -76(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L56
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cltd
	idivl	-104(%rbp)
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	$20, -128(%rbp)
	jmp	.L57
.L58:
	movl	-128(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -128(%rbp)
	cltq
	movb	$61, -96(%rbp,%rax)
	subl	$1, -136(%rbp)
.L57:
	cmpl	$0, -136(%rbp)
	jg	.L58
.L56:
	movq	-160(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L59
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvttss2si	%xmm0, %eax
	testl	%eax, %eax
	jle	.L59
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	.LC15(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	cltd
	idivl	-104(%rbp)
	addl	$20, %eax
	movl	%eax, -128(%rbp)
	cmpl	$77, -128(%rbp)
	jle	.L60
	movl	$78, -128(%rbp)
.L60:
	movl	-128(%rbp), %eax
	cltq
	movb	$42, -96(%rbp,%rax)
.L59:
	movq	-152(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	jmp	.L43
.L68:
	nop
	jmp	.L43
.L69:
	nop
.L43:
	addl	$1, -132(%rbp)
.L41:
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -132(%rbp)
	jle	.L61
	movq	-160(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$1, %eax
	je	.L63
	cmpl	$2, %eax
	je	.L64
	testl	%eax, %eax
	je	.L65
	jmp	.L21
.L65:
	movq	-152(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L62
.L63:
	movq	-152(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	44(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	60(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	jmp	.L62
.L64:
	movq	-152(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	44(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	-160(%rbp), %rax
	movss	60(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-152(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	nop
.L62:
	nop
.L21:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PrintASCIIHistogram, .-PrintASCIIHistogram
	.section	.rodata
.LC25:
	.string	"%-6d %f\n"
.LC26:
	.string	"&\n"
	.text
	.globl	PrintXMGRHistogram
	.type	PrintXMGRHistogram, @function
PrintXMGRHistogram:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L71
.L73:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	-12(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L72
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	-12(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L72:
	addl	$1, -12(%rbp)
.L71:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L73
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L75
.L76:
	movq	-32(%rbp), %rax
	movss	48(%rax), %xmm2
	movq	-32(%rbp), %rax
	movss	44(%rax), %xmm3
	cvtsi2ss	-12(%rbp), %xmm0
	movss	.LC15(%rip), %xmm1
	addss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	call	ExtremeValueP
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rax
	movss	48(%rax), %xmm2
	movq	-32(%rbp), %rax
	movss	44(%rax), %xmm1
	cvtsi2ss	-12(%rbp), %xmm0
	call	ExtremeValueP
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm4
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -12(%rbp)
.L75:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L76
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
.L77:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PrintXMGRHistogram, .-PrintXMGRHistogram
	.globl	PrintXMGRDistribution
	.type	PrintXMGRDistribution, @function
PrintXMGRDistribution:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L79
.L80:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -16(%rbp)
.L79:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L80
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L82
.L83:
	movq	-32(%rbp), %rax
	movss	48(%rax), %xmm2
	movq	-32(%rbp), %rax
	movss	44(%rax), %xmm1
	cvtsi2ss	-16(%rbp), %xmm0
	call	ExtremeValueP
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -16(%rbp)
.L82:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L83
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
.L84:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PrintXMGRDistribution, .-PrintXMGRDistribution
	.globl	PrintXMGRRegressionLine
	.type	PrintXMGRRegressionLine, @function
PrintXMGRRegressionLine:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L86
.L88:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	-16(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	cvtsi2sd	-12(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	log@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L87
	movl	-16(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	%ecx, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L87:
	addl	$1, -16(%rbp)
.L86:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L88
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L90
.L91:
	movq	-32(%rbp), %rax
	movss	48(%rax), %xmm2
	movq	-32(%rbp), %rax
	movss	44(%rax), %xmm1
	cvtsi2ss	-16(%rbp), %xmm0
	call	ExtremeValueP
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	log@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -16(%rbp)
.L90:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L91
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC26(%rip), %rdi
	call	fwrite@PLT
.L92:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PrintXMGRRegressionLine, .-PrintXMGRRegressionLine
	.globl	EVDBasicFit
	.type	EVDBasicFit, @function
EVDBasicFit:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movl	16(%rax), %edx
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$492, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$493, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L94
.L95:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -40(%rbp)
.L94:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L95
	movl	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.L96
.L97:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -48(%rbp)
	cvtsi2ss	-48(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cvtsi2ss	%ecx, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L96:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L97
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.L98
.L99:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	log@PLT
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -44(%rbp)
.L98:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L99
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edi
	leaq	-52(%rbp), %r8
	leaq	-60(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	Linefit@PLT
	movss	-60(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	.LC30(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-56(%rbp), %xmm0
	divss	-32(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-32(%rbp), %xmm4
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	$2, %esi
	movaps	%xmm1, %xmm3
	movaps	%xmm0, %xmm2
	movaps	%xmm4, %xmm1
	movl	%edx, -76(%rbp)
	movss	-76(%rbp), %xmm0
	movq	%rax, %rdi
	call	ExtremeValueSetHistogram
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	EVDBasicFit, .-EVDBasicFit
	.globl	ExtremeValueFitHistogram
	.type	ExtremeValueFitHistogram, @function
ExtremeValueFitHistogram:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movss	%xmm0, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L103
	movl	$-1, -44(%rbp)
	movq	-88(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -60(%rbp)
	jmp	.L104
.L106:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L105
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
.L105:
	addl	$1, -60(%rbp)
.L104:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L106
.L103:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	ucomiss	-96(%rbp), %xmm0
	jbe	.L129
	movss	-96(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.L109
.L129:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	cvttss2si	%xmm0, %eax
.L109:
	movl	%eax, -52(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L110
.L122:
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$4, -40(%rbp)
	jle	.L130
	movl	-40(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$600, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$601, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -68(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L113
.L114:
	cvtsi2ss	-60(%rbp), %xmm0
	movl	-60(%rbp), %eax
	subl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC31(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movl	-60(%rbp), %eax
	subl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	-60(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -68(%rbp)
	addl	$1, -60(%rbp)
.L113:
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L114
	cmpl	$99, -68(%rbp)
	jle	.L131
	cmpl	$0, -92(%rbp)
	je	.L116
	cmpl	$0, -48(%rbp)
	jne	.L117
	cvtsi2ss	-68(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC32(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	subl	-68(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -64(%rbp)
	jmp	.L116
.L117:
	movss	-76(%rbp), %xmm2
	movss	-72(%rbp), %xmm1
	cvtsi2ss	-56(%rbp), %xmm0
	call	EVDDistribution
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	cvtsi2sd	-68(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	.LC27(%rip), %xmm1
	subsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	subl	-68(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -64(%rbp)
.L116:
	cmpl	$0, -92(%rbp)
	je	.L118
	cvtsi2ss	-56(%rbp), %xmm0
	leaq	-76(%rbp), %r8
	leaq	-72(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVDCensoredFit
	testl	%eax, %eax
	jne	.L119
	jmp	.L112
.L118:
	leaq	-76(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVDMaxLikelyFit
	testl	%eax, %eax
	je	.L132
.L119:
	movss	-72(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm5
	movsd	%xmm5, -104(%rbp)
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movss	-76(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm5
	subsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L133
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	addl	$1, -48(%rbp)
.L110:
	cmpl	$99, -48(%rbp)
	jle	.L122
	jmp	.L121
.L133:
	nop
.L121:
	cvtsi2ss	-52(%rbp), %xmm1
	cvtsi2ss	-56(%rbp), %xmm0
	movss	-76(%rbp), %xmm4
	movl	-72(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movaps	%xmm1, %xmm3
	movaps	%xmm0, %xmm2
	movaps	%xmm4, %xmm1
	movl	%edx, -104(%rbp)
	movss	-104(%rbp), %xmm0
	movq	%rax, %rdi
	call	ExtremeValueSetHistogram
	movl	$1, %eax
	jmp	.L126
.L130:
	nop
	jmp	.L112
.L131:
	nop
	jmp	.L112
.L132:
	nop
.L112:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	UnfitHistogram
	cmpq	$0, -32(%rbp)
	je	.L124
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L124:
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L125:
	movl	$0, %eax
.L126:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ExtremeValueFitHistogram, .-ExtremeValueFitHistogram
	.globl	ExtremeValueSetHistogram
	.type	ExtremeValueSetHistogram, @function
ExtremeValueSetHistogram:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UnfitHistogram
	movq	-40(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-40(%rbp), %rax
	movss	-48(%rbp), %xmm0
	movss	%xmm0, 48(%rax)
	movq	-40(%rbp), %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, 44(%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$696, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -16(%rbp)
	jmp	.L135
.L136:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -16(%rbp)
.L135:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L136
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L137
.L138:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movq	-40(%rbp), %rdx
	movss	48(%rdx), %xmm2
	movq	-40(%rbp), %rdx
	movss	44(%rdx), %xmm1
	cvtsi2ss	-20(%rbp), %xmm0
	movl	%eax, %edi
	call	ExtremeValueE
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movq	-40(%rbp), %rdx
	movss	48(%rdx), %xmm2
	movq	-40(%rbp), %rdx
	movss	44(%rdx), %xmm1
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cvtsi2ss	%edx, %xmm0
	movl	%eax, %edi
	call	ExtremeValueE
	movsd	-72(%rbp), %xmm4
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L137:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L138
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 56(%rax)
	movl	$0, -12(%rbp)
	movss	-52(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	jmp	.L139
.L142:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC33(%rip), %xmm0
	jb	.L140
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L140
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm1
	movss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 56(%rax)
	addl	$1, -12(%rbp)
.L140:
	addl	$1, -20(%rbp)
.L139:
	cvtsi2ss	-20(%rbp), %xmm0
	movss	-56(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L142
	movl	-60(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jle	.L143
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC34(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-60(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC34(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	call	IncompleteGamma@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 60(%rax)
	jmp	.L146
.L143:
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 60(%rax)
.L146:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ExtremeValueSetHistogram, .-ExtremeValueSetHistogram
	.globl	GaussianFitHistogram
	.type	GaussianFitHistogram, @function
GaussianFitHistogram:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UnfitHistogram
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$999, %eax
	jg	.L148
	movq	-40(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L149
.L148:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L150
.L151:
	cvtsi2ss	-20(%rbp), %xmm0
	movss	.LC31(%rip), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-28(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	mulss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	addl	$1, -20(%rbp)
.L150:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L151
	movq	-40(%rbp), %rax
	movl	$2, 40(%rax)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-28(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 44(%rax)
	movss	-28(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 48(%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$790, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -12(%rbp)
	jmp	.L152
.L153:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -12(%rbp)
.L152:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L153
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L154
.L155:
	cvtsi2ss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC35(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	44(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm5
	movsd	%xmm5, -56(%rbp)
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC36(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	exp@PLT
	mulsd	-64(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L154:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L155
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 56(%rax)
	movl	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L156
.L159:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC33(%rip), %xmm0
	jb	.L157
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L157
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm1
	movss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 56(%rax)
	addl	$1, -16(%rbp)
.L157:
	addl	$1, -20(%rbp)
.L156:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L159
	cmpl	$3, -16(%rbp)
	jle	.L160
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC34(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-16(%rbp), %eax
	subl	$3, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC34(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	call	IncompleteGamma@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 60(%rax)
	jmp	.L161
.L160:
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 60(%rax)
.L161:
	movl	$1, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	GaussianFitHistogram, .-GaussianFitHistogram
	.globl	GaussianSetHistogram
	.type	GaussianSetHistogram, @function
GaussianSetHistogram:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	%xmm1, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UnfitHistogram
	movq	-40(%rbp), %rax
	movl	$2, 40(%rax)
	movq	-40(%rbp), %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, 44(%rax)
	movq	-40(%rbp), %rax
	movss	-48(%rbp), %xmm0
	movss	%xmm0, 48(%rax)
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$845, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -16(%rbp)
	jmp	.L164
.L165:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -16(%rbp)
.L164:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L165
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L166
.L167:
	cvtsi2ss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC35(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	44(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm5
	movsd	%xmm5, -56(%rbp)
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC36(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	movq	-40(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	exp@PLT
	mulsd	-64(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -20(%rbp)
.L166:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L167
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 56(%rax)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L168
.L171:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	.LC33(%rip), %xmm0
	jb	.L169
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L169
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm1
	movss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	divss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 56(%rax)
	addl	$1, -12(%rbp)
.L169:
	addl	$1, -20(%rbp)
.L168:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L171
	cmpl	$1, -12(%rbp)
	jle	.L172
	movq	-40(%rbp), %rax
	movss	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC34(%rip), %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC34(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	call	IncompleteGamma@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 60(%rax)
	jmp	.L175
.L172:
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 60(%rax)
.L175:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	GaussianSetHistogram, .-GaussianSetHistogram
	.globl	EVDDensity
	.type	EVDDensity, @function
EVDDensity:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm3
	movsd	%xmm3, -24(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	movsd	-32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	EVDDensity, .-EVDDensity
	.globl	EVDDistribution
	.type	EVDDistribution, @function
EVDDistribution:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	EVDDistribution, .-EVDDistribution
	.globl	ExtremeValueP
	.type	ExtremeValueP, @function
ExtremeValueP:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC37(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.L191
	movsd	.LC27(%rip), %xmm0
	jmp	.L183
.L191:
	movss	-20(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LC38(%rip), %xmm0
	jb	.L192
	pxor	%xmm0, %xmm0
	jmp	.L183
.L192:
	cvtss2sd	-28(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movss	-20(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	.LC40(%rip), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L193
	movsd	-8(%rbp), %xmm0
	jmp	.L183
.L193:
	movsd	-8(%rbp), %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ExtremeValueP, .-ExtremeValueP
	.globl	ExtremeValueP2
	.type	ExtremeValueP2, @function
ExtremeValueP2:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movl	%edi, -32(%rbp)
	cvtsi2sd	-32(%rbp), %xmm3
	movsd	%xmm3, -40(%rbp)
	movss	-28(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm0
	call	ExtremeValueP
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC40(%rip), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L199
	movsd	-8(%rbp), %xmm0
	jmp	.L197
.L199:
	movsd	-8(%rbp), %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	subsd	%xmm1, %xmm0
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ExtremeValueP2, .-ExtremeValueP2
	.globl	ExtremeValueE
	.type	ExtremeValueE, @function
ExtremeValueE:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movl	%edi, -16(%rbp)
	cvtsi2sd	-16(%rbp), %xmm3
	movsd	%xmm3, -24(%rbp)
	movss	-12(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movl	%eax, -28(%rbp)
	movss	-28(%rbp), %xmm0
	call	ExtremeValueP
	mulsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ExtremeValueE, .-ExtremeValueE
	.globl	EVDrandom
	.type	EVDrandom, @function
EVDrandom:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L203
.L204:
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -4(%rbp)
.L203:
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L208
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	je	.L204
.L208:
	movss	.LC15(%rip), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L209
	movss	.LC15(%rip), %xmm0
	ucomiss	-4(%rbp), %xmm0
	je	.L204
.L209:
	cvtss2sd	-20(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-24(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	EVDrandom, .-EVDrandom
	.globl	Lawless416
	.type	Lawless416, @function
Lawless416:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movss	%xmm0, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L211
.L214:
	cmpq	$0, -80(%rbp)
	je	.L212
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	jmp	.L213
.L212:
	movsd	.LC27(%rip), %xmm0
.L213:
	movsd	%xmm0, -8(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	cvtss2sd	-88(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-112(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	cvtss2sd	-88(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-112(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtss2sd	-88(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-8(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -52(%rbp)
.L211:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L214
	cvtss2sd	-88(%rbp), %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1
	mulss	-88(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC27(%rip), %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Lawless416, .-Lawless416
	.globl	Lawless422
	.type	Lawless422, @function
Lawless422:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movss	%xmm0, -92(%rbp)
	movss	%xmm1, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L217
.L220:
	cmpq	$0, -80(%rbp)
	je	.L218
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	jmp	.L219
.L218:
	movsd	.LC27(%rip), %xmm0
.L219:
	movsd	%xmm0, -8(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-8(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-120(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-120(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -52(%rbp)
.L217:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L220
	cvtsi2sd	-88(%rbp), %xmm4
	movsd	%xmm4, -120(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-120(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sd	-88(%rbp), %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-120(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	cvtsi2sd	-88(%rbp), %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-92(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-120(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	movsd	.LC27(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	divsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-104(%rbp), %rax
	movss	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	-48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movss	-96(%rbp), %xmm1
	mulss	-96(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC27(%rip), %xmm2
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-112(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Lawless422, .-Lawless422
	.globl	EVDMaxLikelyFit
	.type	EVDMaxLikelyFit, @function
EVDMaxLikelyFit:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC41(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L223
.L229:
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %rcx
	movl	-60(%rbp), %edi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, -124(%rbp)
	movss	-124(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless416
	movss	-68(%rbp), %xmm1
	movss	.LC43(%rip), %xmm0
	andps	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L262
	movss	-68(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-60(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	jb	.L227
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
.L227:
	addl	$1, -56(%rbp)
.L223:
	cmpl	$99, -56(%rbp)
	jle	.L229
	jmp	.L226
.L262:
	nop
.L226:
	cmpl	$100, -56(%rbp)
	jne	.L230
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %rcx
	movl	-60(%rbp), %edi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, -124(%rbp)
	movss	-124(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless416
	movss	-68(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L236
	jmp	.L231
.L236:
	cvtss2sd	-52(%rbp), %xmm0
	movsd	.LC45(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -52(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jbe	.L259
	movl	$0, %eax
	jmp	.L253
.L259:
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %rcx
	movl	-52(%rbp), %edi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, -124(%rbp)
	movss	-124(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless416
	movss	-68(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L236
	jmp	.L237
.L231:
	cvtss2sd	-48(%rbp), %xmm0
	movsd	.LC45(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -48(%rbp)
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %rcx
	movl	-48(%rbp), %edi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, -124(%rbp)
	movss	-124(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless416
	movss	-48(%rbp), %xmm0
	ucomiss	.LC46(%rip), %xmm0
	jbe	.L260
	movl	$0, %eax
	jmp	.L253
.L260:
	movss	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L231
.L237:
	movl	$0, -56(%rbp)
	jmp	.L240
.L247:
	movss	-52(%rbp), %xmm0
	addss	-48(%rbp), %xmm0
	movss	.LC47(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %rcx
	movl	-44(%rbp), %edi
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, -124(%rbp)
	movss	-124(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless416
	movss	-68(%rbp), %xmm1
	movss	.LC43(%rip), %xmm0
	andps	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L263
	movss	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L261
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	jmp	.L246
.L261:
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L246:
	addl	$1, -56(%rbp)
.L240:
	cmpl	$99, -56(%rbp)
	jle	.L247
	jmp	.L243
.L263:
	nop
.L243:
	cmpl	$100, -56(%rbp)
	jne	.L248
	movl	$0, %eax
	jmp	.L253
.L248:
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
.L230:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L249
.L252:
	cmpq	$0, -96(%rbp)
	je	.L250
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	jmp	.L251
.L250:
	movsd	.LC27(%rip), %xmm0
.L251:
	movsd	%xmm0, -16(%rbp)
	movss	-60(%rbp), %xmm1
	movss	.LC30(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	mulsd	-16(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -56(%rbp)
.L249:
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L252
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -36(%rbp)
	movq	-120(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movl	$1, %eax
.L253:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L254
	call	__stack_chk_fail@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	EVDMaxLikelyFit, .-EVDMaxLikelyFit
	.globl	EVDCensoredFit
	.type	EVDCensoredFit, @function
EVDCensoredFit:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movss	%xmm0, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC41(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L265
.L271:
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %r8
	movss	-60(%rbp), %xmm0
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movaps	%xmm0, %xmm1
	movl	%edi, -136(%rbp)
	movss	-136(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless422
	movss	-68(%rbp), %xmm1
	movss	.LC43(%rip), %xmm0
	andps	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L304
	movss	-68(%rbp), %xmm0
	movss	-64(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-60(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	jb	.L269
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
.L269:
	addl	$1, -56(%rbp)
.L265:
	cmpl	$99, -56(%rbp)
	jle	.L271
	jmp	.L268
.L304:
	nop
.L268:
	cmpl	$100, -56(%rbp)
	jne	.L272
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %r8
	movss	-60(%rbp), %xmm0
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movaps	%xmm0, %xmm1
	movl	%edi, -136(%rbp)
	movss	-136(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless422
	movss	-68(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L278
	jmp	.L273
.L278:
	cvtss2sd	-52(%rbp), %xmm0
	movsd	.LC48(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -52(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jbe	.L301
	movl	$0, %eax
	jmp	.L295
.L301:
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %r8
	movss	-52(%rbp), %xmm0
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movaps	%xmm0, %xmm1
	movl	%edi, -136(%rbp)
	movss	-136(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless422
	movss	-68(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.L278
	jmp	.L279
.L273:
	cvtss2sd	-48(%rbp), %xmm0
	movsd	.LC45(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -48(%rbp)
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %r8
	movss	-52(%rbp), %xmm0
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movaps	%xmm0, %xmm1
	movl	%edi, -136(%rbp)
	movss	-136(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless422
	movss	-48(%rbp), %xmm0
	ucomiss	.LC46(%rip), %xmm0
	jbe	.L302
	movl	$0, %eax
	jmp	.L295
.L302:
	movss	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L273
.L279:
	movl	$0, -56(%rbp)
	jmp	.L282
.L289:
	movss	-52(%rbp), %xmm0
	addss	-48(%rbp), %xmm0
	movss	.LC47(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %r8
	movss	-52(%rbp), %xmm0
	movl	-108(%rbp), %edi
	movl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movaps	%xmm0, %xmm1
	movl	%edi, -136(%rbp)
	movss	-136(%rbp), %xmm0
	movq	%rax, %rdi
	call	Lawless422
	movss	-68(%rbp), %xmm1
	movss	.LC43(%rip), %xmm0
	andps	%xmm1, %xmm0
	movss	-40(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L305
	movss	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L303
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	jmp	.L288
.L303:
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
.L288:
	addl	$1, -56(%rbp)
.L282:
	cmpl	$99, -56(%rbp)
	jle	.L289
	jmp	.L285
.L305:
	nop
.L285:
	cmpl	$100, -56(%rbp)
	jne	.L290
	movl	$0, %eax
	jmp	.L295
.L290:
	movss	-44(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
.L272:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L291
.L294:
	cmpq	$0, -96(%rbp)
	je	.L292
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	jmp	.L293
.L292:
	movsd	.LC27(%rip), %xmm0
.L293:
	movsd	%xmm0, -16(%rbp)
	cvtss2sd	-60(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-16(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -56(%rbp)
.L291:
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L294
	cvtsi2sd	-104(%rbp), %xmm4
	movsd	%xmm4, -136(%rbp)
	cvtss2sd	-60(%rbp), %xmm0
	movq	.LC28(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	cvtss2sd	-108(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-136(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC28(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -36(%rbp)
	movq	-128(%rbp), %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-120(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movl	$1, %eax
.L295:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L296
	call	__stack_chk_fail@PLT
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	EVDCensoredFit, .-EVDCensoredFit
	.section	.rodata
	.align 4
.LC15:
	.long	1065353216
	.align 8
.LC27:
	.long	0
	.long	1072693248
	.align 16
.LC28:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC30:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC31:
	.long	1056964608
	.align 8
.LC32:
	.long	2237506163
	.long	1071816596
	.align 4
.LC33:
	.long	1084227584
	.align 8
.LC34:
	.long	0
	.long	1073741824
	.align 8
.LC35:
	.long	0
	.long	1071644672
	.align 8
.LC36:
	.long	2447371381
	.long	1074007442
	.align 8
.LC37:
	.long	1462959061
	.long	-1072910969
	.align 8
.LC38:
	.long	858993459
	.long	1082532659
	.align 8
.LC40:
	.long	2596056904
	.long	1048238066
	.align 4
.LC41:
	.long	925353388
	.align 4
.LC42:
	.long	1045220557
	.align 16
.LC43:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC44:
	.long	981668463
	.align 8
.LC45:
	.long	2576980378
	.long	1069128089
	.align 4
.LC46:
	.long	1120403456
	.align 4
.LC47:
	.long	1073741824
	.align 8
.LC48:
	.long	3951369912
	.long	1067366481
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
