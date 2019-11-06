	.file	"cluster.c"
	.text
	.section	.rodata
.LC0:
	.string	"cluster.c"
.LC2:
	.string	"AllocPhylo() failed"
	.text
	.globl	Cluster
	.type	Cluster, @function
Cluster:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$168, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L2
.L5:
	movl	-108(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$171, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -88(%rbp)
	jmp	.L3
.L4:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -88(%rbp)
.L3:
	movl	-88(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L4
	addl	$1, -92(%rbp)
.L2:
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L5
	movl	-108(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$176, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -48(%rbp)
	movl	-108(%rbp), %eax
	subl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$177, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L6
.L7:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
.L6:
	movl	-72(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L7
	movl	$0, -92(%rbp)
	jmp	.L8
.L9:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -92(%rbp)
.L8:
	movl	-108(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -92(%rbp)
	jl	.L9
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	AllocPhylo
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L10
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L10:
	movl	$0, -88(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.L11
.L53:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L12
.L17:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L13
.L16:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-68(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L14
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -88(%rbp)
.L14:
	addl	$1, -72(%rbp)
.L13:
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L16
	addl	$1, -76(%rbp)
.L12:
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L17
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, 4(%rdx)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, 8(%rdx)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jg	.L18
	movl	-108(%rbp), %edx
	movl	-80(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leal	-2(%rcx), %edx
	movl	%edx, (%rax)
.L18:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jg	.L19
	movl	-108(%rbp), %edx
	movl	-80(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leal	-2(%rcx), %edx
	movl	%edx, (%rax)
.L19:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	-68(%rbp), %xmm0
	movss	%xmm0, 12(%rax)
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-8(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movss	12(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movss	-68(%rbp), %xmm0
	movss	%xmm0, 20(%rdx)
	movl	-80(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movss	20(%rdx), %xmm0
	movss	%xmm0, 16(%rax)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jg	.L20
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, 16(%rax)
.L20:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jg	.L21
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, 20(%rax)
.L21:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jle	.L22
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %edx
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	jmp	.L23
.L22:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %esi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %ecx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rsi,%rcx), %edx
	movl	%edx, 32(%rax)
	movl	$0, -84(%rbp)
	jmp	.L24
.L25:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -84(%rbp)
.L24:
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L25
.L23:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -108(%rbp)
	jle	.L26
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %edx
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	jmp	.L27
.L26:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %esi
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %ecx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rsi,%rcx), %edx
	movl	%edx, 32(%rax)
	movl	$0, -84(%rbp)
	jmp	.L28
.L29:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-108(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-80(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -84(%rbp)
.L28:
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L29
.L27:
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -92(%rbp)
	je	.L30
	movl	-80(%rbp), %eax
	subl	$2, %eax
	cmpl	%eax, -88(%rbp)
	jne	.L31
.L30:
	movl	-88(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -92(%rbp)
.L31:
	movl	-80(%rbp), %eax
	subl	$2, %eax
	cmpl	%eax, -92(%rbp)
	je	.L32
	movl	-80(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-16(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	-16(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, -76(%rbp)
	jmp	.L33
.L34:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -76(%rbp)
.L33:
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L34
	movl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-8(%rdx), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
.L32:
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -88(%rbp)
	je	.L35
	movl	-80(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, -76(%rbp)
	jmp	.L36
.L37:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	-60(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -76(%rbp)
.L36:
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L37
	movl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
.L35:
	movl	-80(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L38
.L50:
	movl	-112(%rbp), %eax
	cmpl	$1, %eax
	je	.L40
	cmpl	$1, %eax
	jb	.L41
	cmpl	$2, %eax
	je	.L42
	jmp	.L58
.L41:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	.LC4(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L43
.L42:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L59
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	jmp	.L46
.L59:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
.L46:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	%xmm0, (%rax)
	jmp	.L43
.L40:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L60
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	jmp	.L49
.L60:
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
.L49:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	%xmm0, (%rax)
	jmp	.L43
.L58:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	.LC4(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	nop
.L43:
	addl	$1, -72(%rbp)
.L38:
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L50
	movl	$0, -72(%rbp)
	jmp	.L51
.L52:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -72(%rbp)
.L51:
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L52
	movl	-80(%rbp), %edx
	movl	-108(%rbp), %eax
	addl	%eax, %edx
	movl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-8(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	subl	$2, %edx
	movl	%edx, (%rax)
	subl	$1, -80(%rbp)
.L11:
	cmpl	$1, -80(%rbp)
	jg	.L53
	movl	-108(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Cluster, .-Cluster
	.globl	AllocPhylo
	.type	AllocPhylo, @function
AllocPhylo:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movl	$0, -28(%rbp)
	jmp	.L64
.L66:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 12(%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, 20(%rdx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movss	20(%rdx), %xmm0
	movss	%xmm0, 16(%rax)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	$-1, (%rcx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, 8(%rdx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movl	8(%rdx), %eax
	movl	%eax, 4(%rcx)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 32(%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	calloc@PLT
	movq	%rax, 24(%rbx)
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L65
	movl	$0, %eax
	jmp	.L63
.L65:
	addl	$1, -28(%rbp)
.L64:
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L66
	movq	-24(%rbp), %rax
.L63:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AllocPhylo, .-AllocPhylo
	.globl	FreePhylo
	.type	FreePhylo, @function
FreePhylo:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L68
.L69:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L68:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FreePhylo, .-FreePhylo
	.globl	MakeDiffMx
	.type	MakeDiffMx, @function
MakeDiffMx:
.LFB8:
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
	movl	-28(%rbp), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	FMX2Alloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L71
.L74:
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L72
.L73:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PairwiseIdentity@PLT
	movaps	%xmm0, %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	.LC5(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movss	(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -12(%rbp)
.L72:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L73
	addl	$1, -16(%rbp)
.L71:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L74
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	MakeDiffMx, .-MakeDiffMx
	.globl	MakeIdentityMx
	.type	MakeIdentityMx, @function
MakeIdentityMx:
.LFB9:
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
	movl	-44(%rbp), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	FMX2Alloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L77
.L80:
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L78
.L79:
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
	call	PairwiseIdentity@PLT
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
.L78:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L79
	addl	$1, -32(%rbp)
.L77:
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L80
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MakeIdentityMx, .-MakeIdentityMx
	.section	.rodata
.LC6:
	.string	"%s:%.5f"
.LC7:
	.string	",\n"
.LC8:
	.string	");\n"
.LC9:
	.string	"):%.5f"
	.text
	.globl	PrintNewHampshireTree
	.type	PrintNewHampshireTree, @function
PrintNewHampshireTree:
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
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	subq	$4, %rax
	movq	%rax, %rdx
	movl	$464, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	call	InitIntStack@PLT
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PushIntStack@PLT
	movl	$0, -28(%rbp)
	jmp	.L83
.L90:
	movl	-32(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L84
	cmpl	$0, -28(%rbp)
	je	.L85
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc@PLT
.L85:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$1, -28(%rbp)
	jmp	.L83
.L84:
	movl	-60(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L86
	cmpl	$0, -28(%rbp)
	je	.L87
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rdi
	call	fwrite@PLT
.L87:
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$40, %edi
	call	fputc@PLT
	movl	-32(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PushIntStack@PLT
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PushIntStack@PLT
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PushIntStack@PLT
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rcx), %xmm0
	movss	%xmm0, (%rax)
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rcx), %xmm0
	movss	%xmm0, (%rax)
	movl	$0, -28(%rbp)
	jmp	.L83
.L86:
	movl	-60(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L88
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC8(%rip), %rdi
	call	fwrite@PLT
	jmp	.L89
.L88:
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L89:
	movl	$1, -28(%rbp)
.L83:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PopIntStack@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	FreeIntStack@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PrintNewHampshireTree, .-PrintNewHampshireTree
	.section	.rodata
.LC10:
	.string	"Interior node %d (code %d)\n"
.LC11:
	.string	"\tParent: %d (code %d)\n"
.LC12:
	.string	"interior"
.LC13:
	.string	"\tLeft:   %d (%s) %f\n"
.LC14:
	.string	"\tRight:   %d (%s) %f\n"
.LC15:
	.string	"\tHeight:  %f\n"
.LC16:
	.string	"\tIncludes:%d seqs\n"
	.text
	.globl	PrintPhylo
	.type	PrintPhylo, @function
PrintPhylo:
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
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L94
.L103:
	movl	-4(%rbp), %edx
	movl	-44(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L95
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rcx, %rax
	leaq	4(%rax), %rdx
	jmp	.L96
.L95:
	leaq	.LC12(%rip), %rdx
.L96:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L97
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	subl	-44(%rbp), %eax
	jmp	.L98
.L97:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
.L98:
	movq	-24(%rbp), %rdi
	movq	%rdx, %rcx
	movl	%eax, %edx
	leaq	.LC13(%rip), %rsi
	movl	$1, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	20(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L99
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rcx, %rax
	leaq	4(%rax), %rdx
	jmp	.L100
.L99:
	leaq	.LC12(%rip), %rdx
.L100:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L101
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	subl	-44(%rbp), %eax
	jmp	.L102
.L101:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
.L102:
	movq	-24(%rbp), %rdi
	movq	%rdx, %rcx
	movl	%eax, %edx
	leaq	.LC14(%rip), %rsi
	movl	$1, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L94:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L103
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PrintPhylo, .-PrintPhylo
	.section	.rodata
	.align 4
.LC3:
	.long	1232348144
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
