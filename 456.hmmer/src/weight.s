	.file	"weight.c"
	.text
	.section	.rodata
.LC1:
	.string	"Cluster() failed"
.LC2:
	.string	"weight.c"
	.text
	.globl	GSCWeights
	.type	GSCWeights, @function
GSCWeights:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -76(%rbp)
	jne	.L2
	movq	-88(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L1
.L2:
	leaq	-48(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MakeDiffMx@PLT
	movq	-48(%rbp), %rax
	leaq	-40(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	Cluster@PLT
	testl	%eax, %eax
	jne	.L4
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L4:
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	subq	$4, %rax
	movq	%rax, %rdx
	movl	$67, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	subq	$4, %rax
	movq	%rax, %rdx
	movl	$68, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	subq	$4, %rax
	movq	%rax, %rdx
	movl	$69, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L5
.L6:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -52(%rbp)
.L5:
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L6
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-76(%rbp), %esi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	upweight
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cvtsi2ss	-76(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-76(%rbp), %esi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	downweight
	movl	$0, -52(%rbp)
	jmp	.L7
.L8:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -52(%rbp)
.L7:
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L8
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	FMX2Free@PLT
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FreePhylo@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	GSCWeights, .-GSCWeights
	.type	upweight, @function
upweight:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L11
	movl	-8(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	upweight
.L11:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L12
	movl	-4(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	upweight
.L12:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	upweight, .-upweight
	.type	downweight, @function
downweight:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L24
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm3, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	mulss	%xmm2, %xmm0
	movss	%xmm0, (%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm3
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm3, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	mulss	%xmm2, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L16
.L24:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L17
	movl	-16(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L18
.L17:
	movss	.LC0(%rip), %xmm0
.L18:
	movss	%xmm0, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L19
	movl	-12(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L20
.L19:
	movss	.LC0(%rip), %xmm0
.L20:
	movss	%xmm0, -4(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	-4(%rbp), %xmm1
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	-4(%rbp), %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.L16:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L21
	movl	-16(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	downweight
.L21:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L25
	movl	-12(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	downweight
.L25:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	downweight, .-downweight
	.section	.rodata
.LC4:
	.string	"simple_diffmx() failed"
	.text
	.globl	VoronoiWeights
	.type	VoronoiWeights, @function
VoronoiWeights:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movl	%esi, -252(%rbp)
	movl	%edx, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -252(%rbp)
	jne	.L27
	movq	-264(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L26
.L27:
	movl	$50, -196(%rbp)
	leaq	-184(%rbp), %rdx
	movl	-252(%rbp), %ecx
	movq	-248(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	simple_diffmx
	testl	%eax, %eax
	jne	.L29
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L29:
	movl	-252(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$184, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -176(%rbp)
	movl	$0, -224(%rbp)
	jmp	.L30
.L36:
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -212(%rbp)
	movl	$0, -216(%rbp)
	jmp	.L31
.L35:
	movl	-216(%rbp), %eax
	cmpl	-224(%rbp), %eax
	je	.L78
	movq	-184(%rbp), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-212(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L33
	movq	-184(%rbp), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -212(%rbp)
	jmp	.L33
.L78:
	nop
.L33:
	addl	$1, -216(%rbp)
.L31:
	movl	-216(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L35
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movss	-212(%rbp), %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -224(%rbp)
.L30:
	movl	-224(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L36
	movq	-184(%rbp), %rax
	movl	-252(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movl	-256(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$198, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -168(%rbp)
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$199, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -160(%rbp)
	movl	$0, -228(%rbp)
	jmp	.L37
.L38:
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$27, %edx
	movl	$201, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	addl	$1, -228(%rbp)
.L37:
	movl	-228(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L38
	movl	$0, -228(%rbp)
	jmp	.L39
.L51:
	leaq	-144(%rbp), %rax
	movl	$108, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -224(%rbp)
	jmp	.L40
.L46:
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L41
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L41
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L41
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L41
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L41
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-228(%rbp), %edx
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
	je	.L42
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	%eax, -220(%rbp)
	jmp	.L43
.L42:
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	movl	%eax, -220(%rbp)
.L43:
	cmpl	$0, -220(%rbp)
	js	.L79
	cmpl	$25, -220(%rbp)
	jg	.L79
	movl	-220(%rbp), %eax
	cltq
	movl	$1, -144(%rbp,%rax,4)
	jmp	.L79
.L41:
	movl	$1, -40(%rbp)
	jmp	.L45
.L79:
	nop
.L45:
	addl	$1, -224(%rbp)
.L40:
	movl	-224(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L46
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -216(%rbp)
	jmp	.L47
.L49:
	movl	-216(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L48
	movl	-216(%rbp), %eax
	leal	65(%rax), %ecx
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-160(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L48:
	addl	$1, -216(%rbp)
.L47:
	cmpl	$25, -216(%rbp)
	jle	.L49
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L50
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-160(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$32, (%rax)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L50:
	addl	$1, -228(%rbp)
.L39:
	movl	-228(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L51
	movl	-256(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$268, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -152(%rbp)
	movl	$42, -200(%rbp)
	movl	-252(%rbp), %edx
	movq	-264(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -204(%rbp)
	jmp	.L52
.L67:
	movl	$0, -228(%rbp)
	jmp	.L53
.L56:
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L54
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	jmp	.L55
.L54:
	movl	$32, %eax
.L55:
	movl	-228(%rbp), %edx
	movslq	%edx, %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addl	$1, -228(%rbp)
.L53:
	movl	-228(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L56
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -208(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -212(%rbp)
	movl	$0, -224(%rbp)
	jmp	.L57
.L66:
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	simple_distance
	movd	%xmm0, %eax
	movl	%eax, -192(%rbp)
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	-192(%rbp), %xmm0
	jbe	.L76
	movl	-224(%rbp), %eax
	movl	%eax, -200(%rbp)
	jmp	.L60
.L76:
	movss	-212(%rbp), %xmm0
	ucomiss	-192(%rbp), %xmm0
	jbe	.L77
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -208(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -200(%rbp)
	movss	-192(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)
	jmp	.L63
.L77:
	movss	-192(%rbp), %xmm0
	ucomiss	-212(%rbp), %xmm0
	jp	.L63
	movss	-192(%rbp), %xmm0
	ucomiss	-212(%rbp), %xmm0
	jne	.L63
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -188(%rbp)
	movss	-188(%rbp), %xmm0
	ucomiss	-208(%rbp), %xmm0
	jbe	.L63
	movss	-188(%rbp), %xmm0
	movss	%xmm0, -208(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -200(%rbp)
	movss	-192(%rbp), %xmm0
	movss	%xmm0, -212(%rbp)
.L63:
	addl	$1, -224(%rbp)
.L57:
	movl	-224(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L66
.L60:
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC0(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -204(%rbp)
.L52:
	movl	-196(%rbp), %eax
	imull	-252(%rbp), %eax
	cmpl	%eax, -204(%rbp)
	jl	.L67
	movl	$0, -224(%rbp)
	jmp	.L68
.L69:
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	cvtsi2ss	-196(%rbp), %xmm0
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -224(%rbp)
.L68:
	movl	-224(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jl	.L69
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-256(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
.L26:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	addq	$264, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	VoronoiWeights, .-VoronoiWeights
	.type	simple_distance, @function
simple_distance:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L81
.L86:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L90
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L90
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L90
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L90
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L90
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L90
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L90
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L90
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L90
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L90
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L85
	addl	$1, -8(%rbp)
.L85:
	addl	$1, -4(%rbp)
	jmp	.L84
.L90:
	nop
.L84:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L81:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L86
	cmpl	$0, -4(%rbp)
	jle	.L87
	cvtsi2ss	-8(%rbp), %xmm0
	cvtsi2ss	-4(%rbp), %xmm1
	divss	%xmm1, %xmm0
	jmp	.L89
.L87:
	pxor	%xmm0, %xmm0
.L89:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	simple_distance, .-simple_distance
	.section	.rodata
.LC6:
	.string	"malloc failed"
	.text
	.type	simple_diffmx, @function
simple_diffmx:
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
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L92
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L92:
	movl	$0, -32(%rbp)
	jmp	.L93
.L95:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L94
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L94:
	addl	$1, -32(%rbp)
.L93:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L95
	movl	$0, -32(%rbp)
	jmp	.L96
.L99:
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L97
.L98:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rcx,%rsi), %rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	simple_distance
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rbx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -28(%rbp)
.L97:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L98
	addl	$1, -32(%rbp)
.L96:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L99
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	simple_diffmx, .-simple_diffmx
	.globl	BlosumWeights
	.type	BlosumWeights, @function
BlosumWeights:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %r8
	leaq	-24(%rbp), %rcx
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%edi, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movq	%rax, %rdi
	call	SingleLinkCluster
	movl	-44(%rbp), %edx
	movq	-64(%rbp), %rax
	movss	.LC0(%rip), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	-32(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$403, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L102
.L103:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L102:
	movl	-32(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L103
	movl	$0, -28(%rbp)
	jmp	.L104
.L105:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -28(%rbp)
.L104:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L105
	movl	$0, -28(%rbp)
	jmp	.L106
.L107:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC0(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -28(%rbp)
.L106:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	BlosumWeights, .-BlosumWeights
	.globl	PositionBasedWeights
	.type	PositionBasedWeights, @function
PositionBasedWeights:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movl	%edx, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-156(%rbp), %edx
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -124(%rbp)
	jmp	.L111
.L123:
	movl	$0, -120(%rbp)
	jmp	.L112
.L113:
	movl	-120(%rbp), %eax
	cltq
	movl	$0, -112(%rbp,%rax,4)
	addl	$1, -120(%rbp)
.L112:
	cmpl	$25, -120(%rbp)
	jle	.L113
	movl	$0, -128(%rbp)
	jmp	.L114
.L116:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L115
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-124(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	movslq	%eax, %rdx
	movl	-112(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -112(%rbp,%rax,4)
.L115:
	addl	$1, -128(%rbp)
.L114:
	movl	-128(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L116
	movl	$0, -132(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L117
.L119:
	movl	-120(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jle	.L118
	addl	$1, -132(%rbp)
.L118:
	addl	$1, -120(%rbp)
.L117:
	cmpl	$25, -120(%rbp)
	jle	.L119
	movl	$0, -128(%rbp)
	jmp	.L120
.L122:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L121
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -176(%rbp)
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-124(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	subl	$65, %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	imull	-132(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	addsd	-176(%rbp), %xmm0
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
.L121:
	addl	$1, -128(%rbp)
.L120:
	movl	-128(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L122
	addl	$1, -124(%rbp)
.L111:
	movl	-124(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jl	.L123
	movl	$0, -128(%rbp)
	jmp	.L124
.L125:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DealignedLength@PLT
	cvtsi2ss	%eax, %xmm0
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -128(%rbp)
.L124:
	movl	-128(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.L125
	cvtsi2ss	-156(%rbp), %xmm2
	movss	%xmm2, -176(%rbp)
	movl	-156(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movss	-176(%rbp), %xmm2
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movss	%xmm0, -116(%rbp)
	movl	-116(%rbp), %ecx
	movl	-156(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%ecx, -176(%rbp)
	movss	-176(%rbp), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FScale@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PositionBasedWeights, .-PositionBasedWeights
	.section	.rodata
	.align 8
.LC8:
	.string	"removing %12s -- fractional identity %.2f to %s\n"
	.text
	.globl	FilterAlignment
	.type	FilterAlignment, @function
FilterAlignment:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movq	%rsi, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$532, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$533, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L129
.L130:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -32(%rbp)
.L129:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L130
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L131
.L138:
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L132
.L136:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PairwiseIdentity@PLT
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	ucomiss	-60(%rbp), %xmm0
	jbe	.L141
	movl	$1, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	cvtss2sd	-20(%rbp), %xmm0
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L135
.L141:
	addl	$1, -28(%rbp)
.L132:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L136
.L135:
	cmpl	$0, -24(%rbp)
	jne	.L137
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L137:
	addl	$1, -32(%rbp)
.L131:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L138
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSASmallerAlignment@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FilterAlignment, .-FilterAlignment
	.section	.rodata
.LC9:
	.string	"chose %d: %s\n"
	.text
	.globl	SampleAlignment
	.type	SampleAlignment, @function
SampleAlignment:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$596, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$597, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L143
.L144:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L143:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L144
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L145
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -44(%rbp)
.L145:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L146
.L147:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	subl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -28(%rbp)
.L146:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L147
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MSASmallerAlignment@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SampleAlignment, .-SampleAlignment
	.globl	SingleLinkCluster
	.type	SingleLinkCluster, @function
SingleLinkCluster:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$716, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$717, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$718, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L150
.L151:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -36(%rbp)
.L150:
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L151
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L152
.L159:
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	subl	$1, -48(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -44(%rbp)
	jmp	.L153
.L158:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	subl	$1, -44(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L154
.L157:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	simple_distance
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	-68(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L155
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -48(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -44(%rbp)
.L155:
	subl	$1, -36(%rbp)
.L154:
	cmpl	$0, -36(%rbp)
	jns	.L157
.L153:
	cmpl	$0, -44(%rbp)
	jg	.L158
	addl	$1, -40(%rbp)
.L152:
	cmpl	$0, -48(%rbp)
	jg	.L159
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	SingleLinkCluster, .-SingleLinkCluster
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC5:
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
