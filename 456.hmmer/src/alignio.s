	.file	"alignio.c"
	.text
	.section	.rodata
.LC0:
	.string	"alignio.c"
	.text
	.globl	AllocAlignment
	.type	AllocAlignment, @function
AllocAlignment:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	InitAinfo
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$50, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L3:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$52, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L3
	movq	-56(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$57, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movss	.LC1(%rip), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	-36(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	movq	%rax, %rdx
	movl	$60, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$0, -28(%rbp)
	jmp	.L4
.L5:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L4:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L5
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AllocAlignment, .-AllocAlignment
	.globl	InitAinfo
	.type	InitAinfo, @function
InitAinfo:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 84(%rax)
	movq	-8(%rbp), %rax
	movss	84(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 80(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 92(%rax)
	movq	-8(%rbp), %rax
	movss	92(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 88(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 100(%rax)
	movq	-8(%rbp), %rax
	movss	100(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	InitAinfo, .-InitAinfo
	.globl	FreeAlignment
	.type	FreeAlignment, @function
FreeAlignment:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L11:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L9
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L9:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L10
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L10:
	addl	$1, -4(%rbp)
.L8:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L11
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L12:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L13:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L14:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L15:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L16:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L17:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FreeAlignment, .-FreeAlignment
	.globl	SAMizeAlignment
	.type	SAMizeAlignment, @function
SAMizeAlignment:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L19
.L31:
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L20
.L25:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L21
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L21
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L21
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L21
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L22
.L21:
	movl	$1, -4(%rbp)
	jmp	.L23
.L22:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L24
	movl	$1, -8(%rbp)
	jmp	.L23
.L24:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L23
	movl	$1, -12(%rbp)
.L23:
	addl	$1, -16(%rbp)
.L20:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L25
	movb	$45, -21(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L26
	cmpl	$0, -8(%rbp)
	jne	.L26
	movb	$46, -21(%rbp)
.L26:
	movl	$0, -16(%rbp)
	jmp	.L27
.L30:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L28
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L28
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L28
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L28
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L29
.L28:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-21(%rbp), %eax
	movb	%al, (%rdx)
.L29:
	addl	$1, -16(%rbp)
.L27:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L30
	addl	$1, -20(%rbp)
.L19:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L31
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SAMizeAlignment, .-SAMizeAlignment
	.globl	SAMizeAlignmentByGapFrac
	.type	SAMizeAlignmentByGapFrac, @function
SAMizeAlignmentByGapFrac:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L33
.L51:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L34
.L37:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L35
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L36
.L35:
	addl	$1, -4(%rbp)
.L36:
	addl	$1, -8(%rbp)
.L34:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L37
	cvtsi2ss	-4(%rbp), %xmm0
	cvtsi2ss	-28(%rbp), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-36(%rbp), %xmm0
	jbe	.L53
	movl	$0, -8(%rbp)
	jmp	.L40
.L44:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L41
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L41
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L41
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L41
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L42
.L41:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$46, (%rax)
	jmp	.L43
.L42:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L43:
	addl	$1, -8(%rbp)
.L40:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L44
	jmp	.L45
.L53:
	movl	$0, -8(%rbp)
	jmp	.L46
.L50:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L47
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L47
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L47
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L47
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L48
.L47:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$45, (%rax)
	jmp	.L49
.L48:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L49:
	addl	$1, -8(%rbp)
.L46:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L50
.L45:
	addl	$1, -12(%rbp)
.L33:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L51
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	SAMizeAlignmentByGapFrac, .-SAMizeAlignmentByGapFrac
	.globl	MakeAlignedString
	.type	MakeAlignedString, @function
MakeAlignedString:
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$242, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L55
.L58:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L56
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L56
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L56
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L56
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L56
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
	jmp	.L57
.L56:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
.L57:
	addl	$1, -32(%rbp)
.L55:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L58
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L59
	movl	$6, squid_errno(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L60:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	MakeAlignedString, .-MakeAlignedString
	.globl	MakeDealignedString
	.type	MakeDealignedString, @function
MakeDealignedString:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$280, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L62
.L64:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L63
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L63
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L63
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L63
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L63
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
.L63:
	addl	$1, -32(%rbp)
.L62:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L64
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-44(%rbp), %eax
	movslq	%eax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L65
	movl	$6, squid_errno(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L66:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	MakeDealignedString, .-MakeDealignedString
	.globl	DealignedLength
	.type	DealignedLength, @function
DealignedLength:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L68
.L70:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L69
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L69
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L69
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L69
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L69
	addl	$1, -4(%rbp)
.L69:
	addq	$1, -24(%rbp)
.L68:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L70
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	DealignedLength, .-DealignedLength
	.section	.rodata
.LC3:
	.string	" \t\n"
.LC4:
	.string	""
.LC5:
	.string	"%*s%-10.10s %5d %s %5d\n"
.LC6:
	.string	"%*s                 %s\n"
	.text
	.globl	WritePairwiseAlignment
	.type	WritePairwiseAlignment, @function
WritePairwiseAlignment:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	movl	%ecx, -316(%rbp)
	movq	%r8, -328(%rbp)
	movq	%r9, -336(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-312(%rbp), %rcx
	leaq	-230(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -220(%rbp)
	leaq	-230(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	-336(%rbp), %rcx
	leaq	-219(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -209(%rbp)
	leaq	-219(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	-304(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -272(%rbp)
	movl	$1, -280(%rbp)
	jmp	.L73
.L91:
	movl	$0, -280(%rbp)
	movq	-248(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -148(%rbp)
	movq	-240(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -20(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -256(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -252(%rbp)
	cmpl	$60, -256(%rbp)
	jne	.L74
	movq	-248(%rbp), %rax
	addq	$60, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L75
.L74:
	cmpl	$60, -252(%rbp)
	jne	.L76
	movq	-240(%rbp), %rax
	addq	$60, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L76
.L75:
	movl	$1, -280(%rbp)
.L76:
	movl	-256(%rbp), %eax
	cltq
	addq	%rax, -248(%rbp)
	movl	-252(%rbp), %eax
	cltq
	addq	%rax, -240(%rbp)
	movl	$0, -260(%rbp)
	jmp	.L77
.L84:
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$32, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$95, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$45, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$126, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$32, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$95, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$45, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$126, %al
	je	.L78
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %edx
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	%al, %dl
	jne	.L79
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %edx
	movl	-260(%rbp), %eax
	cltq
	movb	%dl, -144(%rbp,%rax)
	jmp	.L82
.L79:
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	movsbq	%al, %rax
	salq	$3, %rax
	leaq	-520(%rax), %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	movsbq	%al, %rax
	salq	$2, %rax
	subq	$260, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L81
	movl	-260(%rbp), %eax
	cltq
	movb	$43, -144(%rbp,%rax)
	jmp	.L82
.L81:
	movl	-260(%rbp), %eax
	cltq
	movb	$32, -144(%rbp,%rax)
	jmp	.L82
.L78:
	movl	-260(%rbp), %eax
	cltq
	movb	$32, -144(%rbp,%rax)
.L82:
	addl	$1, -260(%rbp)
.L77:
	movl	-260(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jge	.L83
	movl	-260(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L84
.L83:
	movl	-260(%rbp), %eax
	cltq
	movb	$0, -144(%rbp,%rax)
	movl	$0, -268(%rbp)
	movl	$0, -260(%rbp)
	jmp	.L85
.L87:
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$32, %al
	je	.L86
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L86
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$95, %al
	je	.L86
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$45, %al
	je	.L86
	movl	-260(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	cmpb	$126, %al
	je	.L86
	addl	$1, -268(%rbp)
.L86:
	addl	$1, -260(%rbp)
.L85:
	movl	-260(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L87
	movl	$0, -264(%rbp)
	movl	$0, -260(%rbp)
	jmp	.L88
.L90:
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$32, %al
	je	.L89
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L89
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$95, %al
	je	.L89
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$45, %al
	je	.L89
	movl	-260(%rbp), %eax
	cltq
	movzbl	-80(%rbp,%rax), %eax
	cmpb	$126, %al
	je	.L89
	addl	$1, -264(%rbp)
.L89:
	addl	$1, -260(%rbp)
.L88:
	movl	-260(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L90
	movl	-276(%rbp), %edx
	movl	-268(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	movl	-276(%rbp), %edi
	leaq	-230(%rbp), %rsi
	movl	32(%rbp), %edx
	movq	-296(%rbp), %rax
	pushq	%rcx
	leaq	-208(%rbp), %rcx
	pushq	%rcx
	movl	%edi, %r9d
	movq	%rsi, %r8
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	leaq	-144(%rbp), %rcx
	movl	32(%rbp), %edx
	movq	-296(%rbp), %rax
	movq	%rcx, %r8
	leaq	.LC4(%rip), %rcx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-272(%rbp), %edx
	movl	-264(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	movl	-272(%rbp), %edi
	leaq	-219(%rbp), %rsi
	movl	32(%rbp), %edx
	movq	-296(%rbp), %rax
	pushq	%rcx
	leaq	-80(%rbp), %rcx
	pushq	%rcx
	movl	%edi, %r9d
	movq	%rsi, %r8
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	-268(%rbp), %eax
	addl	%eax, -276(%rbp)
	movl	-264(%rbp), %eax
	addl	%eax, -272(%rbp)
.L73:
	cmpl	$0, -280(%rbp)
	jne	.L91
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	WritePairwiseAlignment, .-WritePairwiseAlignment
	.globl	MingapAlignment
	.type	MingapAlignment, @function
MingapAlignment:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L95
.L106:
	movl	$0, -4(%rbp)
	jmp	.L96
.L99:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L97
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L97
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L97
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L97
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L112
.L97:
	addl	$1, -4(%rbp)
.L96:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L99
	jmp	.L98
.L112:
	nop
.L98:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L113
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L102
	movl	$0, -4(%rbp)
	jmp	.L103
.L104:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L103:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L104
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L105:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L102:
	addl	$1, -8(%rbp)
	jmp	.L101
.L113:
	nop
.L101:
	addl	$1, -12(%rbp)
.L95:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L106
	movl	$0, -4(%rbp)
	jmp	.L107
.L108:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
.L107:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L108
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L109:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L110:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	MingapAlignment, .-MingapAlignment
	.globl	RandomAlignment
	.type	RandomAlignment, @function
RandomAlignment:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movss	%xmm0, -104(%rbp)
	movss	%xmm1, -108(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$530, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
	movl	$9999999, -52(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L115
.L116:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -76(%rbp)
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	cmovle	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	addl	$1, -64(%rbp)
.L115:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L116
	cvtsi2ss	-76(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	-104(%rbp), %xmm2
	cvtss2sd	-108(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm3
	subsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	.LC7(%rip), %xmm3
	divsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm1
	movsd	.LC7(%rip), %xmm3
	addsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	movsd	.LC7(%rip), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cltd
	idivl	-100(%rbp)
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L117
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)
.L117:
	movl	-100(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$545, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$546, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L118
.L121:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$549, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -68(%rbp)
	jmp	.L119
.L120:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -68(%rbp)
.L119:
	movl	-68(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L120
	addl	$1, -64(%rbp)
.L118:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L121
	movss	-104(%rbp), %xmm0
	addss	-108(%rbp), %xmm0
	movss	-104(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC1(%rip), %xmm0
	subss	-104(%rbp), %xmm0
	movss	%xmm0, -108(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L122
.L127:
	movl	$-1, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L123
.L126:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-104(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L124
	cmpl	$-1, -72(%rbp)
	jne	.L125
.L124:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
.L125:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -68(%rbp)
.L123:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-76(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	jl	.L126
	addl	$1, -64(%rbp)
.L122:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L127
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L128
.L132:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -64(%rbp)
	jmp	.L129
.L131:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L130
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L130:
	addl	$1, -64(%rbp)
.L129:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L131
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -80(%rbp)
	addl	$1, -72(%rbp)
.L128:
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L132
	movl	-100(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$581, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L133
.L134:
	movl	-80(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$583, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -64(%rbp)
.L133:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L134
	movl	$0, -64(%rbp)
	jmp	.L135
.L143:
	movl	$0, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L136
.L142:
	movl	$0, -56(%rbp)
	jmp	.L137
.L138:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	cltq
	addq	%rax, %rcx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	cltq
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -56(%rbp)
.L137:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L138
	jmp	.L139
.L140:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	cltq
	addq	%rcx, %rax
	movb	$32, (%rax)
	addl	$1, -56(%rbp)
.L139:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L140
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.L141
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	cltq
	addq	%rax, %rcx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	cltq
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L141:
	addl	$1, -60(%rbp)
.L136:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L142
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -64(%rbp)
.L135:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L143
	movq	-128(%rbp), %rax
	movl	$0, (%rax)
	movq	-128(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-128(%rbp), %rax
	movl	-100(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-100(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	movq	%rax, %rdx
	movl	$603, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$0, -64(%rbp)
	jmp	.L144
.L145:
	movl	-64(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-64(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SeqinfoCopy@PLT
	addl	$1, -64(%rbp)
.L144:
	movl	-64(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L145
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-100(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	RandomAlignment, .-RandomAlignment
	.globl	AlignmentHomogenousGapsym
	.type	AlignmentHomogenousGapsym, @function
AlignmentHomogenousGapsym:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, %eax
	movb	%al, -36(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L148
.L153:
	movl	$0, -4(%rbp)
	jmp	.L149
.L152:
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
	cmpb	$32, %al
	je	.L150
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
	cmpb	$46, %al
	je	.L150
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
	cmpb	$95, %al
	je	.L150
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
	cmpb	$45, %al
	je	.L150
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
	cmpb	$126, %al
	jne	.L151
.L150:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-36(%rbp), %eax
	movb	%al, (%rdx)
.L151:
	addl	$1, -4(%rbp)
.L149:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L152
	addl	$1, -8(%rbp)
.L148:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L153
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	AlignmentHomogenousGapsym, .-AlignmentHomogenousGapsym
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
