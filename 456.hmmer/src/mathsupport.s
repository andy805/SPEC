	.file	"mathsupport.c"
	.text
	.globl	Prob2Score
	.type	Prob2Score, @function
Prob2Score:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L2
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jne	.L2
	movl	$-987654321, %eax
	jmp	.L4
.L2:
	movss	-4(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L10
	movss	-4(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L7
.L10:
	movq	.LC4(%rip), %rax
.L7:
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	floor@PLT
	cvttsd2si	%xmm0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Prob2Score, .-Prob2Score
	.globl	Score2Prob
	.type	Score2Prob, @function
Score2Prob:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	cmpl	$-987654321, -4(%rbp)
	jne	.L12
	pxor	%xmm0, %xmm0
	jmp	.L13
.L12:
	cvtss2sd	-8(%rbp), %xmm2
	movsd	%xmm2, -16(%rbp)
	cvtsi2ss	-4(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	mulsd	-16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Score2Prob, .-Score2Prob
	.globl	Scorify
	.type	Scorify, @function
Scorify:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cvtsi2ss	-4(%rbp), %xmm0
	movss	.LC6(%rip), %xmm1
	divss	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Scorify, .-Scorify
	.globl	PValue
	.type	PValue, @function
PValue:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	.LC7(%rip), %xmm0
	jb	.L28
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L19
.L28:
	cvtss2sd	-28(%rbp), %xmm0
	movsd	.LC9(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.L29
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L19
.L29:
	cvtss2sd	-28(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L19:
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movss	452(%rax), %xmm1
	movq	-24(%rbp), %rax
	movss	448(%rax), %xmm0
	movl	-28(%rbp), %eax
	movaps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	movl	%eax, -32(%rbp)
	movss	-32(%rbp), %xmm0
	call	ExtremeValueP@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L22
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L22:
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PValue, .-PValue
	.globl	LogSum
	.type	LogSum, @function
LogSum:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jbe	.L43
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	ucomiss	.LC11(%rip), %xmm0
	jbe	.L44
	movss	-4(%rbp), %xmm0
	jmp	.L36
.L44:
	cvtss2sd	-4(%rbp), %xmm2
	movsd	%xmm2, -16(%rbp)
	movss	-8(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	call	log@PLT
	addsd	-16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L36
.L43:
	movss	-8(%rbp), %xmm0
	subss	-4(%rbp), %xmm0
	ucomiss	.LC11(%rip), %xmm0
	jbe	.L45
	movss	-8(%rbp), %xmm0
	jmp	.L36
.L45:
	cvtss2sd	-8(%rbp), %xmm3
	movsd	%xmm3, -16(%rbp)
	movss	-4(%rbp), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	call	log@PLT
	addsd	-16(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	LogSum, .-LogSum
	.local	ilogsum_lookup
	.comm	ilogsum_lookup,80000,32
	.type	init_ilogsum, @function
init_ilogsum:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L47
.L48:
	movl	-4(%rbp), %eax
	negl	%eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	ilogsum_lookup(%rip), %rax
	movl	%edx, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L47:
	cmpl	$19999, -4(%rbp)
	jle	.L48
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	init_ilogsum, .-init_ilogsum
	.globl	ILogsum
	.type	ILogsum, @function
ILogsum:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	firsttime.6375(%rip), %eax
	testl	%eax, %eax
	je	.L50
	call	init_ilogsum
	movl	$0, firsttime.6375(%rip)
.L50:
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$19999, -4(%rbp)
	jle	.L51
	movl	-20(%rbp), %eax
	jmp	.L52
.L51:
	cmpl	$-19999, -4(%rbp)
	jge	.L53
	movl	-24(%rbp), %eax
	jmp	.L52
.L53:
	cmpl	$0, -4(%rbp)
	jle	.L54
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ilogsum_lookup(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	jmp	.L52
.L54:
	movl	-4(%rbp), %eax
	negl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ilogsum_lookup(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ILogsum, .-ILogsum
	.globl	LogNorm
	.type	LogNorm, @function
LogNorm:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L56
.L59:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jbe	.L57
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
.L57:
	addl	$1, -12(%rbp)
.L56:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L59
	movl	$0, -12(%rbp)
	jmp	.L60
.L63:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	-8(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L61
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -4(%rbp)
.L61:
	addl	$1, -12(%rbp)
.L60:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L63
	movl	$0, -12(%rbp)
	jmp	.L64
.L68:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	-8(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L72
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L67
.L72:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
.L67:
	addl	$1, -12(%rbp)
.L64:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L68
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	LogNorm, .-LogNorm
	.globl	Logp_cvec
	.type	Logp_cvec, @function
Logp_cvec:
.LFB13:
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L74
.L75:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -20(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -20(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -20(%rbp)
	addl	$1, -4(%rbp)
.L74:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L75
	cvtss2sd	-16(%rbp), %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -20(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -20(%rbp)
	cvtss2sd	-8(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-20(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm7
	movss	%xmm7, -20(%rbp)
	movss	-20(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Logp_cvec, .-Logp_cvec
	.globl	SampleDirichlet
	.type	SampleDirichlet, @function
SampleDirichlet:
.LFB14:
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
	movl	$0, -20(%rbp)
	jmp	.L78
.L79:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, -60(%rbp)
	movss	-60(%rbp), %xmm0
	call	SampleGamma
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -20(%rbp)
.L78:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L79
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SampleDirichlet, .-SampleDirichlet
	.section	.rodata
	.align 8
.LC20:
	.string	"Invalid argument alpha < 0.0 to SampleGamma()"
	.text
	.globl	SampleGamma
	.type	SampleGamma, @function
SampleGamma:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0
	movss	.LC15(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.L99
.L86:
	cvtss2sd	-36(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC10(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -8(%rbp)
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -20(%rbp)
	movss	.LC15(%rip), %xmm0
	subss	-20(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	cvtss2sd	-36(%rbp), %xmm7
	movsd	%xmm7, -48(%rbp)
	movss	.LC15(%rip), %xmm0
	divss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	-16(%rbp), %xmm0
	call	pow@PLT
	mulsd	-48(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -12(%rbp)
	movss	-36(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movss	-36(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm0, %xmm1
	cvtss2sd	-16(%rbp), %xmm0
	call	pow@PLT
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LC17(%rip), %xmm1
	call	pow@PLT
	mulsd	-48(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -4(%rbp)
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-4(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L100
	movss	-12(%rbp), %xmm0
	jmp	.L85
.L100:
	jmp	.L86
.L99:
	movss	-36(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L101
.L94:
	call	sre_random@PLT
	cvtsd2ss	%xmm0, %xmm6
	movss	%xmm6, -20(%rbp)
	cvtss2sd	-20(%rbp), %xmm1
	cvtss2sd	-36(%rbp), %xmm0
	movsd	.LC18(%rip), %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LC10(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movss	.LC15(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L102
	movss	.LC15(%rip), %xmm0
	subss	-16(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	-36(%rbp), %xmm0
	movsd	.LC18(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtss2sd	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	.LC19(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	call	sre_random@PLT
	movsd	%xmm0, -48(%rbp)
	cvtss2sd	-36(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	movapd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	cvtss2sd	-12(%rbp), %xmm0
	call	pow@PLT
	ucomisd	-48(%rbp), %xmm0
	jb	.L91
	movss	-12(%rbp), %xmm0
	jmp	.L85
.L102:
	cvtss2sd	-36(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm0, %xmm1
	cvtss2sd	-16(%rbp), %xmm0
	call	pow@PLT
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -12(%rbp)
	call	sre_random@PLT
	movsd	%xmm0, -48(%rbp)
	movss	-12(%rbp), %xmm1
	movss	.LC19(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	exp@PLT
	ucomisd	-48(%rbp), %xmm0
	jb	.L91
	movss	-12(%rbp), %xmm0
	jmp	.L85
.L91:
	jmp	.L94
.L101:
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	pxor	%xmm0, %xmm0
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	SampleGamma, .-SampleGamma
	.globl	SampleCountvector
	.type	SampleCountvector, @function
SampleCountvector:
.LFB16:
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
	movq	%rcx, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -4(%rbp)
	jmp	.L104
.L105:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FChoose@PLT
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm1
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC15(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L104:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L105
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	SampleCountvector, .-SampleCountvector
	.globl	P_PvecGivenDirichlet
	.type	P_PvecGivenDirichlet, @function
P_PvecGivenDirichlet:
.LFB17:
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L107
.L110:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L108
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC10(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.L108:
	addl	$1, -4(%rbp)
.L107:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L110
	cvtss2sd	-12(%rbp), %xmm0
	call	Gammln@PLT
	movapd	%xmm0, %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -8(%rbp)
	movss	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	P_PvecGivenDirichlet, .-P_PvecGivenDirichlet
	.data
	.align 4
	.type	firsttime.6375, @object
	.size	firsttime.6375, 4
firsttime.6375:
	.long	1
	.section	.rodata
	.align 8
.LC1:
	.long	1693346863
	.long	1073157447
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	4026531840
	.long	-1050471854
	.align 8
.LC5:
	.long	4272768156
	.long	1072049730
	.align 4
.LC6:
	.long	1148846080
	.align 8
.LC7:
	.long	4289417218
	.long	1083179007
	.align 8
.LC9:
	.long	4289417218
	.long	-1064304641
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 4
.LC11:
	.long	1112014848
	.align 8
.LC12:
	.long	3096499622
	.long	1083607751
	.align 4
.LC13:
	.long	4048155338
	.align 8
.LC14:
	.long	0
	.long	1078525952
	.align 4
.LC15:
	.long	1065353216
	.align 8
.LC16:
	.long	0
	.long	1070596096
	.align 8
.LC17:
	.long	0
	.long	1073741824
	.align 8
.LC18:
	.long	2333366121
	.long	1074118410
	.align 16
.LC19:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
