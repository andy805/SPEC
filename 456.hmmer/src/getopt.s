	.file	"getopt.c"
	.text
	.section	.rodata
.LC0:
	.string	"-"
.LC1:
	.string	"--"
	.align 8
.LC2:
	.string	"Option \"%s\" is ambiguous; please be more specific.\n%s"
.LC3:
	.string	"No such option \"%s\".\n%s"
	.align 8
.LC4:
	.string	"Option %s requires an argument\n%s"
	.align 8
.LC5:
	.string	"Option %s does not take an argument\n%s"
.LC6:
	.string	"No such option \"%c\".\n%s"
	.align 8
.LC7:
	.string	"Option %s requires an integer argument\n%s"
	.align 8
.LC8:
	.string	"Option %s requires a numerical argument\n%s"
	.align 8
.LC9:
	.string	"Option %s requires a single-character argument\n%s"
	.text
	.globl	Getopt
	.type	Getopt, @function
Getopt:
.LFB5:
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
	movl	%ecx, -40(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$0, -24(%rbp)
	movl	optind.5695(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L2
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L2
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	optind.5695(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind.5695(%rip)
	movl	optind.5695(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L4
.L5:
	movq	optptr.5696(%rip), %rax
	testq	%rax, %rax
	jne	.L6
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$2, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L6
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, optptr.5696(%rip)
	movq	optptr.5696(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	optptr.5696(%rip), %rax
	movb	$0, (%rax)
	movq	optptr.5696(%rip), %rax
	addq	$1, %rax
	movq	%rax, optptr.5696(%rip)
.L7:
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L8
.L11:
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L9
	addl	$1, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L35
.L9:
	addl	$1, -32(%rbp)
.L8:
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L11
	jmp	.L10
.L35:
	nop
.L10:
	cmpl	$1, -28(%rbp)
	jle	.L12
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L12
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L12:
	cmpl	$0, -28(%rbp)
	jne	.L13
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L13:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L14
	movq	optptr.5696(%rip), %rax
	testq	%rax, %rax
	je	.L15
	movq	optptr.5696(%rip), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, optptr.5696(%rip)
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind.5695(%rip)
	jmp	.L20
.L15:
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jg	.L17
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L20
.L17:
	movl	optind.5695(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	optind.5695(%rip), %eax
	addl	$2, %eax
	movl	%eax, optind.5695(%rip)
	jmp	.L20
.L14:
	movq	optptr.5696(%rip), %rax
	testq	%rax, %rax
	je	.L19
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L19:
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind.5695(%rip)
	jmp	.L20
.L6:
	movq	optptr.5696(%rip), %rax
	testq	%rax, %rax
	jne	.L21
	movl	optind.5695(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, optptr.5696(%rip)
.L21:
	movl	$-1, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L22
.L25:
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L23
	movq	optptr.5696(%rip), %rax
	movzbl	(%rax), %edx
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L23
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L24
.L23:
	addl	$1, -32(%rbp)
.L22:
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L25
.L24:
	cmpl	$-1, -24(%rbp)
	jne	.L26
	movq	optptr.5696(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L26:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L27
	movq	optptr.5696(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L28
	movq	optptr.5696(%rip), %rax
	leaq	1(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind.5695(%rip)
	jmp	.L29
.L28:
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jle	.L30
	movl	optind.5695(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	optind.5695(%rip), %eax
	addl	$2, %eax
	movl	%eax, optind.5695(%rip)
	jmp	.L29
.L30:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L29:
	movq	$0, optptr.5696(%rip)
	jmp	.L20
.L27:
	movq	24(%rbp), %rax
	movq	$0, (%rax)
	movq	optptr.5696(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L31
	movq	optptr.5696(%rip), %rax
	addq	$1, %rax
	movq	%rax, optptr.5696(%rip)
	jmp	.L20
.L31:
	movl	optind.5695(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind.5695(%rip)
	movq	$0, optptr.5696(%rip)
.L20:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jne	.L33
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L33
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L32
.L33:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	jne	.L34
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	IsReal@PLT
	testl	%eax, %eax
	jne	.L34
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L32
.L34:
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	cmpl	$3, %eax
	jne	.L32
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	je	.L32
	movl	-24(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L32:
	movl	optind.5695(%rip), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L4:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Getopt, .-Getopt
	.data
	.align 4
	.type	optind.5695, @object
	.size	optind.5695, 4
optind.5695:
	.long	1
	.local	optptr.5696
	.comm	optptr.5696,8,8
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
