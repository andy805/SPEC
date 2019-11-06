	.file	"file.c"
	.text
	.section	.rodata
.LC0:
	.string	"file.c"
	.text
	.globl	FileDirname
	.type	FileDirname, @function
FileDirname:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	%rax, %rdx
	movl	$73, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L4
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	jmp	.L5
.L4:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L6
	movq	-8(%rbp), %rax
	movb	$46, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movb	$47, (%rax)
	movl	$1, -20(%rbp)
.L5:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FileDirname, .-FileDirname
	.globl	FileTail
	.type	FileTail, @function
FileTail:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, %rdx
	movl	$105, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L10
.L9:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L10:
	cmpl	$0, -44(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L11:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FileTail, .-FileTail
	.globl	FileSameDirectory
	.type	FileSameDirectory, @function
FileSameDirectory:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	FileDirname
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	FileTail
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	movl	$0, -28(%rbp)
.L14:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FileConcat
	movq	%rax, -24(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L15
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	$0, -24(%rbp)
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FileSameDirectory, .-FileSameDirectory
	.section	.rodata
.LC1:
	.string	"%s%c%s"
	.text
	.globl	FileConcat
	.type	FileConcat, @function
FileConcat:
.LFB8:
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
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	movl	$170, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L18
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L19
.L18:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$47, %ecx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L19:
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FileConcat, .-FileConcat
	.section	.rodata
.LC2:
	.string	"%s.%s"
	.text
	.globl	FileAddSuffix
	.type	FileAddSuffix, @function
FileAddSuffix:
.LFB9:
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
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	movl	$190, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FileAddSuffix, .-FileAddSuffix
	.section	.rodata
.LC3:
	.string	":"
.LC4:
	.string	"r"
	.text
	.globl	EnvFileOpen
	.type	EnvFileOpen, @function
EnvFileOpen:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1112, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)
	movq	%rsi, -1104(%rbp)
	movq	%rdx, -1112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -1104(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L33
.L24:
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, -1064(%rbp)
	cmpq	$0, -1064(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L33
.L26:
	movq	$0, -1080(%rbp)
	movq	-1064(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -1072(%rbp)
	jmp	.L27
.L31:
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ebx
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	%ebx, %eax
	addl	$2, %eax
	cmpl	$1024, %eax
	jle	.L28
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L33
.L28:
	movq	-1096(%rbp), %rcx
	movq	-1072(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %r8
	movl	$47, %ecx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-1056(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	jne	.L35
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1072(%rbp)
.L27:
	cmpq	$0, -1072(%rbp)
	jne	.L31
	jmp	.L30
.L35:
	nop
.L30:
	cmpq	$0, -1112(%rbp)
	je	.L32
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-1112(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-1080(%rbp), %rax
.L33:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	addq	$1112, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	EnvFileOpen, .-EnvFileOpen
	.globl	FileExists
	.type	FileExists, @function
FileExists:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FileExists, .-FileExists
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
