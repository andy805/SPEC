	.file	"trace.c"
	.text
	.section	.rodata
.LC0:
	.string	"trace.c"
	.text
	.globl	P7AllocTrace
	.type	P7AllocTrace, @function
P7AllocTrace:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$32, %edx
	movl	$40, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$41, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$42, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$43, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7AllocTrace, .-P7AllocTrace
	.globl	P7ReallocTrace
	.type	P7ReallocTrace, @function
P7ReallocTrace:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$49, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$50, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$51, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7ReallocTrace, .-P7ReallocTrace
	.globl	P7FreeTrace
	.type	P7FreeTrace, @function
P7FreeTrace:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L3
.L6:
	nop
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7FreeTrace, .-P7FreeTrace
	.globl	TraceSet
	.type	TraceSet, @function
TraceSet:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movb	%al, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-16(%rbp), %eax
	movb	%al, (%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	TraceSet, .-TraceSet
	.globl	MergeTraceArrays
	.type	MergeTraceArrays, @function
MergeTraceArrays:
.LFB9:
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
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$110, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L9
.L10:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -12(%rbp)
.L9:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L10
	movl	$0, -12(%rbp)
	jmp	.L11
.L12:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	movl	-12(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -12(%rbp)
.L11:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MergeTraceArrays, .-MergeTraceArrays
	.globl	P7ReverseTrace
	.type	P7ReverseTrace, @function
P7ReverseTrace:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, %rdx
	movl	$149, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$150, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$151, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L15
.L16:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -28(%rbp)
	subl	$1, -32(%rbp)
.L15:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L16
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	P7ReverseTrace, .-P7ReverseTrace
	.section	.rodata
	.align 8
.LC1:
	.string	"illegal state transition %s->%s in traceback"
.LC2:
	.string	"illegal state %s in traceback"
	.text
	.globl	P7TraceCount
	.type	P7TraceCount, @function
P7TraceCount:
.LFB11:
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
	movq	%rsi, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L18
.L70:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L19
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7CountSymbol@PLT
	jmp	.L20
.L19:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L20
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rax
	movq	160(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movss	-56(%rbp), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7CountSymbol@PLT
.L20:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L21
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L23(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L23(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L21-.L23
	.long	.L22-.L23
	.long	.L24-.L23
	.long	.L25-.L23
	.long	.L78-.L23
	.long	.L27-.L23
	.long	.L28-.L23
	.long	.L29-.L23
	.long	.L30-.L23
	.long	.L78-.L23
	.long	.L32-.L23
	.text
.L27:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$5, %eax
	je	.L35
	cmpl	$6, %eax
	jne	.L71
	movq	-40(%rbp), %rax
	movss	172(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 172(%rax)
	jmp	.L37
.L35:
	movq	-40(%rbp), %rax
	movss	176(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 176(%rax)
	jmp	.L37
.L71:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L37:
	jmp	.L33
.L28:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L39
	cmpl	$2, %eax
	je	.L40
	jmp	.L72
.L39:
	movq	-40(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movss	168(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 168(%rax)
	jmp	.L41
.L72:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L41:
	jmp	.L33
.L22:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L43
	cmpl	$2, %eax
	jg	.L44
	cmpl	$1, %eax
	je	.L45
	jmp	.L42
.L44:
	cmpl	$3, %eax
	je	.L46
	cmpl	$7, %eax
	je	.L47
	jmp	.L42
.L45:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L48
.L46:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L48
.L43:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$8, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L48
.L42:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L48:
	jmp	.L33
.L25:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	je	.L50
	cmpl	$3, %eax
	je	.L51
	jmp	.L73
.L50:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$12, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L52
.L51:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$16, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L52
.L73:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L52:
	jmp	.L33
.L24:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L54
	cmpl	$7, %eax
	je	.L79
	cmpl	$1, %eax
	jne	.L74
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$20, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L57
.L54:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movss	(%rax), %xmm0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$24, %rax
	addss	-52(%rbp), %xmm0
	movss	%xmm0, (%rax)
	jmp	.L57
.L74:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L79:
	nop
.L57:
	jmp	.L33
.L29:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$8, %eax
	je	.L59
	cmpl	$10, %eax
	je	.L60
	jmp	.L75
.L59:
	movq	-40(%rbp), %rax
	movss	180(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 180(%rax)
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movss	184(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 184(%rax)
	jmp	.L61
.L75:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L61:
	jmp	.L33
.L32:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$6, %eax
	je	.L63
	cmpl	$10, %eax
	je	.L64
	jmp	.L76
.L63:
	movq	-40(%rbp), %rax
	movss	196(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 196(%rax)
	jmp	.L65
.L64:
	movq	-40(%rbp), %rax
	movss	200(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 200(%rax)
	jmp	.L65
.L76:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L65:
	jmp	.L33
.L30:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$8, %eax
	je	.L67
	cmpl	$9, %eax
	jne	.L77
	movq	-40(%rbp), %rax
	movss	188(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 188(%rax)
	jmp	.L69
.L67:
	movq	-40(%rbp), %rax
	movss	192(%rax), %xmm0
	addss	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, 192(%rax)
	jmp	.L69
.L77:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L69:
	jmp	.L33
.L21:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L33
.L78:
	nop
.L33:
	addl	$1, -24(%rbp)
.L18:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L70
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7TraceCount, .-P7TraceCount
	.globl	P7TraceScore
	.type	P7TraceScore, @function
P7TraceScore:
.LFB12:
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
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L81
.L84:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L82
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	jmp	.L83
.L82:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L83
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
.L83:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	TransitionScoreLookup
	addl	%eax, -12(%rbp)
	addl	$1, -8(%rbp)
.L81:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L84
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	Scorify@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	P7TraceScore, .-P7TraceScore
	.section	.rodata
	.align 8
.LC3:
	.string	"yo! you don't support J in Traces2Alignment(), remember?"
	.align 8
.LC4:
	.string	"Traces2Alignment reports unrecognized statetype %c"
.LC5:
	.string	"2.3"
.LC6:
	.string	"HMMER %s"
	.text
	.globl	P7Traces2Alignment
	.type	P7Traces2Alignment, @function
P7Traces2Alignment:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movq	%r9, -120(%rbp)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$408, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L87
.L88:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -52(%rbp)
.L87:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.L88
	movl	$0, -72(%rbp)
	jmp	.L89
.L108:
	movl	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L90
.L107:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L91
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L93(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L93(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L93:
	.long	.L91-.L93
	.long	.L92-.L93
	.long	.L92-.L93
	.long	.L94-.L93
	.long	.L152-.L93
	.long	.L96-.L93
	.long	.L97-.L93
	.long	.L152-.L93
	.long	.L98-.L93
	.long	.L99-.L93
	.long	.L100-.L93
	.text
.L94:
	addl	$1, -64(%rbp)
	jmp	.L101
.L96:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L153
	addl	$1, -64(%rbp)
	jmp	.L153
.L98:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L154
	addl	$1, -64(%rbp)
	jmp	.L154
.L92:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L104
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
.L104:
	movl	$0, -64(%rbp)
	jmp	.L101
.L97:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L105
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, (%rax)
.L105:
	movl	$0, -64(%rbp)
	jmp	.L101
.L99:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L155
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L155
.L100:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L91:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L101
.L152:
	nop
	jmp	.L101
.L153:
	nop
	jmp	.L101
.L154:
	nop
	jmp	.L101
.L155:
	nop
.L101:
	addl	$1, -56(%rbp)
.L90:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L107
	addl	$1, -72(%rbp)
.L89:
	movl	-72(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L108
	cmpl	$0, 16(%rbp)
	je	.L109
	movl	$0, -52(%rbp)
	jmp	.L110
.L112:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L111
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L111:
	addl	$1, -52(%rbp)
.L110:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.L112
.L109:
	movl	-112(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$453, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L113
.L114:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	addl	%eax, -68(%rbp)
	addl	$1, -52(%rbp)
.L113:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.L114
	movl	-68(%rbp), %edx
	movl	-108(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MSAAlloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L115
.L138:
	movl	$0, -60(%rbp)
	jmp	.L116
.L117:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$46, (%rax)
	addl	$1, -60(%rbp)
.L116:
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L117
	movl	$1, -52(%rbp)
	jmp	.L118
.L119:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$45, (%rax)
	addl	$1, -52(%rbp)
.L118:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.L119
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L120
.L131:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -48(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	cmpl	$1, -48(%rbp)
	jne	.L121
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-60(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movslq	%edx, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	addl	$1, -60(%rbp)
	jmp	.L122
.L121:
	cmpl	$2, -48(%rbp)
	jne	.L123
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.L122
.L123:
	cmpl	$3, -48(%rbp)
	jne	.L124
	cmpl	$0, 16(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$42, (%rax)
	jmp	.L122
.L125:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -60(%rbp)
	jmp	.L122
.L124:
	cmpl	$5, -48(%rbp)
	je	.L127
	cmpl	$8, -48(%rbp)
	jne	.L128
.L127:
	cmpl	$0, -44(%rbp)
	jle	.L128
	cmpl	$0, 16(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$42, (%rax)
	jmp	.L122
.L129:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -60(%rbp)
	jmp	.L122
.L128:
	cmpl	$7, -48(%rbp)
	jne	.L122
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.L122:
	addl	$1, -56(%rbp)
.L120:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L131
	cmpl	$0, 16(%rbp)
	jne	.L132
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	rightjustify
	movl	$1, -52(%rbp)
	jmp	.L133
.L137:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L134
	movl	$0, -64(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.L135
.L136:
	addl	$1, -64(%rbp)
	addl	$1, -60(%rbp)
.L135:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-60(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L136
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-64(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-32(%rbp), %rcx
	addq	%rsi, %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rsi
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rsi, %rcx
	addq	$1, %rcx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	rightjustify
.L134:
	addl	$1, -52(%rbp)
.L133:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L137
.L132:
	addl	$1, -72(%rbp)
.L115:
	movl	-72(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L138
	movq	-24(%rbp), %rax
	movl	-108(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	$10, %edx
	movl	$529, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	$0, -72(%rbp)
	jmp	.L139
.L146:
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rax,%rcx), %rbx
	movl	$-1, %esi
	movq	%rdx, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L140
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	132(%rax), %rdx
	movl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqAccession@PLT
.L140:
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L141
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	196(%rax), %rdx
	movl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqDescription@PLT
.L141:
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L142
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$541, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
.L143:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	344(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	call	MakeAlignedString@PLT
.L142:
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L144
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L145
	movl	-108(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$546, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 120(%rax)
.L145:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-72(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-72(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	call	MakeAlignedString@PLT
.L144:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -72(%rbp)
.L139:
	movl	-72(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L146
	movl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$555, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$0, -60(%rbp)
	jmp	.L147
.L148:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$46, (%rax)
	addl	$1, -60(%rbp)
.L147:
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L148
	movl	$1, -52(%rbp)
	jmp	.L149
.L150:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$120, (%rax)
	addl	$1, -52(%rbp)
.L149:
	movl	-52(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.L150
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	P7Traces2Alignment, .-P7Traces2Alignment
	.section	.rodata
.LC7:
	.string	"illegal %s->%s transition"
	.text
	.globl	TransitionScoreLookup
	.type	TransitionScoreLookup, @function
TransitionScoreLookup:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -40(%rbp)
	movl	%esi, %edx
	movb	%dl, -28(%rbp)
	movb	%al, -36(%rbp)
	movsbl	-28(%rbp), %eax
	cmpl	$10, %eax
	ja	.L157
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L159(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L159(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L159:
	.long	.L157-.L159
	.long	.L158-.L159
	.long	.L160-.L159
	.long	.L161-.L159
	.long	.L162-.L159
	.long	.L163-.L159
	.long	.L164-.L159
	.long	.L165-.L159
	.long	.L166-.L159
	.long	.L167-.L159
	.long	.L168-.L159
	.text
.L162:
	movl	$0, %eax
	jmp	.L169
.L163:
	movsbl	-36(%rbp), %eax
	cmpl	$5, %eax
	je	.L171
	cmpl	$6, %eax
	jne	.L199
	movq	-24(%rbp), %rax
	movl	336(%rax), %eax
	jmp	.L169
.L171:
	movq	-24(%rbp), %rax
	movl	340(%rax), %eax
	jmp	.L169
.L199:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L164:
	movsbl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L175
	cmpl	$2, %eax
	je	.L176
	jmp	.L200
.L175:
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L176:
	movq	-24(%rbp), %rax
	movl	168(%rax), %eax
	movss	.LC8(%rip), %xmm1
	movl	%eax, -44(%rbp)
	movss	-44(%rbp), %xmm0
	call	Prob2Score@PLT
	jmp	.L169
.L200:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L158:
	movsbl	-36(%rbp), %eax
	cmpl	$2, %eax
	je	.L178
	cmpl	$2, %eax
	jg	.L179
	cmpl	$1, %eax
	je	.L180
	jmp	.L177
.L179:
	cmpl	$3, %eax
	je	.L181
	cmpl	$7, %eax
	je	.L182
	jmp	.L177
.L180:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L181:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L178:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L182:
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L177:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L161:
	movsbl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L184
	cmpl	$3, %eax
	je	.L185
	jmp	.L201
.L184:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L185:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L201:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L160:
	movsbl	-36(%rbp), %eax
	cmpl	$2, %eax
	je	.L187
	cmpl	$7, %eax
	je	.L188
	cmpl	$1, %eax
	jne	.L202
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L187:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L188:
	movl	$0, %eax
	jmp	.L169
.L202:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L165:
	movsbl	-36(%rbp), %eax
	cmpl	$8, %eax
	je	.L191
	cmpl	$10, %eax
	je	.L192
	jmp	.L203
.L191:
	movq	-24(%rbp), %rax
	movl	344(%rax), %eax
	jmp	.L169
.L192:
	movq	-24(%rbp), %rax
	movl	348(%rax), %eax
	jmp	.L169
.L203:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L168:
	movsbl	-36(%rbp), %eax
	cmpl	$6, %eax
	je	.L194
	cmpl	$10, %eax
	je	.L195
	jmp	.L204
.L194:
	movq	-24(%rbp), %rax
	movl	360(%rax), %eax
	jmp	.L169
.L195:
	movq	-24(%rbp), %rax
	movl	364(%rax), %eax
	jmp	.L169
.L204:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L166:
	movsbl	-36(%rbp), %eax
	cmpl	$8, %eax
	je	.L197
	cmpl	$9, %eax
	jne	.L205
	movq	-24(%rbp), %rax
	movl	352(%rax), %eax
	jmp	.L169
.L197:
	movq	-24(%rbp), %rax
	movl	356(%rax), %eax
	jmp	.L169
.L205:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rbx
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L173
.L167:
	movl	$0, %eax
	jmp	.L169
.L157:
	movsbl	-28(%rbp), %eax
	movl	%eax, %edi
	call	Statetype@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L173:
	movl	$0, %eax
.L169:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	TransitionScoreLookup, .-TransitionScoreLookup
	.section	.rodata
.LC11:
	.string	"bogus statetype"
	.text
	.globl	CreateFancyAli
	.type	CreateFancyAli, @function
CreateFancyAli:
.LFB15:
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
	movq	%rcx, -64(%rbp)
	call	AllocFancyAli@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$680, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$681, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$682, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L207
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$690, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L207:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L208
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$695, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L208:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L209
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.L210
.L209:
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
.L210:
	movl	$0, -20(%rbp)
	jmp	.L211
.L214:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L212
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L213
.L212:
	addl	$1, -20(%rbp)
.L211:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L214
.L213:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L215
.L218:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L216
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 68(%rax)
	jmp	.L217
.L216:
	subl	$1, -20(%rbp)
.L215:
	cmpl	$0, -20(%rbp)
	jns	.L218
.L217:
	movl	$0, -20(%rbp)
	jmp	.L219
.L244:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L220
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L222(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L222(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L222:
	.long	.L220-.L222
	.long	.L221-.L222
	.long	.L223-.L222
	.long	.L224-.L222
	.long	.L225-.L222
	.long	.L226-.L222
	.long	.L227-.L222
	.long	.L228-.L222
	.long	.L226-.L222
	.long	.L225-.L222
	.long	.L226-.L222
	.text
.L225:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$42, (%rax)
	jmp	.L229
.L226:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$45, (%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L251
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L251
.L227:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$62, (%rax)
	jmp	.L229
.L228:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$60, (%rax)
	jmp	.L229
.L221:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L231
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L231:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L232
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L232:
	movl	Alphabet_size(%rip), %edx
	movq	-48(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FArgMax@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	movq	-48(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-16(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L233
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L233:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L235
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movslq	%edx, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	movq	-48(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-16(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L238
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L238
.L235:
	movq	-48(%rbp), %rax
	movq	320(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L238
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$43, (%rax)
.L238:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movslq	%edx, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	jmp	.L229
.L223:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L239
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L239:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L240
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L240:
	movl	Alphabet_size(%rip), %edx
	movq	-48(%rbp), %rax
	movq	152(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FArgMax@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, (%rcx)
	movq	-48(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-16(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L241
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L241:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$45, (%rax)
	jmp	.L229
.L224:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$46, (%rax)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L243
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$43, (%rax)
.L243:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L229
.L220:
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L229
.L251:
	nop
.L229:
	addl	$1, -20(%rbp)
.L219:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L244
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 40(%rax)
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L245
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L245:
	movq	-48(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L246
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L246:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	CreateFancyAli, .-CreateFancyAli
	.section	.rodata
.LC12:
	.string	"CS"
.LC13:
	.string	"  %16s %s\n"
.LC14:
	.string	"RF"
.LC15:
	.string	" "
.LC16:
	.string	"  %10.10s %5d %s %-5d\n\n"
.LC17:
	.string	"-"
.LC18:
	.string	"  %10.10s %5s %s %-5s\n\n"
	.text
	.globl	PrintFancyAli
	.type	PrintFancyAli, @function
PrintFancyAli:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -14(%rbp)
	movq	-96(%rbp), %rax
	movl	64(%rax), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L253
.L264:
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L254
.L257:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L255
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L255
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L255
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L255
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L255
	addl	$1, -80(%rbp)
.L255:
	addl	$1, -72(%rbp)
.L254:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-72(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L256
	movl	-76(%rbp), %eax
	addl	$50, %eax
	cmpl	%eax, -72(%rbp)
	jl	.L257
.L256:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L258
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L258:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L259
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L259:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L260
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L260:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L261
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L261:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L262
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L263
	movq	-96(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-80(%rbp), %edi
	leaq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L262
.L263:
	movq	-96(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	leaq	.LC17(%rip), %r9
	movq	%rcx, %r8
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L262:
	addl	$50, -76(%rbp)
.L253:
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L264
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L266
	call	__stack_chk_fail@PLT
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	PrintFancyAli, .-PrintFancyAli
	.globl	TraceDecompose
	.type	TraceDecompose, @function
TraceDecompose:
.LFB17:
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
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L268
.L270:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L269
	addl	$1, -24(%rbp)
.L269:
	addl	$1, -20(%rbp)
.L268:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L270
	cmpl	$0, -24(%rbp)
	jne	.L271
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L267
.L271:
	movl	-24(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$893, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L273
.L282:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L274
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L275
.L278:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	je	.L284
	addl	$1, -16(%rbp)
.L275:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L278
	jmp	.L277
.L284:
	nop
.L277:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$5, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addl	$5, %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movb	$4, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movb	$5, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	$0, (%rax)
	movl	$2, -16(%rbp)
.L281:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	je	.L285
	addl	$1, -20(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L281
.L285:
	nop
	addl	$1, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$8, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$9, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L274:
	addl	$1, -20(%rbp)
.L273:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L282
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	nop
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	TraceDecompose, .-TraceDecompose
	.globl	TraceDomainNumber
	.type	TraceDomainNumber, @function
TraceDomainNumber:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L287
.L289:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L288
	addl	$1, -4(%rbp)
.L288:
	addl	$1, -8(%rbp)
.L287:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L289
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	TraceDomainNumber, .-TraceDomainNumber
	.section	.rodata
	.align 8
.LC19:
	.string	"sanity check failed: didn't find a match state in trace"
	.text
	.globl	TraceSimpleBounds
	.type	TraceSimpleBounds, @function
TraceSimpleBounds:
.LFB19:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$-1, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L292
.L297:
	cmpl	$-1, -12(%rbp)
	jne	.L293
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L294
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L293
.L294:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L293:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L295
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L296
.L295:
	addl	$1, -4(%rbp)
.L292:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L297
.L296:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L298
	cmpl	$-1, -20(%rbp)
	je	.L298
	cmpl	$-1, -12(%rbp)
	jne	.L299
.L298:
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L299:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L300
.L305:
	cmpl	$-1, -8(%rbp)
	jne	.L301
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L302
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L301
.L302:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L301:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L303
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L304
.L303:
	subl	$1, -4(%rbp)
.L300:
	cmpl	$0, -4(%rbp)
	jns	.L305
.L304:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L306
	cmpl	$-1, -16(%rbp)
	je	.L306
	cmpl	$-1, -8(%rbp)
	jne	.L307
.L306:
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L307:
	movq	-64(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	TraceSimpleBounds, .-TraceSimpleBounds
	.globl	MasterTraceFromMap
	.type	MasterTraceFromMap, @function
MasterTraceFromMap:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-48(%rbp), %eax
	leal	6(%rax), %edx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	P7AllocTrace
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L309
.L310:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
.L309:
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L310
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L311
.L314:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
	jmp	.L312
.L313:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
.L312:
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L313
	addl	$1, -20(%rbp)
.L311:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L314
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	jmp	.L315
.L316:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	addl	$1, -24(%rbp)
.L315:
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.L316
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L318
	call	__stack_chk_fail@PLT
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	MasterTraceFromMap, .-MasterTraceFromMap
	.section	.rodata
.LC20:
	.string	"never happens. Trust me."
	.text
	.globl	ImposeMasterTrace
	.type	ImposeMasterTrace, @function
ImposeMasterTrace:
.LFB21:
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
	movl	-44(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1126, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L320
.L336:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	P7AllocTrace
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L321
.L335:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L322
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L324(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L324(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L324:
	.long	.L323-.L324
	.long	.L325-.L324
	.long	.L326-.L324
	.long	.L327-.L324
	.long	.L326-.L324
	.long	.L328-.L324
	.long	.L326-.L324
	.long	.L326-.L324
	.long	.L328-.L324
	.long	.L326-.L324
	.long	.L328-.L324
	.text
.L326:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %esi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -16(%rbp)
	jmp	.L322
.L325:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L329
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L329
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L329
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L329
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L330
.L329:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %esi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	TraceSet
	jmp	.L331
.L330:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -20(%rbp)
.L331:
	addl	$1, -16(%rbp)
	jmp	.L322
.L327:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L337
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L337
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L337
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L337
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L337
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %esi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -20(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L337
.L328:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L333
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %esi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -16(%rbp)
	jmp	.L338
.L333:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L338
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L338
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L338
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L338
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L338
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %esi
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	TraceSet
	addl	$1, -20(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L338
.L323:
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L322
.L337:
	nop
	jmp	.L322
.L338:
	nop
.L322:
	addl	$1, -12(%rbp)
.L321:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L335
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	addl	$1, -24(%rbp)
.L320:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L336
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ImposeMasterTrace, .-ImposeMasterTrace
	.type	rightjustify, @function
rightjustify:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L340
.L343:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L341
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L341
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L341
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L341
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L342
.L341:
	subl	$1, -4(%rbp)
	jmp	.L340
.L342:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L340:
	cmpl	$0, -4(%rbp)
	jns	.L343
	jmp	.L344
.L345:
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
.L344:
	cmpl	$0, -8(%rbp)
	jns	.L345
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	rightjustify, .-rightjustify
	.section	.rodata
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC10:
	.long	1063675494
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
