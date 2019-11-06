	.file	"plan7.c"
	.text
	.globl	AllocPlan7
	.type	AllocPlan7, @function
AllocPlan7:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	AllocPlan7Shell
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	AllocPlan7Body
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	AllocPlan7, .-AllocPlan7
	.section	.rodata
.LC0:
	.string	"plan7.c"
	.text
	.globl	AllocPlan7Shell
	.type	AllocPlan7Shell, @function
AllocPlan7Shell:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$464, %edx
	movl	$54, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 116(%rax)
	movq	-8(%rbp), %rax
	movss	116(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 112(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 124(%rax)
	movq	-8(%rbp), %rax
	movss	124(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 120(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 132(%rax)
	movq	-8(%rbp), %rax
	movss	132(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 392(%rax)
	movq	-8(%rbp), %rax
	movq	392(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-8(%rbp), %rax
	movq	392(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 408(%rax)
	movq	-8(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 416(%rax)
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 424(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-8(%rbp), %rax
	movl	$-987654321, 440(%rax)
	movq	-8(%rbp), %rax
	movl	$-987654321, 444(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 448(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 452(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 456(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AllocPlan7Shell, .-AllocPlan7Shell
	.globl	AllocPlan7Body
	.type	AllocPlan7Body, @function
AllocPlan7Body:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 136(%rax)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$111, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$112, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$113, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$114, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$116, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 144(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$117, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 152(%rax)
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$118, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 160(%rax)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	144(%rax), %rbx
	movl	$119, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	152(%rax), %rbx
	movl	$120, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	160(%rax), %rbx
	movl	$121, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$56, %edx
	movl	$123, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 312(%rax)
	movl	$192, %edx
	movl	$124, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 320(%rax)
	movl	$192, %edx
	movl	$125, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 328(%rax)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$126, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 384(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movl	$127, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 392(%rax)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movl	$128, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	392(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	400(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$1, -24(%rbp)
	jmp	.L6
.L8:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L7
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, (%rax)
.L7:
	addl	$1, -24(%rbp)
.L6:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L8
	movl	$1, -20(%rbp)
	jmp	.L9
.L10:
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	addl	$1, %eax
	imull	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	imull	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L9:
	cmpl	$23, -20(%rbp)
	jle	.L10
	movl	$0, -20(%rbp)
	jmp	.L11
.L12:
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	imull	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
.L11:
	cmpl	$6, -20(%rbp)
	jle	.L12
	movl	$0, -20(%rbp)
	jmp	.L13
.L14:
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	addl	$1, -20(%rbp)
.L13:
	cmpl	$6, -20(%rbp)
	jle	.L14
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$157, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 208(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$158, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 216(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$160, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 408(%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$161, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 416(%rax)
	movq	-40(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-40(%rbp), %rax
	movq	416(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 376(%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	AllocPlan7Body, .-AllocPlan7Body
	.globl	FreePlan7
	.type	FreePlan7, @function
FreePlan7:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L17:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L18:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L19:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L20:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L21:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L22:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L23:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L24:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L25:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L26:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L27:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L28:
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-8(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L29:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L30:
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L31:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L32:
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L33:
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L34:
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L35:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L36:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L37:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L38:
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L39:
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L40:
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L41:
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L42:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L43:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L44:
	movq	-8(%rbp), %rax
	movq	424(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L45:
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L46:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FreePlan7, .-FreePlan7
	.globl	ZeroPlan7
	.type	ZeroPlan7, @function
ZeroPlan7:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L48
.L49:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	$7, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	Alphabet_size(%rip), %edx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	Alphabet_size(%rip), %edx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	addl	$1, -4(%rbp)
.L48:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L49
	movl	Alphabet_size(%rip), %edx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 168(%rax)
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	addq	$4, %rdx
	pxor	%xmm0, %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	216(%rdx), %rdx
	addq	$4, %rdx
	pxor	%xmm0, %xmm0
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSet@PLT
	movl	$0, -4(%rbp)
	jmp	.L50
.L51:
	movl	-4(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	pxor	%xmm0, %xmm0
	movl	$2, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	addl	$1, -4(%rbp)
.L50:
	cmpl	$3, -4(%rbp)
	jle	.L51
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ZeroPlan7, .-ZeroPlan7
	.globl	Plan7SetName
	.type	Plan7SetName, @function
Plan7SetName:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L53:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Plan7SetName, .-Plan7SetName
	.globl	Plan7SetAccession
	.type	Plan7SetAccession, @function
Plan7SetAccession:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L55:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Plan7SetAccession, .-Plan7SetAccession
	.globl	Plan7SetDescription
	.type	Plan7SetDescription, @function
Plan7SetDescription:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L57:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Plan7SetDescription, .-Plan7SetDescription
	.globl	Plan7ComlogAppend
	.type	Plan7ComlogAppend, @function
Plan7ComlogAppend:
.LFB13:
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
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L59
.L60:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L59:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L60
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$296, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L62
.L61:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$300, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movb	$0, (%rax)
.L62:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L63
.L65:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L64
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
.L64:
	addl	$1, -4(%rbp)
.L63:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L65
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Plan7ComlogAppend, .-Plan7ComlogAppend
	.globl	Plan7SetCtime
	.type	Plan7SetCtime, @function
Plan7SetCtime:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L67:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ctime@PLT
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Plan7SetCtime, .-Plan7SetCtime
	.globl	Plan7SetNullModel
	.type	Plan7SetNullModel, @function
Plan7SetNullModel:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L70
.L71:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
.L70:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L71
	movq	-24(%rbp), %rax
	movss	-36(%rbp), %xmm0
	movss	%xmm0, 304(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Plan7SetNullModel, .-Plan7SetNullModel
	.globl	P7Logoddsify
	.type	P7Logoddsify, @function
P7Logoddsify:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L148
	movl	$1, -36(%rbp)
	jmp	.L75
.L82:
	movl	$0, -32(%rbp)
	jmp	.L76
.L78:
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	320(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L77
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-56(%rbp), %rax
	movq	160(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
.L77:
	addl	$1, -32(%rbp)
.L76:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L78
	movl	Alphabet_size(%rip), %eax
	movl	%eax, -32(%rbp)
	jmp	.L79
.L81:
	movq	-56(%rbp), %rax
	leaq	224(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	320(%rdx), %rdx
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movl	-32(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DegenerateSymbolScore
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L80
	movq	-56(%rbp), %rax
	leaq	224(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	160(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movl	-32(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DegenerateSymbolScore
	movl	%eax, (%rbx)
.L80:
	addl	$1, -32(%rbp)
.L79:
	movl	Alphabet_iupac(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L81
	addl	$1, -36(%rbp)
.L75:
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L82
	movl	$1, -36(%rbp)
	jmp	.L83
.L84:
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$16, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$24, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$32, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$40, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$48, %rdx
	movq	(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rdx,%rcx), %rbx
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	addl	$1, -36(%rbp)
.L83:
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L84
	movq	-56(%rbp), %rax
	movss	168(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L139
	movq	-56(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L87
.L139:
	movss	.LC3(%rip), %xmm0
.L87:
	movss	%xmm0, -28(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L88
.L106:
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L140
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L91
.L140:
	movss	.LC3(%rip), %xmm0
.L91:
	movss	%xmm0, -24(%rbp)
	cmpl	$1, -36(%rbp)
	jle	.L92
	movss	-28(%rbp), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jbe	.L92
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L94
	cmpl	$0, -60(%rbp)
	je	.L96
	cvtss2sd	-24(%rbp), %xmm3
	movsd	%xmm3, -72(%rbp)
	cvtss2sd	-28(%rbp), %xmm4
	movsd	%xmm4, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-80(%rbp), %xmm0
	movsd	-72(%rbp), %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.L141
	movss	-24(%rbp), %xmm0
	jmp	.L99
.L141:
	cvtss2sd	-28(%rbp), %xmm5
	movsd	%xmm5, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L99:
	movss	%xmm0, -24(%rbp)
	jmp	.L94
.L96:
	cvtss2sd	-28(%rbp), %xmm6
	movsd	%xmm6, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-24(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	LogSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -24(%rbp)
.L94:
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L142
	cvtss2sd	-28(%rbp), %xmm7
	movsd	%xmm7, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L102
.L142:
	movss	.LC3(%rip), %xmm0
.L102:
	movss	%xmm0, -28(%rbp)
.L92:
	movss	-24(%rbp), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jbe	.L143
	cvtss2sd	-24(%rbp), %xmm2
	movsd	%xmm2, -72(%rbp)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movsd	-72(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	floor@PLT
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%rdx)
	jmp	.L105
.L143:
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L105:
	addl	$1, -36(%rbp)
.L88:
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L106
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.L107
.L125:
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L144
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L110
.L144:
	movss	.LC3(%rip), %xmm0
.L110:
	movss	%xmm0, -20(%rbp)
	movss	-28(%rbp), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jbe	.L111
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L113
	cmpl	$0, -60(%rbp)
	je	.L115
	cvtss2sd	-20(%rbp), %xmm3
	movsd	%xmm3, -72(%rbp)
	cvtss2sd	-28(%rbp), %xmm4
	movsd	%xmm4, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-80(%rbp), %xmm0
	movsd	-72(%rbp), %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.L145
	movss	-20(%rbp), %xmm0
	jmp	.L118
.L145:
	cvtss2sd	-28(%rbp), %xmm5
	movsd	%xmm5, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L118:
	movss	%xmm0, -20(%rbp)
	jmp	.L113
.L115:
	cvtss2sd	-28(%rbp), %xmm6
	movsd	%xmm6, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-20(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	LogSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -20(%rbp)
.L113:
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L146
	cvtss2sd	-28(%rbp), %xmm7
	movsd	%xmm7, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	addsd	-72(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L121
.L146:
	movss	.LC3(%rip), %xmm0
.L121:
	movss	%xmm0, -28(%rbp)
.L111:
	movss	-20(%rbp), %xmm0
	ucomiss	.LC3(%rip), %xmm0
	jbe	.L147
	cvtss2sd	-20(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	addsd	%xmm1, %xmm0
	call	floor@PLT
	cvttsd2si	%xmm0, %eax
	jmp	.L124
.L147:
	movl	$-987654321, %eax
.L124:
	movq	-56(%rbp), %rdx
	movq	376(%rdx), %rdx
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	subl	$1, -36(%rbp)
.L107:
	cmpl	$0, -36(%rbp)
	jg	.L125
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movl	176(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 340(%rax)
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 336(%rax)
	movq	-56(%rbp), %rax
	movl	184(%rax), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 348(%rax)
	movq	-56(%rbp), %rax
	movl	180(%rax), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 344(%rax)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movl	192(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 356(%rax)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movl	188(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 352(%rax)
	movq	-56(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-56(%rbp), %rax
	movl	200(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 364(%rax)
	movq	-56(%rbp), %rax
	movl	196(%rax), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -72(%rbp)
	movss	-72(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 360(%rax)
	movq	-56(%rbp), %rax
	movl	456(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L72
.L148:
	nop
.L72:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	P7Logoddsify, .-P7Logoddsify
	.globl	Plan7Renormalize
	.type	Plan7Renormalize, @function
Plan7Renormalize:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L150
.L151:
	movl	Alphabet_size(%rip), %edx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	addl	$1, -12(%rbp)
.L150:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L151
	movl	$1, -12(%rbp)
	jmp	.L152
.L153:
	movl	Alphabet_size(%rip), %edx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	addl	$1, -12(%rbp)
.L152:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L153
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	addq	$4, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FSum@PLT
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC2(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	addq	$4, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FScale@PLT
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	divss	-4(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 168(%rax)
	movl	$1, -12(%rbp)
	jmp	.L154
.L155:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movaps	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC2(%rip), %xmm0
	divss	-4(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FScale@PLT
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	divss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	addl	$1, -12(%rbp)
.L154:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L155
	movl	Alphabet_size(%rip), %eax
	movq	-24(%rbp), %rdx
	addq	$224, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	FNorm@PLT
	movl	$0, -8(%rbp)
	jmp	.L156
.L157:
	movl	-8(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	FNorm@PLT
	addl	$1, -8(%rbp)
.L156:
	cmpl	$3, -8(%rbp)
	jle	.L157
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	(%rdx), %rdx
	addq	$20, %rdx
	movss	(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Plan7Renormalize, .-Plan7Renormalize
	.globl	Plan7RenormalizeExits
	.type	Plan7RenormalizeExits, @function
Plan7RenormalizeExits:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L159
.L160:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FSum@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	-4(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	FScale@PLT
	addl	$1, -8(%rbp)
.L159:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L160
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Plan7RenormalizeExits, .-Plan7RenormalizeExits
	.globl	Plan7NakedConfig
	.type	Plan7NakedConfig, @function
Plan7NakedConfig:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 172(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 176(%rax)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 184(%rax)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 188(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 192(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 196(%rax)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	addq	$4, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7RenormalizeExits
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Plan7NakedConfig, .-Plan7NakedConfig
	.globl	Plan7GlobalConfig
	.type	Plan7GlobalConfig, @function
Plan7GlobalConfig:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 172(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 176(%rax)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 184(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 188(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 192(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 196(%rax)
	movq	-8(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	addq	$4, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7RenormalizeExits
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Plan7GlobalConfig, .-Plan7GlobalConfig
	.globl	Plan7LSConfig
	.type	Plan7LSConfig, @function
Plan7LSConfig:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 172(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 176(%rax)
	movq	-8(%rbp), %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-8(%rbp), %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, 184(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 188(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 192(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 196(%rax)
	movq	-8(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 200(%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	addq	$4, %rax
	pxor	%xmm0, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7RenormalizeExits
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Plan7LSConfig, .-Plan7LSConfig
	.globl	Plan7SWConfig
	.type	Plan7SWConfig, @function
Plan7SWConfig:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 172(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 176(%rax)
	movq	-24(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 184(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 188(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 192(%rax)
	movq	-24(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 196(%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 200(%rax)
	cvtss2sd	-28(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	cvtss2sd	-28(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-32(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L165
.L166:
	cvtss2sd	-4(%rbp), %xmm0
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	-4(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -8(%rbp)
.L165:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L166
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7RenormalizeExits
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Plan7SWConfig, .-Plan7SWConfig
	.globl	Plan7FSConfig
	.type	Plan7FSConfig, @function
Plan7FSConfig:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 172(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 176(%rax)
	movq	-24(%rbp), %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-24(%rbp), %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, 184(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 188(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 192(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC2(%rip), %xmm0
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 196(%rax)
	movq	-24(%rbp), %rax
	movss	304(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 200(%rax)
	cvtss2sd	-28(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	cvtss2sd	-28(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movss	168(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-32(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L168
.L169:
	cvtss2sd	-4(%rbp), %xmm0
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	-4(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -8(%rbp)
.L168:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L169
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7RenormalizeExits
	movq	-24(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 456(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Plan7FSConfig, .-Plan7FSConfig
	.globl	Plan7ESTConfig
	.type	Plan7ESTConfig, @function
Plan7ESTConfig:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movss	%xmm0, -76(%rbp)
	movss	%xmm1, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, 172(%rax)
	movq	-56(%rbp), %rax
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, 176(%rax)
	movq	-56(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 180(%rax)
	movq	-56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 184(%rax)
	movq	-56(%rbp), %rax
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, 188(%rax)
	movq	-56(%rbp), %rax
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, 192(%rax)
	movq	-56(%rbp), %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, 196(%rax)
	movq	-56(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 200(%rax)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	addq	$8, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movq	-56(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$1, -36(%rbp)
	jmp	.L171
.L174:
	movl	$0, -32(%rbp)
	jmp	.L172
.L173:
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	-76(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	cvtss2sd	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -28(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	424(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-28(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	movq	-56(%rbp), %rax
	movq	160(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtss2sd	-76(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	cvtss2sd	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -28(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movq	432(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-28(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, (%rbx)
	addl	$1, -32(%rbp)
.L172:
	cmpl	$63, -32(%rbp)
	jle	.L173
	movq	-56(%rbp), %rax
	movq	424(%rax), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-76(%rbp), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 440(%rax)
	movl	-80(%rbp), %eax
	movss	.LC2(%rip), %xmm1
	movl	%eax, -84(%rbp)
	movss	-84(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 444(%rax)
	addl	$1, -36(%rbp)
.L171:
	movq	-56(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L174
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Plan7ESTConfig, .-Plan7ESTConfig
	.section	.rodata
.LC10:
	.string	"Average score:  %10.2f bits\n"
.LC11:
	.string	"Minimum score:  %10.2f bits\n"
.LC12:
	.string	"Maximum score:  %10.2f bits\n"
.LC13:
	.string	"Std. deviation: %10.2f bits\n"
	.text
	.globl	PrintPlan7Stats
	.type	PrintPlan7Stats, @function
PrintPlan7Stats:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	P7Logoddsify
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7TraceScore@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L176
.L181:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	P7TraceScore@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-24(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-4(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-4(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.L177
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
.L177:
	movss	-16(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L179
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
.L179:
	addl	$1, -28(%rbp)
.L176:
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L181
	cmpl	$1, -60(%rbp)
	jle	.L182
	movss	-24(%rbp), %xmm0
	mulss	-24(%rbp), %xmm0
	cvtsi2ss	-60(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	-60(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC7(%rip), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -8(%rbp)
	movss	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L190
	cvtss2sd	-8(%rbp), %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	jmp	.L185
.L190:
	pxor	%xmm0, %xmm0
.L185:
	movss	%xmm0, -8(%rbp)
	jmp	.L186
.L182:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
.L186:
	cvtsi2ss	-60(%rbp), %xmm0
	movss	-24(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	cvtss2sd	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	cvtss2sd	-20(%rbp), %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	cvtss2sd	-8(%rbp), %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	PrintPlan7Stats, .-PrintPlan7Stats
	.globl	DegenerateSymbolScore
	.type	DegenerateSymbolScore, @function
DegenerateSymbolScore:
.LFB26:
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L192
.L197:
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	Degenerate(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L193
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L200
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.L196
.L200:
	movsd	.LC15(%rip), %xmm0
.L196:
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.L193:
	addl	$1, -12(%rbp)
.L192:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L197
	cvtss2sd	-8(%rbp), %xmm0
	movsd	.LC16(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtss2sd	-4(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	DegenerateSymbolScore, .-DegenerateSymbolScore
	.globl	Plan9toPlan7
	.type	Plan9toPlan7, @function
Plan9toPlan7:
.LFB27:
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
	movl	(%rax), %eax
	movl	%eax, %edi
	call	AllocPlan7
	movq	%rax, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L202
.L203:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	8(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movss	4(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	8(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movss	4(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -16(%rbp)
.L202:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L203
	movl	$1, -16(%rbp)
	jmp	.L204
.L207:
	movl	$0, -12(%rbp)
	jmp	.L205
.L206:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movss	12(%rcx,%rax,4), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -12(%rbp)
.L205:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L206
	addl	$1, -16(%rbp)
.L204:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L207
	movl	$1, -16(%rbp)
	jmp	.L208
.L211:
	movl	$0, -12(%rbp)
	jmp	.L209
.L210:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movss	12(%rcx,%rax,4), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -12(%rbp)
.L209:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L210
	addl	$1, -16(%rbp)
.L208:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L211
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movss	8(%rax), %xmm1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movss	8(%rax), %xmm2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movss	(%rax), %xmm0
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 168(%rax)
	movq	-8(%rbp), %rax
	leaq	304(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$224, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	P7DefaultNullModel@PLT
	movl	$0, -12(%rbp)
	jmp	.L212
.L213:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$8, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	addl	$1, -12(%rbp)
.L212:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L213
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan7SetName
.L214:
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L215
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
.L215:
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L216
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
.L216:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7LSConfig
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7Renormalize
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Plan9toPlan7, .-Plan9toPlan7
	.section	.rodata
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	3323739136
	.align 8
.LC4:
	.long	3096499622
	.long	1083607751
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 4
.LC6:
	.long	1056964608
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 4
.LC8:
	.long	993703510
	.align 4
.LC9:
	.long	1065305418
	.align 8
.LC14:
	.long	1693346863
	.long	1073157447
	.align 8
.LC15:
	.long	0
	.long	-1060927616
	.align 8
.LC16:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
