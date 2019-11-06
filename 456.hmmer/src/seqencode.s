	.file	"seqencode.c"
	.text
	.globl	seqcmp
	.type	seqcmp, @function
seqcmp:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L3
	addl	$1, -4(%rbp)
.L3:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L6
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L6
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L5
	jmp	.L6
.L8:
	addl	$1, -4(%rbp)
.L6:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L8
.L7:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	seqcmp, .-seqcmp
	.globl	seqncmp
	.type	seqncmp, @function
seqncmp:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L11
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L12
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.L12
	movl	-4(%rbp), %eax
	jmp	.L13
.L12:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L11:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -36(%rbp)
	testl	%eax, %eax
	jne	.L15
	jmp	.L16
.L18:
	addl	$1, -4(%rbp)
.L16:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -36(%rbp)
	testl	%eax, %eax
	je	.L17
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L17
	movl	-4(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.L18
.L17:
	movl	-4(%rbp), %eax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	seqncmp, .-seqncmp
	.globl	seqencode
	.type	seqencode, @function
seqencode:
.LFB7:
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
	movq	%rax, -8(%rbp)
	jmp	.L20
.L27:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L21
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
.L21:
	movl	$0, -12(%rbp)
	jmp	.L22
.L24:
	addl	$1, -12(%rbp)
.L22:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	cmpb	%al, %dl
	je	.L23
	cmpl	$17, -12(%rbp)
	jle	.L24
.L23:
	cmpl	$17, -12(%rbp)
	jle	.L25
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	2+iupac(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
	addq	$1, -32(%rbp)
.L20:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L27
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	seqencode, .-seqencode
	.globl	coded_revcomp
	.type	coded_revcomp, @function
coded_revcomp:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L29
.L35:
	movl	$0, -36(%rbp)
	jmp	.L30
.L32:
	addl	$1, -36(%rbp)
.L30:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	2+iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	cmpb	%al, %dl
	je	.L31
	cmpl	$16, -36(%rbp)
	jle	.L32
.L31:
	cmpl	$17, -36(%rbp)
	jle	.L33
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L34
.L33:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	3+iupac(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
	subq	$1, -32(%rbp)
	addq	$1, -16(%rbp)
.L29:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.L35
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coded_revcomp, .-coded_revcomp
	.globl	seqdecode
	.type	seqdecode, @function
seqdecode:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L37
.L43:
	movl	$0, -8(%rbp)
	jmp	.L38
.L40:
	addl	$1, -8(%rbp)
.L38:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	2+iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	cmpb	%al, %dl
	je	.L39
	cmpl	$16, -8(%rbp)
	jle	.L40
.L39:
	cmpl	$17, -8(%rbp)
	jle	.L41
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$88, (%rax)
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -32(%rbp)
	addl	$1, -4(%rbp)
.L37:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L43
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	seqdecode, .-seqdecode
	.globl	seqndecode
	.type	seqndecode, @function
seqndecode:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L45
.L51:
	movl	$0, -8(%rbp)
	jmp	.L46
.L48:
	addl	$1, -8(%rbp)
.L46:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	2+iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	cmpb	%al, %dl
	je	.L47
	cmpl	$16, -8(%rbp)
	jle	.L48
.L47:
	cmpl	$17, -8(%rbp)
	jle	.L49
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$88, (%rax)
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	iupac(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -32(%rbp)
	addl	$1, -4(%rbp)
.L45:
	subl	$1, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L51
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	seqndecode, .-seqndecode
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
