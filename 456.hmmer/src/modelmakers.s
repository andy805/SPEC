	.file	"modelmakers.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Alignment must have RF annotation to hand-build an HMM"
.LC1:
	.string	"modelmakers.c"
	.text
	.globl	P7Handmodelmaker
	.type	P7Handmodelmaker, @function
P7Handmodelmaker:
.LFB5:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L2:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$111, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -12(%rbp)
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L4
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L4
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L4
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L4
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L4
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	orl	$1, %edx
	movl	%edx, (%rax)
	jmp	.L5
.L4:
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	orl	$8, %edx
	movl	%edx, (%rax)
.L5:
	addl	$1, -12(%rbp)
.L3:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L6
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	matassign2hmm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7Handmodelmaker, .-P7Handmodelmaker
	.globl	P7Fastmodelmaker
	.type	P7Fastmodelmaker, @function
P7Fastmodelmaker:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$172, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -16(%rbp)
	jmp	.L9
.L17:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L10
.L13:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L12
.L11:
	addl	$1, -12(%rbp)
.L12:
	addl	$1, -20(%rbp)
.L10:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L13
	cvtsi2ss	-12(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jbe	.L20
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	orl	$8, %edx
	movl	%edx, (%rax)
	jmp	.L16
.L20:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	orl	$1, %edx
	movl	%edx, (%rax)
.L16:
	addl	$1, -16(%rbp)
.L9:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L17
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	matassign2hmm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7Fastmodelmaker, .-P7Fastmodelmaker
	.globl	P7Maxmodelmaker
	.type	P7Maxmodelmaker, @function
P7Maxmodelmaker:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$504, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movss	%xmm0, -468(%rbp)
	movq	%rdx, -480(%rbp)
	movq	%rcx, -488(%rbp)
	movss	%xmm1, -472(%rbp)
	movss	%xmm2, -492(%rbp)
	movq	%r8, -504(%rbp)
	movq	%r9, -512(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$255, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -376(%rbp)
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	addl	$2, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$256, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -368(%rbp)
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	addl	$2, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$257, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -360(%rbp)
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$258, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -352(%rbp)
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$259, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -344(%rbp)
	movl	$0, -432(%rbp)
	jmp	.L22
.L23:
	movl	Alphabet_size(%rip), %eax
	cltq
	salq	$2, %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-376(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$261, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	Alphabet_size(%rip), %edx
	movl	-432(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	addl	$1, -432(%rbp)
.L22:
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -432(%rbp)
	jl	.L23
	movl	$0, -432(%rbp)
	jmp	.L24
.L28:
	movl	$0, -436(%rbp)
	jmp	.L25
.L27:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L26
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L26
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L26
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L26
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L26
	movq	-456(%rbp), %rax
	movq	16(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	SymbolIndex@PLT
	movsbl	%al, %edx
	movl	-432(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%ebx, -496(%rbp)
	movss	-496(%rbp), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7CountSymbol@PLT
.L26:
	addl	$1, -436(%rbp)
.L25:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L27
	addl	$1, -432(%rbp)
.L24:
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -432(%rbp)
	jl	.L28
	movss	-492(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L126
	cvtss2sd	-492(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L31
.L126:
	movss	.LC4(%rip), %xmm0
.L31:
	movss	%xmm0, -492(%rbp)
	movl	Alphabet_size(%rip), %edx
	movq	-480(%rbp), %rax
	leaq	24016(%rax), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
	movl	Alphabet_size(%rip), %edx
	leaq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movq	-456(%rbp), %rax
	movl	28(%rax), %edx
	movq	-456(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -400(%rbp)
	movl	$0, -424(%rbp)
	jmp	.L32
.L36:
	movl	-424(%rbp), %eax
	cltq
	movss	-192(%rbp,%rax,4), %xmm0
	movl	-424(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L127
	movl	-424(%rbp), %eax
	cltq
	movss	-192(%rbp,%rax,4), %xmm0
	movl	-424(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L35
.L127:
	movss	.LC4(%rip), %xmm0
.L35:
	movl	-424(%rbp), %eax
	cltq
	movss	%xmm0, -192(%rbp,%rax,4)
	addl	$1, -424(%rbp)
.L32:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -424(%rbp)
	jl	.L36
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	call	estimate_model_length
	movl	%eax, -396(%rbp)
	movl	-396(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -392(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -388(%rbp)
	movl	-396(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -384(%rbp)
	movss	-388(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L128
	movss	-388(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L39
.L128:
	movss	.LC4(%rip), %xmm0
.L39:
	movss	%xmm0, -388(%rbp)
	movss	-384(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L129
	movss	-384(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L42
.L129:
	movss	.LC4(%rip), %xmm0
.L42:
	movss	%xmm0, -384(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -468(%rbp)
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -416(%rbp)
	jmp	.L43
.L51:
	movl	$0, -404(%rbp)
	movl	$0, -436(%rbp)
	jmp	.L44
.L47:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-416(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L45
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-416(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L45
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-416(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L45
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-416(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L45
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-416(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L46
.L45:
	addl	$1, -404(%rbp)
.L46:
	addl	$1, -436(%rbp)
.L44:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L47
	cvtsi2ss	-404(%rbp), %xmm0
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	-468(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L138
	subl	$1, -416(%rbp)
.L43:
	cmpl	$0, -416(%rbp)
	jg	.L51
	jmp	.L50
.L138:
	nop
.L50:
	movl	-416(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movl	-416(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	$0, -436(%rbp)
	jmp	.L52
.L56:
	movl	-416(%rbp), %eax
	movl	%eax, -432(%rbp)
	jmp	.L53
.L55:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$95, (%rax)
	subl	$1, -432(%rbp)
.L53:
	cmpl	$0, -432(%rbp)
	jle	.L54
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L55
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L55
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L55
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L55
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L55
.L54:
	addl	$1, -436(%rbp)
.L52:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L56
	movl	-416(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -432(%rbp)
	jmp	.L57
.L95:
	movl	Alphabet_size(%rip), %edx
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
	movq	-480(%rbp), %rax
	leaq	7212(%rax), %rdi
	movq	-480(%rbp), %rax
	leaq	6412(%rax), %rcx
	movq	-480(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-480(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7PriorifyEmissionVector@PLT
	movl	$0, -424(%rbp)
	jmp	.L58
.L62:
	movl	-424(%rbp), %eax
	cltq
	movss	-272(%rbp,%rax,4), %xmm0
	movl	-424(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L130
	movl	-424(%rbp), %eax
	cltq
	movss	-272(%rbp,%rax,4), %xmm0
	movl	-424(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-488(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L61
.L130:
	movss	.LC4(%rip), %xmm0
.L61:
	movl	-424(%rbp), %eax
	cltq
	movss	%xmm0, -272(%rbp,%rax,4)
	addl	$1, -424(%rbp)
.L58:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -424(%rbp)
	jl	.L62
	movl	Alphabet_size(%rip), %edx
	leaq	-112(%rbp), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -436(%rbp)
	jmp	.L63
.L64:
	movl	-436(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -436(%rbp)
.L63:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L64
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
	movl	-432(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -428(%rbp)
	jmp	.L65
.L94:
	movq	-456(%rbp), %rax
	movq	16(%rax), %r9
	movq	-456(%rbp), %rax
	movl	28(%rax), %esi
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %r8d
	movl	-432(%rbp), %ecx
	movq	-344(%rbp), %rdx
	subq	$8, %rsp
	leaq	-336(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	build_cij
	addq	$16, %rsp
	movl	%eax, -380(%rbp)
	cmpl	$-1, -380(%rbp)
	je	.L139
	cmpl	$1, -380(%rbp)
	jne	.L68
	leaq	-336(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FCopy@PLT
	movq	-480(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-480(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7PriorifyTransitionVector@PLT
	leaq	-304(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movss	-304(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L131
	movss	-304(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L71
.L131:
	movss	.LC4(%rip), %xmm0
.L71:
	movss	%xmm0, -304(%rbp)
	movss	-300(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L132
	movss	-300(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L74
.L132:
	movss	.LC4(%rip), %xmm0
.L74:
	movss	%xmm0, -300(%rbp)
	movss	-296(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L133
	movss	-296(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L77
.L133:
	movss	.LC4(%rip), %xmm0
.L77:
	movss	%xmm0, -296(%rbp)
	movss	-292(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L134
	movss	-292(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L80
.L134:
	movss	.LC4(%rip), %xmm0
.L80:
	movss	%xmm0, -292(%rbp)
	movss	-288(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L135
	movss	-288(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L83
.L135:
	movss	.LC4(%rip), %xmm0
.L83:
	movss	%xmm0, -288(%rbp)
	movss	-284(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L136
	movss	-284(%rbp), %xmm0
	divss	-472(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L86
.L136:
	movss	.LC4(%rip), %xmm0
.L86:
	movss	%xmm0, -284(%rbp)
	movss	-280(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L137
	movss	-280(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L89
.L137:
	movss	.LC4(%rip), %xmm0
.L89:
	movss	%xmm0, -280(%rbp)
	movl	-428(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm4
	movss	%xmm4, -496(%rbp)
	leaq	-336(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FDot@PLT
	addss	-496(%rbp), %xmm0
	movss	%xmm0, -496(%rbp)
	movl	Alphabet_size(%rip), %edx
	leaq	-112(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FDot@PLT
	addss	-496(%rbp), %xmm0
	movss	%xmm0, -412(%rbp)
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-412(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L68
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	-412(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rax, %rdx
	movl	-428(%rbp), %eax
	movl	%eax, (%rdx)
.L68:
	movl	Alphabet_size(%rip), %edx
	movl	-428(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FAdd@PLT
	movl	$0, -436(%rbp)
	jmp	.L91
.L93:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L92
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L92
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L92
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L92
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-428(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L92
	movl	-436(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
.L92:
	addl	$1, -436(%rbp)
.L91:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L93
	addl	$1, -428(%rbp)
.L65:
	movl	-428(%rbp), %eax
	cmpl	-416(%rbp), %eax
	jle	.L94
	jmp	.L67
.L139:
	nop
.L67:
	movl	Alphabet_size(%rip), %edx
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-376(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	FDot@PLT
	movaps	%xmm0, %xmm1
	movss	-492(%rbp), %xmm0
	mulss	-400(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	subl	$1, -432(%rbp)
.L57:
	cmpl	$0, -432(%rbp)
	jg	.L95
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -408(%rbp)
	movl	$0, -420(%rbp)
	movl	$1, -432(%rbp)
	jmp	.L96
.L104:
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -412(%rbp)
	movl	$0, -436(%rbp)
	jmp	.L97
.L101:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L98
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L98
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L98
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L98
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movl	-436(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L99
.L98:
	movss	-412(%rbp), %xmm0
	addss	-384(%rbp), %xmm0
	movss	%xmm0, -412(%rbp)
	jmp	.L100
.L99:
	movss	-412(%rbp), %xmm0
	addss	-388(%rbp), %xmm0
	movss	%xmm0, -412(%rbp)
.L100:
	addl	$1, -436(%rbp)
.L97:
	movq	-456(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -436(%rbp)
	jl	.L101
	movss	-412(%rbp), %xmm0
	ucomiss	-408(%rbp), %xmm0
	jbe	.L102
	movss	-412(%rbp), %xmm0
	movss	%xmm0, -408(%rbp)
	movl	-432(%rbp), %eax
	movl	%eax, -420(%rbp)
.L102:
	addl	$1, -432(%rbp)
.L96:
	movl	-432(%rbp), %eax
	cmpl	-416(%rbp), %eax
	jle	.L104
	movq	-352(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -432(%rbp)
	jmp	.L105
.L106:
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, (%rax)
	addl	$1, -432(%rbp)
.L105:
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -432(%rbp)
	jle	.L106
	movl	-420(%rbp), %eax
	movl	%eax, -432(%rbp)
	jmp	.L107
.L108:
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-352(%rbp), %rax
	addq	%rcx, %rax
	andl	$-9, %edx
	movl	%edx, (%rax)
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-352(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-352(%rbp), %rax
	addq	%rcx, %rax
	orl	$1, %edx
	movl	%edx, (%rax)
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -432(%rbp)
.L107:
	cmpl	$0, -432(%rbp)
	jne	.L108
	movq	-512(%rbp), %rdi
	movq	-504(%rbp), %rcx
	movq	-352(%rbp), %rdx
	movq	-464(%rbp), %rsi
	movq	-456(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	matassign2hmm
	movl	$1, -432(%rbp)
	jmp	.L109
.L110:
	movl	-432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -432(%rbp)
.L109:
	movq	-456(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -432(%rbp)
	jle	.L110
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L111
	call	__stack_chk_fail@PLT
.L111:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7Maxmodelmaker, .-P7Maxmodelmaker
	.type	build_cij, @function
build_cij:
.LFB8:
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
	movl	%ecx, -32(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	subl	$1, -32(%rbp)
	subl	$1, -44(%rbp)
	pxor	%xmm0, %xmm0
	movl	$8, %esi
	movq	16(%rbp), %rdi
	call	FSet@PLT
	movl	$0, -4(%rbp)
	jmp	.L141
.L156:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L142
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L143
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L143
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L143
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L143
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L144
.L143:
	movl	$-1, %eax
	jmp	.L145
.L144:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L146
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L146
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L146
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L146
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L147
.L146:
	movl	$0, %eax
	jmp	.L145
.L147:
	movq	16(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	addq	$4, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	addq	$16, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	movq	16(%rbp), %rax
	addq	$16, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	16(%rbp), %rax
	addq	$12, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	addq	$12, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L148
.L142:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L149
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L149
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L149
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L149
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L149
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L148
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L151
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L151
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L151
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L151
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L152
.L151:
	movq	16(%rbp), %rax
	addq	$8, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	addq	$8, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L148
.L152:
	movq	16(%rbp), %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.L148
.L149:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L157
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L154
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L154
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L154
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L154
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L155
.L154:
	movq	16(%rbp), %rax
	addq	$24, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	addq	$24, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L148
.L155:
	movq	16(%rbp), %rax
	addq	$20, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	16(%rbp), %rax
	addq	$20, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L148
.L157:
	nop
.L148:
	addl	$1, -4(%rbp)
.L141:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L156
	movl	$1, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	build_cij, .-build_cij
	.type	estimate_model_length, @function
estimate_model_length:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L159
.L160:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movss	%xmm2, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DealignedLength@PLT
	cvtsi2ss	%eax, %xmm0
	mulss	-28(%rbp), %xmm0
	movss	-8(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$1, -12(%rbp)
.L159:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L160
	movss	-8(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	estimate_model_length, .-estimate_model_length
	.section	.rodata
	.align 8
.LC7:
	.ascii	"No conserved consensus columns found; abortin"
	.string	"g construction!\nThis is an unusual situation. Reexamine your sequence alignment. It is\nprobably unusually full of gaps, or lots of sequence fragments. You may be\nable to force HMMER to model it; see the --fast (and --gapmax), or --hand\noptions to hmmbuild."
	.text
	.type	matassign2hmm, @function
matassign2hmm:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L163
.L165:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L164
	addl	$1, -36(%rbp)
.L164:
	addl	$1, -28(%rbp)
.L163:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L165
	cmpl	$0, -36(%rbp)
	jne	.L166
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L166:
	movl	$1, -28(%rbp)
	jmp	.L167
.L169:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	orl	$16, %edx
	movl	%edx, (%rax)
	addl	$1, -28(%rbp)
.L167:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L168
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L169
.L168:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L170
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	orl	$2, %edx
	movl	%edx, (%rax)
.L170:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.L171
.L173:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	orl	$32, %edx
	movl	%edx, (%rax)
	subl	$1, -28(%rbp)
.L171:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L172
	cmpl	$0, -28(%rbp)
	jg	.L173
.L172:
	cmpl	$0, -28(%rbp)
	jle	.L174
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	orl	$4, %edx
	movl	%edx, (%rax)
.L174:
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movq	-56(%rbp), %rax
	movl	28(%rax), %esi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	fake_tracebacks
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	AllocPlan7@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ZeroPlan7@PLT
	movl	$0, -32(%rbp)
	jmp	.L175
.L176:
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %esi
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	%esi, -92(%rbp)
	movss	-92(%rbp), %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7TraceCount@PLT
	addl	$1, -32(%rbp)
.L175:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L176
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	annotate_model
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L177:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$564, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$0, -28(%rbp)
	jmp	.L178
.L181:
	movl	-28(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L179
	movl	$120, %ecx
	jmp	.L180
.L179:
	movl	$46, %ecx
.L180:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	%cl, (%rax)
	addl	$1, -28(%rbp)
.L178:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L181
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpq	$0, -88(%rbp)
	je	.L182
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L183
.L182:
	movl	$0, -32(%rbp)
	jmp	.L184
.L185:
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	addl	$1, -32(%rbp)
.L184:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L185
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L183:
	cmpq	$0, -80(%rbp)
	je	.L186
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L162
.L186:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
	nop
.L162:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L189
	call	__stack_chk_fail@PLT
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	matassign2hmm, .-matassign2hmm
	.type	fake_tracebacks, @function
fake_tracebacks:
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
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$607, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L191
.L204:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	addl	$6, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movb	$4, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$5, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$1, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$2, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L192
.L203:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L193
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L193:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L194
	addl	$1, -20(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L195
.L194:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L196
	addl	$1, -20(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L195
.L196:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L198
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L195
.L198:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L199
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L195
.L199:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L195
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	addl	$1, -12(%rbp)
.L195:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L200
	jmp	.L201
.L202:
	subl	$1, -12(%rbp)
.L201:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	je	.L202
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L200:
	addl	$1, -16(%rbp)
.L192:
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L203
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$9, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %esi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	trace_doctor
	addl	$1, -28(%rbp)
.L191:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L204
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fake_tracebacks, .-fake_tracebacks
	.type	trace_doctor, @function
trace_doctor:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L207
.L214:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L208
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L208
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$2, -16(%rbp)
	addl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
	jmp	.L207
.L208:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L209
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L209
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$2, -16(%rbp)
	addl	$1, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L207
.L209:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L210
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L210
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L207
.L210:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L211
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L211
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L207
.L211:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L212
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L212
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L212
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L212
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
	jmp	.L207
.L212:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L213
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L213
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L213
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L213
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$3, -16(%rbp)
	addl	$3, -12(%rbp)
	jmp	.L207
.L213:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
.L207:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L214
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L215
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L215:
	cmpq	$0, -48(%rbp)
	je	.L218
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
.L218:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	trace_doctor, .-trace_doctor
	.section	.rodata
.LC8:
	.string	"X-PRM"
.LC9:
	.string	"X-PRI"
.LC10:
	.string	"X-PRT"
	.text
	.type	annotate_model, @function
annotate_model:
.LFB13:
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
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movb	$32, (%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L221
.L225:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L222
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L223
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	jmp	.L224
.L223:
	movl	$46, %edx
.L224:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	cltq
	addq	%rsi, %rax
	movb	%dl, (%rax)
.L222:
	addl	$1, -16(%rbp)
.L221:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L225
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
.L220:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movb	$32, (%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L227
.L231:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L228
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L229
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	jmp	.L230
.L229:
	movl	$46, %edx
.L230:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	cltq
	addq	%rsi, %rax
	movb	%dl, (%rax)
.L228:
	addl	$1, -16(%rbp)
.L227:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L231
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
.L226:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L232
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movb	$32, (%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L233
.L237:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L234
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L235
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	jmp	.L236
.L235:
	movl	$46, %edx
.L236:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	cltq
	addq	%rsi, %rax
	movb	%dl, (%rax)
.L234:
	addl	$1, -16(%rbp)
.L233:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L237
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	orb	$32, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
.L232:
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L238
.L240:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L239
	movq	-24(%rbp), %rax
	movq	72(%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
.L239:
	addl	$1, -16(%rbp)
.L238:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L240
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	MSAGetGC@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L241
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$896, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L242
.L248:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L243
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L244
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$48, %edx
	movl	%edx, (%rax)
	jmp	.L245
.L244:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L246
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$87, %edx
	movl	%edx, (%rax)
	jmp	.L245
.L246:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L247
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$55, %edx
	movl	%edx, (%rax)
	jmp	.L245
.L247:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
.L245:
	addl	$1, -12(%rbp)
.L243:
	addl	$1, -16(%rbp)
.L242:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L248
.L241:
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	MSAGetGC@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L249
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$911, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L250
.L256:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L251
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L252
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$48, %edx
	movl	%edx, (%rax)
	jmp	.L253
.L252:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L254
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$87, %edx
	movl	%edx, (%rax)
	jmp	.L253
.L254:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L255
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$55, %edx
	movl	%edx, (%rax)
	jmp	.L253
.L255:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
.L253:
	addl	$1, -12(%rbp)
.L251:
	addl	$1, -16(%rbp)
.L250:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L256
.L249:
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	MSAGetGC@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L265
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$926, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L258
.L264:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L259
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L260
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$48, %edx
	movl	%edx, (%rax)
	jmp	.L261
.L260:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L262
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$87, %edx
	movl	%edx, (%rax)
	jmp	.L261
.L262:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L263
	movl	-16(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	subl	$55, %edx
	movl	%edx, (%rax)
	jmp	.L261
.L263:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
.L261:
	addl	$1, -12(%rbp)
.L259:
	addl	$1, -16(%rbp)
.L258:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L264
.L265:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	annotate_model, .-annotate_model
	.section	.rodata
.LC11:
	.string	"%3d %c %c %c\n"
	.text
	.type	print_matassign, @function
print_matassign:
.LFB14:
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
	jmp	.L267
.L276:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L268
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L269
.L268:
	movl	$124, %esi
	jmp	.L270
.L269:
	movl	$32, %esi
.L270:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L271
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L272
.L271:
	movl	$60, %ecx
	jmp	.L273
.L272:
	movl	$32, %ecx
.L273:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L274
	movl	$120, %edx
	jmp	.L275
.L274:
	movl	$32, %edx
.L275:
	movl	-4(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L267:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L276
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	print_matassign, .-print_matassign
	.section	.rodata
	.align 8
.LC3:
	.long	1693346863
	.long	1073157447
	.align 4
.LC4:
	.long	3323739136
	.align 4
.LC5:
	.long	1056964608
	.align 4
.LC6:
	.long	4286578687
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
