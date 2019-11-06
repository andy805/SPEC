	.file	"sre_math.c"
	.text
	.globl	Linefit
	.type	Linefit, @function
Linefit:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-24(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L3
	cvtsi2ss	-52(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	cvtsi2ss	-52(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	subss	-24(%rbp), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	subss	-20(%rbp), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm1
	subss	-24(%rbp), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-20(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L5
	movss	-8(%rbp), %xmm0
	divss	-16(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movss	(%rax), %xmm0
	mulss	-24(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtss2sd	-8(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	call	sqrt@PLT
	movsd	%xmm0, -96(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	call	sqrt@PLT
	mulsd	-96(%rbp), %xmm0
	movsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Linefit, .-Linefit
	.globl	WeightedLinefit
	.type	WeightedLinefit, @function
WeightedLinefit:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L8
.L9:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	addl	$1, -68(%rbp)
.L8:
	movl	-68(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L9
	movsd	-64(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-64(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	cvtsd2ss	-8(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtsd2ss	-16(%rbp), %xmm0
	movq	-128(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WeightedLinefit, .-WeightedLinefit
	.globl	Gammln
	.type	Gammln, @function
Gammln:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jb	.L17
	movsd	.LC3(%rip), %xmm0
	jmp	.L13
.L17:
	movsd	-56(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$10, -36(%rbp)
	jmp	.L14
.L15:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	cof.5550(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	subl	$1, -36(%rbp)
.L14:
	cmpl	$0, -36(%rbp)
	jns	.L15
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	call	log@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	call	log@PLT
	mulsd	-64(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	addsd	%xmm1, %xmm0
	subsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Gammln, .-Gammln
	.section	.rodata
.LC7:
	.string	"sre_math.c"
	.text
	.globl	FMX2Alloc
	.type	FMX2Alloc, @function
FMX2Alloc:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$172, %esi
	leaq	.LC7(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$173, %esi
	leaq	.LC7(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L19:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L20
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FMX2Alloc, .-FMX2Alloc
	.globl	FMX2Free
	.type	FMX2Free, @function
FMX2Free:
.LFB9:
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
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FMX2Free, .-FMX2Free
	.globl	DMX2Alloc
	.type	DMX2Alloc, @function
DMX2Alloc:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$190, %esi
	leaq	.LC7(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$191, %esi
	leaq	.LC7(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	imull	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L24:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L25
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DMX2Alloc, .-DMX2Alloc
	.globl	DMX2Free
	.type	DMX2Free, @function
DMX2Free:
.LFB11:
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
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	DMX2Free, .-DMX2Free
	.globl	FMX2Multiply
	.type	FMX2Multiply, @function
FMX2Multiply:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L29
.L34:
	movl	$0, -8(%rbp)
	jmp	.L30
.L33:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L31
.L32:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L31:
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L32
	addl	$1, -8(%rbp)
.L30:
	movl	-8(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L33
	addl	$1, -12(%rbp)
.L29:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L34
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	FMX2Multiply, .-FMX2Multiply
	.section	.rodata
	.align 8
.LC8:
	.string	"IncompleteGamma(): a must be > 0"
	.align 8
.LC9:
	.string	"IncompleteGamma(): x must be >= 0"
	.align 8
.LC12:
	.string	"IncompleteGamma(): failed to converge using continued fraction approx"
	.align 8
.LC13:
	.string	"IncompleteGamma(): failed to converge using series approx"
	.text
	.globl	IncompleteGamma
	.type	IncompleteGamma, @function
IncompleteGamma:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jb	.L36
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L36:
	pxor	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.L38
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L38:
	movsd	-72(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L60
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$1, -60(%rbp)
	jmp	.L42
.L48:
	cvtsi2sd	-60(%rbp), %xmm0
	subsd	-72(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sd	-60(%rbp), %xmm0
	subsd	-72(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-80(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	cvtsi2sd	-60(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-80(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	cvtsi2sd	-60(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jp	.L57
	pxor	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	je	.L43
.L57:
	movsd	-48(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
.L43:
	movsd	-40(%rbp), %xmm0
	subsd	-56(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	.LC11(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L61
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	log@PLT
	mulsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	call	Gammln
	movsd	-88(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	call	exp@PLT
	mulsd	-40(%rbp), %xmm0
	jmp	.L47
.L61:
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	addl	$1, -60(%rbp)
.L42:
	cmpl	$99, -60(%rbp)
	jle	.L48
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L49
.L60:
	movsd	.LC2(%rip), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$1, -60(%rbp)
	jmp	.L50
.L53:
	cvtsi2sd	-60(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movq	.LC10(%rip), %xmm1
	andpd	%xmm1, %xmm0
	movsd	.LC11(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L62
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	call	log@PLT
	mulsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	call	Gammln
	movsd	-88(%rbp), %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	exp@PLT
	mulsd	-16(%rbp), %xmm0
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L47
.L62:
	addl	$1, -60(%rbp)
.L50:
	cmpl	$9999, -60(%rbp)
	jle	.L53
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L49:
	pxor	%xmm0, %xmm0
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	IncompleteGamma, .-IncompleteGamma
	.data
	.align 32
	.type	cof.5550, @object
	.size	cof.5550, 88
cof.5550:
	.long	3039028678
	.long	1088875577
	.long	713941920
	.long	-1056764700
	.long	2810675066
	.long	1091122503
	.long	3522200933
	.long	-1056902037
	.long	3662865908
	.long	1088983486
	.long	3513864768
	.long	-1060978485
	.long	1265500720
	.long	1082881199
	.long	2851432162
	.long	-1069576911
	.long	3257283622
	.long	1070767283
	.long	3268756227
	.long	-1087477748
	.long	3394435930
	.long	1038169040
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	1093567614
	.align 8
.LC4:
	.long	0
	.long	1076232192
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	3360202092
	.long	1072523249
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC11:
	.long	2596056904
	.long	1048238066
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
