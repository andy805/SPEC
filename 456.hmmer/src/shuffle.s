	.file	"shuffle.c"
	.text
	.globl	StrShuffle
	.type	StrShuffle, @function
StrShuffle:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L2
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L2:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	jmp	.L3
.L4:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-8(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	subl	$1, -8(%rbp)
.L3:
	cmpl	$1, -8(%rbp)
	jg	.L4
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	StrShuffle, .-StrShuffle
	.section	.rodata
.LC0:
	.string	"shuffle.c"
.LC1:
	.string	"hey, you didn't end on s_f."
.LC2:
	.string	"hey, pos (%d) != len (%d)."
	.text
	.globl	StrDPShuffle
	.type	StrDPShuffle, @function
StrDPShuffle:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -96(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L7
.L10:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rcx
	movq	-144(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L45
.L8:
	addl	$1, -116(%rbp)
.L7:
	movl	-116(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L10
	movl	$208, %edx
	movl	$127, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -88(%rbp)
	movl	$104, %edx
	movl	$128, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -80(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L11
.L12:
	movl	-96(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$131, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -112(%rbp)
.L11:
	cmpl	$25, -112(%rbp)
	jle	.L12
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movl	%eax, -112(%rbp)
	movl	$1, -116(%rbp)
	jmp	.L13
.L14:
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movl	-92(%rbp), %edx
	movb	%dl, (%rax)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-92(%rbp), %eax
	movl	%eax, -112(%rbp)
	addl	$1, -116(%rbp)
.L13:
	movl	-116(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.L14
	movl	-96(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movb	%al, -117(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L15
.L33:
	movl	$0, -112(%rbp)
	jmp	.L16
.L20:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L48
	movsbl	-117(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	je	.L48
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-116(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-92(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L19
.L48:
	nop
.L19:
	addl	$1, -112(%rbp)
.L16:
	cmpl	$25, -112(%rbp)
	jle	.L20
	movl	$0, -112(%rbp)
	jmp	.L21
.L22:
	movl	-112(%rbp), %eax
	cltq
	movb	$0, -64(%rbp,%rax)
	addl	$1, -112(%rbp)
.L21:
	cmpl	$25, -112(%rbp)
	jle	.L22
	movl	$1, -104(%rbp)
	movsbl	-117(%rbp), %eax
	cltq
	movb	$1, -64(%rbp,%rax)
	jmp	.L23
.L27:
	movl	$0, -104(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L24
.L26:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L25
	movl	-92(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	cmpb	$1, %al
	jne	.L25
	movl	-112(%rbp), %eax
	cltq
	movb	$1, -64(%rbp,%rax)
	movl	$1, -104(%rbp)
.L25:
	addl	$1, -112(%rbp)
.L24:
	cmpl	$25, -112(%rbp)
	jle	.L26
.L23:
	cmpl	$0, -104(%rbp)
	jne	.L27
	movl	$1, -100(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L28
.L32:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movsbl	-117(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	je	.L49
	movl	-112(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L31
	movl	$0, -100(%rbp)
	jmp	.L15
.L49:
	nop
.L31:
	addl	$1, -112(%rbp)
.L28:
	cmpl	$25, -112(%rbp)
	jle	.L32
.L15:
	cmpl	$0, -100(%rbp)
	je	.L33
	movl	$0, -112(%rbp)
	jmp	.L34
.L37:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.L35
.L36:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-108(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-116(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-92(%rbp), %edx
	movb	%dl, (%rax)
	subl	$1, -108(%rbp)
.L35:
	cmpl	$1, -108(%rbp)
	jg	.L36
	addl	$1, -112(%rbp)
.L34:
	cmpl	$25, -112(%rbp)
	jle	.L37
	movl	$104, %edx
	movl	$240, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -112(%rbp)
	jmp	.L38
.L39:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -112(%rbp)
.L38:
	cmpl	$25, -112(%rbp)
	jle	.L39
	movl	$0, -116(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movl	%eax, -112(%rbp)
.L42:
	movl	-112(%rbp), %eax
	leal	65(%rax), %ecx
	movl	-116(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -116(%rbp)
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-92(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L50
	jmp	.L42
.L50:
	nop
	movzbl	-117(%rbp), %eax
	leal	65(%rax), %ecx
	movl	-116(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -116(%rbp)
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movsbl	-117(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	je	.L43
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L43:
	movl	-116(%rbp), %eax
	cmpl	-96(%rbp), %eax
	je	.L44
	movl	-96(%rbp), %edx
	movl	-116(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L44:
	movq	-88(%rbp), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L45:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	StrDPShuffle, .-StrDPShuffle
	.globl	StrMarkov0
	.type	StrMarkov0, @function
StrMarkov0:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -116(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L52
.L55:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-120(%rbp), %edx
	movslq	%edx, %rcx
	movq	-144(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L60
.L53:
	addl	$1, -120(%rbp)
.L52:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L55
	leaq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	$26, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -120(%rbp)
	jmp	.L56
.L57:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	cltq
	movss	-112(%rbp,%rax,4), %xmm1
	movss	%xmm1, -148(%rbp)
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movss	.LC4(%rip), %xmm0
	addss	-148(%rbp), %xmm0
	cltq
	movss	%xmm0, -112(%rbp,%rax,4)
	addl	$1, -120(%rbp)
.L56:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L57
	leaq	-112(%rbp), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movl	$0, -120(%rbp)
	jmp	.L58
.L59:
	leaq	-112(%rbp), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	leal	65(%rax), %ecx
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -120(%rbp)
.L58:
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L59
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L60:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	StrMarkov0, .-StrMarkov0
	.globl	StrMarkov1
	.type	StrMarkov1, @function
StrMarkov1:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2768, %rsp
	movq	%rdi, -2760(%rbp)
	movq	%rsi, -2768(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-2768(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -2732(%rbp)
	movl	$0, -2740(%rbp)
	jmp	.L63
.L66:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-2740(%rbp), %edx
	movslq	%edx, %rcx
	movq	-2768(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L75
.L64:
	addl	$1, -2740(%rbp)
.L63:
	movl	-2740(%rbp), %eax
	cmpl	-2732(%rbp), %eax
	jl	.L66
	movl	$0, -2736(%rbp)
	jmp	.L67
.L68:
	leaq	-2720(%rbp), %rcx
	movl	-2736(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	pxor	%xmm0, %xmm0
	movl	$26, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	addl	$1, -2736(%rbp)
.L67:
	cmpl	$25, -2736(%rbp)
	jle	.L68
	movq	-2768(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movl	%eax, -2736(%rbp)
	movl	-2736(%rbp), %eax
	movl	%eax, -2728(%rbp)
	movl	$1, -2740(%rbp)
	jmp	.L69
.L70:
	movl	-2740(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2768(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movl	%eax, -2724(%rbp)
	movl	-2724(%rbp), %eax
	movslq	%eax, %rcx
	movl	-2736(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movss	-2720(%rbp,%rax,4), %xmm1
	movss	.LC4(%rip), %xmm0
	addss	%xmm1, %xmm0
	movl	-2724(%rbp), %eax
	movslq	%eax, %rcx
	movl	-2736(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movss	%xmm0, -2720(%rbp,%rax,4)
	movl	-2724(%rbp), %eax
	movl	%eax, -2736(%rbp)
	addl	$1, -2740(%rbp)
.L69:
	movl	-2740(%rbp), %eax
	cmpl	-2732(%rbp), %eax
	jl	.L70
	movl	$0, -2736(%rbp)
	jmp	.L71
.L72:
	leaq	-2720(%rbp), %rcx
	movl	-2736(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	addl	$1, -2736(%rbp)
.L71:
	cmpl	$25, -2736(%rbp)
	jle	.L72
	movl	-2728(%rbp), %eax
	movl	%eax, -2736(%rbp)
	movl	-2736(%rbp), %eax
	addl	$65, %eax
	movl	%eax, %edx
	movq	-2760(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, -2740(%rbp)
	jmp	.L73
.L74:
	leaq	-2720(%rbp), %rcx
	movl	-2736(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	movl	%eax, -2724(%rbp)
	movl	-2724(%rbp), %eax
	leal	65(%rax), %ecx
	movl	-2740(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2760(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-2724(%rbp), %eax
	movl	%eax, -2736(%rbp)
	addl	$1, -2740(%rbp)
.L73:
	movl	-2740(%rbp), %eax
	cmpl	-2732(%rbp), %eax
	jl	.L74
	movl	-2740(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2760(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L75:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L76
	call	__stack_chk_fail@PLT
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	StrMarkov1, .-StrMarkov1
	.globl	StrReverse
	.type	StrReverse, @function
StrReverse:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L78
.L79:
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -8(%rbp)
.L78:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -8(%rbp)
	jl	.L79
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L80
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L80:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	StrReverse, .-StrReverse
	.globl	StrRegionalShuffle
	.type	StrRegionalShuffle, @function
StrRegionalShuffle:
.LFB10:
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
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L83
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L83:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L84
.L87:
	movl	-16(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -12(%rbp)
	jmp	.L85
.L86:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-17(%rbp), %eax
	movb	%al, (%rdx)
	subl	$1, -12(%rbp)
.L85:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.L86
	movl	-52(%rbp), %eax
	addl	%eax, -16(%rbp)
.L84:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L87
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	StrRegionalShuffle, .-StrRegionalShuffle
	.globl	AlignmentShuffle
	.type	AlignmentShuffle, @function
AlignmentShuffle:
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
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L90
	movl	$0, -8(%rbp)
	jmp	.L91
.L92:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	addl	$1, -8(%rbp)
.L91:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L92
.L90:
	movl	$0, -8(%rbp)
	jmp	.L93
.L94:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -8(%rbp)
.L93:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L94
	jmp	.L95
.L98:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-40(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L96
.L97:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -8(%rbp)
.L96:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L97
	subl	$1, -40(%rbp)
.L95:
	cmpl	$1, -40(%rbp)
	jg	.L98
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	AlignmentShuffle, .-AlignmentShuffle
	.globl	AlignmentBootstrap
	.type	AlignmentBootstrap, @function
AlignmentBootstrap:
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
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L101
.L104:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-40(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L102
.L103:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -8(%rbp)
.L102:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L103
	addl	$1, -12(%rbp)
.L101:
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L104
	movl	$0, -8(%rbp)
	jmp	.L105
.L106:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -8(%rbp)
.L105:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L106
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	AlignmentBootstrap, .-AlignmentBootstrap
	.globl	QRNAShuffle
	.type	QRNAShuffle, @function
QRNAShuffle:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L109
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L109:
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L110
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L110:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$572, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$573, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$574, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L111
.L120:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L112
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L112
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L112
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L112
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L113
.L112:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L128
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L128
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L128
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L128
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L128
.L113:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L116
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L116
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -52(%rbp)
	jmp	.L115
.L116:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L117
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L117
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L117
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L117
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L118
.L117:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -44(%rbp)
	jmp	.L115
.L118:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L119
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L119
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L119
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L119
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L115
.L119:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -48(%rbp)
	jmp	.L115
.L128:
	nop
.L115:
	addl	$1, -40(%rbp)
.L111:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L120
	jmp	.L121
.L122:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-52(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -54(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -53(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-54(%rbp), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-53(%rbp), %eax
	movb	%al, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -52(%rbp)
.L121:
	cmpl	$1, -52(%rbp)
	jg	.L122
	jmp	.L123
.L124:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-48(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -54(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -53(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-54(%rbp), %eax
	movb	%al, (%rdx)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-53(%rbp), %eax
	movb	%al, (%rdx)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -48(%rbp)
.L123:
	cmpl	$1, -48(%rbp)
	jg	.L124
	jmp	.L125
.L126:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-44(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -54(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -53(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-54(%rbp), %eax
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-53(%rbp), %eax
	movb	%al, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -44(%rbp)
.L125:
	cmpl	$1, -44(%rbp)
	jg	.L126
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	QRNAShuffle, .-QRNAShuffle
	.section	.rodata
	.align 4
.LC4:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
