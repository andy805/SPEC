	.file	"tophits.c"
	.text
	.section	.rodata
.LC0:
	.string	"tophits.c"
	.text
	.globl	AllocTophits
	.type	AllocTophits, @function
AllocTophits:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$32, %edx
	movl	$82, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$84, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AllocTophits, .-AllocTophits
	.globl	GrowTophits
	.type	GrowTophits, @function
GrowTophits:
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
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$93, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	GrowTophits, .-GrowTophits
	.globl	FreeTophits
	.type	FreeTophits, @function
FreeTophits:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L5
.L10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	FreeFancyAli
.L6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L9:
	addl	$1, -4(%rbp)
.L5:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FreeTophits, .-FreeTophits
	.globl	AllocFancyAli
	.type	AllocFancyAli, @function
AllocFancyAli:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$72, %edx
	movl	$117, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-8(%rbp), %rax
	movl	68(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	AllocFancyAli, .-AllocFancyAli
	.globl	FreeFancyAli
	.type	FreeFancyAli, @function
FreeFancyAli:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L17:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L18:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L19:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L20:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L21:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L23:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FreeFancyAli, .-FreeFancyAli
	.globl	RegisterHit
	.type	RegisterHit, @function
RegisterHit:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movss	%xmm2, -44(%rbp)
	movsd	%xmm3, -56(%rbp)
	movss	%xmm4, -48(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jne	.L25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	GrowTophits
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, 40(%rbx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, 56(%rbx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movss	-44(%rbp), %xmm0
	movss	%xmm0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movss	-48(%rbp), %xmm0
	movss	%xmm0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-84(%rbp), %eax
	movl	%eax, 64(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-88(%rbp), %eax
	movl	%eax, 68(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	16(%rbp), %eax
	movl	%eax, 72(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	24(%rbp), %eax
	movl	%eax, 76(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	32(%rbp), %eax
	movl	%eax, 80(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	40(%rbp), %eax
	movl	%eax, 84(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	48(%rbp), %eax
	movl	%eax, 88(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	56(%rbp), %eax
	movl	%eax, 92(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	64(%rbp), %rax
	movq	%rax, 96(%rdx)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	RegisterHit, .-RegisterHit
	.globl	GetRankedHit
	.type	GetRankedHit, @function
GetRankedHit:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movsd	16(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.L28:
	cmpq	$0, -32(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movss	8(%rax), %xmm0
	movq	-32(%rbp), %rax
	movss	%xmm0, (%rax)
.L29:
	cmpq	$0, -40(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movsd	32(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.L30:
	cmpq	$0, -48(%rbp)
	je	.L31
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movss	24(%rax), %xmm0
	movq	-48(%rbp), %rax
	movss	%xmm0, (%rax)
.L31:
	cmpq	$0, 16(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	cmpq	$0, 24(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
.L33:
	cmpq	$0, 32(%rbp)
	je	.L34
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, (%rax)
.L34:
	cmpq	$0, 40(%rbp)
	je	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	64(%rax), %edx
	movq	40(%rbp), %rax
	movl	%edx, (%rax)
.L35:
	cmpq	$0, 48(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	68(%rax), %edx
	movq	48(%rbp), %rax
	movl	%edx, (%rax)
.L36:
	cmpq	$0, 56(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	72(%rax), %edx
	movq	56(%rbp), %rax
	movl	%edx, (%rax)
.L37:
	cmpq	$0, 64(%rbp)
	je	.L38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	76(%rax), %edx
	movq	64(%rbp), %rax
	movl	%edx, (%rax)
.L38:
	cmpq	$0, 72(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	80(%rax), %edx
	movq	72(%rbp), %rax
	movl	%edx, (%rax)
.L39:
	cmpq	$0, 80(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	84(%rax), %edx
	movq	80(%rbp), %rax
	movl	%edx, (%rax)
.L40:
	cmpq	$0, 88(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	88(%rax), %edx
	movq	88(%rbp), %rax
	movl	%edx, (%rax)
.L41:
	cmpq	$0, 96(%rbp)
	je	.L42
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	92(%rax), %edx
	movq	96(%rbp), %rax
	movl	%edx, (%rax)
.L42:
	cmpq	$0, 104(%rbp)
	je	.L44
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	96(%rax), %rdx
	movq	104(%rbp), %rax
	movq	%rdx, (%rax)
.L44:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	GetRankedHit, .-GetRankedHit
	.globl	TophitsMaxName
	.type	TophitsMaxName, @function
TophitsMaxName:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L46
.L48:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L47
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L47:
	addl	$1, -12(%rbp)
.L46:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L48
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	TophitsMaxName, .-TophitsMaxName
	.globl	hit_comparison
	.type	hit_comparison, @function
hit_comparison:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L61
	movl	$1, %eax
	jmp	.L53
.L61:
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L62
	movl	$-1, %eax
	jmp	.L53
.L62:
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L56
	ucomisd	%xmm1, %xmm0
	jne	.L56
	movl	$0, %eax
	jmp	.L53
.L56:
	movl	$0, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	hit_comparison, .-hit_comparison
	.globl	FullSortTophits
	.type	FullSortTophits, @function
FullSortTophits:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$300, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L66
.L67:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L67
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$1, %eax
	jle	.L63
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	hit_comparison(%rip), %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	specqsort@PLT
	jmp	.L63
.L68:
	nop
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	FullSortTophits, .-FullSortTophits
	.section	.rodata
.LC1:
	.string	"tophits_s report:"
	.align 8
.LC2:
	.string	"     Total hits:           %d\n"
	.align 8
.LC3:
	.string	"     Satisfying E cutoff:  %d\n"
	.align 8
.LC4:
	.string	"     Total memory:         %dK\n"
	.text
	.globl	TophitsReport
	.type	TophitsReport, @function
TophitsReport:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	imull	$104, %eax, %eax
	addl	$32, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L70
.L81:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L71:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L72:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L73:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movl	-12(%rbp), %eax
	addl	$72, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L75
	addl	$1, -8(%rbp)
.L75:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	addl	$1, -8(%rbp)
.L76:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L77
	addl	$1, -8(%rbp)
.L77:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L78
	addl	$1, -8(%rbp)
.L78:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L79
	addl	$1, -8(%rbp)
.L79:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movl	40(%rax), %eax
	addl	$1, %eax
	imull	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L80:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	96(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.L74:
	addl	$1, -16(%rbp)
.L70:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L81
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L82
.L86:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movsd	16(%rax), %xmm1
	cvtsi2sd	-36(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jnb	.L87
	addl	$1, -4(%rbp)
	addl	$1, -16(%rbp)
.L82:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L86
	jmp	.L85
.L87:
	nop
.L85:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	TophitsReport, .-TophitsReport
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
