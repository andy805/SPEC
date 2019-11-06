	.file	"postprob.c"
	.text
	.globl	P7OptimalAccuracy
	.type	P7OptimalAccuracy, @function
P7OptimalAccuracy:
.LFB5:
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
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	P7Forward@PLT
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	P7Backward
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	P7EmitterPosterior
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	136(%rax), %esi
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	P7FillOptimalAccuracy
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix@PLT
	cvtsd2ss	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7OptimalAccuracy, .-P7OptimalAccuracy
	.globl	P7Backward
	.type	P7Backward, @function
P7Backward:
.LFB6:
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
	call	AllocPlan7Matrix@PLT
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	352(%rax), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	344(%rax), %edx
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$12, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -72(%rbp)
	jmp	.L5
.L6:
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	-92(%rbp), %esi
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
	movq	-56(%rbp), %rax
	movl	-92(%rbp), %edx
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
	movl	-92(%rbp), %edx
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
	movl	-92(%rbp), %esi
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
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-48(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	subl	$1, -72(%rbp)
.L5:
	cmpl	$0, -72(%rbp)
	jg	.L6
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rdx
	movq	312(%rdx), %rdx
	addq	$48, %rdx
	movq	(%rdx), %rcx
	movq	-104(%rbp), %rdx
	movl	136(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.L7
.L13:
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	356(%rax), %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	368(%rax), %rcx
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
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
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
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L8
.L9:
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	368(%rax), %rax
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
	movl	(%rax), %eax
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
	subl	$1, -72(%rbp)
.L8:
	cmpl	$0, -72(%rbp)
	jg	.L9
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	364(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	360(%rax), %eax
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
	movl	348(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	344(%rax), %eax
	addl	%ecx, %eax
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
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	340(%rax), %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	336(%rax), %eax
	addl	%ecx, %eax
	movq	-64(%rbp), %rcx
	movl	-76(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	leaq	16(%rcx), %rbx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, (%rbx)
	cmpl	$0, -76(%rbp)
	jle	.L10
	movq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	leal	(%rdx,%rax), %esi
	movq	-104(%rbp), %rax
	movq	320(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
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
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
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
	movl	$-987654321, (%rax)
	movq	-104(%rbp), %rax
	movl	136(%rax), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.L11
.L12:
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$3, %rcx
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
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %r12d
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
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
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
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
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
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
	movq	-56(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
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
	subl	$1, -72(%rbp)
.L11:
	cmpl	$0, -72(%rbp)
	jg	.L12
.L10:
	subl	$1, -76(%rbp)
.L7:
	cmpl	$0, -76(%rbp)
	jns	.L13
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L14
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L15
.L14:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix@PLT
.L15:
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7Backward, .-P7Backward
	.globl	P7EmitterPosterior
	.type	P7EmitterPosterior, @function
P7EmitterPosterior:
.LFB7:
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
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L19
.L22:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	356(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	%ecx, %eax
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	364(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	addl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	%ecx, %eax
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	340(%rax), %eax
	leal	(%rdx,%rax), %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	addl	%eax, %ecx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	%ecx, %eax
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -24(%rbp)
	jmp	.L20
.L21:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	subq	$4, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %esi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	addl	%esi, %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %esi
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	addl	%esi, %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	addl	$1, -24(%rbp)
.L20:
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L21
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	368(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	addl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
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
	movl	%ebx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, %esi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movl	136(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movq	-72(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-48(%rbp), %rdx
	movl	136(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rcx
	movl	(%rdx), %eax
	movl	%eax, (%rcx)
	subl	$1, -28(%rbp)
.L19:
	cmpl	$0, -28(%rbp)
	jg	.L22
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7EmitterPosterior, .-P7EmitterPosterior
	.globl	P7FillOptimalAccuracy
	.type	P7FillOptimalAccuracy, @function
P7FillOptimalAccuracy:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	$-987654321, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$0, -72(%rbp)
	jmp	.L24
.L25:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	$-987654321, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -72(%rbp)
.L24:
	movl	-72(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.L25
	movl	$1, -76(%rbp)
	jmp	.L26
.L47:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	$-987654321, (%rdx)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	$1, -72(%rbp)
	jmp	.L27
.L36:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L28
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L28:
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L29
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L29:
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L30
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L30:
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L31
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L31:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
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
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-48(%rbp), %rcx
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
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L32
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L32:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L33
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L33:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-987654321, (%rax)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L34
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L34:
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L35
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L35:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
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
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-40(%rbp), %rcx
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
	addl	$1, -72(%rbp)
.L27:
	movl	-72(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.L36
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L37
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L37:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	$-987654321, (%rax)
	movl	$1, -72(%rbp)
	jmp	.L38
.L40:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L39
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L39:
	addl	$1, -72(%rbp)
.L38:
	movl	-72(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.L40
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L41
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L41:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L42
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L42:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$-987654321, (%rax)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L43
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L43:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L44
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
.L44:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$-987654321, (%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	movl	%eax, -68(%rbp)
	cmpl	$-987654320, -68(%rbp)
	jl	.L45
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L45:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jle	.L46
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
.L46:
	addl	$1, -76(%rbp)
.L26:
	movl	-76(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.L47
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L48
	leaq	-64(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	P7OptimalAccuracyTrace
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
.L48:
	movl	-68(%rbp), %eax
	movss	.LC0(%rip), %xmm0
	movl	%eax, %edi
	call	Score2Prob@PLT
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7FillOptimalAccuracy, .-P7FillOptimalAccuracy
	.section	.rodata
.LC1:
	.string	"traceback failed"
.LC2:
	.string	"Traceback failed."
	.text
	.globl	P7OptimalAccuracyTrace
	.type	P7OptimalAccuracyTrace, @function
P7OptimalAccuracyTrace:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%r8, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-100(%rbp), %eax
	addl	$3, %eax
	addl	%eax, %eax
	movl	%eax, -84(%rbp)
	leaq	-64(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movb	$9, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$8, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$2, -80(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.L52
.L92:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L53
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L55(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L55(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L55:
	.long	.L53-.L55
	.long	.L54-.L55
	.long	.L56-.L55
	.long	.L57-.L55
	.long	.L53-.L55
	.long	.L58-.L55
	.long	.L59-.L55
	.long	.L60-.L55
	.long	.L61-.L55
	.long	.L53-.L55
	.long	.L62-.L55
	.text
.L54:
	movl	-76(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L63
	cmpl	$0, -76(%rbp)
	jle	.L63
	cmpl	$0, -72(%rbp)
	jle	.L63
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L64
.L63:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L65
	cmpl	$0, -76(%rbp)
	jle	.L65
	cmpl	$0, -72(%rbp)
	jle	.L65
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L64
.L65:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L66
	cmpl	$0, -76(%rbp)
	jle	.L66
	cmpl	$1, -72(%rbp)
	jle	.L66
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L64
.L66:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L67
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$6, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L68
.L67:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L64:
	jmp	.L68
.L56:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L69
	cmpl	$0, -76(%rbp)
	jle	.L69
	cmpl	$0, -72(%rbp)
	jle	.L69
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L70
.L69:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L71
	cmpl	$1, -72(%rbp)
	jle	.L71
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$2, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L70
.L71:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L70:
	jmp	.L68
.L57:
	movl	-76(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L72
	cmpl	$0, -76(%rbp)
	jle	.L72
	cmpl	$0, -72(%rbp)
	jle	.L72
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L73
.L72:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, -68(%rbp)
	jne	.L74
	cmpl	$0, -76(%rbp)
	jle	.L74
	cmpl	$0, -72(%rbp)
	jle	.L74
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$3, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L73
.L74:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L73:
	jmp	.L68
.L58:
	cmpl	$0, -76(%rbp)
	jne	.L75
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$-987654321, %eax
	jne	.L75
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$4, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L76
.L75:
	cmpl	$0, -76(%rbp)
	jle	.L77
	movl	-76(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %ebx
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, %ebx
	jne	.L77
	cmpl	$0, -76(%rbp)
	jle	.L77
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L76
.L77:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L76:
	jmp	.L68
.L59:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L78
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$5, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L68
.L78:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L80
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L68
.L80:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L60:
	movl	-104(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L81
.L84:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L82
	cmpl	$0, -76(%rbp)
	jle	.L82
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$1, (%rax)
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L83
.L82:
	subl	$1, -72(%rbp)
.L81:
	cmpl	$0, -72(%rbp)
	jg	.L84
.L83:
	cmpl	$0, -72(%rbp)
	jg	.L94
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L94
.L61:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %ebx
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, %ebx
	jne	.L86
	cmpl	$0, -76(%rbp)
	jle	.L86
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L68
.L86:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L88
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L68
.L88:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L62:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %ebx
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ILogsum@PLT
	cmpl	%eax, %ebx
	jne	.L89
	cmpl	$0, -76(%rbp)
	jle	.L89
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$10, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	jmp	.L68
.L89:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L91
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-80(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$7, (%rax)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L68
.L91:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L53:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L68
.L94:
	nop
.L68:
	addl	$1, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.L52
	movl	-100(%rbp), %eax
	addl	%eax, -84(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7ReallocTrace@PLT
.L52:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L92
	movq	-64(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	P7ReverseTrace@PLT
	movq	-64(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P7OptimalAccuracyTrace, .-P7OptimalAccuracyTrace
	.type	score2postcode, @function
score2postcode:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movss	.LC0(%rip), %xmm0
	movl	%eax, %edi
	call	Score2Prob@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC3(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -1(%rbp)
	cmpb	$9, -1(%rbp)
	jg	.L96
	movzbl	-1(%rbp), %eax
	addl	$48, %eax
	jmp	.L98
.L96:
	movl	$42, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	score2postcode, .-score2postcode
	.section	.rodata
.LC4:
	.string	"postprob.c"
	.text
	.globl	PostalCode
	.type	PostalCode, @function
PostalCode:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$692, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L100
.L109:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L111
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L102
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L104(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L104(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L104:
	.long	.L102-.L104
	.long	.L103-.L104
	.long	.L102-.L104
	.long	.L105-.L104
	.long	.L102-.L104
	.long	.L106-.L104
	.long	.L102-.L104
	.long	.L102-.L104
	.long	.L107-.L104
	.long	.L102-.L104
	.long	.L108-.L104
	.text
.L103:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, %edi
	call	score2postcode
	movb	%al, (%rbx)
	jmp	.L102
.L105:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, %edi
	call	score2postcode
	movb	%al, (%rbx)
	jmp	.L102
.L106:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, %edi
	call	score2postcode
	movb	%al, (%rbx)
	jmp	.L102
.L107:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, %edi
	call	score2postcode
	movb	%al, (%rbx)
	jmp	.L102
.L108:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	%eax, %edi
	call	score2postcode
	movb	%al, (%rbx)
	jmp	.L102
.L111:
	nop
.L102:
	addl	$1, -36(%rbp)
.L100:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L109
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PostalCode, .-PostalCode
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 8
.LC3:
	.long	0
	.long	1076101120
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
