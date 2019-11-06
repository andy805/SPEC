	.file	"debug.c"
	.text
	.section	.rodata
.LC0:
	.string	"S"
.LC1:
	.string	"N"
.LC2:
	.string	"B"
.LC3:
	.string	"M"
.LC4:
	.string	"D"
.LC5:
	.string	"I"
.LC6:
	.string	"E"
.LC7:
	.string	"J"
.LC8:
	.string	"C"
.LC9:
	.string	"T"
.LC10:
	.string	"BOGUS"
	.text
	.globl	Statetype
	.type	Statetype, @function
Statetype:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	cmpl	$10, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L4(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L2-.L4
	.long	.L3-.L4
	.long	.L5-.L4
	.long	.L6-.L4
	.long	.L7-.L4
	.long	.L8-.L4
	.long	.L9-.L4
	.long	.L10-.L4
	.long	.L11-.L4
	.long	.L12-.L4
	.long	.L13-.L4
	.text
.L7:
	leaq	.LC0(%rip), %rax
	jmp	.L14
.L8:
	leaq	.LC1(%rip), %rax
	jmp	.L14
.L9:
	leaq	.LC2(%rip), %rax
	jmp	.L14
.L3:
	leaq	.LC3(%rip), %rax
	jmp	.L14
.L5:
	leaq	.LC4(%rip), %rax
	jmp	.L14
.L6:
	leaq	.LC5(%rip), %rax
	jmp	.L14
.L10:
	leaq	.LC6(%rip), %rax
	jmp	.L14
.L13:
	leaq	.LC7(%rip), %rax
	jmp	.L14
.L11:
	leaq	.LC8(%rip), %rax
	jmp	.L14
.L12:
	leaq	.LC9(%rip), %rax
	jmp	.L14
.L2:
	leaq	.LC10(%rip), %rax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Statetype, .-Statetype
	.section	.rodata
.LC11:
	.string	"protein"
.LC12:
	.string	"nucleic acid"
.LC13:
	.string	"unknown"
	.text
	.globl	AlphabetType2String
	.type	AlphabetType2String, @function
AlphabetType2String:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	je	.L17
	cmpl	$3, %eax
	je	.L18
	testl	%eax, %eax
	je	.L19
	jmp	.L21
.L18:
	leaq	.LC11(%rip), %rax
	jmp	.L20
.L17:
	leaq	.LC12(%rip), %rax
	jmp	.L20
.L19:
	leaq	.LC13(%rip), %rax
	jmp	.L20
.L21:
	leaq	.LC10(%rip), %rax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AlphabetType2String, .-AlphabetType2String
	.section	.rodata
.LC14:
	.string	" [ trace is NULL ]\n"
	.align 8
.LC15:
	.string	"st  node   rpos  - traceback len %d\n"
.LC16:
	.string	"--  ---- ------\n"
.LC17:
	.string	"%1s  %4d %6d\n"
	.align 8
.LC18:
	.string	"oi, you can't print scores from that hmm, it's not ready."
	.align 8
.LC19:
	.string	"st  node   rpos  transit emission - traceback len %d\n"
	.align 8
.LC20:
	.string	"--  ---- ------  ------- --------\n"
.LC21:
	.string	"%1s  %4d %6d  %7d"
.LC22:
	.string	" %8d %c"
.LC23:
	.string	"-"
.LC24:
	.string	" %8s %c"
	.align 8
.LC25:
	.string	"                 ------- --------\n"
.LC26:
	.string	"           total: %6d\n\n"
	.text
	.globl	P7PrintTrace
	.type	P7PrintTrace, @function
P7PrintTrace:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L23
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	jmp	.L22
.L23:
	cmpq	$0, -72(%rbp)
	jne	.L25
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -44(%rbp)
	jmp	.L26
.L27:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %r12d
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -44(%rbp)
.L26:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L27
	jmp	.L22
.L25:
	movq	-72(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L28
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L28:
	movl	$0, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -44(%rbp)
	jmp	.L29
.L42:
	cmpq	$0, -80(%rbp)
	je	.L30
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -40(%rbp)
.L30:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jge	.L31
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-44(%rbp), %eax
	cltq
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	TransitionScoreLookup@PLT
	movl	%eax, %r13d
	jmp	.L32
.L31:
	movl	$0, %r13d
.L32:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %r12d
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	Statetype
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jge	.L33
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-44(%rbp), %eax
	cltq
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %esi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	TransitionScoreLookup@PLT
	addl	%eax, -36(%rbp)
.L33:
	cmpq	$0, -80(%rbp)
	je	.L34
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L35
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %ecx
	movq	-72(%rbp), %rax
	movq	320(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-72(%rbp), %rax
	movq	320(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -36(%rbp)
	jmp	.L41
.L35:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L37
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movsbl	%al, %ecx
	movq	-72(%rbp), %rax
	movq	328(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-72(%rbp), %rax
	movq	328(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -36(%rbp)
	jmp	.L41
.L37:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L38
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L39
.L38:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L39
.L40:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L41
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L41
.L39:
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movsbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L41
.L34:
	movq	-56(%rbp), %rax
	movl	$45, %ecx
	leaq	.LC23(%rip), %rdx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L41:
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -44(%rbp)
.L29:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L42
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	movl	$1, %esi
	leaq	.LC25(%rip), %rdi
	call	fwrite@PLT
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L22:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	P7PrintTrace, .-P7PrintTrace
	.section	.rodata
.LC27:
	.string	"Dirichlet\n"
.LC28:
	.string	"PAM\n"
.LC29:
	.string	"No such strategy."
.LC30:
	.string	"Amino\n"
.LC31:
	.string	"Nucleic\n"
.LC32:
	.string	"\n%d\n"
.LC33:
	.string	"%.4f\n"
.LC34:
	.string	"%.4f "
	.text
	.globl	P7PrintPrior
	.type	P7PrintPrior, @function
P7PrintPrior:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L44
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$1, %esi
	leaq	.LC27(%rip), %rdi
	call	fwrite@PLT
	jmp	.L45
.L44:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC28(%rip), %rdi
	call	fwrite@PLT
	jmp	.L45
.L46:
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L45:
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rdi
	call	fwrite@PLT
	jmp	.L48
.L47:
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	jne	.L48
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC31(%rip), %rdi
	call	fwrite@PLT
.L48:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -8(%rbp)
	jmp	.L49
.L52:
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movss	8(%rax,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, -4(%rbp)
	jmp	.L50
.L51:
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	addq	%rsi, %rax
	addq	$200, %rax
	movss	8(%rcx,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L50:
	cmpl	$6, -4(%rbp)
	jle	.L51
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -8(%rbp)
.L49:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L52
	movq	-32(%rbp), %rax
	movl	6408(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -8(%rbp)
	jmp	.L53
.L56:
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1600, %rdx
	movss	12(%rax,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, -4(%rbp)
	jmp	.L54
.L55:
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$1800, %rax
	movss	12(%rcx,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L54:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L55
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -8(%rbp)
.L53:
	movq	-32(%rbp), %rax
	movl	6408(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L56
	movq	-32(%rbp), %rax
	movl	23212(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -8(%rbp)
	jmp	.L57
.L60:
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$5804, %rdx
	movss	(%rax,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, -4(%rbp)
	jmp	.L58
.L59:
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$6004, %rax
	movss	(%rcx,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L58:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -8(%rbp)
.L57:
	movq	-32(%rbp), %rax
	movl	23212(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L60
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7PrintPrior, .-P7PrintPrior
	.globl	TraceVerify
	.type	TraceVerify, @function
TraceVerify:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	je	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$2, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L65
	movl	$0, %eax
	jmp	.L63
.L65:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L66
	movl	$0, %eax
	jmp	.L63
.L66:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L67
	movl	$0, %eax
	jmp	.L63
.L67:
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L68
.L124:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$10, %eax
	ja	.L69
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L71(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L71(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L71:
	.long	.L69-.L71
	.long	.L70-.L71
	.long	.L72-.L71
	.long	.L73-.L71
	.long	.L74-.L71
	.long	.L75-.L71
	.long	.L76-.L71
	.long	.L77-.L71
	.long	.L78-.L71
	.long	.L79-.L71
	.long	.L80-.L71
	.text
.L74:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L81
	movl	$0, %eax
	jmp	.L63
.L81:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L82
	movl	$0, %eax
	jmp	.L63
.L82:
	cmpl	$0, -24(%rbp)
	je	.L83
	movl	$0, %eax
	jmp	.L63
.L83:
	cmpl	$0, -20(%rbp)
	je	.L84
	movl	$0, %eax
	jmp	.L63
.L84:
	cmpl	$0, -28(%rbp)
	je	.L125
	movl	$0, %eax
	jmp	.L63
.L75:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L87
	movl	$0, %eax
	jmp	.L63
.L87:
	cmpl	$0, -24(%rbp)
	je	.L88
	movl	$0, %eax
	jmp	.L63
.L88:
	cmpl	$0, -16(%rbp)
	jle	.L89
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L90
	movl	$0, %eax
	jmp	.L63
.L90:
	addl	$1, -20(%rbp)
	jmp	.L91
.L89:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L92
	movl	$0, %eax
	jmp	.L63
.L92:
	cmpl	$0, -20(%rbp)
	je	.L91
	movl	$0, %eax
	jmp	.L63
.L91:
	addl	$1, -16(%rbp)
	jmp	.L86
.L76:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movl	$0, %eax
	jmp	.L63
.L93:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L94
	movl	$0, %eax
	jmp	.L63
.L94:
	movl	$0, -4(%rbp)
	jmp	.L86
.L70:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L95
	movl	$0, %eax
	jmp	.L63
.L95:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L96
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L97
.L96:
	movl	$0, %eax
	jmp	.L63
.L97:
	addl	$1, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L98
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	jmp	.L99
.L98:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L100
	movl	$0, %eax
	jmp	.L63
.L100:
	addl	$1, -24(%rbp)
.L99:
	addl	$1, -4(%rbp)
	jmp	.L86
.L73:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L101
	movl	$0, %eax
	jmp	.L63
.L101:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	je	.L102
	movl	$0, %eax
	jmp	.L63
.L102:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L103
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-44(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.L104
.L103:
	movl	$0, %eax
	jmp	.L63
.L104:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L105
	movl	$0, %eax
	jmp	.L63
.L105:
	addl	$1, -20(%rbp)
	jmp	.L86
.L72:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L106
	movl	$0, %eax
	jmp	.L63
.L106:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L107
	movl	$0, %eax
	jmp	.L63
.L107:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L108
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L109
.L108:
	movl	$0, %eax
	jmp	.L63
.L109:
	addl	$1, -24(%rbp)
	jmp	.L86
.L77:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L110
	movl	$0, %eax
	jmp	.L63
.L110:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L111
	movl	$0, %eax
	jmp	.L63
.L111:
	movl	$0, -8(%rbp)
	jmp	.L86
.L80:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L112
	movl	$0, %eax
	jmp	.L63
.L112:
	cmpl	$0, -8(%rbp)
	jle	.L113
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L114
	movl	$0, %eax
	jmp	.L63
.L114:
	addl	$1, -20(%rbp)
	jmp	.L115
.L113:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L115
	movl	$0, %eax
	jmp	.L63
.L115:
	addl	$1, -8(%rbp)
	jmp	.L86
.L78:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L116
	movl	$0, %eax
	jmp	.L63
.L116:
	cmpl	$0, -12(%rbp)
	jle	.L117
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.L118
	movl	$0, %eax
	jmp	.L63
.L118:
	addl	$1, -20(%rbp)
	jmp	.L119
.L117:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L119
	movl	$0, %eax
	jmp	.L63
.L119:
	addl	$1, -12(%rbp)
	jmp	.L86
.L79:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	je	.L120
	movl	$0, %eax
	jmp	.L63
.L120:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L121
	movl	$0, %eax
	jmp	.L63
.L121:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L122
	movl	$0, %eax
	jmp	.L63
.L122:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.L126
	movl	$0, %eax
	jmp	.L63
.L69:
	movl	$0, %eax
	jmp	.L63
.L125:
	nop
	jmp	.L86
.L126:
	nop
.L86:
	addl	$1, -28(%rbp)
.L68:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L124
	movl	$1, %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	TraceVerify, .-TraceVerify
	.globl	TraceCompare
	.type	TraceCompare, @function
TraceCompare:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L128
	movl	$0, %eax
	jmp	.L129
.L128:
	movl	$0, -4(%rbp)
	jmp	.L130
.L134:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L131
	movl	$0, %eax
	jmp	.L129
.L131:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L132
	movl	$0, %eax
	jmp	.L129
.L132:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L133
	movl	$0, %eax
	jmp	.L129
.L133:
	addl	$1, -4(%rbp)
.L130:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L134
	movl	$1, %eax
.L129:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	TraceCompare, .-TraceCompare
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
