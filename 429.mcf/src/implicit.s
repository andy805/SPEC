	.file	"implicit.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"network %s: not enough memory\n"
	.text
	.globl	resize_prob
	.type	resize_prob, @function
resize_prob:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	416(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	456(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 416(%rax)
	movq	-56(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	456(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 448(%rax)
	movq	-56(%rbp), %rax
	movq	416(%rax), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	$-1, %rax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 568(%rax)
	movq	-56(%rbp), %rax
	movq	424(%rax), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 576(%rax)
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$104, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L4
.L6:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L5
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
.L5:
	addq	$104, -40(%rbp)
.L4:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L6
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	resize_prob, .-resize_prob
	.globl	insert_new_arc
	.type	insert_new_arc, @function
insert_new_arc:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	48(%rax), %rax
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rdx)
.L8:
	cmpq	$1, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jg	.L10
	nop
.L12:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	insert_new_arc, .-insert_new_arc
	.globl	replace_weaker_arc
	.type	replace_weaker_arc, @function
replace_weaker_arc:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	$1, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	48(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L14
	movl	$2, %eax
	jmp	.L15
.L14:
	movl	$3, %eax
.L15:
	movq	%rax, -8(%rbp)
	jmp	.L16
.L18:
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	salq	$6, %rdx
	leaq	-64(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	48(%rax), %rax
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	salq	-8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	cmpq	%rax, %rdx
	jg	.L16
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L16
	addq	$1, -8(%rbp)
.L16:
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jg	.L20
	movq	-8(%rbp), %rax
	salq	$6, %rax
	leaq	-64(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jl	.L18
	nop
.L20:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	replace_weaker_arc, .-replace_weaker_arc
	.globl	price_out_impl
	.type	price_out_impl, @function
price_out_impl:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -104(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$15, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	528(%rax), %rbx
	movq	$30, -120(%rbp)
	subq	-72(%rbp), %rbx
	movq	%rbx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	408(%rax), %rax
	cmpq	$15000, %rax
	jg	.L22
	movq	-104(%rbp), %rax
	movq	424(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	456(%rax), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	416(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L22
	movq	-104(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	408(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	424(%rax), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	416(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L22
	movq	$1, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	resize_prob
	testq	%rax, %rax
	je	.L23
	movq	$-1, %rax
	jmp	.L24
.L23:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	refresh_neighbour_lists@PLT
.L22:
	movq	-104(%rbp), %rax
	movq	576(%rax), %rbx
	movq	-104(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	568(%rax), %r12
	movq	$0, -96(%rbp)
	jmp	.L25
.L27:
	addq	$1, -96(%rbp)
	addq	$192, %r12
.L25:
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.L26
	leaq	64(%r12), %rax
	movl	24(%rax), %eax
	cmpl	$-1, %eax
	je	.L27
.L26:
	movq	$0, -112(%rbp)
	jmp	.L28
.L37:
	leaq	64(%r12), %rax
	movl	24(%rax), %eax
	cmpl	$-1, %eax
	je	.L29
	movq	16(%r12), %rax
	movq	56(%rax), %rax
	movq	16(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, 72(%rax)
	leaq	64(%r12), %rax
	movq	%rax, -112(%rbp)
.L29:
	movl	24(%r12), %eax
	cmpl	$-1, %eax
	je	.L45
	movq	16(%r12), %r15
	movl	100(%r15), %eax
	movslq	%eax, %rdx
	movq	56(%r12), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %r14
	jmp	.L32
.L36:
	movq	8(%r14), %r13
	movl	100(%r13), %eax
	movslq	%eax, %rdx
	movq	56(%r14), %rax
	addq	%rdx, %rax
	cmpq	%rax, -56(%rbp)
	jge	.L33
	movq	72(%r13), %r14
	jmp	.L32
.L33:
	movq	0(%r13), %rax
	movq	-120(%rbp), %rdx
	subq	%rax, %rdx
	movq	(%r15), %rax
	leaq	(%rdx,%rax), %r14
	testq	%r14, %r14
	jns	.L34
	movq	-104(%rbp), %rax
	movq	448(%rax), %rax
	cmpq	%rax, -88(%rbp)
	jge	.L35
	movq	-88(%rbp), %rax
	movq	%r14, %r9
	movq	-120(%rbp), %r8
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	insert_new_arc
	addq	$1, -88(%rbp)
	jmp	.L34
.L35:
	movq	48(%rbx), %rax
	cmpq	%rax, %r14
	jge	.L34
	movq	-104(%rbp), %rax
	movq	%r14, %r9
	movq	-120(%rbp), %r8
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	replace_weaker_arc
.L34:
	movq	72(%r13), %r14
.L32:
	testq	%r14, %r14
	jne	.L36
	jmp	.L31
.L45:
	nop
.L31:
	addq	$1, -96(%rbp)
	addq	$192, %r12
.L28:
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.L37
	cmpq	$0, -88(%rbp)
	je	.L38
	movq	-104(%rbp), %rax
	movq	576(%rax), %rbx
	movq	-104(%rbp), %rax
	movq	576(%rax), %rax
	movq	-88(%rbp), %rdx
	salq	$6, %rdx
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 576(%rax)
	movq	-104(%rbp), %rax
	movq	576(%rax), %r12
	cmpq	$0, -80(%rbp)
	je	.L43
	jmp	.L40
.L41:
	movq	$0, 48(%rbx)
	movl	$1, 24(%rbx)
	addq	$64, %rbx
.L40:
	cmpq	%r12, %rbx
	jne	.L41
	jmp	.L42
.L44:
	movq	$0, 48(%rbx)
	movl	$1, 24(%rbx)
	movq	8(%rbx), %rax
	movq	56(%rax), %rax
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	movq	%rbx, 56(%rax)
	movq	16(%rbx), %rax
	movq	64(%rax), %rax
	movq	%rax, 40(%rbx)
	movq	16(%rbx), %rax
	movq	%rbx, 64(%rax)
	addq	$64, %rbx
.L43:
	cmpq	%r12, %rbx
	jne	.L44
.L42:
	movq	-104(%rbp), %rax
	movq	424(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 424(%rax)
	movq	-104(%rbp), %rax
	movq	440(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 440(%rax)
	movq	-104(%rbp), %rax
	movq	448(%rax), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 448(%rax)
.L38:
	movq	-88(%rbp), %rax
.L24:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	price_out_impl, .-price_out_impl
	.globl	suspend_impl
	.type	suspend_impl, @function
suspend_impl:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L47
	movq	-56(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L48
.L47:
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	568(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	424(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	440(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	salq	$6, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L49
.L55:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L51
.L50:
	movq	$-2, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L52
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	jmp	.L51
.L52:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L51:
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.L53
	addq	$1, -40(%rbp)
	jmp	.L54
.L53:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	32(%rsi), %rax
	movq	40(%rsi), %rdx
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	48(%rsi), %rax
	movq	56(%rsi), %rdx
	movq	%rax, 48(%rcx)
	movq	%rdx, 56(%rcx)
	addq	$64, -24(%rbp)
.L54:
	addq	$64, -16(%rbp)
.L49:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L55
.L48:
	cmpq	$0, -40(%rbp)
	je	.L56
	movq	-56(%rbp), %rax
	movq	424(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 424(%rax)
	movq	-56(%rbp), %rax
	movq	440(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 440(%rax)
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	-40(%rbp), %rdx
	salq	$6, %rdx
	negq	%rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 576(%rax)
	movq	-56(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 448(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	refresh_neighbour_lists@PLT
.L56:
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	suspend_impl, .-suspend_impl
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
