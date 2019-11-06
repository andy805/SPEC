	.file	"ssi.c"
	.text
	.data
	.align 4
	.type	v20magic, @object
	.size	v20magic, 4
v20magic:
	.long	-202118735
	.align 4
	.type	v20swap, @object
	.size	v20swap, 4
v20swap:
	.long	-1310067725
	.section	.rodata
.LC0:
	.string	"rb"
	.text
	.globl	SSIOpen
	.type	SSIOpen, @function
SSIOpen:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$144, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$3, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	load_indexfile
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SSIOpen, .-SSIOpen
	.type	load_indexfile, @function
load_indexfile:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$6, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-56(%rbp), %rax
	movw	$0, 12(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	jne	.L6
	movl	$5, -28(%rbp)
	jmp	.L7
.L6:
	movl	-32(%rbp), %edx
	movl	v20magic(%rip), %eax
	cmpl	%eax, %edx
	je	.L8
	movl	-32(%rbp), %edx
	movl	v20swap(%rip), %eax
	cmpl	%eax, %edx
	je	.L8
	movl	$5, -28(%rbp)
	jmp	.L7
.L8:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L44
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L10
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L11
.L10:
	movl	$7, -28(%rbp)
	jmp	.L7
.L11:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 96(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 97(%rax)
	movq	-56(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i16
	testl	%eax, %eax
	je	.L45
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L46
	movq	-56(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L47
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L48
	movq	-56(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L49
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L50
	movq	-56(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L51
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L52
	movq	-56(%rbp), %rax
	leaq	44(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	96(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	je	.L54
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	96(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	je	.L55
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	96(%rax), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	je	.L56
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	testw	%ax, %ax
	je	.L57
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movl	$3, -28(%rbp)
	jmp	.L7
.L25:
	movw	$0, -34(%rbp)
	jmp	.L26
.L27:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movzwl	-34(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -34(%rbp)
.L26:
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	cmpw	%ax, -34(%rbp)
	jb	.L27
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movl	$3, -28(%rbp)
	jmp	.L7
.L28:
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movl	$3, -28(%rbp)
	jmp	.L7
.L29:
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movl	$3, -28(%rbp)
	jmp	.L7
.L30:
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movl	$3, -28(%rbp)
	jmp	.L7
.L31:
	movw	$0, -34(%rbp)
	jmp	.L32
.L40:
	movzwl	-34(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	36(%rax), %edx
	movq	-56(%rbp), %rax
	leaq	48(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	indexfile_position
	testl	%eax, %eax
	jne	.L58
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	%rcx, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L34
	movl	$3, -28(%rbp)
	jmp	.L7
.L34:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movzwl	-34(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	jne	.L59
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L60
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L61
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L62
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movzwl	-34(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	je	.L63
	movzwl	-34(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -34(%rbp)
.L32:
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %eax
	cmpw	%ax, -34(%rbp)
	jb	.L40
	movl	$0, %eax
	jmp	.L42
.L44:
	nop
	jmp	.L7
.L45:
	nop
	jmp	.L7
.L46:
	nop
	jmp	.L7
.L47:
	nop
	jmp	.L7
.L48:
	nop
	jmp	.L7
.L49:
	nop
	jmp	.L7
.L50:
	nop
	jmp	.L7
.L51:
	nop
	jmp	.L7
.L52:
	nop
	jmp	.L7
.L53:
	nop
	jmp	.L7
.L54:
	nop
	jmp	.L7
.L55:
	nop
	jmp	.L7
.L56:
	nop
	jmp	.L7
.L57:
	nop
	jmp	.L7
.L58:
	nop
	jmp	.L7
.L59:
	nop
	jmp	.L7
.L60:
	nop
	jmp	.L7
.L61:
	nop
	jmp	.L7
.L62:
	nop
	jmp	.L7
.L63:
	nop
.L7:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSIClose
	movl	-28(%rbp), %eax
.L42:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	load_indexfile, .-load_indexfile
	.globl	SSIGetOffsetByName
	.type	SSIGetOffsetByName, @function
SSIGetOffsetByName:
.LFB7:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	16(%rax), %edi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %r10d
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	binary_search
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L65
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-22(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i16
	testl	%eax, %eax
	jne	.L66
	movl	$1, %eax
	jmp	.L74
.L66:
	movzwl	-22(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	jne	.L68
	movl	$1, %eax
	jmp	.L74
.L68:
	movl	$0, %eax
	jmp	.L74
.L65:
	cmpl	$2, -20(%rbp)
	jne	.L69
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-40(%rbp), %rax
	movl	20(%rax), %edi
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %r10d
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movq	%rax, %rdi
	call	binary_search
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L71
	movl	-20(%rbp), %eax
	jmp	.L74
.L71:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
	movl	$3, %eax
	jmp	.L74
.L72:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L73
	movl	$1, %eax
	jmp	.L74
.L73:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSIGetOffsetByName
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L70:
	movl	-20(%rbp), %eax
	jmp	.L74
.L69:
	movl	-20(%rbp), %eax
.L74:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SSIGetOffsetByName, .-SSIGetOffsetByName
	.globl	SSIGetOffsetByNumber
	.type	SSIGetOffsetByNumber, @function
SSIGetOffsetByNumber:
.LFB8:
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
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L77
	movl	$2, %eax
	jmp	.L84
.L77:
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	40(%rax), %edx
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	indexfile_position
	testl	%eax, %eax
	je	.L79
	movl	$8, %eax
	jmp	.L84
.L79:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	movl	$3, %eax
	jmp	.L84
.L80:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L81
	movl	$1, %eax
	jmp	.L84
.L81:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-18(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i16
	testl	%eax, %eax
	jne	.L82
	movl	$1, %eax
	jmp	.L84
.L82:
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	jne	.L83
	movl	$1, %eax
	jmp	.L84
.L83:
	movzwl	-18(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L84:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SSIGetOffsetByNumber, .-SSIGetOffsetByNumber
	.globl	SSIGetSubseqOffset
	.type	SSIGetSubseqOffset, @function
SSIGetSubseqOffset:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSIGetOffsetByName
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L87
	movl	-28(%rbp), %eax
	jmp	.L102
.L87:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L89
	movl	$10, %eax
	jmp	.L102
.L89:
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_offset
	testl	%eax, %eax
	jne	.L90
	movl	$1, %eax
	jmp	.L102
.L90:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	jne	.L91
	movl	$1, %eax
	jmp	.L102
.L91:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -12(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L92
	cmpl	$0, -20(%rbp)
	jne	.L93
.L92:
	movl	$10, %eax
	jmp	.L102
.L93:
	cmpl	$0, -16(%rbp)
	js	.L94
	movl	-16(%rbp), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L95
.L94:
	movl	$11, %eax
	jmp	.L102
.L95:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L96
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	testb	%al, %al
	jne	.L97
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	leal	(%rcx,%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L98
.L97:
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	cmpb	$1, %al
	jne	.L98
	movq	-80(%rbp), %rax
	movb	$1, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, %eax
	cltq
	leaq	(%rcx,%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
.L98:
	movq	-88(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L99
.L96:
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	testb	%al, %al
	jne	.L100
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L101
.L100:
	movq	-40(%rbp), %rax
	movzbl	97(%rax), %eax
	cmpb	$1, %al
	jne	.L101
	movq	-80(%rbp), %rax
	movb	$1, (%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	imull	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
.L101:
	movl	-12(%rbp), %eax
	imull	-24(%rbp), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
.L99:
	movl	$0, %eax
.L102:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	SSIGetSubseqOffset, .-SSIGetSubseqOffset
	.globl	SSISetFilePosition
	.type	SSISetFilePosition, @function
SSISetFilePosition:
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
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L105
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	testl	%eax, %eax
	je	.L106
	movl	$8, %eax
	jmp	.L107
.L105:
	movl	$7, %eax
	jmp	.L107
.L106:
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	SSISetFilePosition, .-SSISetFilePosition
	.globl	SSIFileInfo
	.type	SSIFileInfo, @function
SSIFileInfo:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L109
	movq	-8(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L110
.L109:
	movl	$12, %eax
	jmp	.L111
.L110:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L111:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SSIFileInfo, .-SSIFileInfo
	.globl	SSIClose
	.type	SSIClose, @function
SSIClose:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clear_ssifile
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L114:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L115:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SSIClose, .-SSIClose
	.type	clear_ssifile, @function
clear_ssifile:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movl	$0, -4(%rbp)
	jmp	.L118
.L120:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L119:
	addl	$1, -4(%rbp)
.L118:
	movq	-24(%rbp), %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L120
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L117:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L121:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L122:
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L123:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L125:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	clear_ssifile, .-clear_ssifile
	.globl	SSIRecommendMode
	.type	SSIRecommendMode, @function
SSIRecommendMode:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SSIRecommendMode, .-SSIRecommendMode
	.section	.rodata
	.align 8
.LC1:
	.string	"Can't create a 64-bit SSI index on this system, sorry;\nI don't have 64-bit file offset functions available.\n"
.LC2:
	.string	"tmp.ssi.1"
.LC3:
	.string	"tmp.ssi.2"
	.text
	.globl	SSICreateIndex
	.type	SSICreateIndex, @function
SSICreateIndex:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	$120, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L139
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$200, 12(%rax)
	cmpl	$1, -20(%rbp)
	jne	.L131
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L131:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 52(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movl	$80, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movl	$40, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movl	$40, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movl	$40, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movl	$5600, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movl	$5600, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-8(%rbp), %rax
	jmp	.L138
.L139:
	nop
	jmp	.L130
.L140:
	nop
	jmp	.L130
.L141:
	nop
	jmp	.L130
.L142:
	nop
	jmp	.L130
.L143:
	nop
	jmp	.L130
.L144:
	nop
	jmp	.L130
.L145:
	nop
.L130:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSIFreeIndex
	movl	$0, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	SSICreateIndex, .-SSICreateIndex
	.globl	SSIGetFilePosition
	.type	SSIGetFilePosition, @function
SSIGetFilePosition:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L147
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L148
	movl	$9, %eax
	jmp	.L149
.L147:
	cmpl	$1, -12(%rbp)
	je	.L150
	call	abort@PLT
.L150:
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
	movl	$7, %eax
	jmp	.L149
.L148:
	movl	$0, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	SSIGetFilePosition, .-SSIGetFilePosition
	.globl	SSIAddFileToIndex
	.type	SSIAddFileToIndex, @function
SSIAddFileToIndex:
.LFB17:
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
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	cmpw	$32766, %ax
	jbe	.L152
	movl	$13, %eax
	jmp	.L153
.L152:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L154
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 48(%rax)
.L154:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	FileTail@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movw	%dx, 52(%rax)
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %ecx
	movzwl	%cx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$3, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testw	%dx, %dx
	jne	.L155
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movl	$3, %eax
	jmp	.L153
.L156:
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L157
	movl	$3, %eax
	jmp	.L153
.L157:
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	movl	$3, %eax
	jmp	.L153
.L158:
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L155
	movl	$3, %eax
	jmp	.L153
.L155:
	movl	$0, %eax
.L153:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	SSIAddFileToIndex, .-SSIAddFileToIndex
	.globl	SSISetFileForSubseq
	.type	SSISetFileForSubseq, @function
SSISetFileForSubseq:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L160
	movq	-8(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L161
.L160:
	movl	$12, %eax
	jmp	.L162
.L161:
	cmpl	$0, -16(%rbp)
	jle	.L163
	cmpl	$0, -20(%rbp)
	jg	.L164
.L163:
	movl	$12, %eax
	jmp	.L162
.L164:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$0, %eax
.L162:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	SSISetFileForSubseq, .-SSISetFileForSubseq
	.section	.rodata
.LC4:
	.string	"%s\t%d\t%lu\t%lu\t%lu\n"
.LC5:
	.string	"%s\t%d\t%llu\t%llu\t%lu\n"
	.text
	.globl	SSIAddPrimaryKeyToIndex
	.type	SSIAddPrimaryKeyToIndex, @function
SSIAddPrimaryKeyToIndex:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -56(%rbp)
	cmpl	$32766, -52(%rbp)
	jle	.L166
	movl	$13, %eax
	jmp	.L167
.L166:
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2147483646, %eax
	jbe	.L168
	movl	$14, %eax
	jmp	.L167
.L168:
	cmpl	$0, -56(%rbp)
	jle	.L169
	cmpq	$0, -72(%rbp)
	jne	.L169
	call	abort@PLT
.L169:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	current_index_size
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jb	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	activate_external_sort
	testl	%eax, %eax
	je	.L170
	movl	$4, %eax
	jmp	.L167
.L170:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L171
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 64(%rax)
.L171:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L172
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	cmpq	$0, -72(%rbp)
	je	.L174
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	jmp	.L175
.L174:
	movl	$0, %edi
.L175:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %r8d
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rsi
	movq	%rdi, %r9
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L176
.L173:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdi
	cmpq	$0, -72(%rbp)
	je	.L177
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	jmp	.L178
.L177:
	movl	$0, %esi
.L178:
	movq	-64(%rbp), %rax
	movq	8(%rax), %r8
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rsi, %r9
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L176:
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 68(%rax)
	movl	$0, %eax
	jmp	.L167
.L172:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L179
	movl	$3, %eax
	jmp	.L167
.L179:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movl	-52(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	cmpq	$0, -72(%rbp)
	je	.L180
	cmpl	$0, -56(%rbp)
	jle	.L180
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, 48(%rdx)
	jmp	.L181
.L180:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movl	$0, 48(%rax)
.L181:
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-40(%rbp), %rax
	movl	68(%rax), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L182
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	addl	$100, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movl	$3, %eax
	jmp	.L167
.L182:
	movl	$0, %eax
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	SSIAddPrimaryKeyToIndex, .-SSIAddPrimaryKeyToIndex
	.section	.rodata
.LC6:
	.string	"%s\t%s\n"
	.text
	.globl	SSIAddSecondaryKeyToIndex
	.type	SSIAddSecondaryKeyToIndex, @function
SSIAddSecondaryKeyToIndex:
.LFB20:
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
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	$2147483646, %eax
	jbe	.L184
	movl	$14, %eax
	jmp	.L185
.L184:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L186
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	current_index_size
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jb	.L186
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	activate_external_sort
	testl	%eax, %eax
	je	.L186
	movl	$4, %eax
	jmp	.L185
.L186:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L187
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 96(%rax)
.L187:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L188
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 100(%rax)
	movl	$0, %eax
	jmp	.L185
.L188:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L189
	movl	$3, %eax
	jmp	.L185
.L189:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	salq	$4, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-56(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.L190
	movl	$3, %eax
	jmp	.L185
.L190:
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 100(%rax)
	movq	-40(%rbp), %rax
	movl	100(%rax), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L191
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	addl	$100, %eax
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	movl	$3, %eax
	jmp	.L185
.L191:
	movl	$0, %eax
.L185:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	SSIAddSecondaryKeyToIndex, .-SSIAddSecondaryKeyToIndex
	.type	pkeysort, @function
pkeysort:
.LFB21:
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	pkeysort, .-pkeysort
	.type	skeysort, @function
skeysort:
.LFB22:
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	skeysort, .-skeysort
	.section	.rodata
.LC7:
	.string	"wb"
	.align 8
.LC8:
	.string	"Can't switch to 64-bit SSI index mode on this system, sorry;\nI don't have 64-bit file offset functions available.\n"
	.align 8
.LC9:
	.string	"env LC_ALL=POSIX sort -o %s %s\n"
.LC10:
	.string	"r"
	.text
	.globl	SSIWriteIndex
	.type	SSIWriteIndex, @function
SSIWriteIndex:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1216, %rsp
	movq	%rdi, -1208(%rbp)
	movq	%rsi, -1216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-1208(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1152(%rbp)
	cmpq	$0, -1152(%rbp)
	jne	.L197
	movl	$4, %eax
	jmp	.L198
.L197:
	movl	$0, -1188(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	current_index_size
	cmpq	$2046, %rax
	jbe	.L199
	movq	-1216(%rbp), %rax
	movl	$1, 4(%rax)
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L199:
	movq	-1216(%rbp), %rax
	movl	48(%rax), %eax
	addl	$16, %eax
	movl	%eax, -1172(%rbp)
	movq	-1216(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L200
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	addl	$22, %eax
	jmp	.L201
.L200:
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	addl	$14, %eax
.L201:
	movl	%eax, -1168(%rbp)
	movq	-1216(%rbp), %rax
	movl	96(%rax), %edx
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -1164(%rbp)
	movl	$0, -1180(%rbp)
	movq	-1216(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L202
	orl	$1, -1180(%rbp)
.L202:
	movq	-1216(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L203
	orl	$2, -1180(%rbp)
.L203:
	movl	-1180(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L204
	movl	$66, %eax
	jmp	.L205
.L204:
	movl	$54, %eax
.L205:
	movq	%rax, -1144(%rbp)
	movq	-1216(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	imull	-1172(%rbp), %eax
	movl	%eax, %edx
	movq	-1144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1136(%rbp)
	movq	-1216(%rbp), %rax
	movl	68(%rax), %eax
	imull	-1168(%rbp), %eax
	movl	%eax, %edx
	movq	-1136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -1128(%rbp)
	movq	-1216(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L206
	movq	-1216(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-1216(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-1216(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-1216(%rbp), %rax
	movq	72(%rax), %rdx
	leaq	-1040(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	system@PLT
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	je	.L207
	movl	$16, %eax
	jmp	.L198
.L207:
	movq	-1216(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-1216(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L209
	movl	$16, %eax
	jmp	.L198
.L209:
	movq	-1216(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-1216(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-1216(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-1216(%rbp), %rax
	movq	104(%rax), %rdx
	leaq	-1040(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	system@PLT
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	je	.L210
	movl	$16, %eax
	jmp	.L198
.L210:
	movq	-1216(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-1216(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L212
	movl	$16, %eax
	jmp	.L198
.L206:
	movq	-1216(%rbp), %rax
	movl	68(%rax), %esi
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rax
	leaq	pkeysort(%rip), %rcx
	movl	$56, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	specqsort@PLT
	movq	-1216(%rbp), %rax
	movl	100(%rax), %esi
	movq	-1216(%rbp), %rax
	movq	88(%rax), %rax
	leaq	skeysort(%rip), %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	specqsort@PLT
.L212:
	movl	v20magic(%rip), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L213
	movl	$15, %eax
	jmp	.L198
.L213:
	movl	-1180(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L214
	movl	$15, %eax
	jmp	.L198
.L214:
	movq	-1216(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i16
	testl	%eax, %eax
	jne	.L215
	movl	$15, %eax
	jmp	.L198
.L215:
	movq	-1216(%rbp), %rax
	movl	68(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L216
	movl	$15, %eax
	jmp	.L198
.L216:
	movq	-1216(%rbp), %rax
	movl	100(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L217
	movl	$15, %eax
	jmp	.L198
.L217:
	movq	-1216(%rbp), %rax
	movl	48(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L218
	movl	$15, %eax
	jmp	.L198
.L218:
	movq	-1216(%rbp), %rax
	movl	64(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L219
	movl	$15, %eax
	jmp	.L198
.L219:
	movq	-1216(%rbp), %rax
	movl	96(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L220
	movl	$15, %eax
	jmp	.L198
.L220:
	movl	-1172(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L221
	movl	$15, %eax
	jmp	.L198
.L221:
	movl	-1168(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L222
	movl	$15, %eax
	jmp	.L198
.L222:
	movl	-1164(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L223
	movl	$15, %eax
	jmp	.L198
.L223:
	movq	-1216(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L224
	movq	-1144(%rbp), %rax
	movl	%eax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L225
	movl	$15, %eax
	jmp	.L198
.L225:
	movq	-1136(%rbp), %rax
	movl	%eax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L226
	movl	$15, %eax
	jmp	.L198
.L226:
	movq	-1128(%rbp), %rax
	movl	%eax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L227
	movl	$15, %eax
	jmp	.L198
.L224:
	movq	-1144(%rbp), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_i64
	testl	%eax, %eax
	jne	.L228
	movl	$15, %eax
	jmp	.L198
.L228:
	movq	-1136(%rbp), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_i64
	testl	%eax, %eax
	jne	.L229
	movl	$15, %eax
	jmp	.L198
.L229:
	movq	-1128(%rbp), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_i64
	testl	%eax, %eax
	jne	.L227
	movl	$15, %eax
	jmp	.L198
.L227:
	movq	-1216(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1120(%rbp)
	cmpq	$0, -1120(%rbp)
	jne	.L230
	movl	$3, %eax
	jmp	.L198
.L230:
	movl	$0, -1184(%rbp)
	jmp	.L231
.L238:
	movl	$0, -1176(%rbp)
	movq	-1216(%rbp), %rax
	movq	32(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L232
	movq	-1216(%rbp), %rax
	movq	40(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L232
	orl	$1, -1176(%rbp)
.L232:
	movq	-1216(%rbp), %rax
	movq	16(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L233
	movl	$15, %eax
	jmp	.L198
.L233:
	movq	-1216(%rbp), %rax
	movq	24(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L234
	movl	$15, %eax
	jmp	.L198
.L234:
	movl	-1176(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L235
	movl	$15, %eax
	jmp	.L198
.L235:
	movq	-1216(%rbp), %rax
	movq	32(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L236
	movl	$15, %eax
	jmp	.L198
.L236:
	movq	-1216(%rbp), %rax
	movq	40(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L237
	movl	$15, %eax
	jmp	.L198
.L237:
	addl	$1, -1184(%rbp)
.L231:
	movq	-1216(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -1184(%rbp)
	jl	.L238
	movq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1120(%rbp)
	cmpq	$0, -1120(%rbp)
	jne	.L239
	movl	$3, %eax
	jmp	.L198
.L239:
	movq	-1216(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L240
	movq	$0, -1160(%rbp)
	movl	$0, -1192(%rbp)
	movl	$0, -1184(%rbp)
	jmp	.L241
.L250:
	movq	-1216(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-1192(%rbp), %rcx
	leaq	-1160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sre_fgets@PLT
	testq	%rax, %rax
	jne	.L242
	movl	$1, %eax
	jmp	.L198
.L242:
	movq	-1216(%rbp), %rax
	movl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-1160(%rbp), %rax
	leaq	-1104(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	parse_pkey_info
	testl	%eax, %eax
	je	.L244
	movl	$6, %eax
	jmp	.L198
.L244:
	movq	-1104(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L245
	movl	$15, %eax
	jmp	.L198
.L245:
	movzwl	-1096(%rbp), %eax
	movzwl	%ax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i16
	testl	%eax, %eax
	jne	.L246
	movl	$15, %eax
	jmp	.L198
.L246:
	leaq	-1104(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_offset
	testl	%eax, %eax
	jne	.L247
	movl	$15, %eax
	jmp	.L198
.L247:
	leaq	-1104(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_offset
	testl	%eax, %eax
	jne	.L248
	movl	$15, %eax
	jmp	.L198
.L248:
	movl	-1056(%rbp), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L249
	movl	$15, %eax
	jmp	.L198
.L249:
	addl	$1, -1184(%rbp)
.L241:
	movq	-1216(%rbp), %rax
	movl	68(%rax), %edx
	movl	-1184(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L250
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L251
.L240:
	movl	$0, -1184(%rbp)
	jmp	.L252
.L258:
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-1184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L253
	movl	$15, %eax
	jmp	.L198
.L253:
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-1184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i16
	testl	%eax, %eax
	jne	.L254
	movl	$15, %eax
	jmp	.L198
.L254:
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-1184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_offset
	testl	%eax, %eax
	jne	.L255
	movl	$15, %eax
	jmp	.L198
.L255:
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-1184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	32(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_offset
	testl	%eax, %eax
	jne	.L256
	movl	$15, %eax
	jmp	.L198
.L256:
	movq	-1216(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-1184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movq	-1152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	testl	%eax, %eax
	jne	.L257
	movl	$15, %eax
	jmp	.L198
.L257:
	addl	$1, -1184(%rbp)
.L252:
	movq	-1216(%rbp), %rax
	movl	68(%rax), %edx
	movl	-1184(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L258
.L251:
	movq	-1216(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L259
	movq	-1216(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -1112(%rbp)
	cmpq	$0, -1112(%rbp)
	jne	.L260
	movl	$3, %eax
	jmp	.L198
.L260:
	movq	-1216(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L261
	movq	$0, -1160(%rbp)
	movl	$0, -1192(%rbp)
	movl	$0, -1184(%rbp)
	jmp	.L262
.L268:
	movq	-1216(%rbp), %rax
	movq	112(%rax), %rdx
	leaq	-1192(%rbp), %rcx
	leaq	-1160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sre_fgets@PLT
	testq	%rax, %rax
	jne	.L263
	movl	$1, %eax
	jmp	.L198
.L263:
	movq	-1160(%rbp), %rax
	leaq	-1104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_skey_info
	testl	%eax, %eax
	je	.L265
	movl	$6, %eax
	jmp	.L198
.L265:
	movq	-1104(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1096(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L266
	movl	$15, %eax
	jmp	.L198
.L266:
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L267
	movl	$15, %eax
	jmp	.L198
.L267:
	addl	$1, -1184(%rbp)
.L262:
	movq	-1216(%rbp), %rax
	movl	100(%rax), %edx
	movl	-1184(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L268
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L269
.L261:
	movl	$0, -1184(%rbp)
	jmp	.L270
.L273:
	movq	-1216(%rbp), %rax
	movq	88(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movq	88(%rax), %rax
	movl	-1184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-1216(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L271
	movl	$15, %eax
	jmp	.L198
.L271:
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %esi
	movq	-1152(%rbp), %rdx
	movq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, %rdx
	movq	-1216(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L272
	movl	$15, %eax
	jmp	.L198
.L272:
	addl	$1, -1184(%rbp)
.L270:
	movq	-1216(%rbp), %rax
	movl	100(%rax), %edx
	movl	-1184(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L273
.L269:
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L259:
	movq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-1188(%rbp), %eax
.L198:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L274
	call	__stack_chk_fail@PLT
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	SSIWriteIndex, .-SSIWriteIndex
	.globl	SSIFreeIndex
	.type	SSIFreeIndex, @function
SSIFreeIndex:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L295
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L277
	movl	$0, -4(%rbp)
	jmp	.L278
.L279:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L278:
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L279
	movl	$0, -4(%rbp)
	jmp	.L280
.L281:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L280:
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L281
	movl	$0, -4(%rbp)
	jmp	.L282
.L283:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L282:
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L283
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L284
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L284:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L286
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L286
.L277:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L287:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L288:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	remove@PLT
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	remove@PLT
.L286:
	movl	$0, -4(%rbp)
	jmp	.L289
.L290:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L289:
	movq	-24(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L290
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L291
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L291:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L292:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L293:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L294
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L294:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L295:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	SSIFreeIndex, .-SSIFreeIndex
	.section	.rodata
.LC11:
	.string	"ok (no error)"
.LC12:
	.string	"no data, fread() failed"
.LC13:
	.string	"no such key"
	.align 8
.LC14:
	.string	"out of memory, malloc() failed"
	.align 8
.LC15:
	.string	"file not found, fopen() failed"
.LC16:
	.string	"not a SSI file? (bad magic)"
	.align 8
.LC17:
	.string	"corrupt format? unexpected data"
	.align 8
.LC18:
	.string	"no large file support for this system"
.LC19:
	.string	"failed to reposition on disk"
	.align 8
.LC20:
	.string	"failed to get file position on disk"
	.align 8
.LC21:
	.string	"no fast subseq support for this seqfile"
.LC22:
	.string	"subseq start is out of range"
.LC23:
	.string	"an argument is out of range"
.LC24:
	.string	"number of files exceeds limit"
.LC25:
	.string	"number of keys exceeds limit"
.LC26:
	.string	"an fwrite() failed"
	.align 8
.LC27:
	.string	"some problem with external sorting"
.LC28:
	.string	"unrecognized code"
	.text
	.globl	SSIErrorString
	.type	SSIErrorString, @function
SSIErrorString:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$16, -4(%rbp)
	ja	.L297
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L299(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L299(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L299:
	.long	.L298-.L299
	.long	.L300-.L299
	.long	.L301-.L299
	.long	.L302-.L299
	.long	.L303-.L299
	.long	.L304-.L299
	.long	.L305-.L299
	.long	.L306-.L299
	.long	.L307-.L299
	.long	.L308-.L299
	.long	.L309-.L299
	.long	.L310-.L299
	.long	.L311-.L299
	.long	.L312-.L299
	.long	.L313-.L299
	.long	.L314-.L299
	.long	.L315-.L299
	.text
.L298:
	leaq	.LC11(%rip), %rax
	jmp	.L316
.L300:
	leaq	.LC12(%rip), %rax
	jmp	.L316
.L301:
	leaq	.LC13(%rip), %rax
	jmp	.L316
.L302:
	leaq	.LC14(%rip), %rax
	jmp	.L316
.L303:
	leaq	.LC15(%rip), %rax
	jmp	.L316
.L304:
	leaq	.LC16(%rip), %rax
	jmp	.L316
.L305:
	leaq	.LC17(%rip), %rax
	jmp	.L316
.L306:
	leaq	.LC18(%rip), %rax
	jmp	.L316
.L307:
	leaq	.LC19(%rip), %rax
	jmp	.L316
.L308:
	leaq	.LC20(%rip), %rax
	jmp	.L316
.L309:
	leaq	.LC21(%rip), %rax
	jmp	.L316
.L310:
	leaq	.LC22(%rip), %rax
	jmp	.L316
.L311:
	leaq	.LC23(%rip), %rax
	jmp	.L316
.L312:
	leaq	.LC24(%rip), %rax
	jmp	.L316
.L313:
	leaq	.LC25(%rip), %rax
	jmp	.L316
.L314:
	leaq	.LC26(%rip), %rax
	jmp	.L316
.L315:
	leaq	.LC27(%rip), %rax
	jmp	.L316
.L297:
	leaq	.LC28(%rip), %rax
.L316:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	SSIErrorString, .-SSIErrorString
	.type	read_i16, @function
read_i16:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-10(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	$1, %rax
	je	.L318
	movl	$0, %eax
	jmp	.L320
.L318:
	movzwl	-10(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_ntoh16@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	movl	$1, %eax
.L320:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L321
	call	__stack_chk_fail@PLT
.L321:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	read_i16, .-read_i16
	.type	write_i16, @function
write_i16:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_hton16@PLT
	movw	%ax, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$1, %rax
	je	.L323
	movl	$0, %eax
	jmp	.L324
.L323:
	movl	$1, %eax
.L324:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	write_i16, .-write_i16
	.type	read_i32, @function
read_i32:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	$1, %rax
	je	.L326
	movl	$0, %eax
	jmp	.L328
.L326:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	sre_ntoh32@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L328:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L329
	call	__stack_chk_fail@PLT
.L329:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	read_i32, .-read_i32
	.type	write_i32, @function
write_i32:
.LFB29:
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
	movl	%eax, %edi
	call	sre_hton32@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$1, %rax
	je	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movl	$1, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	write_i32, .-write_i32
	.type	read_i64, @function
read_i64:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	$1, %rax
	je	.L334
	movl	$0, %eax
	jmp	.L336
.L334:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sre_ntoh64@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L336:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L337
	call	__stack_chk_fail@PLT
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	read_i64, .-read_i64
	.type	write_i64, @function
write_i64:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sre_hton64@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$1, %rax
	je	.L339
	movl	$0, %eax
	jmp	.L340
.L339:
	movl	$1, %eax
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	write_i64, .-write_i64
	.type	read_offset, @function
read_offset:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	jne	.L342
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i32
	testl	%eax, %eax
	jne	.L343
	movl	$0, %eax
	jmp	.L344
.L342:
	cmpb	$1, -12(%rbp)
	jne	.L345
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_i64
	testl	%eax, %eax
	jne	.L343
	movl	$0, %eax
	jmp	.L344
.L345:
	movl	$0, %eax
	jmp	.L344
.L343:
	movl	$1, %eax
.L344:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	read_offset, .-read_offset
	.type	write_offset, @function
write_offset:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L347
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_i32
	jmp	.L348
.L347:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L349
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_i64
	jmp	.L348
.L349:
	call	abort@PLT
.L348:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	write_offset, .-write_offset
	.section	.rodata
.LC29:
	.string	"\t\n"
	.text
	.type	parse_pkey_info, @function
parse_pkey_info:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movb	%al, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L351
	movl	$6, %eax
	jmp	.L359
.L351:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L353
	movl	$6, %eax
	jmp	.L359
.L353:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movw	%dx, 8(%rax)
	cmpb	$0, -44(%rbp)
	jne	.L354
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L355
	movl	$6, %eax
	jmp	.L359
.L355:
	movq	-56(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 24(%rax)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L356
	movl	$6, %eax
	jmp	.L359
.L356:
	movq	-56(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 40(%rax)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L358
	jmp	.L361
.L354:
	movl	$7, %eax
	jmp	.L359
.L361:
	movl	$6, %eax
	jmp	.L359
.L358:
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$0, %eax
.L359:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L360
	call	__stack_chk_fail@PLT
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	parse_pkey_info, .-parse_pkey_info
	.type	parse_skey_info, @function
parse_skey_info:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L363
	movl	$6, %eax
	jmp	.L366
.L363:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L365
	movl	$6, %eax
	jmp	.L366
.L365:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L366:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L367
	call	__stack_chk_fail@PLT
.L367:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	parse_skey_info, .-parse_skey_info
	.type	binary_search, @function
binary_search:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L369
	movl	$2, %eax
	jmp	.L370
.L369:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L371
	movl	$3, %eax
	jmp	.L370
.L371:
	movl	$0, -28(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
.L380:
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	indexfile_position
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L372
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-16(%rbp), %eax
	jmp	.L370
.L372:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L373
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
	jmp	.L370
.L373:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L382
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L376
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, %eax
	jmp	.L370
.L376:
	cmpl	$0, -12(%rbp)
	jns	.L377
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.L380
.L377:
	cmpl	$0, -12(%rbp)
	jle	.L380
	cmpl	$0, -20(%rbp)
	jne	.L379
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, %eax
	jmp	.L370
.L379:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L380
.L382:
	nop
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L370:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	binary_search, .-binary_search
	.type	indexfile_position, @function
indexfile_position:
.LFB37:
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
	movl	%ecx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L384
	movb	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	jmp	.L385
.L384:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L386
	movb	$1, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L385
.L386:
	movl	$0, %eax
	jmp	.L389
.L385:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L388
	movl	-36(%rbp), %eax
	jmp	.L389
.L388:
	movl	$0, %eax
.L389:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L390
	call	__stack_chk_fail@PLT
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	indexfile_position, .-indexfile_position
	.type	current_index_size, @function
current_index_size:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	addl	$16, %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L392
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	addl	$22, %eax
	movl	%eax, %eax
	jmp	.L393
.L392:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	addl	$14, %eax
	movl	%eax, %eax
.L393:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	64(%rax), %edx
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movzwl	52(%rax), %eax
	movzwl	%ax, %eax
	imulq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %eax
	imulq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	imulq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$66, %rax
	shrq	$20, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	current_index_size, .-current_index_size
	.section	.rodata
.LC30:
	.string	"w"
.LC31:
	.string	"%s\t%u\t%lu\t%lu\t%lu\n"
.LC32:
	.string	"%s\t%u\t%llu\t%llu\t%lu\n"
	.text
	.type	activate_external_sort, @function
activate_external_sort:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L396
	movl	$0, %eax
	jmp	.L397
.L396:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	FileExists@PLT
	testl	%eax, %eax
	je	.L398
	movl	$1, %eax
	jmp	.L397
.L398:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	FileExists@PLT
	testl	%eax, %eax
	je	.L399
	movl	$1, %eax
	jmp	.L397
.L399:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L400
	movl	$1, %eax
	jmp	.L397
.L400:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L401
	movl	$1, %eax
	jmp	.L397
.L401:
	movl	$0, -4(%rbp)
	jmp	.L402
.L405:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L403
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	48(%rax), %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	40(%rax), %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	24(%rax), %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	subq	$8, %rsp
	pushq	%rdi
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L404
.L403:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	48(%rax), %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movq	56(%rax), %r8
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%r8, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	subq	$8, %rsp
	pushq	%r9
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L404:
	addl	$1, -4(%rbp)
.L402:
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L405
	movl	$0, -4(%rbp)
	jmp	.L406
.L407:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L406:
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L407
	movl	$0, -4(%rbp)
	jmp	.L408
.L409:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L408:
	movq	-24(%rbp), %rax
	movl	68(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L409
	movl	$0, -4(%rbp)
	jmp	.L410
.L411:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L410:
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L411
	movl	$0, -4(%rbp)
	jmp	.L412
.L413:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L412:
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L413
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L414
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L414:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L415
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L415:
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$0, %eax
.L397:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	activate_external_sort, .-activate_external_sort
	.section	.rodata
	.align 8
.LC33:
	.string	"failed to turn external sorting on."
	.text
	.globl	SSIForceExternalSort
	.type	SSIForceExternalSort, @function
SSIForceExternalSort:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	activate_external_sort
	testl	%eax, %eax
	je	.L418
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L418:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	SSIForceExternalSort, .-SSIForceExternalSort
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
