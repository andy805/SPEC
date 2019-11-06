	.file	"hsregex.c"
	.text
	.comm	sqd_parse,80,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Strparse(): ntok must be <= %d"
.LC1:
	.string	"regexp compilation failed."
.LC2:
	.string	"hsregex.c"
	.text
	.globl	Strparse
	.type	Strparse, @function
Strparse:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpl	$9, -52(%rbp)
	jle	.L2
	movl	$9, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L2:
	movl	$0, -20(%rbp)
	jmp	.L3
.L5:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L4
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	$0, (%rdx,%rax)
.L4:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sqd_regcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L6:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sqd_regexec
	movl	%eax, -16(%rbp)
	cmpl	$1, -16(%rbp)
	jne	.L7
	movl	$0, -20(%rbp)
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$10, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$10, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$124, %esi
	leaq	.LC2(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	leaq	sqd_parse(%rip), %rax
	movq	(%rsi,%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L9:
	addl	$1, -20(%rbp)
.L8:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L10
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Strparse, .-Strparse
	.globl	SqdClean
	.type	SqdClean, @function
SqdClean:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L13
.L15:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L14
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sqd_parse(%rip), %rax
	movq	$0, (%rdx,%rax)
.L14:
	addl	$1, -4(%rbp)
.L13:
	cmpl	$9, -4(%rbp)
	jle	.L15
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SqdClean, .-SqdClean
	.section	.rodata
.LC3:
	.string	"NULL argument to sqd_regcomp"
.LC4:
	.string	"regexp too big"
.LC5:
	.string	"out of space"
	.text
	.globl	sqd_regcomp
	.type	sqd_regcomp, @function
sqd_regcomp:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)
	jne	.L17
	leaq	.LC3(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L29
.L17:
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$1, -72(%rbp)
	movq	$0, -48(%rbp)
	movb	$9, -56(%rbp)
	movb	$0, -54(%rbp)
	movzbl	-54(%rbp), %eax
	movb	%al, -55(%rbp)
	leaq	-80(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	leaq	-80(%rbp), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	regc
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	reg
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L29
.L19:
	movq	-48(%rbp), %rax
	cmpq	$32766, %rax
	jle	.L20
	leaq	.LC4(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L29
.L20:
	movq	-48(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L21
	leaq	.LC5(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L29
.L21:
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$1, -72(%rbp)
	leaq	180(%r12), %rax
	movq	%rax, -64(%rbp)
	leaq	-80(%rbp), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	regc
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	reg
	testq	%rax, %rax
	jne	.L22
	movl	$0, %eax
	jmp	.L29
.L22:
	movb	$0, 160(%r12)
	movb	$0, 161(%r12)
	movq	$0, 168(%r12)
	movl	$0, 176(%r12)
	leaq	180(%r12), %rax
	leaq	1(%rax), %rbx
	movq	%rbx, %rdi
	call	regnext
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L23
	addq	$3, %rbx
	movzbl	(%rbx), %eax
	cmpb	$8, %al
	jne	.L24
	movzbl	3(%rbx), %eax
	movb	%al, 160(%r12)
	jmp	.L25
.L24:
	movzbl	(%rbx), %eax
	cmpb	$1, %al
	jne	.L25
	movb	$1, 161(%r12)
.L25:
	movl	-84(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L23
	movl	$0, %r14d
	movl	$0, %r13d
	jmp	.L26
.L28:
	movzbl	(%rbx), %eax
	cmpb	$8, %al
	jne	.L27
	leaq	3(%rbx), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %r13
	ja	.L27
	leaq	3(%rbx), %r14
	leaq	3(%rbx), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %r13
.L27:
	movq	%rbx, %rdi
	call	regnext
	movq	%rax, %rbx
.L26:
	testq	%rbx, %rbx
	jne	.L28
	movq	%r14, 168(%r12)
	movl	%r13d, %eax
	movl	%eax, 176(%r12)
.L23:
	movq	%r12, %rax
.L29:
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sqd_regcomp, .-sqd_regcomp
	.section	.rodata
.LC6:
	.string	"too many ()"
.LC7:
	.string	"unterminated ()"
.LC8:
	.string	"unmatched ()"
.LC9:
	.string	"internal error: junk on end"
	.text
	.type	reg, @function
reg:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$0, %r13d
	movl	$0, %r14d
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	cmpl	$0, -52(%rbp)
	je	.L32
	movl	8(%rbx), %eax
	cmpl	$9, %eax
	jle	.L33
	leaq	.LC6(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L48
.L33:
	movl	8(%rbx), %r14d
	movl	8(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rbx)
	leal	20(%r14), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r13
.L32:
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regbranch
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L35
	movl	$0, %eax
	jmp	.L48
.L35:
	cmpl	$0, -52(%rbp)
	je	.L36
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	regtail
	jmp	.L37
.L36:
	movq	%r12, %r13
.L37:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	sete	%dl
	movzbl	%dl, %edx
	notl	%edx
	andl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$4, %edx
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L38
.L40:
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regbranch
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L39
	movl	$0, %eax
	jmp	.L48
.L39:
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	regtail
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	sete	%dl
	movzbl	%dl, %edx
	notl	%edx
	andl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$4, %edx
	orl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L38:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	je	.L40
	cmpl	$0, -52(%rbp)
	je	.L41
	leal	30(%r14), %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	regtail
	movq	%r13, %r12
	jmp	.L43
.L44:
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regoptail
	movq	%r12, %rdi
	call	regnext
	movq	%rax, %r12
.L43:
	testq	%r12, %r12
	jne	.L44
	cmpl	$0, -52(%rbp)
	je	.L45
	movq	(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	cmpb	$41, %al
	je	.L45
	leaq	.LC7(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L48
.L45:
	cmpl	$0, -52(%rbp)
	jne	.L46
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L46
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L47
	leaq	.LC8(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L48
.L47:
	leaq	.LC9(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L48
.L46:
	movq	%r13, %rax
.L48:
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	reg, .-reg
	.type	regbranch, @function
regbranch:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movl	$6, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	movl	$0, %r12d
	jmp	.L51
.L57:
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regpiece
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.L52
	movl	$0, %eax
	jmp	.L59
.L52:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$1, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	testq	%r12, %r12
	jne	.L54
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$4, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L55
.L54:
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
.L55:
	movq	%r13, %r12
.L51:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %r13d
	testl	%r13d, %r13d
	je	.L56
	cmpl	$124, %r13d
	je	.L56
	cmpl	$41, %r13d
	jne	.L57
.L56:
	testq	%r12, %r12
	jne	.L58
	movl	$9, %esi
	movq	%rbx, %rdi
	call	regnode
.L58:
	movq	%r14, %rax
.L59:
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	regbranch, .-regbranch
	.section	.rodata
.LC10:
	.string	"*+ operand could be empty"
.LC11:
	.string	"nested *?+"
	.text
	.type	regpiece, @function
regpiece:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regatom
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L62
	movl	$0, %eax
	jmp	.L77
.L62:
	movq	(%rbx), %rax
	movzbl	(%rax), %r13d
	cmpb	$42, %r13b
	je	.L64
	cmpb	$43, %r13b
	je	.L64
	cmpb	$63, %r13b
	je	.L64
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	%r12, %rax
	jmp	.L77
.L64:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L65
	cmpb	$63, %r13b
	je	.L65
	leaq	.LC10(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L77
.L65:
	movsbl	%r13b, %eax
	cmpl	$43, %eax
	je	.L67
	cmpl	$63, %eax
	je	.L68
	cmpl	$42, %eax
	jne	.L66
	movq	-56(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L66
.L67:
	movq	-56(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L66
.L68:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	nop
.L66:
	cmpb	$42, %r13b
	jne	.L70
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L70
	movq	%r12, %rdx
	movl	$10, %esi
	movq	%rbx, %rdi
	call	reginsert
	jmp	.L71
.L70:
	cmpb	$42, %r13b
	jne	.L72
	movq	%r12, %rdx
	movl	$6, %esi
	movq	%rbx, %rdi
	call	reginsert
	movl	$7, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regoptail
	movq	%r12, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regoptail
	movl	$6, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	movl	$9, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	jmp	.L71
.L72:
	cmpb	$43, %r13b
	jne	.L73
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L73
	movq	%r12, %rdx
	movl	$11, %esi
	movq	%rbx, %rdi
	call	reginsert
	jmp	.L71
.L73:
	cmpb	$43, %r13b
	jne	.L74
	movl	$6, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r13
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	movl	$7, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regtail
	movl	$6, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	regtail
	movl	$9, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	jmp	.L71
.L74:
	cmpb	$63, %r13b
	jne	.L71
	movq	%r12, %rdx
	movl	$6, %esi
	movq	%rbx, %rdi
	call	reginsert
	movl	$6, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	movl	$9, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r13
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regtail
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	regoptail
.L71:
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L75
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L75
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L76
.L75:
	leaq	.LC11(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	%r12, %rax
.L77:
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	regpiece, .-regpiece
	.section	.rodata
.LC12:
	.string	"invalid [] range"
.LC13:
	.string	"unmatched []"
	.align 8
.LC14:
	.string	"internal error: \\0|) unexpected"
.LC15:
	.string	"?+* follows nothing"
.LC16:
	.string	"trailing \\"
.LC17:
	.string	"^$.[()|?+*\\"
.LC18:
	.string	"internal error: strcspn 0"
	.text
	.type	regatom, @function
regatom:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	jg	.L81
	cmpl	$42, %eax
	jge	.L82
	cmpl	$36, %eax
	je	.L83
	cmpl	$36, %eax
	jg	.L84
	testl	%eax, %eax
	je	.L85
	jmp	.L80
.L84:
	cmpl	$40, %eax
	je	.L86
	cmpl	$41, %eax
	je	.L85
	jmp	.L80
.L81:
	cmpl	$91, %eax
	je	.L87
	cmpl	$91, %eax
	jg	.L88
	cmpl	$46, %eax
	je	.L89
	cmpl	$63, %eax
	je	.L82
	jmp	.L80
.L88:
	cmpl	$94, %eax
	je	.L90
	cmpl	$124, %eax
	je	.L85
	cmpl	$92, %eax
	je	.L91
	jmp	.L80
.L90:
	movl	$1, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	jmp	.L92
.L83:
	movl	$2, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	jmp	.L92
.L89:
	movl	$3, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L92
.L87:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L93
	movl	$5, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	jmp	.L94
.L93:
	movl	$4, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
.L94:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	cmpl	$93, %r12d
	je	.L95
	cmpl	$45, %r12d
	jne	.L97
.L95:
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	regc
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	jmp	.L97
.L106:
	cmpl	$45, %r12d
	je	.L98
	movl	%r12d, %esi
	movq	%rbx, %rdi
	call	regc
	jmp	.L97
.L98:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	cmpl	$93, %r12d
	je	.L99
	testl	%r12d, %r12d
	jne	.L100
.L99:
	movl	$45, %esi
	movq	%rbx, %rdi
	call	regc
	jmp	.L97
.L100:
	movq	(%rbx), %rax
	subq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %r13d
	movl	%r12d, %eax
	movzbl	%al, %r12d
	cmpl	%r12d, %r13d
	jle	.L101
	leaq	.LC12(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L101:
	addl	$1, %r13d
	jmp	.L103
.L104:
	movl	%r13d, %esi
	movq	%rbx, %rdi
	call	regc
	addl	$1, %r13d
.L103:
	cmpl	%r12d, %r13d
	jle	.L104
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
.L97:
	movq	(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	testl	%r12d, %r12d
	je	.L105
	cmpl	$93, %r12d
	jne	.L106
.L105:
	movl	$0, %esi
	movq	%rbx, %rdi
	call	regc
	cmpl	$93, %r12d
	je	.L107
	leaq	.LC13(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L107:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L92
.L86:
	leaq	-44(%rbp), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	reg
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.L108
	movl	$0, %eax
	jmp	.L116
.L108:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	andl	$5, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L92
.L85:
	leaq	.LC14(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L82:
	leaq	.LC15(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L91:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L109
	leaq	.LC16(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L109:
	movl	$8, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	movq	(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	regc
	movl	$0, %esi
	movq	%rbx, %rdi
	call	regc
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L92
.L80:
	movq	(%rbx), %rax
	subq	$1, %rax
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L110
	leaq	.LC18(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L116
.L110:
	movq	(%rbx), %rax
	addq	%r12, %rax
	movzbl	(%rax), %r13d
	cmpq	$1, %r12
	jbe	.L111
	cmpb	$42, %r13b
	je	.L112
	cmpb	$43, %r13b
	je	.L112
	cmpb	$63, %r13b
	jne	.L111
.L112:
	subq	$1, %r12
.L111:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$1, %r12
	jne	.L113
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L113:
	movl	$8, %esi
	movq	%rbx, %rdi
	call	regnode
	movq	%rax, %r14
	jmp	.L114
.L115:
	movq	(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	regc
	subq	$1, %r12
.L114:
	testq	%r12, %r12
	jne	.L115
	movl	$0, %esi
	movq	%rbx, %rdi
	call	regc
	nop
.L92:
	movq	%r14, %rax
.L116:
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	regatom, .-regatom
	.type	regnode, @function
regnode:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rax
	movl	%esi, %edx
	movb	%dl, -20(%rbp)
	movq	16(%rax), %r12
	movq	16(%rax), %rcx
	leaq	24(%rax), %rdx
	cmpq	%rdx, %rcx
	jne	.L119
	movq	32(%rax), %rdx
	addq	$3, %rdx
	movq	%rdx, 32(%rax)
	movq	%r12, %rax
	jmp	.L120
.L119:
	movq	%r12, %rbx
	movq	%rbx, %rdx
	leaq	1(%rdx), %rbx
	movzbl	-20(%rbp), %ecx
	movb	%cl, (%rdx)
	movq	%rbx, %rdx
	leaq	1(%rdx), %rbx
	movb	$0, (%rdx)
	movq	%rbx, %rdx
	leaq	1(%rdx), %rbx
	movb	$0, (%rdx)
	movq	%rbx, 16(%rax)
	movq	%r12, %rax
.L120:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	regnode, .-regnode
	.type	regc, @function
regc:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movl	%esi, %edx
	movb	%dl, -4(%rbp)
	movq	16(%rax), %rcx
	leaq	24(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L122
	movq	16(%rax), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movzbl	-4(%rbp), %eax
	movb	%al, (%rdx)
	jmp	.L124
.L122:
	movq	32(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 32(%rax)
.L124:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	regc, .-regc
	.type	reginsert, @function
reginsert:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	%esi, %eax
	movq	%rdx, -32(%rbp)
	movb	%al, -20(%rbp)
	movq	16(%rbx), %rdx
	leaq	24(%rbx), %rax
	cmpq	%rax, %rdx
	jne	.L126
	movq	32(%rbx), %rax
	addq	$3, %rax
	movq	%rax, 32(%rbx)
	jmp	.L125
.L126:
	movq	16(%rbx), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	16(%rbx), %rax
	addq	$3, %rax
	movq	%rax, 16(%rbx)
	movq	-32(%rbp), %rbx
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movzbl	-20(%rbp), %edx
	movb	%dl, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$0, (%rax)
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movb	$0, (%rax)
.L125:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	reginsert, .-reginsert
	.type	regtail, @function
regtail:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rax
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	16(%rax), %rdx
	addq	$24, %rax
	cmpq	%rax, %rdx
	je	.L135
	movq	-24(%rbp), %rbx
	jmp	.L131
.L132:
	movq	%r12, %rbx
.L131:
	movq	%rbx, %rdi
	call	regnext
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L132
	movzbl	(%rbx), %eax
	cmpb	$7, %al
	jne	.L133
	movq	%rbx, %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L134
.L133:
	movq	-32(%rbp), %rax
	movq	%rbx, %rdx
	subq	%rdx, %rax
.L134:
	movl	%eax, %r12d
	movl	%r12d, %eax
	sarl	$8, %eax
	movl	%eax, %edx
	leaq	1(%rbx), %rax
	andl	$127, %edx
	movb	%dl, (%rax)
	leaq	2(%rbx), %rax
	movl	%r12d, %edx
	movb	%dl, (%rax)
	jmp	.L128
.L135:
	nop
.L128:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	regtail, .-regtail
	.type	regoptail, @function
regoptail:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	16(%rax), %rcx
	leaq	24(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L140
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %edx
	cmpb	$6, %dl
	jne	.L140
	movq	-8(%rbp), %rdx
	leaq	3(%rdx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	regtail
	jmp	.L136
.L140:
	nop
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	regoptail, .-regoptail
	.section	.rodata
.LC19:
	.string	"NULL argument to sqd_regexec"
.LC20:
	.string	"corrupted regexp"
	.text
	.globl	sqd_regexec
	.type	sqd_regexec, @function
sqd_regexec:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %r12
	testq	%rbx, %rbx
	je	.L142
	testq	%r12, %r12
	jne	.L143
.L142:
	leaq	.LC19(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L155
.L143:
	movzbl	180(%rbx), %eax
	cmpb	$-100, %al
	je	.L145
	leaq	.LC20(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L155
.L145:
	movq	168(%rbx), %rax
	testq	%rax, %rax
	je	.L146
	movq	168(%rbx), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L146
	movl	$0, %eax
	jmp	.L155
.L146:
	movq	%r12, -56(%rbp)
	movq	%rbx, %rax
	movq	%rax, -48(%rbp)
	leaq	80(%rbx), %rax
	movq	%rax, -40(%rbp)
	movzbl	161(%rbx), %eax
	testb	%al, %al
	je	.L147
	leaq	-64(%rbp), %rax
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	regtry
	jmp	.L155
.L147:
	movzbl	160(%rbx), %eax
	testb	%al, %al
	je	.L152
	jmp	.L149
.L151:
	leaq	-64(%rbp), %rax
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	regtry
	testl	%eax, %eax
	je	.L150
	movl	$1, %eax
	jmp	.L155
.L150:
	movzbl	160(%rbx), %eax
	movsbl	%al, %eax
	leaq	1(%r12), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strchr@PLT
	movq	%rax, %r12
.L149:
	testq	%r12, %r12
	jne	.L151
	movl	$0, %eax
	jmp	.L155
.L154:
	movzbl	(%r12), %eax
	testb	%al, %al
	jne	.L153
	movl	$0, %eax
	jmp	.L155
.L153:
	addq	$1, %r12
.L152:
	leaq	-64(%rbp), %rax
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	regtry
	testl	%eax, %eax
	je	.L154
	movl	$1, %eax
.L155:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L156
	call	__stack_chk_fail@PLT
.L156:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sqd_regexec, .-sqd_regexec
	.type	regtry, @function
regtry:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-40(%rbp), %r13
	movq	-40(%rbp), %rax
	leaq	80(%rax), %r14
	movl	$10, %r12d
	jmp	.L158
.L159:
	movq	%r13, %rax
	leaq	8(%rax), %r13
	movq	$0, (%rax)
	movq	%r14, %rax
	leaq	8(%rax), %r14
	movq	$0, (%rax)
	subl	$1, %r12d
.L158:
	testl	%r12d, %r12d
	jg	.L159
	movq	-40(%rbp), %rax
	addq	$180, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regmatch
	testl	%eax, %eax
	je	.L160
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	(%rbx), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 80(%rax)
	movl	$1, %eax
	jmp	.L161
.L160:
	movl	$0, %eax
.L161:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	regtry, .-regtry
	.section	.rodata
.LC21:
	.string	"regexp corruption"
.LC22:
	.string	"corrupted pointers"
	.text
	.type	regmatch, @function
regmatch:
.LFB19:
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
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %r12
	jmp	.L163
.L205:
	movq	%r12, %rdi
	call	regnext
	movq	%rax, -56(%rbp)
	movzbl	(%r12), %eax
	movsbl	%al, %eax
	cmpl	$39, %eax
	ja	.L164
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L166(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L166(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L166:
	.long	.L165-.L166
	.long	.L167-.L166
	.long	.L168-.L166
	.long	.L169-.L166
	.long	.L170-.L166
	.long	.L171-.L166
	.long	.L172-.L166
	.long	.L206-.L166
	.long	.L174-.L166
	.long	.L206-.L166
	.long	.L176-.L166
	.long	.L176-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L164-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L177-.L166
	.long	.L164-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.long	.L178-.L166
	.text
.L167:
	movq	(%rbx), %rdx
	movq	8(%rbx), %rax
	cmpq	%rax, %rdx
	je	.L207
	movl	$0, %eax
	jmp	.L180
.L168:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L208
	movl	$0, %eax
	jmp	.L180
.L169:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L183
	movl	$0, %eax
	jmp	.L180
.L183:
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	jmp	.L181
.L174:
	addq	$3, %r12
	movzbl	(%r12), %edx
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L184
	movl	$0, %eax
	jmp	.L180
.L184:
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%rax, %r13
	cmpq	$1, %r13
	jbe	.L185
	movq	(%rbx), %rax
	movq	%r13, %rdx
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L185
	movl	$0, %eax
	jmp	.L180
.L185:
	movq	(%rbx), %rax
	addq	%r13, %rax
	movq	%rax, (%rbx)
	jmp	.L181
.L170:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L186
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	3(%r12), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L187
.L186:
	movl	$0, %eax
	jmp	.L180
.L187:
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	jmp	.L181
.L171:
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L188
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	3(%r12), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L189
.L188:
	movl	$0, %eax
	jmp	.L180
.L189:
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	jmp	.L181
.L177:
	movzbl	(%r12), %eax
	movsbl	%al, %eax
	leal	-20(%rax), %r12d
	movq	(%rbx), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regmatch
	testl	%eax, %eax
	je	.L190
	movq	16(%rbx), %rax
	movslq	%r12d, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	movq	16(%rbx), %rax
	movslq	%r12d, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%r13, (%rax)
.L191:
	movl	$1, %eax
	jmp	.L180
.L190:
	movl	$0, %eax
	jmp	.L180
.L178:
	movzbl	(%r12), %eax
	movsbl	%al, %eax
	leal	-30(%rax), %r12d
	movq	(%rbx), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regmatch
	testl	%eax, %eax
	je	.L192
	movq	24(%rbx), %rax
	movslq	%r12d, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L193
	movq	24(%rbx), %rax
	movslq	%r12d, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%r13, (%rax)
.L193:
	movl	$1, %eax
	jmp	.L180
.L192:
	movl	$0, %eax
	jmp	.L180
.L172:
	movq	(%rbx), %r13
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	je	.L196
	leaq	3(%r12), %rax
	movq	%rax, -56(%rbp)
	jmp	.L181
.L198:
	leaq	3(%r12), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regmatch
	testl	%eax, %eax
	je	.L197
	movl	$1, %eax
	jmp	.L180
.L197:
	movq	%r13, (%rbx)
	movq	%r12, %rdi
	call	regnext
	movq	%rax, %r12
.L196:
	movzbl	(%r12), %eax
	cmpb	$6, %al
	je	.L198
	movl	$0, %eax
	jmp	.L180
.L176:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L199
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	jmp	.L200
.L199:
	movl	$0, %eax
.L200:
	movl	%eax, %r13d
	movq	(%rbx), %r15
	movzbl	(%r12), %eax
	cmpb	$10, %al
	setne	%al
	movzbl	%al, %r14d
	leaq	3(%r12), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regrepeat
	leaq	1(%rax), %r12
	jmp	.L201
.L204:
	leaq	-1(%r12), %rax
	addq	%r15, %rax
	movq	%rax, (%rbx)
	testb	%r13b, %r13b
	je	.L202
	movq	(%rbx), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %r13b
	jne	.L203
.L202:
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	regmatch
	testl	%eax, %eax
	je	.L203
	movl	$1, %eax
	jmp	.L180
.L203:
	subq	$1, %r12
.L201:
	cmpq	%r14, %r12
	ja	.L204
	movl	$0, %eax
	jmp	.L180
.L165:
	movl	$1, %eax
	jmp	.L180
.L164:
	leaq	.LC21(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
	jmp	.L180
.L206:
	nop
	jmp	.L181
.L207:
	nop
	jmp	.L181
.L208:
	nop
.L181:
	movq	-56(%rbp), %r12
.L163:
	testq	%r12, %r12
	jne	.L205
	leaq	.LC22(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
.L180:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	regmatch, .-regmatch
	.section	.rodata
	.align 8
.LC23:
	.string	"internal error: bad call of regrepeat"
	.text
	.type	regrepeat, @function
regrepeat:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rdx
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$4, %eax
	je	.L211
	cmpl	$4, %eax
	jg	.L212
	cmpl	$3, %eax
	je	.L213
	jmp	.L210
.L212:
	cmpl	$5, %eax
	je	.L214
	cmpl	$8, %eax
	je	.L215
	jmp	.L210
.L213:
	movq	(%rdx), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L216
.L215:
	movq	-40(%rbp), %rax
	movzbl	3(%rax), %r13d
	movl	$0, %r12d
	movq	(%rdx), %rbx
	jmp	.L217
.L218:
	addq	$1, %r12
	addq	$1, %rbx
.L217:
	movzbl	(%rbx), %eax
	cmpb	%al, %r13b
	je	.L218
	movq	%r12, %rax
	jmp	.L216
.L211:
	movq	-40(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	(%rdx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	jmp	.L216
.L214:
	movq	-40(%rbp), %rax
	leaq	3(%rax), %rcx
	movq	(%rdx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	jmp	.L216
.L210:
	leaq	.LC23(%rip), %rdi
	call	sqd_regerror
	movl	$0, %eax
.L216:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	regrepeat, .-regrepeat
	.type	regnext, @function
regnext:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, %rax
	leaq	1(%rax), %rdx
	movzbl	(%rdx), %edx
	movsbl	%dl, %edx
	sall	$8, %edx
	movl	%edx, %ecx
	andl	$32512, %ecx
	leaq	2(%rax), %rdx
	movzbl	(%rdx), %edx
	movsbl	%dl, %edx
	movzbl	%dl, %edx
	movl	%ecx, %ebx
	orl	%edx, %ebx
	testl	%ebx, %ebx
	jne	.L220
	movl	$0, %eax
	jmp	.L221
.L220:
	movzbl	(%rax), %edx
	cmpb	$7, %dl
	jne	.L222
	movslq	%ebx, %rdx
	negq	%rdx
	addq	%rdx, %rax
	jmp	.L221
.L222:
	movslq	%ebx, %rdx
	addq	%rdx, %rax
.L221:
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	regnext, .-regnext
	.section	.rodata
.LC24:
	.string	"NULL parameter to sqd_regsub"
.LC25:
	.string	"damaged regexp"
.LC26:
	.string	"damaged match string"
	.text
	.globl	sqd_regsub
	.type	sqd_regsub, @function
sqd_regsub:
.LFB22:
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
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	testq	%rbx, %rbx
	je	.L225
	cmpq	$0, -64(%rbp)
	je	.L225
	cmpq	$0, -72(%rbp)
	jne	.L226
.L225:
	leaq	.LC24(%rip), %rdi
	call	sqd_regerror
	jmp	.L224
.L226:
	movzbl	180(%rbx), %eax
	cmpb	$-100, %al
	je	.L229
	leaq	.LC25(%rip), %rdi
	call	sqd_regerror
	jmp	.L224
.L236:
	cmpb	$38, %r15b
	jne	.L230
	movl	$0, %r14d
	jmp	.L231
.L230:
	cmpb	$92, %r15b
	jne	.L232
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	(%r12), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L232
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	-48(%rax), %r14d
	jmp	.L231
.L232:
	movl	$-1, %r14d
.L231:
	testl	%r14d, %r14d
	jns	.L233
	cmpb	$92, %r15b
	jne	.L234
	movzbl	(%r12), %eax
	cmpb	$92, %al
	je	.L235
	movzbl	(%r12), %eax
	cmpb	$38, %al
	jne	.L234
.L235:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %r15d
.L234:
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movb	%r15b, (%rax)
	jmp	.L229
.L233:
	movslq	%r14d, %rax
	movq	(%rbx,%rax,8), %rax
	testq	%rax, %rax
	je	.L229
	movslq	%r14d, %rax
	addq	$10, %rax
	movq	(%rbx,%rax,8), %rax
	testq	%rax, %rax
	je	.L229
	movslq	%r14d, %rax
	addq	$10, %rax
	movq	(%rbx,%rax,8), %rdx
	movslq	%r14d, %rax
	movq	(%rbx,%rax,8), %rax
	cmpq	%rax, %rdx
	jbe	.L229
	movslq	%r14d, %rax
	addq	$10, %rax
	movq	(%rbx,%rax,8), %rax
	movq	%rax, %rdx
	movslq	%r14d, %rax
	movq	(%rbx,%rax,8), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r15
	movslq	%r14d, %rax
	movq	(%rbx,%rax,8), %rax
	movq	%r15, %rdx
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	strncpy@PLT
	addq	%r15, %r13
	leaq	-1(%r13), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L229
	leaq	.LC26(%rip), %rdi
	call	sqd_regerror
	jmp	.L224
.L229:
	movq	%r12, %rax
	leaq	1(%rax), %r12
	movzbl	(%rax), %r15d
	testb	%r15b, %r15b
	jne	.L236
	movq	%r13, %rax
	leaq	1(%rax), %r13
	movb	$0, (%rax)
.L224:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	sqd_regsub, .-sqd_regsub
	.section	.rodata
.LC27:
	.string	"regexp(3): %s\n"
	.text
	.globl	sqd_regerror
	.type	sqd_regerror, @function
sqd_regerror:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE23:
	.size	sqd_regerror, .-sqd_regerror
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
