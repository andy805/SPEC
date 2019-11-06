	.file	"sqio.c"
	.text
	.section	.rodata
.LC0:
	.string	"ABCDEFGHIKLMNPQRSTVWXYZ*"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	aminos, @object
	.size	aminos, 8
aminos:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"ACGTUN"
	.section	.data.rel.local
	.align 8
	.type	primenuc, @object
	.size	primenuc, 8
primenuc:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"EFIPQZ"
	.section	.data.rel.local
	.align 8
	.type	protonly, @object
	.size	protonly, 8
protonly:
	.quad	.LC2
	.text
	.globl	SeqfileOpen
	.type	SeqfileOpen, @function
SeqfileOpen:
.LFB5:
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
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	seqfile_open
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SeqfileOpen, .-SeqfileOpen
	.globl	SeqfileOpenForIndexing
	.type	SeqfileOpenForIndexing, @function
SeqfileOpenForIndexing:
.LFB6:
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
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	seqfile_open
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SeqfileOpenForIndexing, .-SeqfileOpenForIndexing
	.section	.rodata
.LC3:
	.string	"sqio.c"
.LC4:
	.string	"-"
.LC5:
	.string	"[STDIN]"
.LC6:
	.string	"r"
	.align 8
.LC7:
	.string	"Can't autodetect sequence file format from a stdin or gzip pipe"
	.align 8
.LC8:
	.string	"Can't determine format of sequence file %s"
	.align 8
.LC9:
	.string	"Failed to read any alignment data from file %s"
	.text
	.type	seqfile_open, @function
seqfile_open:
.LFB7:
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
	movl	$176, %edx
	movl	$101, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 92(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 100(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	stdin(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 148(%rax)
	movl	$-1, %esi
	leaq	.LC5(%rip), %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EnvFileOpen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L7:
	cmpl	$0, -28(%rbp)
	jne	.L10
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	je	.L11
	movq	-8(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	je	.L12
.L11:
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SeqfileFormat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L10:
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	cmpl	$100, -28(%rbp)
	jle	.L13
	movl	$64, %edx
	movl	$190, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	152(%rdx), %edx
	movl	%edx, 52(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	148(%rdx), %edx
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	144(%rdx), %edx
	movl	%edx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	16(%rdx), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	MSAFileRead@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L14:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movl	$0, 352(%rax)
	movq	-8(%rbp), %rax
	jmp	.L9
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	seqfile_open, .-seqfile_open
	.section	.rodata
	.align 8
.LC10:
	.string	"SeqfilePosition() failed: in a nonrewindable data file or stream"
	.align 8
.LC11:
	.string	"SSISetFilePosition failed, but that shouldn't happen."
	.text
	.globl	SeqfilePosition
	.type	SeqfilePosition, @function
SeqfilePosition:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	movl	144(%rax), %eax
	cmpl	$100, %eax
	jle	.L17
.L16:
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition@PLT
	testl	%eax, %eax
	je	.L18
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SeqfilePosition, .-SeqfilePosition
	.section	.rodata
	.align 8
.LC12:
	.string	"SeqfileRewind() failed: in a nonrewindable data file or stream"
	.text
	.globl	SeqfileRewind
	.type	SeqfileRewind, @function
SeqfileRewind:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movq	-8(%rbp), %rax
	movl	148(%rax), %eax
	testl	%eax, %eax
	je	.L21
.L20:
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	SeqfileRewind, .-SeqfileRewind
	.globl	SeqfileLineParameters
	.type	SeqfileLineParameters, @function
SeqfileLineParameters:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jle	.L23
	movq	-8(%rbp), %rax
	movl	96(%rax), %edx
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	jle	.L23
	movq	-8(%rbp), %rax
	movl	108(%rax), %edx
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, %edx
	jne	.L23
	movq	-8(%rbp), %rax
	movl	100(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L23:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L24:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	SeqfileLineParameters, .-SeqfileLineParameters
	.globl	SeqfileClose
	.type	SeqfileClose, @function
SeqfileClose:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	MSAFree@PLT
.L27:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L28:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L29
.L26:
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L29:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L30:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SeqfileClose, .-SeqfileClose
	.section	.rodata
.LC13:
	.string	"SSIGetFilePosition() failed"
	.text
	.type	SeqfileGetLine, @function
SeqfileGetLine:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L33
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSIGetFilePosition@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L33:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	32(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sre_fgets@PLT
	testq	%rax, %rax
	jne	.L34
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	$0, (%rax)
.L34:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SeqfileGetLine, .-SeqfileGetLine
	.globl	FreeSequence
	.type	FreeSequence, @function
FreeSequence:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L36:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L37
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L37:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L39
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FreeSequence, .-FreeSequence
	.section	.rodata
.LC14:
	.string	" "
	.align 8
.LC15:
	.string	"Invalid flag %d to SetSeqinfoString()"
	.text
	.globl	SetSeqinfoString
	.type	SetSeqinfoString, @function
SetSeqinfoString:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L42
.L44:
	addq	$1, -32(%rbp)
.L43:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L44
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L45
.L48:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L72
	subl	$1, -8(%rbp)
.L45:
	cmpl	$0, -8(%rbp)
	jns	.L48
	jmp	.L47
.L72:
	nop
.L47:
	movl	-8(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-36(%rbp), %eax
	cmpl	$8, %eax
	je	.L50
	cmpl	$8, %eax
	jg	.L51
	cmpl	$2, %eax
	je	.L52
	cmpl	$4, %eax
	je	.L53
	cmpl	$1, %eax
	je	.L54
	jmp	.L49
.L51:
	cmpl	$32, %eax
	je	.L55
	cmpl	$256, %eax
	je	.L56
	cmpl	$16, %eax
	je	.L57
	jmp	.L49
.L54:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L73
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-24(%rbp), %rax
	movb	$0, 67(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L52:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L74
	movq	-24(%rbp), %rax
	leaq	68(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-24(%rbp), %rax
	movb	$0, 131(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L74
.L53:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L75
	movq	-24(%rbp), %rax
	leaq	132(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-24(%rbp), %rax
	movb	$0, 195(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L75
.L50:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L76
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	addq	$196, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	cmpl	$125, -4(%rbp)
	jg	.L65
	movl	$127, %eax
	subl	-4(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	196(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rcx, %rdi
	call	strncat@PLT
	addl	$1, -4(%rbp)
	movl	$127, %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	196(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncat@PLT
	jmp	.L65
.L63:
	movq	-24(%rbp), %rax
	leaq	196(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
.L65:
	movq	-24(%rbp), %rax
	movb	$0, 323(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L76
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L42
.L66:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 328(%rax)
	movq	-24(%rbp), %rax
	movl	328(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L77
.L55:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L42
.L68:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 332(%rax)
	movq	-24(%rbp), %rax
	movl	332(%rax), %eax
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L78
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L42
.L70:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 336(%rax)
	movq	-24(%rbp), %rax
	movl	336(%rax), %eax
	testl	%eax, %eax
	je	.L79
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L79
.L49:
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L59
.L73:
	nop
	jmp	.L59
.L74:
	nop
	jmp	.L59
.L75:
	nop
	jmp	.L59
.L76:
	nop
	jmp	.L59
.L77:
	nop
	jmp	.L59
.L78:
	nop
	jmp	.L59
.L79:
	nop
.L59:
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SetSeqinfoString, .-SetSeqinfoString
	.globl	SeqinfoCopy
	.type	SeqinfoCopy, @function
SeqinfoCopy:
.LFB15:
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
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L81
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L81:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L82
	movq	-16(%rbp), %rax
	leaq	68(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L82:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	leaq	132(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$132, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L83:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	196(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$196, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L84:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L85
	movq	-16(%rbp), %rax
	movl	324(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 324(%rax)
.L85:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L86
	movq	-16(%rbp), %rax
	movl	328(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 328(%rax)
.L86:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L87
	movq	-16(%rbp), %rax
	movl	332(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 332(%rax)
.L87:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rax
	movl	336(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 336(%rax)
.L88:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movl	340(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 340(%rax)
.L89:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 344(%rax)
.L90:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 352(%rax)
.L92:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	SeqinfoCopy, .-SeqinfoCopy
	.globl	ToDNA
	.type	ToDNA, @function
ToDNA:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L94
.L97:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$85, %al
	jne	.L95
	movq	-8(%rbp), %rax
	movb	$84, (%rax)
	jmp	.L96
.L95:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	jne	.L96
	movq	-8(%rbp), %rax
	movb	$116, (%rax)
.L96:
	addq	$1, -8(%rbp)
.L94:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L97
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ToDNA, .-ToDNA
	.globl	ToRNA
	.type	ToRNA, @function
ToRNA:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L99
.L102:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L100
	movq	-8(%rbp), %rax
	movb	$85, (%rax)
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$116, %al
	jne	.L101
	movq	-8(%rbp), %rax
	movb	$117, (%rax)
.L101:
	addq	$1, -8(%rbp)
.L99:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L102
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ToRNA, .-ToRNA
	.section	.rodata
	.align 8
.LC16:
	.string	"ACGTUNRYMKSWHBVDacgtunrymkswhbvd"
	.text
	.globl	ToIUPAC
	.type	ToIUPAC, @function
ToIUPAC:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L109
	jmp	.L105
.L107:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L106
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L106
	movq	-8(%rbp), %rax
	movb	$78, (%rax)
.L106:
	addq	$1, -8(%rbp)
.L105:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L107
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L110
	movq	-8(%rbp), %rax
	movb	$78, (%rax)
.L110:
	addq	$1, -8(%rbp)
.L109:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L111
.L112:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ToIUPAC, .-ToIUPAC
	.type	addseq, @function
addseq:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$-1, %eax
	jne	.L114
	movq	-48(%rbp), %rax
	movl	136(%rax), %edx
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	140(%rax), %eax
	cmpl	%eax, %edx
	jle	.L115
	movq	-48(%rbp), %rax
	movl	140(%rax), %edx
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	movl	$500, %ecx
	cmpl	$500, %eax
	cmovl	%ecx, %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 140(%rax)
	movq	-48(%rbp), %rax
	movl	140(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$524, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-48(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	140(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L115:
	movq	-48(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L116
.L118:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L117
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L117
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L117:
	addq	$1, -40(%rbp)
.L116:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L118
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 136(%rax)
	jmp	.L128
.L114:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L120
.L122:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L121
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L121
	addl	$1, -24(%rbp)
.L121:
	addq	$1, -40(%rbp)
.L120:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L122
	movq	-48(%rbp), %rax
	movl	136(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 136(%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L123
	movq	-48(%rbp), %rax
	movl	92(%rax), %eax
	testl	%eax, %eax
	jle	.L124
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jle	.L125
	movq	-48(%rbp), %rax
	movl	92(%rax), %edx
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	%eax, %edx
	je	.L125
	movq	-48(%rbp), %rax
	movl	$0, 88(%rax)
	jmp	.L124
.L125:
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$-1, %eax
	jne	.L124
	movq	-48(%rbp), %rax
	movl	92(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 88(%rax)
.L124:
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 92(%rax)
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jle	.L123
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 96(%rax)
.L123:
	movq	-48(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L128
	movq	-48(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jle	.L126
	movq	-48(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	jle	.L127
	movq	-48(%rbp), %rax
	movl	104(%rax), %edx
	movq	-48(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	%eax, %edx
	je	.L127
	movq	-48(%rbp), %rax
	movl	$0, 100(%rax)
	jmp	.L126
.L127:
	movq	-48(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	$-1, %eax
	jne	.L126
	movq	-48(%rbp), %rax
	movl	104(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 100(%rax)
.L126:
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 104(%rax)
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L128
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 108(%rax)
.L128:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	addseq, .-addseq
	.type	readLoop, @function
readLoop:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-40(%rbp), %rax
	movl	104(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 92(%rax)
	cmpl	$0, -20(%rbp)
	je	.L130
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L131
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	40(%rax), %rax
	movq	%rax, 72(%rcx)
	movq	%rdx, 80(%rcx)
.L131:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addseq
	jmp	.L136
.L130:
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L136
	movq	-40(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSIGetFilePosition@PLT
	testl	%eax, %eax
	je	.L136
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L136:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L133
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L133
	movl	$1, -12(%rbp)
.L133:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	orl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L134
	cmpl	$0, -12(%rbp)
	jne	.L135
.L134:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addseq
.L135:
	cmpl	$0, -12(%rbp)
	je	.L136
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L137
	call	__stack_chk_fail@PLT
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	readLoop, .-readLoop
	.section	.rodata
.LC17:
	.string	"///"
.LC18:
	.string	"ENTRY"
	.text
	.type	endPIR, @function
endPIR:
.LFB21:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$3, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L139
	movq	-8(%rbp), %rax
	movl	$5, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L140
.L139:
	movl	$1, %eax
	jmp	.L141
.L140:
	movl	$0, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	endPIR, .-endPIR
	.section	.rodata
.LC19:
	.string	"\n\t "
.LC20:
	.string	"TITLE"
.LC21:
	.string	"ACCESSION"
.LC22:
	.string	" \t\n"
.LC23:
	.string	"SEQUENCE"
	.text
	.type	readPIR, @function
readPIR:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L143
.L145:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L143:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L144
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$5, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L145
.L144:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L156
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L148
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	40(%rax), %rax
	movq	%rax, 56(%rcx)
	movq	%rdx, 64(%rcx)
.L148:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$15, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L153
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L153:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L150
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$5, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L150
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	15(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	jmp	.L151
.L150:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L151
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$9, %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L151
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$15, %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L151
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L151:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L152
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$8, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L153
.L152:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endPIR(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$1, 328(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 332(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 336(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	orl	$304, %edx
	movl	%edx, (%rax)
	jmp	.L154
.L155:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L154:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L142
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$5, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L155
	jmp	.L142
.L156:
	nop
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	readPIR, .-readPIR
	.type	endIG, @function
endIG:
.LFB23:
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
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L158
	movq	-8(%rbp), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L159
.L158:
	movl	$1, %eax
	jmp	.L161
.L159:
	movl	$0, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	endIG, .-endIG
	.type	readIG, @function
readIG:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.L164:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L163
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L164
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L164
.L163:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L167
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L166
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L166:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endIG(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	jmp	.L167
.L169:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L167:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L170
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L169
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L169
.L170:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	readIG, .-readIG
	.section	.rodata
.LC24:
	.string	"//"
	.text
	.type	endStrider, @function
endStrider:
.LFB25:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	endStrider, .-endStrider
	.section	.rodata
.LC25:
	.string	"; DNA sequence"
.LC26:
	.string	",\n\t "
	.text
	.type	readStrider, @function
readStrider:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L174
.L177:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$14, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L175
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$16, %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L175
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L175:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L174:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L176
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L177
.L176:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L179
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endStrider(%rip), %rsi
	movl	$1, %edi
	call	readLoop
	jmp	.L179
.L181:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L179:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L182
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L181
.L182:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	readStrider, .-readStrider
	.section	.rodata
.LC27:
	.string	"LOCUS"
	.text
	.type	endGB, @function
endGB:
.LFB27:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L184
	movq	-8(%rbp), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	cmpq	%rax, -8(%rbp)
	jne	.L185
.L184:
	movl	$1, %eax
	jmp	.L187
.L185:
	movl	$0, %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	endGB, .-endGB
	.section	.rodata
.LC28:
	.string	"DEFINITION"
.LC29:
	.string	"\n"
.LC30:
	.string	"VERSION"
.LC31:
	.string	"ORIGIN"
.LC32:
	.string	"LOCUS  "
	.text
	.type	readGenBank, @function
readGenBank:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L189
.L190:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L189:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$5, %edx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L190
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L191
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	40(%rax), %rax
	movq	%rax, 56(%rcx)
	movq	%rdx, 64(%rcx)
.L191:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$12, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L192:
	movl	$0, -12(%rbp)
	jmp	.L193
.L203:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L194
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L194
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$12, %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L195
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L195:
	movl	$1, -12(%rbp)
	jmp	.L193
.L194:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L196
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L196
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$12, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L197
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L197:
	movl	$0, -12(%rbp)
	jmp	.L193
.L196:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L198
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L198
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$12, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L199:
	movl	$0, -12(%rbp)
	jmp	.L193
.L198:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$6, %edx
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L210
	cmpl	$0, -12(%rbp)
	je	.L193
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L193:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L203
	jmp	.L202
.L210:
	nop
.L202:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endGB(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$1, 328(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 332(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 336(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	orl	$304, %edx
	movl	%edx, (%rax)
	jmp	.L204
.L206:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L204:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L207
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L206
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L206
	jmp	.L207
.L209:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L207:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L211
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L209
.L211:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	readGenBank, .-readGenBank
	.type	endGCGdata, @function
endGCGdata:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	endGCGdata, .-endGCGdata
	.section	.rodata
	.align 8
.LC33:
	.string	">>>>([^ ]+) .+2BIT +Len: ([0-9]+)"
	.align 8
.LC34:
	.string	">>>>([^ ]+) .+ASCII +Len: [0-9]+"
.LC35:
	.string	"bogus GCGdata format? %s"
.LC36:
	.string	"malloc failed"
.LC37:
	.string	"fread failed"
	.text
	.type	readGCGdata, @function
readGCGdata:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	call	Strparse@PLT
	testl	%eax, %eax
	je	.L215
	movl	$1, -8(%rbp)
	movq	8+sqd_parse(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	movq	16+sqd_parse(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	jmp	.L216
.L215:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	call	Strparse@PLT
	testl	%eax, %eax
	je	.L217
	movq	8+sqd_parse(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	jmp	.L216
.L217:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L216:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	cmpl	$0, -8(%rbp)
	je	.L218
	movq	-24(%rbp), %rax
	movl	140(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L219
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 140(%rax)
	movq	-24(%rbp), %rax
	movl	140(%rax), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L219
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L219:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	addl	$3, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	addl	$3, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cltq
	cmpq	%rax, %rcx
	jnb	.L220
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L220:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 136(%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	GCGBinaryToSequence
	jmp	.L222
.L218:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endGCGdata(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	jmp	.L222
.L224:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L222:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L225
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L224
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L224
.L225:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	readGCGdata, .-readGCGdata
	.type	endPearson, @function
endPearson:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	endPearson, .-endPearson
	.section	.rodata
	.align 8
.LC38:
	.string	"File %s does not appear to be in FASTA format at line %d.\nYou may want to specify the file format on the command line.\nUsually this is done with an option --informat <fmt>.\n"
	.text
	.type	readPearson, @function
readPearson:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L229
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	40(%rax), %rax
	movq	%rax, 56(%rcx)
	movq	%rdx, 64(%rcx)
.L229:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	je	.L230
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L230:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L231
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L231:
	leaq	.LC29(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L232
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L232:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endPearson(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	jmp	.L233
.L235:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L233:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L236
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L235
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L235
.L236:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	readPearson, .-readPearson
	.section	.rodata
.LC39:
	.string	"     "
	.text
	.type	endEMBL, @function
endEMBL:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$5, %edx
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	endEMBL, .-endEMBL
	.section	.rodata
.LC40:
	.string	"ID  "
.LC41:
	.string	"AC  "
.LC42:
	.string	";  \t\n"
.LC43:
	.string	"DE  "
.LC44:
	.string	"SQ"
	.text
	.type	readEMBL, @function
readEMBL:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L240
.L242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L240:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L241
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L242
.L241:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	js	.L243
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	40(%rax), %rax
	movq	%rax, 56(%rcx)
	movq	%rdx, 64(%rcx)
.L243:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$5, %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L249
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L249:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L245
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L245
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$5, %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L247
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	jmp	.L247
.L245:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L247
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L247
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$5, %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L247
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L247:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L248
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$2, %edx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L249
.L248:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endEMBL(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$-1, %eax
	jne	.L250
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L251
.L253:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L252
	movq	-8(%rbp), %rax
	movb	$78, (%rax)
.L252:
	addq	$1, -8(%rbp)
.L251:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L253
.L250:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$1, 328(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 332(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	136(%rdx), %edx
	movl	%edx, 336(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	orl	$304, %edx
	movl	%edx, (%rax)
	jmp	.L254
.L256:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L254:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L257
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$4, %edx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L256
.L257:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	readEMBL, .-readEMBL
	.type	endZuker, @function
endZuker:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	endZuker, .-endZuker
	.type	readZuker, @function
readZuker:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	$6, %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L261
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L261:
	leaq	.LC29(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L262
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L262:
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	endZuker(%rip), %rsi
	movl	$0, %edi
	call	readLoop
	jmp	.L263
.L264:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
.L263:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%dl
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	sete	%al
	andl	%edx, %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.L264
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	readZuker, .-readZuker
	.section	.rodata
.LC45:
	.string	"  Length: "
.LC46:
	.string	".."
	.text
	.type	readUWGCG, @function
readUWGCG:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L266
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L267
.L266:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L267
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.L267:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L270
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L270:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	cmpl	$0, -20(%rbp)
	jne	.L269
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addseq
.L269:
	cmpl	$0, -20(%rbp)
	je	.L270
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	readUWGCG, .-readUWGCG
	.globl	ReadSeq
	.type	ReadSeq, @function
ReadSeq:
.LFB38:
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
	movq	%rcx, -48(%rbp)
	movl	$0, squid_errno(%rip)
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	cmpl	$100, %eax
	jle	.L272
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %edx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edx
	jl	.L273
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	MSAFree@PLT
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	MSAFileRead@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L274
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	$0, 352(%rax)
.L273:
	movq	-24(%rbp), %rax
	leaq	112(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeDealignedString@PLT
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 136(%rax)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L276:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L277
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L277
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L277:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L278
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L278
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
.L278:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L279
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L279
	movq	-48(%rbp), %rax
	leaq	344(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeDealignedString@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L279:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-48(%rbp), %rax
	leaq	352(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeDealignedString@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L280:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movl	352(%rax), %edx
	addl	$1, %edx
	movl	%edx, 352(%rax)
	jmp	.L281
.L272:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L282
	movl	$0, %eax
	jmp	.L275
.L282:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$-1, %eax
	jne	.L283
	movl	$1, %esi
	movl	$501, %edi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	$500, 140(%rax)
	jmp	.L284
.L283:
	movq	-24(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 140(%rax)
.L284:
	movq	-24(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	cmpl	$16, %eax
	ja	.L285
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L287(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L287(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L287:
	.long	.L285-.L287
	.long	.L286-.L287
	.long	.L288-.L287
	.long	.L285-.L287
	.long	.L289-.L287
	.long	.L290-.L287
	.long	.L291-.L287
	.long	.L292-.L287
	.long	.L293-.L287
	.long	.L285-.L287
	.long	.L285-.L287
	.long	.L285-.L287
	.long	.L294-.L287
	.long	.L285-.L287
	.long	.L285-.L287
	.long	.L285-.L287
	.long	.L295-.L287
	.text
.L286:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readIG
	jmp	.L296
.L291:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readStrider
	jmp	.L296
.L288:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readGenBank
	jmp	.L296
.L292:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readPearson
	jmp	.L296
.L289:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readEMBL
	jmp	.L296
.L293:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readZuker
	jmp	.L296
.L294:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readPIR
	jmp	.L296
.L295:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readGCGdata
	jmp	.L296
.L299:
	nop
.L290:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L297
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	readUWGCG
.L297:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileGetLine
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L299
	jmp	.L296
.L285:
	movl	$5, squid_errno(%rip)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L275
.L296:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L281
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L281:
	movq	-24(%rbp), %rax
	movl	136(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 324(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	orl	$64, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	squid_errno(%rip), %eax
	testl	%eax, %eax
	jne	.L298
	movl	$1, %eax
	jmp	.L275
.L298:
	movl	$0, %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ReadSeq, .-ReadSeq
	.section	.rodata
.LC47:
	.string	">>>>"
.LC48:
	.string	"Len: "
.LC49:
	.string	"!!AA_SEQUENCE"
.LC50:
	.string	"!!NA_SEQUENCE"
.LC51:
	.string	"# STOCKHOLM 1."
.LC52:
	.string	"CLUSTAL"
.LC53:
	.string	"multiple sequence alignment"
.LC54:
	.string	"!!AA_MULTIPLE_ALIGNMENT"
.LC55:
	.string	"!!NA_MULTIPLE_ALIGNMENT"
.LC56:
	.string	"#=AU"
.LC57:
	.string	"#=ID"
.LC58:
	.string	"#=AC"
.LC59:
	.string	"#=DE"
.LC60:
	.string	"#=GA"
.LC61:
	.string	"#=TC"
.LC62:
	.string	"#=NC"
.LC63:
	.string	"#=SQ"
.LC64:
	.string	"#=SS"
.LC65:
	.string	"#=CS"
.LC66:
	.string	"#=RF"
.LC67:
	.string	"ENTRY "
.LC68:
	.string	"MSF:"
.LC69:
	.string	"Check:"
.LC70:
	.string	" Check: "
.LC71:
	.string	"LOCUS "
.LC72:
	.string	"ORIGIN "
.LC73:
	.string	"ID   "
.LC74:
	.string	"SQ   "
.LC75:
	.string	"#%"
	.align 8
.LC76:
	.string	"Sequence file contains no data"
	.text
	.globl	SeqfileFormat
	.type	SeqfileFormat, @function
SeqfileFormat:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -60(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L301
.L329:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	IsBlankline@PLT
	testl	%eax, %eax
	je	.L302
	jmp	.L301
.L302:
	cmpl	$0, -56(%rbp)
	jne	.L303
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L304
	movq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L304
	movl	$16, -60(%rbp)
	jmp	.L305
.L304:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L306
	movl	$7, -60(%rbp)
	jmp	.L305
.L306:
	movq	-48(%rbp), %rax
	movl	$13, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L307
	movq	-48(%rbp), %rax
	movl	$13, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L308
.L307:
	movl	$5, -60(%rbp)
	jmp	.L305
.L308:
	movq	-48(%rbp), %rax
	movl	$14, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L309
	movl	$101, -60(%rbp)
	jmp	.L305
.L309:
	movq	-48(%rbp), %rax
	movl	$7, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L310
	movq	-48(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L310
	movl	$104, -60(%rbp)
	jmp	.L305
.L310:
	movq	-48(%rbp), %rax
	movl	$23, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L311
	movq	-48(%rbp), %rax
	movl	$23, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L312
.L311:
	movl	$103, -60(%rbp)
	jmp	.L305
.L312:
	movq	-48(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L313
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L313
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	je	.L313
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	je	.L313
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$106, -60(%rbp)
	jmp	.L305
.L313:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L303:
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L314
	movq	-48(%rbp), %rax
	movl	$4, %edx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L315
.L314:
	movl	$102, -60(%rbp)
	jmp	.L305
.L315:
	movq	-48(%rbp), %rax
	movl	$3, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L316
	movq	-48(%rbp), %rax
	movl	$6, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L317
.L316:
	movl	$12, -60(%rbp)
	jmp	.L305
.L317:
	movq	-48(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L318
	movq	-48(%rbp), %rax
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L318
	movq	-48(%rbp), %rax
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L318
	movl	$103, -60(%rbp)
	jmp	.L305
.L318:
	movq	-48(%rbp), %rax
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L319
	movq	-48(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L319
	movl	$5, -60(%rbp)
	jmp	.L305
.L319:
	movq	-48(%rbp), %rax
	movl	$6, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L320
	movq	-48(%rbp), %rax
	movl	$6, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L321
.L320:
	movl	$2, -60(%rbp)
	jmp	.L305
.L321:
	movq	-48(%rbp), %rax
	movl	$5, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L322
	movq	-48(%rbp), %rax
	movl	$5, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L323
.L322:
	movl	$4, -60(%rbp)
	jmp	.L305
.L323:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L324
	jmp	.L301
.L324:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC75(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L325
	jmp	.L301
.L325:
	leaq	-40(%rbp), %rax
	movl	$0, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L326
	movl	$1, -52(%rbp)
.L326:
	cmpq	$0, -16(%rbp)
	je	.L327
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	Seqtype
	testl	%eax, %eax
	jne	.L327
	movl	$1, -52(%rbp)
.L327:
	addl	$1, -56(%rbp)
	cmpl	$300, -56(%rbp)
	je	.L335
.L301:
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sre_fgets@PLT
	testq	%rax, %rax
	jne	.L329
	jmp	.L328
.L335:
	nop
.L328:
	cmpl	$0, -56(%rbp)
	jne	.L330
	leaq	.LC76(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L330:
	cmpl	$1, -52(%rbp)
	jne	.L331
	movl	$0, -60(%rbp)
	jmp	.L305
.L331:
	movl	$102, -60(%rbp)
.L305:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L332
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L332:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L334
	call	__stack_chk_fail@PLT
.L334:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	SeqfileFormat, .-SeqfileFormat
	.globl	GCGBinaryToSequence
	.type	GCGBinaryToSequence, @function
GCGBinaryToSequence:
.LFB40:
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
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -12(%rbp)
	jmp	.L337
.L346:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movl	-12(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -4(%rbp)
	movl	$3, -8(%rbp)
	jmp	.L338
.L345:
	movsbl	-13(%rbp), %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L340
	cmpl	$1, %eax
	jg	.L341
	testl	%eax, %eax
	je	.L342
	jmp	.L339
.L341:
	cmpl	$2, %eax
	je	.L343
	cmpl	$3, %eax
	je	.L344
	jmp	.L339
.L342:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$67, (%rax)
	jmp	.L339
.L340:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$84, (%rax)
	jmp	.L339
.L343:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$65, (%rax)
	jmp	.L339
.L344:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$71, (%rax)
	nop
.L339:
	sarb	$2, -13(%rbp)
	subl	$1, -8(%rbp)
.L338:
	cmpl	$0, -8(%rbp)
	jns	.L345
	subl	$1, -12(%rbp)
.L337:
	cmpl	$0, -12(%rbp)
	jns	.L346
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	GCGBinaryToSequence, .-GCGBinaryToSequence
	.globl	GCGchecksum
	.type	GCGchecksum, @function
GCGchecksum:
.LFB41:
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
	movl	%esi, -44(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L349
.L350:
	movl	-24(%rbp), %ecx
	movl	$-1883757585, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$57, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	1(%rax), %ebx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	imull	%eax, %ebx
	movl	%ebx, %edx
	movl	-20(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$1759218605, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	addl	$1, -24(%rbp)
.L349:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L350
	movl	-20(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	GCGchecksum, .-GCGchecksum
	.globl	GCGMultchecksum
	.type	GCGMultchecksum, @function
GCGMultchecksum:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L353
.L354:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	GCGchecksum
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$1759218605, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$12, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	imull	$10000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L353:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L354
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	GCGMultchecksum, .-GCGMultchecksum
	.globl	Seqtype
	.type	Seqtype, @function
Seqtype:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L357
.L366:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	movb	%al, -29(%rbp)
	cmpb	$32, -29(%rbp)
	je	.L358
	cmpb	$46, -29(%rbp)
	je	.L358
	cmpb	$95, -29(%rbp)
	je	.L358
	cmpb	$45, -29(%rbp)
	je	.L358
	cmpb	$126, -29(%rbp)
	je	.L358
	movsbl	-29(%rbp), %edx
	movq	protonly(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L359
	addl	$1, -24(%rbp)
	jmp	.L360
.L359:
	movsbl	-29(%rbp), %edx
	movq	primenuc(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L361
	addl	$1, -12(%rbp)
	cmpb	$84, -29(%rbp)
	jne	.L362
	addl	$1, -20(%rbp)
	jmp	.L360
.L362:
	cmpb	$85, -29(%rbp)
	jne	.L360
	addl	$1, -16(%rbp)
	jmp	.L360
.L361:
	movsbl	-29(%rbp), %edx
	movq	aminos(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L364
	addl	$1, -8(%rbp)
	jmp	.L360
.L364:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbq	-29(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L360
	addl	$1, -4(%rbp)
.L360:
	addl	$1, -28(%rbp)
.L358:
	addq	$1, -40(%rbp)
.L357:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L365
	cmpl	$299, -28(%rbp)
	jle	.L366
.L365:
	cmpl	$0, -4(%rbp)
	jle	.L367
	movl	$0, %eax
	jmp	.L368
.L367:
	cmpl	$0, -24(%rbp)
	jle	.L369
	movl	$3, %eax
	jmp	.L368
.L369:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L370
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L371
	movl	$2, %eax
	jmp	.L368
.L371:
	movl	$1, %eax
	jmp	.L368
.L370:
	movl	$3, %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Seqtype, .-Seqtype
	.globl	GuessAlignmentSeqtype
	.type	GuessAlignmentSeqtype, @function
GuessAlignmentSeqtype:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L373
.L379:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Seqtype
	cmpl	$2, %eax
	je	.L375
	cmpl	$3, %eax
	je	.L376
	cmpl	$1, %eax
	je	.L377
	jmp	.L386
.L375:
	addl	$1, -16(%rbp)
	jmp	.L378
.L377:
	addl	$1, -12(%rbp)
	jmp	.L378
.L376:
	addl	$1, -8(%rbp)
	jmp	.L378
.L386:
	addl	$1, -4(%rbp)
.L378:
	addl	$1, -20(%rbp)
.L373:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L379
	cmpl	$0, -4(%rbp)
	je	.L380
	movl	$0, %eax
	jmp	.L381
.L380:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L382
	movl	$3, %eax
	jmp	.L381
.L382:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L383
	movl	$1, %eax
	jmp	.L381
.L383:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L384
	movl	$2, %eax
	jmp	.L381
.L384:
	cmpl	$0, -8(%rbp)
	jne	.L385
	movl	$2, %eax
	jmp	.L381
.L385:
	movl	$3, %eax
.L381:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	GuessAlignmentSeqtype, .-GuessAlignmentSeqtype
	.section	.rodata
.LC77:
	.string	""
.LC78:
	.string	">%s %s\n"
.LC79:
	.string	"%s\n"
	.text
	.globl	WriteSimpleFASTA
	.type	WriteSimpleFASTA, @function
WriteSimpleFASTA:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -84(%rbp)
	movb	$0, -20(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L388
	movq	-128(%rbp), %rax
	jmp	.L389
.L388:
	leaq	.LC77(%rip), %rax
.L389:
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rax, %rcx
	leaq	.LC78(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -88(%rbp)
	jmp	.L390
.L391:
	movl	-88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$60, -88(%rbp)
.L390:
	movl	-88(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L391
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L392
	call	__stack_chk_fail@PLT
.L392:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	WriteSimpleFASTA, .-WriteSimpleFASTA
	.section	.rodata
	.align 8
.LC80:
	.string	"Tried to write an aligned format with WriteSeq() -- bad, bad."
.LC81:
	.string	"LOCUS       %s       %d bp\n"
.LC82:
	.string	"."
.LC83:
	.string	"ACCESSION   %s\n"
.LC84:
	.string	"DEFINITION  %s\n"
.LC85:
	.string	"VERSION     %s\n"
.LC86:
	.string	"ORIGIN      \n"
.LC87:
	.string	">>>>%s  9/95  ASCII  Len: %d\n"
.LC88:
	.string	"ENTRY          %s\n"
.LC89:
	.string	"TITLE          %s\n"
.LC90:
	.string	"ACCESSION      %s\n"
	.align 8
.LC91:
	.string	"SUMMARY                                #Length %d  #Checksum  %d\n"
.LC92:
	.string	"SEQUENCE\n"
	.align 8
.LC93:
	.string	"                  5        10        15        20        25        30\n"
.LC94:
	.string	"NAM  %s\n"
.LC95:
	.string	"SRC  %s %s %d..%d::%d\n"
.LC96:
	.string	"DES  %s\n"
.LC97:
	.string	"SEQ  +SS\n"
.LC98:
	.string	"SEQ\n"
.LC99:
	.string	"ID   %s\n"
.LC100:
	.string	"AC   %s\n"
.LC101:
	.string	"DE   %s\n"
.LC102:
	.string	"SQ             %d BP\n"
	.align 8
.LC103:
	.string	"    %s  Length: %d  (today)  Check: %d  ..\n"
.LC104:
	.string	"; ### from DNA Strider ;-)\n"
	.align 8
.LC105:
	.string	"; DNA sequence  %s, %d bases, %d checksum.\n;\n"
.LC106:
	.string	";%s %s\n"
.LC107:
	.string	"%8d "
.LC108:
	.string	"         "
.LC109:
	.string	"%s%s\n"
	.text
	.globl	WriteSeq
	.type	WriteSeq, @function
WriteSeq:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -284(%rbp)
	movl	$50, -280(%rbp)
	movl	$0, -276(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -252(%rbp)
	movl	$0, -248(%rbp)
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L394
	movq	-336(%rbp), %rax
	movl	324(%rax), %eax
	jmp	.L395
.L394:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L395:
	movl	%eax, -240(%rbp)
	cmpl	$100, -316(%rbp)
	jle	.L396
	leaq	.LC80(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L396:
	movb	$0, -234(%rbp)
	movl	$0, -260(%rbp)
	movl	-240(%rbp), %edx
	movq	-328(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	GCGchecksum
	movl	%eax, -244(%rbp)
	cmpl	$16, -316(%rbp)
	ja	.L397
	movl	-316(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L399(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L399(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L399:
	.long	.L398-.L399
	.long	.L400-.L399
	.long	.L401-.L399
	.long	.L397-.L399
	.long	.L402-.L399
	.long	.L403-.L399
	.long	.L404-.L399
	.long	.L397-.L399
	.long	.L405-.L399
	.long	.L397-.L399
	.long	.L397-.L399
	.long	.L397-.L399
	.long	.L406-.L399
	.long	.L474-.L399
	.long	.L408-.L399
	.long	.L397-.L399
	.long	.L409-.L399
	.text
.L398:
	leaq	-234(%rbp), %rax
	movw	$10, (%rax)
	jmp	.L410
.L401:
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rsi
	movl	-240(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L411
	movq	-336(%rbp), %rax
	addq	$132, %rax
	jmp	.L412
.L411:
	leaq	.LC82(%rip), %rax
.L412:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC83(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L413
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L414
.L413:
	leaq	.LC82(%rip), %rax
.L414:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC84(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L415
	movq	-336(%rbp), %rax
	addq	$68, %rax
	jmp	.L416
.L415:
	leaq	.LC82(%rip), %rax
.L416:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC85(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	.LC86(%rip), %rdi
	call	fwrite@PLT
	movl	$11, -284(%rbp)
	movl	$1, -292(%rbp)
	leaq	-234(%rbp), %rax
	movl	$3092234, (%rax)
	jmp	.L410
.L409:
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rsi
	movl	-240(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L417
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L418
.L417:
	leaq	.LC4(%rip), %rax
.L418:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC79(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L410
.L406:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L419
	movq	-336(%rbp), %rax
	addq	$68, %rax
	jmp	.L420
.L419:
	movq	-336(%rbp), %rax
	addq	$4, %rax
.L420:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC88(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L421
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L422
.L421:
	leaq	.LC4(%rip), %rax
.L422:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC89(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L423
	movq	-336(%rbp), %rax
	addq	$132, %rax
	jmp	.L424
.L423:
	leaq	.LC4(%rip), %rax
.L424:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC90(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	324(%rax), %edx
	movl	-244(%rbp), %ecx
	movq	-312(%rbp), %rax
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC92(%rip), %rdi
	call	fwrite@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	movl	$1, %esi
	leaq	.LC93(%rip), %rdi
	call	fwrite@PLT
	movl	$2, -284(%rbp)
	movl	$1, -292(%rbp)
	movl	$30, -280(%rbp)
	leaq	-234(%rbp), %rax
	movl	$791621386, (%rax)
	movb	$0, 4(%rax)
	jmp	.L410
.L408:
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$310, %eax
	testl	%eax, %eax
	je	.L425
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L426
	movq	-336(%rbp), %rax
	movl	336(%rax), %ecx
	jmp	.L427
.L426:
	movl	$0, %ecx
.L427:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L428
	movq	-336(%rbp), %rax
	movl	332(%rax), %r8d
	jmp	.L429
.L428:
	movl	$0, %r8d
.L429:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L430
	movq	-336(%rbp), %rax
	movl	328(%rax), %esi
	jmp	.L431
.L430:
	movl	$0, %esi
.L431:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L432
	movq	-336(%rbp), %rax
	leaq	132(%rax), %rdx
	jmp	.L433
.L432:
	leaq	.LC4(%rip), %rdx
.L433:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L434
	movq	-336(%rbp), %rax
	addq	$68, %rax
	jmp	.L435
.L434:
	leaq	.LC4(%rip), %rax
.L435:
	movq	-312(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC95(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L425:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L436
	movq	-336(%rbp), %rax
	leaq	196(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC96(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L436:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L437
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC97(%rip), %rdi
	call	fwrite@PLT
	movl	$1, -248(%rbp)
	jmp	.L438
.L437:
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC98(%rip), %rdi
	call	fwrite@PLT
.L438:
	movl	$1, -292(%rbp)
	leaq	-234(%rbp), %rax
	movl	$2829066, (%rax)
	jmp	.L410
.L402:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L439
	movq	-336(%rbp), %rax
	addq	$68, %rax
	jmp	.L440
.L439:
	movq	-336(%rbp), %rax
	addq	$4, %rax
.L440:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC99(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L441
	movq	-336(%rbp), %rax
	addq	$132, %rax
	jmp	.L442
.L441:
	leaq	.LC4(%rip), %rax
.L442:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC100(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L443
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L444
.L443:
	leaq	.LC4(%rip), %rax
.L444:
	movq	-312(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC101(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-240(%rbp), %edx
	movq	-312(%rbp), %rax
	leaq	.LC102(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	-234(%rbp), %rax
	movl	$3092234, (%rax)
	movl	$5, -276(%rbp)
	movl	$11, -284(%rbp)
	jmp	.L410
.L403:
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L445
	movq	-336(%rbp), %rax
	leaq	132(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L445:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L446
	movq	-336(%rbp), %rax
	leaq	196(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L446:
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rsi
	movl	-244(%rbp), %ecx
	movl	-240(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$11, -284(%rbp)
	movl	$1, -292(%rbp)
	leaq	-234(%rbp), %rax
	movw	$10, (%rax)
	jmp	.L410
.L404:
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC104(%rip), %rdi
	call	fwrite@PLT
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rsi
	movl	-244(%rbp), %ecx
	movl	-240(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	-234(%rbp), %rax
	movl	$3092234, (%rax)
	jmp	.L410
.L405:
	movl	$1, -252(%rbp)
.L400:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L447
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L448
.L447:
	leaq	.LC77(%rip), %rax
.L448:
	movq	-336(%rbp), %rdx
	addq	$4, %rdx
	movq	-312(%rbp), %rdi
	movq	%rax, %rcx
	leaq	.LC106(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-336(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	-234(%rbp), %rax
	movw	$49, (%rax)
	jmp	.L410
.L397:
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L449
	movq	-336(%rbp), %rax
	addq	$196, %rax
	jmp	.L450
.L449:
	leaq	.LC77(%rip), %rax
.L450:
	movq	-336(%rbp), %rdx
	addq	$4, %rdx
	movq	-312(%rbp), %rdi
	movq	%rax, %rcx
	leaq	.LC78(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L410
.L474:
	nop
.L410:
	cmpl	$1, -252(%rbp)
	jne	.L451
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
.L451:
	cmpl	$2, -252(%rbp)
	jne	.L452
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	s2lower@PLT
.L452:
	movl	$100, %eax
	cmpl	$100, -280(%rbp)
	cmovle	-280(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	$0, -272(%rbp)
	movl	$0, -264(%rbp)
	movl	$1, -256(%rbp)
	movl	$0, -288(%rbp)
	jmp	.L453
.L471:
	cmpl	$0, -260(%rbp)
	jns	.L454
	movl	$0, -260(%rbp)
	jmp	.L455
.L454:
	cmpl	$0, -260(%rbp)
	jne	.L455
	cmpl	$0, -292(%rbp)
	je	.L456
	movl	-256(%rbp), %edx
	movq	-312(%rbp), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L456:
	movl	$0, -268(%rbp)
	jmp	.L457
.L458:
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	fputc@PLT
	addl	$1, -268(%rbp)
.L457:
	movl	-268(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jl	.L458
.L455:
	cmpl	$0, -284(%rbp)
	je	.L459
	movl	-264(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-284(%rbp)
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L459
	movl	-264(%rbp), %eax
	cltq
	movb	$32, -224(%rbp,%rax)
	movl	-264(%rbp), %eax
	cltq
	movb	$32, -112(%rbp,%rax)
	addl	$1, -264(%rbp)
.L459:
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-264(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	movq	-336(%rbp), %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L460
	movq	-336(%rbp), %rax
	movq	344(%rax), %rdx
	movl	-272(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.L461
.L460:
	movl	$46, %eax
.L461:
	movl	-264(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, -112(%rbp,%rdx)
	addl	$1, -264(%rbp)
	addl	$1, -272(%rbp)
	addl	$1, -260(%rbp)
	movl	-260(%rbp), %eax
	cmpl	-280(%rbp), %eax
	je	.L462
	movl	-272(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jne	.L453
.L462:
	movl	-264(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	movl	-264(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %edx
	movl	-264(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	movl	$0, -264(%rbp)
	movl	$0, -260(%rbp)
	cmpl	$0, -248(%rbp)
	je	.L463
	leaq	-224(%rbp), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	cmpl	$0, -292(%rbp)
	je	.L464
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC108(%rip), %rdi
	call	fwrite@PLT
.L464:
	movl	$0, -268(%rbp)
	jmp	.L465
.L466:
	movq	-312(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	fputc@PLT
	addl	$1, -268(%rbp)
.L465:
	movl	-268(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jl	.L466
	movl	-272(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jne	.L467
	leaq	-234(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L469
.L467:
	leaq	-112(%rbp), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L469
.L463:
	movl	-272(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jne	.L470
	leaq	-234(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L469
.L470:
	leaq	-224(%rbp), %rdx
	movq	-312(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L469:
	addl	$1, -288(%rbp)
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
.L453:
	movl	-272(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jl	.L471
	movl	-288(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L473
	call	__stack_chk_fail@PLT
.L473:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	WriteSeq, .-WriteSeq
	.globl	ReadMultipleRseqs
	.type	ReadMultipleRseqs, @function
ReadMultipleRseqs:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -28(%rbp)
	movl	$16, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1732, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	movq	%rax, %rdx
	movl	$1733, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SeqfileOpen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L478
	movl	$0, %eax
	jmp	.L477
.L479:
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L478
	addl	$16, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1742, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -16(%rbp)
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1743, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -24(%rbp)
.L478:
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	144(%rax), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ReadSeq
	testl	%eax, %eax
	jne	.L479
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileClose
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L477:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ReadMultipleRseqs, .-ReadMultipleRseqs
	.section	.rodata
.LC110:
	.string	"FASTA"
.LC111:
	.string	"GENBANK"
.LC112:
	.string	"EMBL"
.LC113:
	.string	"GCG"
.LC114:
	.string	"GCGDATA"
.LC115:
	.string	"RAW"
.LC116:
	.string	"IG"
.LC117:
	.string	"STRIDER"
.LC118:
	.string	"IDRAW"
.LC119:
	.string	"ZUKER"
.LC120:
	.string	"PIR"
.LC121:
	.string	"SQUID"
.LC122:
	.string	"STOCKHOLM"
.LC123:
	.string	"SELEX"
.LC124:
	.string	"MSF"
.LC125:
	.string	"A2M"
.LC126:
	.string	"PHYLIP"
.LC127:
	.string	"EPS"
	.text
	.globl	String2SeqfileFormat
	.type	String2SeqfileFormat, @function
String2SeqfileFormat:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L481
	movl	$0, %eax
	jmp	.L482
.L481:
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	movq	-8(%rbp), %rax
	leaq	.LC110(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L483
	movl	$7, -12(%rbp)
	jmp	.L484
.L483:
	movq	-8(%rbp), %rax
	leaq	.LC111(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L485
	movl	$2, -12(%rbp)
	jmp	.L484
.L485:
	movq	-8(%rbp), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L486
	movl	$4, -12(%rbp)
	jmp	.L484
.L486:
	movq	-8(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L487
	movl	$5, -12(%rbp)
	jmp	.L484
.L487:
	movq	-8(%rbp), %rax
	leaq	.LC114(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L488
	movl	$16, -12(%rbp)
	jmp	.L484
.L488:
	movq	-8(%rbp), %rax
	leaq	.LC115(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L489
	movl	$13, -12(%rbp)
	jmp	.L484
.L489:
	movq	-8(%rbp), %rax
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L490
	movl	$1, -12(%rbp)
	jmp	.L484
.L490:
	movq	-8(%rbp), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L491
	movl	$6, -12(%rbp)
	jmp	.L484
.L491:
	movq	-8(%rbp), %rax
	leaq	.LC118(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L492
	movl	$9, -12(%rbp)
	jmp	.L484
.L492:
	movq	-8(%rbp), %rax
	leaq	.LC119(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L493
	movl	$8, -12(%rbp)
	jmp	.L484
.L493:
	movq	-8(%rbp), %rax
	leaq	.LC120(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L494
	movl	$12, -12(%rbp)
	jmp	.L484
.L494:
	movq	-8(%rbp), %rax
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L495
	movl	$14, -12(%rbp)
	jmp	.L484
.L495:
	movq	-8(%rbp), %rax
	leaq	.LC122(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L496
	movl	$101, -12(%rbp)
	jmp	.L484
.L496:
	movq	-8(%rbp), %rax
	leaq	.LC123(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L497
	movl	$102, -12(%rbp)
	jmp	.L484
.L497:
	movq	-8(%rbp), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L498
	movl	$103, -12(%rbp)
	jmp	.L484
.L498:
	movq	-8(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L499
	movl	$104, -12(%rbp)
	jmp	.L484
.L499:
	movq	-8(%rbp), %rax
	leaq	.LC125(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L500
	movl	$105, -12(%rbp)
	jmp	.L484
.L500:
	movq	-8(%rbp), %rax
	leaq	.LC126(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L501
	movl	$106, -12(%rbp)
	jmp	.L484
.L501:
	movq	-8(%rbp), %rax
	leaq	.LC127(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L484
	movl	$107, -12(%rbp)
.L484:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-12(%rbp), %eax
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	String2SeqfileFormat, .-String2SeqfileFormat
	.section	.rodata
.LC128:
	.string	"unknown"
.LC129:
	.string	"Genbank"
.LC130:
	.string	"GCG data library"
.LC131:
	.string	"raw"
.LC132:
	.string	"Intelligenetics"
.LC133:
	.string	"MacStrider"
.LC134:
	.string	"Idraw Postscript"
.LC135:
	.string	"Zuker"
.LC136:
	.string	"Stockholm"
.LC137:
	.string	"Clustal"
.LC138:
	.string	"a2m"
.LC139:
	.string	"Phylip"
	.align 8
.LC140:
	.string	"Bad code passed to MSAFormat2String()"
	.text
	.globl	SeqfileFormat2String
	.type	SeqfileFormat2String, @function
SeqfileFormat2String:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$107, -4(%rbp)
	ja	.L503
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L505(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L505(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L505:
	.long	.L504-.L505
	.long	.L506-.L505
	.long	.L507-.L505
	.long	.L503-.L505
	.long	.L508-.L505
	.long	.L509-.L505
	.long	.L510-.L505
	.long	.L511-.L505
	.long	.L512-.L505
	.long	.L513-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L514-.L505
	.long	.L515-.L505
	.long	.L516-.L505
	.long	.L503-.L505
	.long	.L517-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L503-.L505
	.long	.L518-.L505
	.long	.L519-.L505
	.long	.L520-.L505
	.long	.L521-.L505
	.long	.L522-.L505
	.long	.L523-.L505
	.long	.L524-.L505
	.text
.L504:
	leaq	.LC128(%rip), %rax
	jmp	.L525
.L511:
	leaq	.LC110(%rip), %rax
	jmp	.L525
.L507:
	leaq	.LC129(%rip), %rax
	jmp	.L525
.L508:
	leaq	.LC112(%rip), %rax
	jmp	.L525
.L509:
	leaq	.LC113(%rip), %rax
	jmp	.L525
.L517:
	leaq	.LC130(%rip), %rax
	jmp	.L525
.L515:
	leaq	.LC131(%rip), %rax
	jmp	.L525
.L506:
	leaq	.LC132(%rip), %rax
	jmp	.L525
.L510:
	leaq	.LC133(%rip), %rax
	jmp	.L525
.L513:
	leaq	.LC134(%rip), %rax
	jmp	.L525
.L512:
	leaq	.LC135(%rip), %rax
	jmp	.L525
.L514:
	leaq	.LC120(%rip), %rax
	jmp	.L525
.L516:
	leaq	.LC121(%rip), %rax
	jmp	.L525
.L518:
	leaq	.LC136(%rip), %rax
	jmp	.L525
.L519:
	leaq	.LC123(%rip), %rax
	jmp	.L525
.L520:
	leaq	.LC124(%rip), %rax
	jmp	.L525
.L521:
	leaq	.LC137(%rip), %rax
	jmp	.L525
.L522:
	leaq	.LC138(%rip), %rax
	jmp	.L525
.L523:
	leaq	.LC139(%rip), %rax
	jmp	.L525
.L524:
	leaq	.LC127(%rip), %rax
	jmp	.L525
.L503:
	leaq	.LC140(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	movl	$0, %eax
.L525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	SeqfileFormat2String, .-SeqfileFormat2String
	.globl	MSAToSqinfo
	.type	MSAToSqinfo, @function
MSAToSqinfo:
.LFB50:
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
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	imulq	$360, %rax, %rax
	movq	%rax, %rdx
	movl	$1857, %esi
	leaq	.LC3(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L527
.L530:
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	MSAGetSeqAccession@PLT
	movq	%rax, %rcx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	MSAGetSeqDescription@PLT
	movq	%rax, %rcx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SetSeqinfoString
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L528
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L528
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	344(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeDealignedString@PLT
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	orb	$2, %dh
	movl	%edx, (%rax)
.L528:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L529
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L529
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	352(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeDealignedString@PLT
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	orb	$4, %dh
	movl	%edx, (%rax)
.L529:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	DealignedLength@PLT
	movl	%eax, 324(%rbx)
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	imulq	$360, %rax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	orl	$64, %edx
	movl	%edx, (%rax)
	addl	$1, -28(%rbp)
.L527:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L530
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	MSAToSqinfo, .-MSAToSqinfo
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
