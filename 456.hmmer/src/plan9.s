	.file	"plan9.c"
	.text
	.section	.rodata
.LC0:
	.string	"plan9.c"
.LC1:
	.string	"unnamed"
	.text
	.globl	P9AllocHMM
	.type	P9AllocHMM, @function
P9AllocHMM:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$152, %edx
	movl	$35, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	imulq	$92, %rax, %rax
	movq	%rax, %rdx
	movl	$36, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	imulq	$92, %rax, %rax
	movq	%rax, %rdx
	movl	$37, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	imulq	$92, %rax, %rax
	movq	%rax, %rdx
	movl	$38, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$39, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$40, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movl	$41, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	leaq	.LC1(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	P9ZeroHMM
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P9AllocHMM, .-P9AllocHMM
	.globl	P9FreeHMM
	.type	P9FreeHMM, @function
P9FreeHMM:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L7:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P9FreeHMM, .-P9FreeHMM
	.globl	P9ZeroHMM
	.type	P9ZeroHMM, @function
P9ZeroHMM:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L10
.L15:
	movl	$0, -8(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rdx,%rax,4)
	addl	$1, -8(%rbp)
.L11:
	cmpl	$2, -8(%rbp)
	jle	.L12
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, 12(%rdx,%rax,4)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, 12(%rdx,%rax,4)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	pxor	%xmm0, %xmm0
	movss	%xmm0, 12(%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L13:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L14
	addl	$1, -12(%rbp)
.L10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jle	.L15
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P9ZeroHMM, .-P9ZeroHMM
	.globl	P9Renormalize
	.type	P9Renormalize, @function
P9Renormalize:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L20:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	cmpl	$0, -4(%rbp)
	jle	.L18
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
.L18:
	cmpl	$0, -4(%rbp)
	jle	.L19
	movl	Alphabet_size(%rip), %eax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$92, %rdx, %rdx
	addq	%rcx, %rdx
	addq	$12, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FNorm@PLT
.L19:
	movl	Alphabet_size(%rip), %eax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rcx
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$92, %rdx, %rdx
	addq	%rcx, %rdx
	addq	$12, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FNorm@PLT
	addl	$1, -4(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L20
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P9Renormalize, .-P9Renormalize
	.section	.rodata
	.align 8
.LC4:
	.string	"No support for non-protein, non-nucleic acid alphabets."
	.text
	.globl	P9DefaultNullModel
	.type	P9DefaultNullModel, @function
P9DefaultNullModel:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L22
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	aafq(%rip), %rax
	movss	(%rcx,%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -4(%rbp)
.L23:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L24
	jmp	.L29
.L22:
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	jne	.L26
	movl	$0, -4(%rbp)
	jmp	.L27
.L28:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L27:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L28
	jmp	.L29
.L26:
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P9DefaultNullModel, .-P9DefaultNullModel
	.section	.rodata
	.align 4
.LC3:
	.long	1048576000
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
