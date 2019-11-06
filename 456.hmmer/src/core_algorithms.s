	.file	"core_algorithms.c"
	.text
	.section	.rodata
.LC0:
	.string	"core_algorithms.c"
	.align 8
.LC1:
	.string	"there's trouble with RAMLIMIT if you grow in both M and N."
	.text
	.globl	CreatePlan7Matrix
	.type	CreatePlan7Matrix, @function
CreatePlan7Matrix:
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
	movl	%ecx, -32(%rbp)
	movl	$80, %edx
	movl	$66, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$67, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$68, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$69, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$70, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$71, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$72, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$73, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$74, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	addl	$2, %eax
	imull	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	cmpl	$0, -32(%rbp)
	jle	.L4
	cmpl	$0, -28(%rbp)
	jle	.L4
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L4:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 68(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 76(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	CreatePlan7Matrix, .-CreatePlan7Matrix
	.globl	ResizePlan7Matrix
	.type	ResizePlan7Matrix, @function
ResizePlan7Matrix:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L7
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L17
.L7:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L9
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	addl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 64(%rax)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$133, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$134, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$135, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$136, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L9:
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L10
	movq	-24(%rbp), %rax
	movl	76(%rax), %eax
	addl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 68(%rax)
.L10:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$144, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$145, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$146, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$147, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	addl	$2, %eax
	imull	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L12
	jmp	.L8
.L17:
	nop
.L8:
	cmpq	$0, -40(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L13:
	cmpq	$0, -48(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	cmpq	$0, -56(%rbp)
	je	.L15
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L15:
	cmpq	$0, 16(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ResizePlan7Matrix, .-ResizePlan7Matrix
	.globl	AllocPlan7Matrix
	.type	AllocPlan7Matrix, @function
AllocPlan7Matrix:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edi
	movl	-24(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	call	CreatePlan7Matrix
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	cmpq	$0, -40(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L21:
	cmpq	$0, -48(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L22:
	cmpq	$0, -56(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L23:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	AllocPlan7Matrix, .-AllocPlan7Matrix
	.globl	FreePlan7Matrix
	.type	FreePlan7Matrix, @function
FreePlan7Matrix:
.LFB8:
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
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
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
.LFE8:
	.size	FreePlan7Matrix, .-FreePlan7Matrix
	.globl	AllocShadowMatrix
	.type	AllocShadowMatrix, @function
AllocShadowMatrix:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$40, %edx
	movl	$244, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$245, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$246, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$247, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$248, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$249, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rbx
	movq	%rax, %rdx
	movl	$250, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-36(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rbx
	movq	%rax, %rdx
	movl	$251, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-36(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rbx
	movq	%rax, %rdx
	movl	$252, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-36(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rbx
	movq	%rax, %rdx
	movl	$253, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$1, -28(%rbp)
	jmp	.L27
.L28:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rcx
	movl	-40(%rbp), %eax
	addl	$2, %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -28(%rbp)
.L27:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L28
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L29:
	cmpq	$0, -56(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L30:
	cmpq	$0, -64(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L31:
	cmpq	$0, -72(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	movq	-24(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	AllocShadowMatrix, .-AllocShadowMatrix
	.globl	FreeShadowMatrix
	.type	FreeShadowMatrix, @function
FreeShadowMatrix:
.LFB10:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
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
.LFE10:
	.size	FreeShadowMatrix, .-FreeShadowMatrix
	.globl	P7ViterbiSize
	.type	P7ViterbiSize, @function
P7ViterbiSize:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	movl	-24(%rbp), %eax
	addl	$2, %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC4(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC4(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	.LC5(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	.LC4(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7ViterbiSize, .-P7ViterbiSize
	.globl	P7SmallViterbiSize
	.type	P7SmallViterbiSize, @function
P7SmallViterbiSize:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	addq	%rdx, %rax
	addq	$46, %rax
	salq	$3, %rax
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	P7SmallViterbiSize, .-P7SmallViterbiSize
	.globl	P7WeeViterbiSize
	.type	P7WeeViterbiSize, @function
P7WeeViterbiSize:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rdx, %rax
	addq	$46, %rax
	leaq	(%rax,%rax), %rdx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	-4(%rbp), %eax
	addl	$2, %eax
	cltq
	addq	%rdx, %rax
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	P7WeeViterbiSize, .-P7WeeViterbiSize
	.globl	P7Forward
	.type	P7Forward, @function
P7Forward:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	movl	-92(%rbp), %edx
	leal	1(%rdx), %edi
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	call	AllocPlan7Matrix
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movl	336(%rdx), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$0, -72(%rbp)
	jmp	.L42
.L43:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
.L42:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jle	.L43
	movl	$1, -76(%rbp)
	jmp	.L44
.L49:
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -72(%rbp)
	jmp	.L45
.L46:
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	368(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %r12d
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	subq	$4, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	%r12d, %esi
	movl	%ecx, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	320(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rsi
	movq	-88(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	subq	$4, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movq	-40(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rcx,%rsi), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movq	-48(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rcx,%rsi), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	328(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rsi
	movq	-88(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -72(%rbp)
.L45:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jl	.L46
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	368(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %r12d
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rbx
	movl	%r12d, %esi
	movl	%ecx, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	320(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rsi
	movq	-88(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	340(%rax), %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movl	$1, -72(%rbp)
	jmp	.L47
.L48:
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	leaq	4(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	addl	$1, -72(%rbp)
.L47:
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jle	.L48
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	348(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	364(%rax), %eax
	addl	%ecx, %eax
	movq	-64(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	leaq	12(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	360(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	336(%rax), %eax
	addl	%ecx, %eax
	movq	-64(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	344(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	356(%rax), %eax
	addl	%ecx, %eax
	movq	-64(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	leaq	8(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	addl	$1, -76(%rbp)
.L44:
	movl	-76(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.L49
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L50
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L51
.L50:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
.L51:
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	P7Forward, .-P7Forward
	.section	.rodata
.LC9:
	.string	"traceback failed"
.LC11:
	.string	"Traceback failed."
	.text
	.globl	P7ViterbiTrace
	.type	P7ViterbiTrace, @function
P7ViterbiTrace:
.LFB15:
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
	movl	-100(%rbp), %eax
	addl	$3, %eax
	addl	%eax, %eax
	movl	%eax, -72(%rbp)
	leaq	-48(%rbp), %rdx
	movl	-72(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movb	$9, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$8, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$2, -68(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.L55
.L112:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L56
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L58(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L58(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L58:
	.long	.L56-.L58
	.long	.L57-.L58
	.long	.L59-.L58
	.long	.L60-.L58
	.long	.L56-.L58
	.long	.L61-.L58
	.long	.L62-.L58
	.long	.L63-.L58
	.long	.L64-.L58
	.long	.L56-.L58
	.long	.L65-.L58
	.text
.L57:
	movl	-64(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	320(%rax), %rax
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx), %rsi
	movq	-96(%rbp), %rcx
	addq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movsbq	%cl, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$-987654320, -52(%rbp)
	jge	.L66
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L66:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L68
	movq	-88(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -124(%rbp)
	movss	-124(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L69
	jmp	.L71
.L72:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L71
	movl	-100(%rbp), %eax
	addl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L71:
	cmpl	$0, -60(%rbp)
	jg	.L72
.L69:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L68:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L74
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L74:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L75
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L75:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L76
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L76:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L59:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jge	.L78
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L78:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L79
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L79:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L81
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L81:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L60:
	movl	-64(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	328(%rax), %rax
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	1(%rcx), %rsi
	movq	-96(%rbp), %rcx
	addq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movsbq	%cl, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpl	$-987654320, -52(%rbp)
	jge	.L82
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L82:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L83
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L83:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L85
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L85:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L61:
	cmpl	$0, -64(%rbp)
	jne	.L86
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L86
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$4, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L87
.L86:
	cmpl	$0, -64(%rbp)
	jle	.L88
	movl	-64(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	340(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L88
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L87
.L88:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L87:
	jmp	.L77
.L62:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jge	.L89
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L89:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	336(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L90
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L90:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	360(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L92
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L92:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L63:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jge	.L93
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L93:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -60(%rbp)
	jmp	.L94
.L102:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L95
	movq	-88(%rbp), %rax
	movq	216(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC10(%rip), %xmm1
	movl	%eax, -124(%rbp)
	movss	-124(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L96
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -56(%rbp)
	jmp	.L98
.L100:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L99
	movl	-100(%rbp), %eax
	addl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L99:
	subl	$1, -56(%rbp)
.L98:
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.L100
.L96:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -60(%rbp)
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L101
.L95:
	subl	$1, -60(%rbp)
.L94:
	cmpl	$0, -60(%rbp)
	jg	.L102
.L101:
	cmpl	$0, -60(%rbp)
	jns	.L117
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L117
.L64:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jge	.L104
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L104:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	356(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L105
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L105:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	344(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L107
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L107:
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L65:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jge	.L108
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-120(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L54
.L108:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	364(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L109
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L77
.L109:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	348(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L111
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L77
.L111:
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L56:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L77
.L117:
	nop
.L77:
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.L55
	movl	-100(%rbp), %eax
	addl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L55:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L112
	movq	-48(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	P7ReverseTrace@PLT
	movq	-48(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
.L54:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	P7ViterbiTrace, .-P7ViterbiTrace
	.globl	P7SmallViterbi
	.type	P7SmallViterbi, @function
P7SmallViterbi:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	P7ParsingViterbi
	movd	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L119
	cmpq	$0, -120(%rbp)
	jne	.L120
.L119:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movss	-44(%rbp), %xmm0
	jmp	.L143
.L120:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$930, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L122
.L125:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movl	136(%rax), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	P7ViterbiSize
	cmpl	$1000, %eax
	jle	.L123
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	call	P7WeeViterbi
	jmp	.L124
.L123:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	call	P7Viterbi@PLT
.L124:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$4, %eax
	addl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	%eax, -52(%rbp)
	addl	$1, -68(%rbp)
.L122:
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L125
	movl	-40(%rbp), %eax
	leal	3(%rax), %edx
	movl	-92(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -56(%rbp)
	leaq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movb	$4, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$5, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$2, -60(%rbp)
	movl	$1, -64(%rbp)
	jmp	.L126
.L127:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
	addl	$1, -64(%rbp)
.L126:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L127
	movl	$0, -68(%rbp)
	jmp	.L128
.L138:
	movl	$2, -48(%rbp)
	jmp	.L129
.L132:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L130
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
.L131:
	addl	$1, -60(%rbp)
	addl	$1, -48(%rbp)
.L129:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	$2, %eax
	cmpl	%eax, -48(%rbp)
	jl	.L132
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -68(%rbp)
	jne	.L133
	movl	$8, %ecx
	jmp	.L134
.L133:
	movl	$10, %ecx
.L134:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -60(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -68(%rbp)
	je	.L135
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.L136
.L137:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
	addl	$1, -64(%rbp)
.L136:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L137
.L135:
	addl	$1, -68(%rbp)
.L128:
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L138
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.L139
.L140:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
	addl	$1, -64(%rbp)
.L139:
	movl	-64(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.L140
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$9, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -60(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L141
.L142:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	addl	$1, -68(%rbp)
.L141:
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L142
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movss	-44(%rbp), %xmm0
.L143:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L144
	call	__stack_chk_fail@PLT
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	P7SmallViterbi, .-P7SmallViterbi
	.globl	P7ParsingViterbi
	.type	P7ParsingViterbi, @function
P7ParsingViterbi:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$2, %edi
	call	AllocPlan7Matrix
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$2, %edi
	call	AllocPlan7Matrix
	movq	%rax, -32(%rbp)
	movl	-156(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1083, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-156(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1084, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	movl	336(%rdx), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	movl	$0, -136(%rbp)
	jmp	.L146
.L147:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -136(%rbp)
.L146:
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -136(%rbp)
	jle	.L147
	movl	$1, -140(%rbp)
	jmp	.L148
.L173:
	movl	-140(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -136(%rbp)
	jmp	.L149
.L162:
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L150
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movq	-64(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L150:
	movq	-80(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L151
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movq	-64(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L151:
	movq	-104(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	368(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L152
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-140(%rbp), %edx
	subl	$1, %edx
	movl	%edx, (%rax)
.L152:
	movq	-88(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L153
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movq	-64(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L153:
	movq	-168(%rbp), %rax
	movq	320(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L154
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-168(%rbp), %rax
	movq	320(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movq	-152(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L155
.L154:
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L155:
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L156
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L156:
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L157
	movq	-88(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L157:
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -136(%rbp)
	jge	.L158
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L159
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L159:
	movq	-80(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L160
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L160:
	movq	-168(%rbp), %rax
	movq	328(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rcx
	movq	-152(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L161
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-168(%rbp), %rax
	movq	328(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rsi
	movq	-152(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L158
.L161:
	movq	-80(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L158:
	addl	$1, -136(%rbp)
.L149:
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -136(%rbp)
	jle	.L162
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	340(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L163
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
.L163:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movl	$1, -136(%rbp)
	jmp	.L164
.L166:
	movq	-96(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movq	376(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L165
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L165:
	addl	$1, -136(%rbp)
.L164:
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -136(%rbp)
	jle	.L166
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	364(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L167
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$12, %rdx
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
.L167:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	348(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L168
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
.L168:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L169
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-120(%rbp), %edx
	movl	%edx, (%rax)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L169:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	360(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L170
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-120(%rbp), %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
.L170:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	356(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	cmpl	$-987654320, -120(%rbp)
	jl	.L171
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
.L171:
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -120(%rbp)
	jle	.L172
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
.L172:
	addl	$1, -140(%rbp)
.L148:
	movl	-140(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jle	.L173
	movq	-104(%rbp), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-168(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -120(%rbp)
	movl	$2, -124(%rbp)
	leaq	-112(%rbp), %rdx
	movl	-124(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movl	$0, -132(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$9, (%rax)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rcx
	movl	-156(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -140(%rbp)
	jmp	.L174
.L175:
	addl	$2, -124(%rbp)
	movq	-112(%rbp), %rax
	movl	-124(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
	addl	$1, -132(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
	addl	$1, -132(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -140(%rbp)
.L174:
	cmpl	$0, -140(%rbp)
	jg	.L175
	addl	$1, -132(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-132(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$4, (%rax)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	P7ReverseTrace@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-112(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	P7ParsingViterbi, .-P7ParsingViterbi
	.section	.rodata
.LC12:
	.string	"Bogus state %s"
	.text
	.globl	P7WeeViterbi
	.type	P7WeeViterbi, @function
P7WeeViterbi:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1282, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$1283, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1284, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1285, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -92(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-124(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	$1, (%rax)
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	$4, (%rax)
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$9, (%rax)
	jmp	.L179
.L190:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -102(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -101(%rbp)
	subl	$1, -92(%rbp)
	movsbl	-101(%rbp), %edi
	movsbl	-102(%rbp), %r10d
	movl	-68(%rbp), %r9d
	movl	-64(%rbp), %ecx
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rsi
	movq	-136(%rbp), %rax
	leaq	-96(%rbp), %r8
	pushq	%r8
	leaq	-103(%rbp), %r8
	pushq	%r8
	leaq	-100(%rbp), %r8
	pushq	%r8
	movl	-60(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	movl	-56(%rbp), %edi
	pushq	%rdi
	movl	%r10d, %r8d
	movq	%rax, %rdi
	call	get_wee_midpt
	addq	$48, %rsp
	movd	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-103(%rbp), %eax
	movb	%al, (%rdx)
	cmpb	$4, -102(%rbp)
	jne	.L180
	cmpb	$9, -101(%rbp)
	jne	.L180
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
.L180:
	movzbl	-103(%rbp), %eax
	cmpb	$5, %al
	je	.L181
	movl	-96(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$1, %eax
	jg	.L182
	movl	-96(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$1, %eax
	jne	.L181
	cmpb	$4, -102(%rbp)
	jne	.L181
.L182:
	addl	$1, -92(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-96(%rbp), %eax
	movl	%eax, (%rdx)
.L181:
	movzbl	-103(%rbp), %eax
	cmpb	$8, %al
	je	.L183
	movl	-96(%rbp), %eax
	movl	-60(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jg	.L184
	movl	-96(%rbp), %eax
	movl	-60(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L183
	cmpb	$9, -101(%rbp)
	jne	.L183
.L184:
	addl	$1, -92(%rbp)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-96(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
.L183:
	movzbl	-103(%rbp), %eax
	cmpb	$5, %al
	jne	.L185
	jmp	.L186
.L187:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$5, (%rax)
	movl	-96(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
.L186:
	movl	-96(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L187
.L185:
	movzbl	-103(%rbp), %eax
	cmpb	$8, %al
	jne	.L179
	jmp	.L188
.L189:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, (%rdx)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$8, (%rax)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
.L188:
	movl	-96(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jge	.L189
.L179:
	cmpl	$0, -92(%rbp)
	jns	.L190
	movl	-124(%rbp), %eax
	addl	$6, %eax
	movl	%eax, -84(%rbp)
	movl	$1, -80(%rbp)
	jmp	.L191
.L195:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L192
	movl	-80(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L192
	movl	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	addl	%eax, -84(%rbp)
.L192:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L193
	movl	-80(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L193
	movl	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	addl	%eax, -84(%rbp)
.L193:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L194
	movl	-80(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L194
	movq	-136(%rbp), %rax
	movl	136(%rax), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -84(%rbp)
.L194:
	addl	$1, -80(%rbp)
.L191:
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jl	.L195
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L196
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	addl	%eax, -84(%rbp)
.L196:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L197
	movq	-136(%rbp), %rax
	movl	136(%rax), %edx
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -84(%rbp)
.L197:
	leaq	-48(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movb	$4, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$5, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$2, -72(%rbp)
	movl	$1, -80(%rbp)
	jmp	.L198
.L219:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$3, %eax
	je	.L200
	cmpl	$3, %eax
	jg	.L201
	cmpl	$1, %eax
	je	.L202
	jmp	.L199
.L201:
	cmpl	$5, %eax
	je	.L203
	cmpl	$8, %eax
	je	.L204
	jmp	.L199
.L202:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L205
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	movq	-136(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-136(%rbp), %rax
	movq	208(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -128(%rbp)
	movss	-128(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-136(%rbp), %rax
	movq	368(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L205
	movl	$1, -76(%rbp)
	jmp	.L207
.L208:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	addl	$1, -76(%rbp)
.L207:
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L208
.L205:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.L209
	movl	-80(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L209
	movl	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jle	.L209
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L210
.L211:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	addl	$1, -76(%rbp)
.L210:
	movl	-80(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L211
.L209:
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	je	.L212
	movl	-80(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L224
.L212:
	movq	-136(%rbp), %rax
	movq	216(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC10(%rip), %xmm1
	movl	%eax, -128(%rbp)
	movss	-128(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-136(%rbp), %rax
	movq	376(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L214
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L216
.L217:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	addl	$1, -76(%rbp)
.L216:
	movq	-136(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L217
.L214:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -72(%rbp)
	jmp	.L224
.L200:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
	jmp	.L218
.L203:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
	jmp	.L218
.L204:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
	jmp	.L218
.L199:
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L218
.L224:
	nop
.L218:
	addl	$1, -80(%rbp)
.L198:
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jle	.L219
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$9, (%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	-88(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L221
	call	__stack_chk_fail@PLT
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	P7WeeViterbi, .-P7WeeViterbi
	.globl	Plan7ESTViterbi
	.type	Plan7ESTViterbi, @function
Plan7ESTViterbi:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	movl	-76(%rbp), %edx
	leal	1(%rdx), %edi
	leaq	-24(%rbp), %r8
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	call	AllocPlan7Matrix
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movl	336(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$0, -60(%rbp)
	jmp	.L226
.L227:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
.L226:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L227
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	340(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	336(%rax), %edx
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$0, -60(%rbp)
	jmp	.L228
.L229:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
.L228:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L229
	movl	$2, -64(%rbp)
	jmp	.L230
.L260:
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	cmpl	$2, -64(%rbp)
	jle	.L231
	movl	-64(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jg	.L232
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jg	.L232
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jg	.L232
	movl	-64(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	0(,%rax,4), %edx
	movl	-64(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %ecx
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -56(%rbp)
	jmp	.L231
.L232:
	movl	$64, -56(%rbp)
.L231:
	movl	$1, -60(%rbp)
	jmp	.L233
.L253:
	cmpl	$2, -64(%rbp)
	jle	.L234
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L235
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L235:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L236
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L236:
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L237
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L237:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	424(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L234:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L238
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L238:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L239
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L239:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L240
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L240:
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L241
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L241:
	cmpl	$3, -64(%rbp)
	jle	.L242
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L243
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L243:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L244
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L244:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	368(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L245
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L245:
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L242
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L242:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L246
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L246:
	cmpl	$2, -64(%rbp)
	jle	.L247
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$24, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L248
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L248:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	432(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L247:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L249
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L249:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	440(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L250
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L250:
	cmpl	$4, -64(%rbp)
	jle	.L251
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L252
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L252:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	444(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L251
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L251:
	addl	$1, -60(%rbp)
.L233:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L253
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	340(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -60(%rbp)
	jmp	.L254
.L256:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L255
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L255:
	addl	$1, -60(%rbp)
.L254:
	movq	-88(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jle	.L256
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	364(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	348(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L257
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L257:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	336(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	360(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L258
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
.L258:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	356(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L259
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
.L259:
	addl	$1, -64(%rbp)
.L230:
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.L260
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L261
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L262
.L261:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
.L262:
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L264
	call	__stack_chk_fail@PLT
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Plan7ESTViterbi, .-Plan7ESTViterbi
	.section	.rodata
	.align 8
.LC13:
	.string	"you can't init get_wee_midpt with a %s\n"
	.text
	.type	get_wee_midpt, @function
get_wee_midpt:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movl	%ecx, -136(%rbp)
	movl	%r8d, %edx
	movl	%r9d, -144(%rbp)
	movl	24(%rbp), %eax
	movb	%dl, -140(%rbp)
	movb	%al, -148(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	32(%rbp), %eax
	subl	-144(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -92(%rbp)
	movl	32(%rbp), %eax
	subl	-144(%rbp), %eax
	cmpl	$1, %eax
	jne	.L266
	cmpb	$4, -140(%rbp)
	jne	.L266
	movl	-144(%rbp), %eax
	movl	%eax, -92(%rbp)
.L266:
	movl	32(%rbp), %eax
	subl	-144(%rbp), %eax
	cmpl	$1, %eax
	jne	.L267
	cmpb	$9, -148(%rbp)
	jne	.L267
	movl	32(%rbp), %eax
	movl	%eax, -92(%rbp)
.L267:
	cmpb	$4, -140(%rbp)
	je	.L268
	movl	-144(%rbp), %eax
	jmp	.L269
.L268:
	movl	$0, %eax
.L269:
	movl	%eax, -76(%rbp)
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$2, %edi
	call	AllocPlan7Matrix
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L270
.L271:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -84(%rbp)
.L270:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L271
	movsbl	-140(%rbp), %eax
	cmpl	$8, %eax
	ja	.L272
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L274(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L274(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L274:
	.long	.L272-.L274
	.long	.L273-.L274
	.long	.L272-.L274
	.long	.L275-.L274
	.long	.L276-.L274
	.long	.L277-.L274
	.long	.L272-.L274
	.long	.L272-.L274
	.long	.L278-.L274
	.text
.L273:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L279
.L275:
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L279
.L277:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	jmp	.L279
.L278:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$0, (%rax)
	jmp	.L279
.L276:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	jmp	.L279
.L272:
	movsbl	-140(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L279:
	cmpb	$1, -140(%rbp)
	jne	.L280
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.L281
.L284:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L282
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L282:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L283
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L283:
	addl	$1, -84(%rbp)
.L281:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L284
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L280
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L280:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L285
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L285:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L286
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L286:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.L287
.L317:
	movl	-88(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -136(%rbp)
	jge	.L288
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L289
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L289:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L290
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L290:
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L291
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L288
.L291:
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L288:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	368(%rax), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L292
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L292:
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L293
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L294
.L293:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L294:
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.L295
.L308:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L296
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L296:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L297
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L297:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	368(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L298
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L298:
	movq	-32(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L299
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L299:
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L300
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L301
.L300:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L301:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jge	.L302
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L303
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L303:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L302
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L302:
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jge	.L304
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L305
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L305:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L306
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L306:
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rcx
	movq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	je	.L307
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L304
.L307:
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L304:
	addl	$1, -84(%rbp)
.L295:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L308
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	340(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L309
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L309:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L310
.L313:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L311
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L311:
	addl	$1, -84(%rbp)
.L310:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jg	.L312
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jle	.L313
.L312:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L314
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L314:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	356(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L315
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L315:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L316
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L316:
	addl	$1, -88(%rbp)
.L287:
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.L317
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$2, %edi
	call	AllocPlan7Matrix
	movq	%rax, -16(%rbp)
	movl	32(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L318
.L319:
	movq	-32(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -84(%rbp)
.L318:
	movl	16(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -84(%rbp)
	jle	.L319
	cmpl	$0, -64(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	16(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	16(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	16(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movsbl	-148(%rbp), %eax
	cmpl	$9, %eax
	ja	.L320
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L322(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L322(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L322:
	.long	.L320-.L322
	.long	.L321-.L322
	.long	.L320-.L322
	.long	.L323-.L322
	.long	.L320-.L322
	.long	.L324-.L322
	.long	.L320-.L322
	.long	.L320-.L322
	.long	.L325-.L322
	.long	.L326-.L322
	.text
.L321:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L327
.L323:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L327
.L324:
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	jmp	.L327
.L325:
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$0, (%rax)
	jmp	.L327
.L326:
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movl	352(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L327
.L320:
	movsbl	-148(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L327:
	cmpb	$9, -148(%rbp)
	jne	.L328
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movl	344(%rax), %edx
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	16(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L329
.L331:
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	32(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.L330
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	32(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L330:
	subl	$1, -84(%rbp)
.L329:
	movl	-84(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.L331
.L328:
	movl	32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.L332
.L354:
	movl	-88(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	356(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L333
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L333:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L334
.L336:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	368(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L335
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L335:
	addl	$1, -84(%rbp)
.L334:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L336
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L337
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L337:
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L338
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L338:
	movq	-56(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movl	340(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L339
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L339:
	movl	16(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L340
.L353:
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jne	.L341
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.L363
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L363
.L341:
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L344
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L344:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L345
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L345:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L346
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L346:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L347
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L347:
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.L348
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L348:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L349
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L349:
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L350
	movq	-32(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L350:
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L351
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L351:
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-120(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L352
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L352:
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.L343
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	jmp	.L343
.L363:
	nop
.L343:
	subl	$1, -84(%rbp)
.L340:
	movl	-84(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.L353
	subl	$1, -88(%rbp)
.L332:
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.L354
	movl	-92(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	$-987654321, -80(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.L355
.L358:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.L356
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
	movb	$1, -97(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
.L356:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.L357
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
	movb	$3, -97(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
.L357:
	addl	$1, -84(%rbp)
.L355:
	movl	-84(%rbp), %eax
	cmpl	16(%rbp), %eax
	jle	.L358
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.L359
	movl	$1, -96(%rbp)
	movb	$5, -97(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
.L359:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.L360
	movq	-120(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -96(%rbp)
	movb	$8, -97(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
.L360:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
	movq	-160(%rbp), %rax
	movl	-96(%rbp), %edx
	movl	%edx, (%rax)
	movq	-168(%rbp), %rax
	movzbl	-97(%rbp), %edx
	movb	%dl, (%rax)
	movq	-176(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, (%rax)
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L362
	call	__stack_chk_fail@PLT
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	get_wee_midpt, .-get_wee_midpt
	.globl	P7ViterbiAlignAlignment
	.type	P7ViterbiAlignAlignment, @function
P7ViterbiAlignAlignment:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$2044, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$2045, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L365
.L366:
	movl	Alphabet_size(%rip), %eax
	cltq
	salq	$2, %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$2047, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	Alphabet_size(%rip), %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	addl	$1, -160(%rbp)
.L365:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -160(%rbp)
	jle	.L366
	movq	-56(%rbp), %rax
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-168(%rbp), %rax
	movl	28(%rax), %edx
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -144(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L367
.L371:
	movl	$0, -152(%rbp)
	jmp	.L368
.L370:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L369
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L369
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L369
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L369
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L369
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	Alphabet(%rip), %rdi
	call	strchr@PLT
	movq	%rax, %rdx
	leaq	Alphabet(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movsbl	%al, %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%ebx, -180(%rbp)
	movss	-180(%rbp), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7CountSymbol@PLT
.L369:
	addl	$1, -152(%rbp)
.L368:
	movq	-168(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -152(%rbp)
	jl	.L370
	movss	.LC10(%rip), %xmm0
	divss	-144(%rbp), %xmm0
	movl	Alphabet_size(%rip), %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FScale@PLT
	movl	Alphabet_size(%rip), %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-56(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -160(%rbp)
.L367:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -160(%rbp)
	jle	.L371
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$2, %edi
	call	AllocPlan7Matrix
	movq	%rax, -48(%rbp)
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	24(%rdx), %edx
	leal	1(%rdx), %edi
	leaq	-72(%rbp), %r8
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	call	AllocShadowMatrix
	movq	%rax, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movb	$4, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	movl	336(%rdx), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movb	$5, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$2, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	$0, -156(%rbp)
	jmp	.L372
.L373:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movb	$0, (%rdx)
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-156(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rcx
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -156(%rbp)
.L372:
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -156(%rbp)
	jle	.L373
	movl	$1, -160(%rbp)
	jmp	.L374
.L402:
	movl	-160(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -132(%rbp)
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-120(%rbp), %rdx
	movl	-136(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movb	$0, (%rdx)
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-88(%rbp), %rdx
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	$1, -156(%rbp)
	jmp	.L375
.L394:
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-88(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L376
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L376
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L376
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
.L376:
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L377
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L377
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L377
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
.L377:
	movq	-128(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	368(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L378
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
.L378:
	movq	-104(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L379
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L379
	movq	-104(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L379
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-88(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
.L379:
	movl	$0, -148(%rbp)
	jmp	.L380
.L384:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L381
	movq	-176(%rbp), %rax
	movq	320(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jne	.L381
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	jmp	.L383
.L381:
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movq	320(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	cvttss2si	%xmm0, %eax
	movl	%eax, (%rdx)
	addl	$1, -148(%rbp)
.L380:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -148(%rbp)
	jl	.L384
.L383:
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-72(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L385
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L385
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L385
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
.L385:
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L386
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L386
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L386
	movq	-104(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
.L386:
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -156(%rbp)
	jge	.L387
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L388
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L388
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L388
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
.L388:
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L389
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L389
	movq	-112(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L389
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-80(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-156(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
.L389:
	movl	$0, -148(%rbp)
	jmp	.L390
.L393:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L391
	movq	-176(%rbp), %rax
	movq	328(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jne	.L391
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	jmp	.L387
.L391:
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movq	328(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	-112(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	cvttss2si	%xmm0, %eax
	movl	%eax, (%rdx)
	addl	$1, -148(%rbp)
.L390:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -148(%rbp)
	jl	.L393
.L387:
	addl	$1, -156(%rbp)
.L375:
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -156(%rbp)
	jle	.L394
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L395
	movq	-176(%rbp), %rax
	movl	340(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L395
	movq	-128(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movl	340(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	cmpl	$-987654320, -140(%rbp)
	jl	.L395
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movb	$5, (%rax)
.L395:
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	movl	$1, -156(%rbp)
	jmp	.L396
.L398:
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L397
	movq	-176(%rbp), %rax
	movq	376(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L397
	movq	-120(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-156(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movq	376(%rax), %rax
	movl	-156(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L397
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-156(%rbp), %eax
	movl	%eax, (%rdx)
.L397:
	addl	$1, -156(%rbp)
.L396:
	movq	-176(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -156(%rbp)
	jle	.L398
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L399
	movq	-176(%rbp), %rax
	movl	336(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L399
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L399
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-140(%rbp), %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movb	$5, (%rax)
.L399:
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L400
	movq	-176(%rbp), %rax
	movl	356(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L400
	movq	-128(%rbp), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-176(%rbp), %rax
	movl	356(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	cmpl	$-987654320, -140(%rbp)
	jl	.L400
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movb	$8, (%rax)
.L400:
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L401
	movq	-176(%rbp), %rax
	movl	344(%rax), %eax
	cmpl	$-987654320, %eax
	jl	.L401
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -140(%rbp)
	jle	.L401
	movq	-128(%rbp), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-140(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-96(%rbp), %rax
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movb	$7, (%rax)
.L401:
	addl	$1, -160(%rbp)
.L374:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -160(%rbp)
	jle	.L402
	movq	-128(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-176(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	movq	-176(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ShadowTrace
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	FreeShadowMatrix
	movl	$1, -160(%rbp)
	jmp	.L403
.L404:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -160(%rbp)
.L403:
	movq	-168(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -160(%rbp)
	jle	.L404
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L406
	call	__stack_chk_fail@PLT
.L406:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	P7ViterbiAlignAlignment, .-P7ViterbiAlignAlignment
	.section	.rodata
	.align 8
.LC16:
	.string	"HMMER: Bad state (%s) in ShadowTrace()\n"
	.text
	.globl	ShadowTrace
	.type	ShadowTrace, @function
ShadowTrace:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-68(%rbp), %eax
	addl	$3, %eax
	addl	%eax, %eax
	movl	%eax, -36(%rbp)
	leaq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	$9, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movl	$1, -32(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -24(%rbp)
	movb	$8, -37(%rbp)
	jmp	.L410
.L437:
	movsbl	-37(%rbp), %eax
	cmpl	$10, %eax
	ja	.L411
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L413(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L413(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L413:
	.long	.L411-.L413
	.long	.L412-.L413
	.long	.L414-.L413
	.long	.L415-.L413
	.long	.L411-.L413
	.long	.L416-.L413
	.long	.L417-.L413
	.long	.L418-.L413
	.long	.L419-.L413
	.long	.L411-.L413
	.long	.L420-.L413
	.text
.L412:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -32(%rbp)
	jmp	.L421
.L415:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -32(%rbp)
	jmp	.L421
.L414:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -32(%rbp)
	jmp	.L421
.L416:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	4(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	cmpb	$5, -37(%rbp)
	jne	.L422
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	jmp	.L423
.L422:
	movl	$0, %eax
.L423:
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -32(%rbp)
	jmp	.L421
.L417:
	movq	-64(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-64(%rbp), %rax
	movq	208(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movq	368(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.L424
	jmp	.L426
.L427:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L426
	movl	-68(%rbp), %eax
	addl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L426:
	cmpl	$0, -24(%rbp)
	jg	.L427
.L424:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -32(%rbp)
	jmp	.L421
.L420:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	cmpb	$10, -37(%rbp)
	jne	.L428
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	jmp	.L429
.L428:
	movl	$0, %eax
.L429:
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -32(%rbp)
	jmp	.L421
.L418:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movb	$1, -37(%rbp)
	addl	$1, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	216(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC10(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	cvtsi2sd	%eax, %xmm0
	movsd	.LC8(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movq	376(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm1, %xmm0
	jnb	.L441
	jmp	.L421
.L441:
	movq	-64(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L432
.L434:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L433
	movl	-68(%rbp), %eax
	addl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L433:
	subl	$1, -20(%rbp)
.L432:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.L434
	jmp	.L421
.L419:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	2(%rax), %eax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	cmpb	$8, -37(%rbp)
	jne	.L435
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	jmp	.L436
.L435:
	movl	$0, %eax
.L436:
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -32(%rbp)
	jmp	.L421
.L411:
	movsbl	-37(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L421:
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L410
	movl	-68(%rbp), %eax
	addl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L410:
	cmpb	$4, -37(%rbp)
	jne	.L437
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$4, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	P7ReverseTrace@PLT
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L439
	call	__stack_chk_fail@PLT
.L439:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ShadowTrace, .-ShadowTrace
	.section	.rodata
.LC17:
	.string	"TraceDecompose() screwup"
	.text
	.globl	PostprocessSignificantHit
	.type	PostprocessSignificantHit, @function
PostprocessSignificantHit:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	%r9d, -172(%rbp)
	movss	%xmm0, -176(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)
	jne	.L443
	movss	-176(%rbp), %xmm0
	jmp	.L484
.L443:
	leaq	-116(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TraceDecompose@PLT
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	jne	.L445
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L445:
	movl	-116(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$2480, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -64(%rbp)
	movl	-116(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$2481, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -92(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L446
.L451:
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-64(%rbp), %rax
	leaq	(%rcx,%rax), %rbx
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7TraceScore@PLT
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	cmpl	$0, 48(%rbp)
	je	.L447
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TraceScoreCorrection@PLT
	movaps	%xmm0, %xmm1
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
.L447:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L491
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	addl	$1, -92(%rbp)
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-84(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	jmp	.L450
.L491:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L450:
	addl	$1, -96(%rbp)
.L446:
	movl	-116(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L451
	cmpl	$0, -92(%rbp)
	jne	.L452
	movl	-116(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FArgMax@PLT
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -84(%rbp)
	movl	$1, -92(%rbp)
.L452:
	cmpl	$0, 40(%rbp)
	je	.L453
	movss	-176(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
.L453:
	movl	-84(%rbp), %edx
	movq	-160(%rbp), %rax
	movl	%edx, -216(%rbp)
	movss	-216(%rbp), %xmm0
	movq	%rax, %rdi
	call	PValue@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$1, -88(%rbp)
	jmp	.L454
.L468:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L493
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-108(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	TraceSimpleBounds@PLT
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-160(%rbp), %rax
	movl	%edx, -216(%rbp)
	movss	-216(%rbp), %xmm0
	movq	%rax, %rdi
	call	PValue@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movq	-208(%rbp), %rax
	movsd	24(%rax), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jb	.L457
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-208(%rbp), %rax
	movss	16(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.L457
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	call	CreateFancyAli@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, 64(%rbp)
	je	.L460
	movl	-104(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movq	.LC18(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L461
.L460:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.L461:
	movq	-160(%rbp), %rax
	movl	136(%rax), %r9d
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %esi
	movl	-100(%rbp), %r12d
	movl	-104(%rbp), %ebx
	cmpl	$0, 64(%rbp)
	je	.L462
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	jmp	.L463
.L462:
	movq	-200(%rbp), %rcx
.L463:
	cmpl	$0, 64(%rbp)
	je	.L464
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L465
.L464:
	movq	-192(%rbp), %rdx
.L465:
	cmpl	$0, 64(%rbp)
	je	.L466
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L467
.L466:
	movq	-184(%rbp), %rax
.L467:
	movl	-96(%rbp), %edi
	movslq	%edi, %rdi
	leaq	0(,%rdi,4), %r10
	movq	-64(%rbp), %rdi
	addq	%r10, %rdi
	movss	(%rdi), %xmm1
	movss	-84(%rbp), %xmm3
	movsd	-48(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	movq	-72(%rbp), %r10
	movq	-144(%rbp), %rdi
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	-92(%rbp), %r11d
	pushq	%r11
	movl	-88(%rbp), %r11d
	pushq	%r11
	pushq	%r9
	pushq	%r8
	pushq	%rsi
	movl	-172(%rbp), %esi
	pushq	%rsi
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rax, %rsi
	movaps	%xmm3, %xmm4
	movapd	%xmm2, %xmm3
	movaps	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%r10, -216(%rbp)
	movsd	-216(%rbp), %xmm0
	call	RegisterHit@PLT
	addq	$64, %rsp
.L457:
	addl	$1, -88(%rbp)
	jmp	.L456
.L493:
	nop
.L456:
	addl	$1, -96(%rbp)
.L454:
	movl	-116(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L468
	cmpl	$0, 64(%rbp)
	je	.L469
	movsd	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L492
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)
	movsd	-216(%rbp), %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movq	.LC18(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	jmp	.L472
.L492:
	cvtss2sd	-84(%rbp), %xmm0
	movsd	.LC20(%rip), %xmm1
	addsd	%xmm1, %xmm0
.L472:
	movsd	%xmm0, -72(%rbp)
	jmp	.L473
.L469:
	cvtss2sd	-84(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.L473:
	movq	-208(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-84(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L474
	cmpl	$0, 64(%rbp)
	je	.L476
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	jmp	.L477
.L476:
	movq	-200(%rbp), %rcx
.L477:
	cmpl	$0, 64(%rbp)
	je	.L478
	movq	-160(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L479
.L478:
	movq	-192(%rbp), %rdx
.L479:
	cmpl	$0, 64(%rbp)
	je	.L480
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L481
.L480:
	movq	-184(%rbp), %rax
.L481:
	movss	-84(%rbp), %xmm1
	movsd	-48(%rbp), %xmm0
	movq	-72(%rbp), %r10
	movq	-136(%rbp), %rdi
	subq	$8, %rsp
	pushq	$0
	movl	-92(%rbp), %esi
	pushq	%rsi
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movaps	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%r10, -216(%rbp)
	movsd	-216(%rbp), %xmm0
	call	RegisterHit@PLT
	addq	$64, %rsp
.L474:
	movl	$0, -96(%rbp)
	jmp	.L482
.L483:
	movq	-80(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	addl	$1, -96(%rbp)
.L482:
	movl	-116(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L483
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	-84(%rbp), %xmm0
.L484:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L485
	call	__stack_chk_fail@PLT
.L485:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	PostprocessSignificantHit, .-PostprocessSignificantHit
	.section	.rodata
	.align 4
.LC2:
	.long	1117782016
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075838976
	.align 8
.LC6:
	.long	0
	.long	1075052544
	.align 4
.LC7:
	.long	1233125376
	.align 8
.LC8:
	.long	0
	.long	1083129856
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC15:
	.long	3323739136
	.align 16
.LC18:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC20:
	.long	0
	.long	1090021888
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
