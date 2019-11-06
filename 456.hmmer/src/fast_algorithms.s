	.file	"fast_algorithms.c"
	.text
	.globl	P7Viterbi
	.type	P7Viterbi, @function
P7Viterbi:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movl	136(%rax), %edx
	leaq	-168(%rbp), %r9
	leaq	-176(%rbp), %r8
	leaq	-184(%rbp), %rcx
	movl	-236(%rbp), %esi
	movq	-256(%rbp), %rax
	subq	$8, %rsp
	leaq	-160(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ResizePlan7Matrix@PLT
	addq	$16, %rsp
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$0, (%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	movl	336(%rdx), %edx
	movl	%edx, (%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$0, -212(%rbp)
	jmp	.L2
.L3:
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-176(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-212(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -212(%rbp)
.L2:
	movq	-248(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jle	.L3
	movq	-248(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -204(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-248(%rbp), %rax
	movq	312(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-248(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -216(%rbp)
	jmp	.L4
.L25:
	movq	-176(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-176(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	movq	-248(%rbp), %rax
	movq	320(%rax), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-248(%rbp), %rax
	movq	328(%rax), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	$-987654321, (%rax)
	movq	-80(%rbp), %rax
	movl	$-987654321, (%rax)
	movq	-72(%rbp), %rax
	movl	$-987654321, (%rax)
	movl	$1, -212(%rbp)
	jmp	.L5
.L14:
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-144(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L6
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L6:
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-136(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L7
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L7:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-196(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L8
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L8:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-88(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jge	.L9
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L9:
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-80(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-128(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L10
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L10:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jge	.L11
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L11:
	movl	-212(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.L12
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L13
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L13:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jge	.L12
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
.L12:
	addl	$1, -212(%rbp)
.L5:
	movl	-212(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jle	.L14
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	340(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	cmpl	$-987654320, -200(%rbp)
	jl	.L15
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L15:
	movl	$-987654321, -208(%rbp)
	movq	-176(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-248(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -212(%rbp)
	jmp	.L16
.L18:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jle	.L17
	movl	-200(%rbp), %eax
	movl	%eax, -208(%rbp)
.L17:
	addl	$1, -212(%rbp)
.L16:
	movq	-248(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jle	.L18
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	$-987654321, (%rax)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	364(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	cmpl	$-987654320, -200(%rbp)
	jl	.L19
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L19:
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	348(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L20
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L20:
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	336(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	cmpl	$-987654320, -200(%rbp)
	jl	.L21
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-200(%rbp), %edx
	movl	%edx, (%rax)
.L21:
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	360(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L22
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-200(%rbp), %edx
	movl	%edx, (%rax)
.L22:
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	356(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	cmpl	$-987654320, -200(%rbp)
	jl	.L23
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L23:
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	344(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.L24
	movq	-184(%rbp), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, (%rdx)
.L24:
	addl	$1, -216(%rbp)
.L4:
	movl	-216(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jle	.L25
	movq	-184(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	352(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -200(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L26
	leaq	-192(%rbp), %rdi
	movq	-256(%rbp), %rcx
	movl	-236(%rbp), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7ViterbiTrace@PLT
	movq	-192(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, (%rax)
.L26:
	movl	-200(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7Viterbi, .-P7Viterbi
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
