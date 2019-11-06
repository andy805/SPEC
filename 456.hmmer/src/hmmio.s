	.file	"hmmio.c"
	.text
	.data
	.align 4
	.type	v10magic, @object
	.size	v10magic, 4
v10magic:
	.long	-387060303
	.align 4
	.type	v10swap, @object
	.size	v10swap, 4
v10swap:
	.long	-1309807128
	.align 4
	.type	v11magic, @object
	.size	v11magic, 4
v11magic:
	.long	-387060302
	.align 4
	.type	v11swap, @object
	.size	v11swap, 4
v11swap:
	.long	-1293029912
	.align 4
	.type	v17magic, @object
	.size	v17magic, 4
v17magic:
	.long	-387060301
	.align 4
	.type	v17swap, @object
	.size	v17swap, 4
v17swap:
	.long	-1276252696
	.align 4
	.type	v19magic, @object
	.size	v19magic, 4
v19magic:
	.long	-387060300
	.align 4
	.type	v19swap, @object
	.size	v19swap, 4
v19swap:
	.long	-1259475480
	.align 4
	.type	v20magic, @object
	.size	v20magic, 4
v20magic:
	.long	-387060299
	.align 4
	.type	v20swap, @object
	.size	v20swap, 4
v20swap:
	.long	-1242698264
	.section	.rodata
.LC0:
	.string	"hmmio.c"
.LC1:
	.string	"r"
.LC2:
	.string	"%s.ssi"
.LC3:
	.string	"SSIRecommendMode() failed"
.LC4:
	.string	"SSIGetFilePosition() failed"
	.align 8
.LC5:
	.string	"%s appears to be a binary but format is not recognized\nIt may be from a HMMER version more recent than yours,\nor may be a different kind of binary altogether.\n"
.LC6:
	.string	"HMMER2.0"
.LC7:
	.string	"HMMER v1.9"
.LC8:
	.string	"# HMM v1.7"
.LC9:
	.string	"# HMM v1.1"
.LC10:
	.string	"# HMM v1.0"
	.text
	.globl	HMMFileOpen
	.type	HMMFileOpen, @function
HMMFileOpen:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$56, %edx
	movl	$164, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	$0, (%rax)
	movq	-560(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-560(%rbp), %rax
	movq	$0, (%rax)
	movq	-560(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-600(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$5, %rax
	movq	%rax, %rdx
	movl	$181, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -568(%rbp)
	movq	-600(%rbp), %rdx
	movq	-568(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	SSIRecommendMode@PLT
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-560(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$-1, %eax
	jne	.L4
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L4
.L2:
	leaq	-576(%rbp), %rdx
	movq	-608(%rbp), %rcx
	movq	-600(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EnvFileOpen@PLT
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-576(%rbp), %rax
	movq	-600(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FileConcat@PLT
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$5, %rax
	movq	%rax, %rdx
	movl	$192, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -568(%rbp)
	movq	-552(%rbp), %rdx
	movq	-568(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	SSIRecommendMode@PLT
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-560(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$-1, %eax
	jne	.L6
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L6:
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L4
.L5:
	movl	$0, %eax
	jmp	.L27
.L4:
	movq	-560(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSIOpen@PLT
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-560(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-560(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSIGetFilePosition@PLT
	movl	%eax, -580(%rbp)
	cmpl	$0, -580(%rbp)
	je	.L8
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L8:
	movq	-560(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-584(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L9
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose
	movl	$0, %eax
	jmp	.L27
.L9:
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	-584(%rbp), %edx
	movl	v20magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L10
	movq	-560(%rbp), %rax
	leaq	read_bin20hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L10:
	movl	-584(%rbp), %edx
	movl	v20swap(%rip), %eax
	cmpl	%eax, %edx
	jne	.L11
	movq	-560(%rbp), %rax
	leaq	read_bin20hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L11:
	movl	-584(%rbp), %edx
	movl	v19magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L12
	movq	-560(%rbp), %rax
	leaq	read_bin19hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L12:
	movl	-584(%rbp), %edx
	movl	v19swap(%rip), %eax
	cmpl	%eax, %edx
	jne	.L13
	movq	-560(%rbp), %rax
	leaq	read_bin19hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L13:
	movl	-584(%rbp), %edx
	movl	v17magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L14
	movq	-560(%rbp), %rax
	leaq	read_bin17hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L14:
	movl	-584(%rbp), %edx
	movl	v17swap(%rip), %eax
	cmpl	%eax, %edx
	jne	.L15
	movq	-560(%rbp), %rax
	leaq	read_bin17hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L15:
	movl	-584(%rbp), %edx
	movl	v11magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L16
	movq	-560(%rbp), %rax
	leaq	read_bin11hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L16:
	movl	-584(%rbp), %edx
	movl	v11swap(%rip), %eax
	cmpl	%eax, %edx
	jne	.L17
	movq	-560(%rbp), %rax
	leaq	read_bin11hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L17:
	movl	-584(%rbp), %edx
	movl	v10magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L18
	movq	-560(%rbp), %rax
	leaq	read_bin10hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L18:
	movl	-584(%rbp), %edx
	movl	v10swap(%rip), %eax
	cmpl	%eax, %edx
	jne	.L19
	movq	-560(%rbp), %rax
	leaq	read_bin10hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-560(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L19:
	movl	-584(%rbp), %eax
	testl	%eax, %eax
	jns	.L20
	movq	-600(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose
	movl	$0, %eax
	jmp	.L27
.L20:
	movq	-560(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L21
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose
	movl	$0, %eax
	jmp	.L27
.L21:
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-560(%rbp), %rax
	leaq	read_asc20hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L22:
	leaq	-544(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-560(%rbp), %rax
	leaq	read_asc19hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L23:
	leaq	-544(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L24
	movq	-560(%rbp), %rax
	leaq	read_asc17hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L24:
	leaq	-544(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-560(%rbp), %rax
	leaq	read_asc11hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L25:
	leaq	-544(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-560(%rbp), %rax
	leaq	read_asc10hmm(%rip), %rdx
	movq	%rdx, 16(%rax)
	movq	-560(%rbp), %rax
	jmp	.L27
.L26:
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose
	movl	$0, %eax
.L27:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	HMMFileOpen, .-HMMFileOpen
	.globl	HMMFileRead
	.type	HMMFileRead, @function
HMMFileRead:
.LFB6:
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
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSIGetFilePosition@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L30
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L30:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	HMMFileRead, .-HMMFileRead
	.globl	HMMFileClose
	.type	HMMFileClose, @function
HMMFileClose:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L33:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SSIClose@PLT
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	HMMFileClose, .-HMMFileClose
	.globl	HMMFileRewind
	.type	HMMFileRewind, @function
HMMFileRewind:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	HMMFileRewind, .-HMMFileRewind
	.globl	HMMFilePositionByName
	.type	HMMFilePositionByName, @function
HMMFilePositionByName:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$0, %eax
	jmp	.L41
.L37:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	SSIGetOffsetByName@PLT
	testl	%eax, %eax
	je	.L39
	movl	$0, %eax
	jmp	.L41
.L39:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition@PLT
	testl	%eax, %eax
	je	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movl	$1, %eax
.L41:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	HMMFilePositionByName, .-HMMFilePositionByName
	.globl	HMMFilePositionByIndex
	.type	HMMFilePositionByIndex, @function
HMMFilePositionByIndex:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$0, %eax
	jmp	.L48
.L44:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	SSIGetOffsetByNumber@PLT
	testl	%eax, %eax
	je	.L46
	movl	$0, %eax
	jmp	.L48
.L46:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition@PLT
	testl	%eax, %eax
	je	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movl	$1, %eax
.L48:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	HMMFilePositionByIndex, .-HMMFilePositionByIndex
	.section	.rodata
.LC11:
	.string	"2.3"
.LC12:
	.string	"HMMER2.0  [%s]\n"
.LC13:
	.string	"NAME  %s\n"
.LC14:
	.string	"ACC   %s\n"
.LC15:
	.string	"DESC  %s\n"
.LC16:
	.string	"LENG  %d\n"
.LC17:
	.string	"Amino"
.LC18:
	.string	"Nucleic"
.LC19:
	.string	"ALPH  %s\n"
.LC20:
	.string	"yes"
.LC21:
	.string	"no"
.LC22:
	.string	"RF    %s\n"
.LC23:
	.string	"CS    %s\n"
.LC24:
	.string	"MAP   %s\n"
.LC25:
	.string	"COM   "
.LC26:
	.string	"NSEQ  %d\n"
.LC27:
	.string	"DATE  %s\n"
.LC28:
	.string	"CKSUM %d\n"
.LC29:
	.string	"GA    %.1f %.1f\n"
.LC30:
	.string	"TC    %.1f %.1f\n"
.LC31:
	.string	"NC    %.1f %.1f\n"
.LC32:
	.string	"XT     "
.LC34:
	.string	"%6s "
.LC35:
	.string	"NULT  "
.LC36:
	.string	"%6s\n"
.LC37:
	.string	"NULE  "
.LC38:
	.string	"EVD   %10f %10f\n"
.LC39:
	.string	"HMM      "
.LC40:
	.string	"  %c    "
.LC41:
	.string	"i->m"
.LC42:
	.string	"m->d"
.LC43:
	.string	"m->i"
.LC44:
	.string	"m->m"
	.align 8
.LC45:
	.string	"       %6s %6s %6s %6s %6s %6s %6s %6s %6s\n"
.LC46:
	.string	"m->e"
.LC47:
	.string	"b->m"
.LC48:
	.string	"d->d"
.LC49:
	.string	"d->m"
.LC50:
	.string	"i->i"
.LC51:
	.string	"*"
.LC52:
	.string	"       %6s %6s "
.LC53:
	.string	" %5d "
.LC54:
	.string	"%5d"
.LC55:
	.string	" %5c "
.LC56:
	.string	"//\n"
	.text
	.globl	WriteAscHMM
	.type	WriteAscHMM, @function
WriteAscHMM:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L51
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L51:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L52
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L52:
	movq	-32(%rbp), %rax
	movl	136(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L53
	leaq	.LC17(%rip), %rax
	jmp	.L54
.L53:
	leaq	.LC18(%rip), %rax
.L54:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L55
	leaq	.LC20(%rip), %rax
	jmp	.L56
.L55:
	leaq	.LC21(%rip), %rax
.L56:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L57
	leaq	.LC20(%rip), %rax
	jmp	.L58
.L57:
	leaq	.LC21(%rip), %rax
.L58:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC23(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L59
	leaq	.LC20(%rip), %rax
	jmp	.L60
.L59:
	leaq	.LC21(%rip), %rax
.L60:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	multiline
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	80(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L61
	movq	-32(%rbp), %rax
	movss	116(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movss	112(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L61:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L62
	movq	-32(%rbp), %rax
	movss	124(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movss	120(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L62:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L63
	movq	-32(%rbp), %rax
	movss	132(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movss	128(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L63:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$7, %edx
	movl	$1, %esi
	leaq	.LC32(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -12(%rbp)
	jmp	.L64
.L67:
	movl	$0, -8(%rbp)
	jmp	.L65
.L66:
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	addq	$40, %rdx
	movl	12(%rax,%rdx,4), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -8(%rbp)
.L65:
	cmpl	$1, -8(%rbp)
	jle	.L66
	addl	$1, -12(%rbp)
.L64:
	cmpl	$3, -12(%rbp)
	jle	.L67
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	.LC35(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	304(%rax), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movss	304(%rax), %xmm1
	movss	.LC33(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	.LC33(%rip), %xmm1
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	.LC37(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -8(%rbp)
	jmp	.L68
.L69:
	movl	Alphabet_size(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LC33(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -8(%rbp)
.L68:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rax
	movss	452(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movss	448(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC39(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -8(%rbp)
	jmp	.L71
.L72:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	leaq	Alphabet(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -8(%rbp)
.L71:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L72
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC46(%rip), %rdx
	pushq	%rdx
	leaq	.LC47(%rip), %rdx
	pushq	%rdx
	leaq	.LC48(%rip), %rdx
	pushq	%rdx
	leaq	.LC49(%rip), %rdx
	pushq	%rdx
	leaq	.LC50(%rip), %rdx
	pushq	%rdx
	leaq	.LC41(%rip), %r9
	leaq	.LC42(%rip), %r8
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$48, %rsp
	movq	-32(%rbp), %rax
	movss	168(%rax), %xmm1
	movss	.LC33(%rip), %xmm0
	subss	%xmm1, %xmm0
	movss	.LC33(%rip), %xmm1
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movl	168(%rax), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, -12(%rbp)
	jmp	.L73
.L89:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -8(%rbp)
	jmp	.L74
.L75:
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -8(%rbp)
.L74:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L75
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L76
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L77
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	jmp	.L78
.L77:
	movl	$45, %eax
.L78:
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -8(%rbp)
	jmp	.L79
.L82:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L80
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	jmp	.L81
.L80:
	leaq	.LC51(%rip), %rax
.L81:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -8(%rbp)
.L79:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L82
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L83
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	jmp	.L84
.L83:
	movl	$45, %eax
.L84:
	movq	-24(%rbp), %rcx
	movl	%eax, %edx
	leaq	.LC55(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -4(%rbp)
	jmp	.L85
.L88:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L86
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	jmp	.L87
.L86:
	leaq	.LC51(%rip), %rax
.L87:
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	leaq	.LC34(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -4(%rbp)
.L85:
	cmpl	$6, -4(%rbp)
	jle	.L88
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movss	.LC33(%rip), %xmm1
	movl	%eax, -36(%rbp)
	movss	-36(%rbp), %xmm0
	call	prob2ascii
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -12(%rbp)
.L73:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L89
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC56(%rip), %rdi
	call	fwrite@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	WriteAscHMM, .-WriteAscHMM
	.globl	WriteBinHMM
	.type	WriteBinHMM, @function
WriteBinHMM:
.LFB12:
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
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	leaq	v20magic(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	leaq	456(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_bin_string
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L91
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_bin_string
.L91:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L92
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_bin_string
.L92:
	movq	-32(%rbp), %rax
	leaq	136(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	leaq	Alphabet_type(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L93
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L93:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L94
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L94:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L95
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L95:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_bin_string
	movq	-32(%rbp), %rax
	leaq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	write_bin_string
	movq	-32(%rbp), %rax
	leaq	80(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L96
	movq	-32(%rbp), %rax
	leaq	112(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	leaq	116(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
.L96:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L97
	movq	-32(%rbp), %rax
	leaq	120(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	leaq	124(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
.L97:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L98
	movq	-32(%rbp), %rax
	leaq	128(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	leaq	132(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
.L98:
	movl	$0, -4(%rbp)
	jmp	.L99
.L100:
	movl	-4(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$4, %esi
	call	fwrite@PLT
	addl	$1, -4(%rbp)
.L99:
	cmpl	$3, -4(%rbp)
	jle	.L100
	movq	-32(%rbp), %rax
	leaq	304(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movl	Alphabet_size(%rip), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	224(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L101
	movq	-32(%rbp), %rax
	leaq	448(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	leaq	452(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
.L101:
	movq	-32(%rbp), %rax
	leaq	168(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$1, -4(%rbp)
	jmp	.L102
.L103:
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	addl	$1, -4(%rbp)
.L102:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L103
	movl	$1, -4(%rbp)
	jmp	.L104
.L105:
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	addl	$1, -4(%rbp)
.L104:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L105
	movl	$1, -4(%rbp)
	jmp	.L106
.L107:
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	addl	$1, -4(%rbp)
.L106:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L107
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	WriteBinHMM, .-WriteBinHMM
	.section	.rodata
.LC57:
	.string	"NAME "
.LC58:
	.string	"ACC  "
.LC59:
	.string	"DESC "
.LC60:
	.string	"LENG "
.LC61:
	.string	"NSEQ "
.LC62:
	.string	"ALPH "
.LC63:
	.string	"AMINO"
.LC64:
	.string	"NUCLEIC"
	.align 8
.LC65:
	.string	"Alphabet mismatch error.\nI thought we were working with %s, but tried to read a %s HMM.\n"
.LC66:
	.string	"RF   "
.LC67:
	.string	"CS   "
.LC68:
	.string	"MAP  "
.LC69:
	.string	"COM  "
.LC70:
	.string	"DATE "
.LC71:
	.string	"GA   "
.LC72:
	.string	" \t\n"
.LC73:
	.string	"TC   "
.LC74:
	.string	"NC   "
.LC75:
	.string	"XT   "
.LC76:
	.string	"NULT "
.LC77:
	.string	"NULE "
	.align 8
.LC78:
	.string	"ALPH must precede NULE in HMM save files"
.LC79:
	.string	"EVD  "
.LC80:
	.string	"CKSUM"
.LC81:
	.string	"HMM  "
.LC82:
	.string	"//"
	.text
	.type	read_asc20hmm, @function
read_asc20hmm:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$616, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -560(%rbp)
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L109
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L110
.L109:
	movl	$0, %eax
	jmp	.L205
.L110:
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L207
	call	AllocPlan7Shell@PLT
	movq	%rax, -560(%rbp)
	movl	$-1, -580(%rbp)
	jmp	.L114
.L165:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L115
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	-560(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Plan7SetName@PLT
	jmp	.L114
.L115:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L116
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	-560(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Plan7SetAccession@PLT
	jmp	.L114
.L116:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L117
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	-560(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Plan7SetDescription@PLT
	jmp	.L114
.L117:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L118
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -580(%rbp)
	jmp	.L114
.L118:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L119
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L114
.L119:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L120
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movl	$5, %edx
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$3, -568(%rbp)
	jmp	.L122
.L121:
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movl	$7, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$2, -568(%rbp)
.L122:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L124
	movl	-568(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L114
.L124:
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, -568(%rbp)
	je	.L114
	movl	-568(%rbp), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rax, %rbx
	movl	Alphabet_type(%rip), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L114
.L120:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L126
	movzbl	-538(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	cmpl	$89, %eax
	jne	.L114
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L126:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L128
	movzbl	-538(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	cmpl	$89, %eax
	jne	.L114
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L128:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L130
	movzbl	-538(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	cmpl	$89, %eax
	jne	.L114
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orb	$1, %ah
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L130:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L132
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	movq	-560(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L114
.L133:
	movq	-560(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-560(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$624, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-560(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	-560(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcat@PLT
	jmp	.L114
.L132:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC70(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L135
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	StringChop@PLT
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L114
.L135:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L136
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L209
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 112(%rax)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L210
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 116(%rax)
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orb	$4, %ah
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L136:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L139
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L211
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 120(%rax)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L212
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 124(%rax)
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L139:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L142
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L213
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 128(%rax)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L214
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 132(%rax)
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orb	$16, %ah
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	jmp	.L114
.L142:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L145
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L215
	movl	$0, -576(%rbp)
	jmp	.L147
.L151:
	movl	$0, -572(%rbp)
	jmp	.L148
.L150:
	cmpq	$0, -552(%rbp)
	je	.L216
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-560(%rbp), %rax
	movl	-572(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	-576(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	addq	$40, %rcx
	movl	%edx, 12(%rax,%rcx,4)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	addl	$1, -572(%rbp)
.L148:
	cmpl	$1, -572(%rbp)
	jle	.L150
	addl	$1, -576(%rbp)
.L147:
	cmpl	$3, -576(%rbp)
	jle	.L151
	jmp	.L114
.L145:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L152
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L217
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 304(%rax)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L218
	movq	-560(%rbp), %rax
	movss	304(%rax), %xmm2
	movss	%xmm2, -612(%rbp)
	movq	-560(%rbp), %rax
	movss	304(%rax), %xmm3
	movss	%xmm3, -616(%rbp)
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	addss	-616(%rbp), %xmm0
	movss	-612(%rbp), %xmm2
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 304(%rax)
	jmp	.L114
.L152:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L155
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L156
	leaq	.LC78(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L156:
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	movl	$0, -572(%rbp)
	jmp	.L157
.L159:
	cmpq	$0, -552(%rbp)
	je	.L219
	movl	Alphabet_size(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movss	.LC33(%rip), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-560(%rbp), %rax
	movl	-572(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	addl	$1, -572(%rbp)
.L157:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -572(%rbp)
	jl	.L159
	jmp	.L114
.L155:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L160
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orb	$-128, %al
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L220
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 448(%rax)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L221
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 452(%rax)
	jmp	.L114
.L160:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L163
	leaq	-544(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 80(%rax)
	jmp	.L114
.L163:
	leaq	-544(%rbp), %rax
	movl	$5, %edx
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L222
.L114:
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L165
	jmp	.L164
.L222:
	nop
.L164:
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L223
	cmpl	$0, -580(%rbp)
	jle	.L224
	movq	-560(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L225
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	je	.L226
	movl	-580(%rbp), %edx
	movq	-560(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	AllocPlan7Body@PLT
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L227
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L228
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L229
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, -564(%rbp)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L230
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L231
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 168(%rax)
	movq	-560(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-560(%rbp), %rax
	movss	168(%rax), %xmm0
	addss	-564(%rbp), %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-560(%rbp), %rax
	movss	%xmm0, 168(%rax)
	movl	$1, -576(%rbp)
	jmp	.L175
.L200:
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L232
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L233
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	cmpl	%eax, -576(%rbp)
	jne	.L234
	movl	$0, -572(%rbp)
	jmp	.L179
.L181:
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L235
	movq	-560(%rbp), %rax
	movl	-572(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-560(%rbp), %rax
	movq	152(%rax), %rax
	movl	-576(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-572(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-552(%rbp), %rax
	movl	%edx, -612(%rbp)
	movss	-612(%rbp), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -572(%rbp)
.L179:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -572(%rbp)
	jl	.L181
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L182
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L236
	movq	-560(%rbp), %rax
	movq	72(%rax), %rax
	movl	-576(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, (%rbx)
.L182:
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L237
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L238
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L186
	movq	-560(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-576(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L186:
	movq	-560(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -576(%rbp)
	jge	.L187
	movl	$0, -572(%rbp)
	jmp	.L188
.L190:
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L239
	movq	-560(%rbp), %rax
	movl	-572(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-560(%rbp), %rax
	movq	160(%rax), %rax
	movl	-576(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-572(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-552(%rbp), %rax
	movl	%edx, -612(%rbp)
	movss	-612(%rbp), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -572(%rbp)
.L188:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -572(%rbp)
	jl	.L190
.L187:
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L240
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L241
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L193
	movq	-560(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-576(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L193:
	movl	$0, -572(%rbp)
	jmp	.L194
.L197:
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L242
	movq	-560(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -576(%rbp)
	jge	.L196
	movq	-560(%rbp), %rax
	movq	144(%rax), %rax
	movl	-576(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-572(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L196:
	addl	$1, -572(%rbp)
.L194:
	cmpl	$6, -572(%rbp)
	jle	.L197
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L243
	movq	-560(%rbp), %rax
	movq	208(%rax), %rax
	movl	-576(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L244
	movq	-560(%rbp), %rax
	movq	216(%rax), %rax
	movl	-576(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -576(%rbp)
.L175:
	movq	-560(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -576(%rbp)
	jle	.L200
	jmp	.L201
.L203:
	leaq	-544(%rbp), %rax
	movl	$2, %edx
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L245
.L201:
	movq	-600(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L203
	jmp	.L202
.L245:
	nop
.L202:
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7Renormalize@PLT
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-560(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-608(%rbp), %rax
	movq	-560(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L205
.L207:
	nop
	jmp	.L113
.L208:
	nop
	jmp	.L113
.L209:
	nop
	jmp	.L113
.L210:
	nop
	jmp	.L113
.L211:
	nop
	jmp	.L113
.L212:
	nop
	jmp	.L113
.L213:
	nop
	jmp	.L113
.L214:
	nop
	jmp	.L113
.L215:
	nop
	jmp	.L113
.L216:
	nop
	jmp	.L113
.L217:
	nop
	jmp	.L113
.L218:
	nop
	jmp	.L113
.L219:
	nop
	jmp	.L113
.L220:
	nop
	jmp	.L113
.L221:
	nop
	jmp	.L113
.L223:
	nop
	jmp	.L113
.L224:
	nop
	jmp	.L113
.L225:
	nop
	jmp	.L113
.L226:
	nop
	jmp	.L113
.L227:
	nop
	jmp	.L113
.L228:
	nop
	jmp	.L113
.L229:
	nop
	jmp	.L113
.L230:
	nop
	jmp	.L113
.L231:
	nop
	jmp	.L113
.L232:
	nop
	jmp	.L113
.L233:
	nop
	jmp	.L113
.L234:
	nop
	jmp	.L113
.L235:
	nop
	jmp	.L113
.L236:
	nop
	jmp	.L113
.L237:
	nop
	jmp	.L113
.L238:
	nop
	jmp	.L113
.L239:
	nop
	jmp	.L113
.L240:
	nop
	jmp	.L113
.L241:
	nop
	jmp	.L113
.L242:
	nop
	jmp	.L113
.L243:
	nop
	jmp	.L113
.L244:
	nop
.L113:
	cmpq	$0, -560(%rbp)
	je	.L204
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
.L204:
	movq	-608(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L205:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	read_asc20hmm, .-read_asc20hmm
	.type	read_bin20hmm, @function
read_bin20hmm:
.LFB14:
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
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L247
	movl	$0, %eax
	jmp	.L322
.L247:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L249
	movl	$0, %eax
	jmp	.L322
.L249:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L250
	leaq	-44(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L250:
	movl	-44(%rbp), %edx
	movl	v20magic(%rip), %eax
	cmpl	%eax, %edx
	jne	.L324
	call	AllocPlan7Shell@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	456(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L325
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L254
	movq	-32(%rbp), %rax
	addq	$456, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L254:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_bin_string
	testl	%eax, %eax
	je	.L326
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L256
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_bin_string
	testl	%eax, %eax
	je	.L327
.L256:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L257
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_bin_string
	testl	%eax, %eax
	je	.L328
.L257:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	136(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L329
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L259
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L259:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L330
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L261
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L261:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L262
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L263
.L262:
	movl	-48(%rbp), %edx
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, %edx
	je	.L263
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rax, %rbx
	movl	Alphabet_type(%rip), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L263:
	movq	-32(%rbp), %rax
	movl	136(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	AllocPlan7Body@PLT
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L264
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L331
.L264:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	$1, %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L265
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L332
.L265:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	$1, %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L266
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L333
.L266:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L267
	movl	$1, -40(%rbp)
	jmp	.L268
.L269:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -40(%rbp)
.L268:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jle	.L269
.L267:
	movq	-32(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_bin_string
	testl	%eax, %eax
	je	.L334
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	56(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L335
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L272
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L272:
	movq	-32(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_bin_string
	testl	%eax, %eax
	je	.L336
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	80(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L337
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L275
	movq	-32(%rbp), %rax
	addq	$80, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L275:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L276
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	112(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L338
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	116(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L339
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L276
	movq	-32(%rbp), %rax
	addq	$112, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	addq	$116, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L276:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L279
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	120(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L340
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	124(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L341
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L279
	movq	-32(%rbp), %rax
	addq	$120, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	addq	$124, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L279:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L282
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	128(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L342
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	132(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L343
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L282
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	addq	$132, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L282:
	movl	$0, -40(%rbp)
	jmp	.L285
.L290:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$20, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	leaq	12(%rdx), %rdi
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L344
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L287
	movl	$0, -36(%rbp)
	jmp	.L288
.L289:
	movl	-36(%rbp), %eax
	cltq
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	$40, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -36(%rbp)
.L288:
	cmpl	$1, -36(%rbp)
	jle	.L289
.L287:
	addl	$1, -40(%rbp)
.L285:
	cmpl	$3, -40(%rbp)
	jle	.L290
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	304(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L345
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	Alphabet_size(%rip), %eax
	cltq
	movq	-32(%rbp), %rcx
	leaq	224(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L346
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L293
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	448(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L347
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	452(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L348
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L293
	movq	-32(%rbp), %rax
	addq	$448, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	addq	$452, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L293:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	168(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	je	.L349
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L350
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L351
	movl	$1, -40(%rbp)
	jmp	.L299
.L301:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L352
	addl	$1, -40(%rbp)
.L299:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jle	.L301
	movl	$1, -40(%rbp)
	jmp	.L302
.L304:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L353
	addl	$1, -40(%rbp)
.L302:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L304
	movl	$1, -40(%rbp)
	jmp	.L305
.L307:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	-40(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	je	.L354
	addl	$1, -40(%rbp)
.L305:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L307
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L308
	movl	$0, -36(%rbp)
	jmp	.L309
.L310:
	movl	-36(%rbp), %eax
	cltq
	addq	$56, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -36(%rbp)
.L309:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L310
	movq	-32(%rbp), %rax
	addq	$304, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	addq	$168, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movl	$1, -40(%rbp)
	jmp	.L311
.L320:
	movl	$0, -36(%rbp)
	jmp	.L312
.L313:
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -36(%rbp)
.L312:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L313
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jge	.L314
	movl	$0, -36(%rbp)
	jmp	.L315
.L316:
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -36(%rbp)
.L315:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L316
.L314:
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jge	.L317
	movl	$0, -36(%rbp)
	jmp	.L318
.L319:
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -36(%rbp)
.L318:
	cmpl	$6, -36(%rbp)
	jle	.L319
.L317:
	addl	$1, -40(%rbp)
.L311:
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jle	.L320
.L308:
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-32(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L322
.L324:
	nop
	jmp	.L252
.L325:
	nop
	jmp	.L252
.L326:
	nop
	jmp	.L252
.L327:
	nop
	jmp	.L252
.L328:
	nop
	jmp	.L252
.L329:
	nop
	jmp	.L252
.L330:
	nop
	jmp	.L252
.L331:
	nop
	jmp	.L252
.L332:
	nop
	jmp	.L252
.L333:
	nop
	jmp	.L252
.L334:
	nop
	jmp	.L252
.L335:
	nop
	jmp	.L252
.L336:
	nop
	jmp	.L252
.L337:
	nop
	jmp	.L252
.L338:
	nop
	jmp	.L252
.L339:
	nop
	jmp	.L252
.L340:
	nop
	jmp	.L252
.L341:
	nop
	jmp	.L252
.L342:
	nop
	jmp	.L252
.L343:
	nop
	jmp	.L252
.L344:
	nop
	jmp	.L252
.L345:
	nop
	jmp	.L252
.L346:
	nop
	jmp	.L252
.L347:
	nop
	jmp	.L252
.L348:
	nop
	jmp	.L252
.L349:
	nop
	jmp	.L252
.L350:
	nop
	jmp	.L252
.L351:
	nop
	jmp	.L252
.L352:
	nop
	jmp	.L252
.L353:
	nop
	jmp	.L252
.L354:
	nop
.L252:
	cmpq	$0, -32(%rbp)
	je	.L321
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
.L321:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L322:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L323
	call	__stack_chk_fail@PLT
.L323:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	read_bin20hmm, .-read_bin20hmm
	.section	.rodata
.LC83:
	.string	"null"
	.align 8
.LC87:
	.string	"[converted from an old Plan9 HMM]"
	.text
	.type	read_asc19hmm, @function
read_asc19hmm:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$616, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -568(%rbp)
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L356
	movq	-560(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L357
.L356:
	movl	$0, %eax
	jmp	.L436
.L357:
	leaq	-544(%rbp), %rax
	movl	$10, %edx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L438
	call	AllocPlan7Shell@PLT
	movq	%rax, -568(%rbp)
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L439
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -572(%rbp)
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L440
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L441
	movq	-552(%rbp), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan7SetName@PLT
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L442
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	s2upper@PLT
	movq	-552(%rbp), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L365
	movl	$3, -576(%rbp)
	jmp	.L366
.L365:
	movq	-552(%rbp), %rax
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L443
	movl	$2, -576(%rbp)
.L366:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L368
	movl	-576(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L369
.L368:
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, -576(%rbp)
	je	.L369
	movl	-576(%rbp), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rax, %rbx
	movl	Alphabet_type(%rip), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L369:
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L444
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-552(%rbp), %rax
	leaq	Alphabet(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L445
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L446
	movq	-552(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L373
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, 456(%rax)
.L373:
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L447
	movq	-552(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L375
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, 456(%rax)
.L375:
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L448
	movq	-552(%rbp), %rax
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L449
	movl	$0, -580(%rbp)
	jmp	.L378
.L380:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L450
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-568(%rbp), %rax
	movl	-580(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$56, %rcx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -580(%rbp)
.L378:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L380
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L381
	movss	.LC84(%rip), %xmm0
	jmp	.L382
.L381:
	movss	.LC85(%rip), %xmm0
.L382:
	movq	-568(%rbp), %rax
	movss	%xmm0, 304(%rax)
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L451
	cmpl	$0, -572(%rbp)
	jle	.L452
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L453
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	je	.L454
	movl	-572(%rbp), %edx
	movq	-568(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	AllocPlan7Body@PLT
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	ZeroPlan7@PLT
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7LSConfig@PLT
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L455
	movl	$0, -580(%rbp)
	jmp	.L388
.L390:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L456
	addl	$1, -580(%rbp)
.L388:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L390
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L457
	movq	-568(%rbp), %rax
	movq	208(%rax), %rax
	leaq	4(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L458
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %edx
	movq	-568(%rbp), %rax
	movl	%edx, 168(%rax)
	movq	-568(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	movq	-568(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm2
	movq	-568(%rbp), %rax
	movss	168(%rax), %xmm0
	addss	%xmm2, %xmm0
	movq	-568(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movq	-568(%rbp), %rax
	movss	168(%rax), %xmm1
	movq	-568(%rbp), %rax
	movq	208(%rax), %rax
	addq	$4, %rax
	movss	(%rax), %xmm2
	movq	-568(%rbp), %rax
	movss	168(%rax), %xmm0
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	-568(%rbp), %rax
	movss	%xmm0, 168(%rax)
	movl	$0, -580(%rbp)
	jmp	.L393
.L395:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L459
	addl	$1, -580(%rbp)
.L393:
	cmpl	$6, -580(%rbp)
	jle	.L395
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L460
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L461
	movl	$1, -584(%rbp)
	jmp	.L398
.L427:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L462
	movl	$0, -580(%rbp)
	jmp	.L400
.L402:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L463
	movq	-568(%rbp), %rax
	movl	-580(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-568(%rbp), %rax
	movq	152(%rax), %rax
	movl	-584(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-580(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-552(%rbp), %rax
	movl	%edx, -612(%rbp)
	movss	-612(%rbp), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
	addl	$1, -580(%rbp)
.L400:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L402
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L464
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L404
	movq	-568(%rbp), %rax
	movq	144(%rax), %rax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L404:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L465
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L406
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	je	.L407
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	jmp	.L408
.L407:
	movl	.LC86(%rip), %eax
.L408:
	movq	-568(%rbp), %rdx
	movq	144(%rdx), %rdx
	movl	-584(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movl	%eax, (%rdx)
.L406:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L466
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L410
	movq	-568(%rbp), %rax
	movq	144(%rax), %rax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L410:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L467
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L412
	movq	-568(%rbp), %rax
	movq	144(%rax), %rax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	20(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L412:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L468
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L414
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	je	.L415
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	jmp	.L416
.L415:
	movl	.LC86(%rip), %eax
.L416:
	movq	-568(%rbp), %rdx
	movq	144(%rdx), %rdx
	movl	-584(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$24, %rdx
	movl	%eax, (%rdx)
.L414:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L469
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L470
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L419
	movq	-568(%rbp), %rax
	movq	144(%rax), %rax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	12(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L419:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L471
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L472
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L422
	movq	-568(%rbp), %rax
	movq	144(%rax), %rax
	movl	-584(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rbx
	movq	-552(%rbp), %rax
	movss	.LC33(%rip), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L422:
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L473
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L424
	movq	-568(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-584(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L424:
	movq	-560(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L474
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L426
	movq	-568(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-584(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L426:
	addl	$1, -584(%rbp)
.L398:
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jle	.L427
	movl	$0, -584(%rbp)
	jmp	.L428
.L434:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L475
	movl	$0, -580(%rbp)
	jmp	.L430
.L433:
	movq	-560(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	Getword@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	je	.L476
	cmpl	$0, -584(%rbp)
	jle	.L432
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jge	.L432
	movq	-568(%rbp), %rax
	movl	-580(%rbp), %edx
	movslq	%edx, %rdx
	addq	$56, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-568(%rbp), %rax
	movq	160(%rax), %rax
	movl	-584(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-580(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-552(%rbp), %rax
	movl	%edx, -612(%rbp)
	movss	-612(%rbp), %xmm0
	movq	%rax, %rdi
	call	ascii2prob
	movd	%xmm0, %eax
	movl	%eax, (%rbx)
.L432:
	addl	$1, -580(%rbp)
.L430:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -580(%rbp)
	jl	.L433
	addl	$1, -584(%rbp)
.L428:
	movq	-568(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, -584(%rbp)
	jle	.L434
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-568(%rbp), %rax
	movl	456(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movl	%edx, 456(%rax)
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7Renormalize@PLT
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-608(%rbp), %rax
	movq	-568(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L436
.L438:
	nop
	jmp	.L360
.L439:
	nop
	jmp	.L360
.L440:
	nop
	jmp	.L360
.L441:
	nop
	jmp	.L360
.L442:
	nop
	jmp	.L360
.L443:
	nop
	jmp	.L360
.L444:
	nop
	jmp	.L360
.L445:
	nop
	jmp	.L360
.L446:
	nop
	jmp	.L360
.L447:
	nop
	jmp	.L360
.L448:
	nop
	jmp	.L360
.L449:
	nop
	jmp	.L360
.L450:
	nop
	jmp	.L360
.L451:
	nop
	jmp	.L360
.L452:
	nop
	jmp	.L360
.L453:
	nop
	jmp	.L360
.L454:
	nop
	jmp	.L360
.L455:
	nop
	jmp	.L360
.L456:
	nop
	jmp	.L360
.L457:
	nop
	jmp	.L360
.L458:
	nop
	jmp	.L360
.L459:
	nop
	jmp	.L360
.L460:
	nop
	jmp	.L360
.L461:
	nop
	jmp	.L360
.L462:
	nop
	jmp	.L360
.L463:
	nop
	jmp	.L360
.L464:
	nop
	jmp	.L360
.L465:
	nop
	jmp	.L360
.L466:
	nop
	jmp	.L360
.L467:
	nop
	jmp	.L360
.L468:
	nop
	jmp	.L360
.L469:
	nop
	jmp	.L360
.L470:
	nop
	jmp	.L360
.L471:
	nop
	jmp	.L360
.L472:
	nop
	jmp	.L360
.L473:
	nop
	jmp	.L360
.L474:
	nop
	jmp	.L360
.L475:
	nop
	jmp	.L360
.L476:
	nop
.L360:
	cmpq	$0, -568(%rbp)
	je	.L435
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
.L435:
	movq	-608(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L436:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L437
	call	__stack_chk_fail@PLT
.L437:
	addq	$616, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	read_asc19hmm, .-read_asc19hmm
	.type	read_bin19hmm, @function
read_bin19hmm:
.LFB16:
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
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L478
	movl	$0, %eax
	jmp	.L482
.L478:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L480
	movl	$0, %eax
	jmp	.L482
.L480:
	movq	-56(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	read_plan9_binhmm
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L481
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L482
.L481:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan9toPlan7@PLT
	movq	-40(%rbp), %rbx
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P9FreeHMM@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L482:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L483
	call	__stack_chk_fail@PLT
.L483:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	read_bin19hmm, .-read_bin19hmm
	.type	read_asc17hmm, @function
read_asc17hmm:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L485
	movq	-568(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L486
.L485:
	movl	$0, %eax
	jmp	.L489
.L486:
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	read_plan9_aschmm
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	.L488
	movq	-576(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L489
.L488:
	leaq	-560(%rbp), %rdx
	movq	-552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan9toPlan7@PLT
	movq	-560(%rbp), %rbx
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	P9FreeHMM@PLT
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7Renormalize@PLT
	movq	-560(%rbp), %rdx
	movq	-576(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L489:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L490
	call	__stack_chk_fail@PLT
.L490:
	addq	$568, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	read_asc17hmm, .-read_asc17hmm
	.type	read_bin17hmm, @function
read_bin17hmm:
.LFB18:
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
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L492
	movl	$0, %eax
	jmp	.L496
.L492:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L494
	movl	$0, %eax
	jmp	.L496
.L494:
	movq	-56(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	read_plan9_binhmm
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L495
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L496
.L495:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan9toPlan7@PLT
	movq	-40(%rbp), %rbx
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P9FreeHMM@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L496:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L497
	call	__stack_chk_fail@PLT
.L497:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	read_bin17hmm, .-read_bin17hmm
	.section	.rodata
.LC88:
	.string	"1.1 ASCII HMMs unsupported"
	.text
	.type	read_asc11hmm, @function
read_asc11hmm:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC88(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	read_asc11hmm, .-read_asc11hmm
	.type	read_bin11hmm, @function
read_bin11hmm:
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L501
	movl	$0, %eax
	jmp	.L505
.L501:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L503
	movl	$0, %eax
	jmp	.L505
.L503:
	movq	-56(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	read_plan9_binhmm
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L504
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L505
.L504:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan9toPlan7@PLT
	movq	-40(%rbp), %rbx
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P9FreeHMM@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L505:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L506
	call	__stack_chk_fail@PLT
.L506:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	read_bin11hmm, .-read_bin11hmm
	.section	.rodata
.LC89:
	.string	"1.0 ASCII HMMs unsupported"
	.text
	.type	read_asc10hmm, @function
read_asc10hmm:
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
	leaq	.LC89(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	read_asc10hmm, .-read_asc10hmm
	.type	read_bin10hmm, @function
read_bin10hmm:
.LFB22:
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
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L510
	movl	$0, %eax
	jmp	.L514
.L510:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L512
	movl	$0, %eax
	jmp	.L514
.L512:
	movq	-56(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	read_plan9_binhmm
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L513
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L514
.L513:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Plan9toPlan7@PLT
	movq	-40(%rbp), %rbx
	leaq	.LC87(%rip), %rdi
	call	Strdup@PLT
	movq	%rax, 48(%rbx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	Plan7SetCtime@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	P9FreeHMM@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L514:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L515
	call	__stack_chk_fail@PLT
.L515:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	read_bin10hmm, .-read_bin10hmm
	.section	.rodata
.LC90:
	.string	"%6d"
	.text
	.type	prob2ascii, @function
prob2ascii:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L517
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jne	.L517
	leaq	.LC51(%rip), %rax
	jmp	.L519
.L517:
	movss	-8(%rbp), %xmm0
	movl	-4(%rbp), %eax
	movaps	%xmm0, %xmm1
	movl	%eax, -12(%rbp)
	movss	-12(%rbp), %xmm0
	call	Prob2Score@PLT
	movl	%eax, %edx
	leaq	.LC90(%rip), %rsi
	leaq	buffer.7048(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	buffer.7048(%rip), %rax
.L519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	prob2ascii, .-prob2ascii
	.type	ascii2prob, @function
ascii2prob:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L522
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movl	%edx, %edi
	call	Score2Prob@PLT
	movd	%xmm0, %eax
	jmp	.L524
.L522:
	movl	.LC86(%rip), %eax
.L524:
	movl	%eax, -16(%rbp)
	movss	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ascii2prob, .-ascii2prob
	.type	byteswap, @function
byteswap:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L526
.L527:
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L526:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -4(%rbp)
	jl	.L527
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	byteswap, .-byteswap
	.type	write_bin_string, @function
write_bin_string:
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
	cmpq	$0, -32(%rbp)
	je	.L529
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L532
.L529:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L532:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L531
	call	__stack_chk_fail@PLT
.L531:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	write_bin_string, .-write_bin_string
	.type	read_bin_string, @function
read_bin_string:
.LFB27:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L534
	movl	$0, %eax
	jmp	.L538
.L534:
	cmpl	$0, -44(%rbp)
	je	.L536
	leaq	-20(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L536:
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$1370, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L537
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L538
.L537:
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L538:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L539
	call	__stack_chk_fail@PLT
.L539:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	read_bin_string, .-read_bin_string
	.section	.rodata
.LC91:
	.string	"\n"
.LC92:
	.string	"%s%s\n"
	.text
	.type	multiline, @function
multiline:
.LFB28:
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
	cmpq	$0, -40(%rbp)
	je	.L545
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	jmp	.L543
.L544:
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	.LC91(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
.L543:
	cmpq	$0, -16(%rbp)
	jne	.L544
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L540
.L545:
	nop
.L540:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	multiline, .-multiline
	.section	.rodata
	.align 8
.LC93:
	.string	"A nonbiological alphabet size of %d; so I can't convert plan9 to plan7"
	.align 8
.LC94:
	.string	"malloc failed for reading hmm in\n"
	.text
	.type	read_plan9_binhmm, @function
read_plan9_binhmm:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L547
	movl	$0, %eax
	jmp	.L598
.L547:
	movq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L549
	movl	$0, %eax
	jmp	.L598
.L549:
	cmpl	$0, -96(%rbp)
	je	.L550
	leaq	-80(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	leaq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L550:
	movl	-72(%rbp), %eax
	cmpl	$4, %eax
	jne	.L551
	movl	$2, -68(%rbp)
	jmp	.L552
.L551:
	movl	-72(%rbp), %eax
	cmpl	$20, %eax
	jne	.L553
	movl	$3, -68(%rbp)
	jmp	.L552
.L553:
	movl	-72(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC93(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L552:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L554
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L555
.L554:
	movl	-68(%rbp), %edx
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, %edx
	je	.L555
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rax, %rbx
	movl	Alphabet_type(%rip), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L555:
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	P9AllocHMM@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L556
	leaq	.LC94(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L556:
	cmpl	$7, -92(%rbp)
	jne	.L557
	movq	-88(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L558
	movl	$0, %eax
	jmp	.L598
.L558:
	cmpl	$0, -96(%rbp)
	je	.L559
	leaq	-76(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L559:
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1475, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 112(%rax)
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L560
	movl	$0, %eax
	jmp	.L598
.L560:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movl	-76(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L557:
	movq	-88(%rbp), %rdx
	leaq	-68(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L561
	movl	$0, %eax
	jmp	.L598
.L561:
	movl	Alphabet_size(%rip), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L562
	movl	$0, %eax
	jmp	.L598
.L562:
	cmpl	$1, -92(%rbp)
	jne	.L563
	movl	Alphabet_size(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L563:
	cmpl	$5, -92(%rbp)
	je	.L564
	cmpl	$7, -92(%rbp)
	jne	.L565
.L564:
	movq	-56(%rbp), %rax
	leaq	144(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L566
	movl	$0, %eax
	jmp	.L598
.L566:
	cmpl	$0, -96(%rbp)
	je	.L567
	movq	-56(%rbp), %rax
	addq	$144, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L567:
	movq	-56(%rbp), %rax
	movl	144(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L568
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L568
	movl	$0, %eax
	jmp	.L598
.L568:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$1, %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	144(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L569
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L569
	movl	$0, %eax
	jmp	.L598
.L569:
	movq	-56(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	$1, %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L565:
	cmpl	$7, -92(%rbp)
	jne	.L570
	movl	Alphabet_size(%rip), %eax
	cltq
	movq	-56(%rbp), %rdx
	leaq	32(%rdx), %rdi
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L571
	movl	$0, %eax
	jmp	.L598
.L571:
	cmpl	$0, -96(%rbp)
	je	.L572
	movl	$0, -60(%rbp)
	jmp	.L573
.L574:
	movl	-60(%rbp), %eax
	cltq
	addq	$8, %rax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -60(%rbp)
.L573:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L574
	jmp	.L572
.L570:
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	P9DefaultNullModel@PLT
.L572:
	movl	$0, -64(%rbp)
	jmp	.L575
.L597:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L576
	movl	$0, %eax
	jmp	.L598
.L576:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L577
	movl	$0, %eax
	jmp	.L598
.L577:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L578
	movl	$0, %eax
	jmp	.L598
.L578:
	movl	Alphabet_size(%rip), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rcx
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$92, %rdx, %rdx
	addq	%rcx, %rdx
	leaq	12(%rdx), %rdi
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L579
	movl	$0, %eax
	jmp	.L598
.L579:
	cmpl	$0, -96(%rbp)
	je	.L580
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movl	$0, -60(%rbp)
	jmp	.L581
.L582:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -60(%rbp)
.L581:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L582
.L580:
	cmpl	$1, -92(%rbp)
	jne	.L583
	movl	Alphabet_size(%rip), %eax
	addl	$3, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L583:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L584
	movl	$0, %eax
	jmp	.L598
.L584:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L585
	movl	$0, %eax
	jmp	.L598
.L585:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L586
	movl	$0, %eax
	jmp	.L598
.L586:
	cmpl	$0, -96(%rbp)
	je	.L587
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
.L587:
	cmpl	$1, -92(%rbp)
	jne	.L588
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	fseek@PLT
.L588:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L589
	movl	$0, %eax
	jmp	.L598
.L589:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L590
	movl	$0, %eax
	jmp	.L598
.L590:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L591
	movl	$0, %eax
	jmp	.L598
.L591:
	movl	Alphabet_size(%rip), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rcx
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$92, %rdx, %rdx
	addq	%rcx, %rdx
	leaq	12(%rdx), %rdi
	movq	-88(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L592
	movl	$0, %eax
	jmp	.L598
.L592:
	cmpl	$0, -96(%rbp)
	je	.L593
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	movl	$0, -60(%rbp)
	jmp	.L594
.L595:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	byteswap
	addl	$1, -60(%rbp)
.L594:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L595
.L593:
	cmpl	$1, -92(%rbp)
	jne	.L596
	movl	Alphabet_size(%rip), %eax
	addl	$3, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L596:
	addl	$1, -64(%rbp)
.L575:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jle	.L597
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	P9Renormalize@PLT
	movq	-56(%rbp), %rax
.L598:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L599
	call	__stack_chk_fail@PLT
.L599:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	read_plan9_binhmm, .-read_plan9_binhmm
	.section	.rodata
.LC95:
	.string	"###MATCH_STATE"
.LC96:
	.string	"###INSERT_STATE"
.LC97:
	.string	"###DELETE_STATE"
	.text
	.type	read_plan9_aschmm, @function
read_plan9_aschmm:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)
	movl	%esi, -604(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L601
	movl	$0, %eax
	jmp	.L681
.L601:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L603
	movl	$0, %eax
	jmp	.L681
.L603:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L604
	movl	$0, %eax
	jmp	.L681
.L604:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -580(%rbp)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L605
	movl	$0, %eax
	jmp	.L681
.L605:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L606
	movl	$0, %eax
	jmp	.L681
.L606:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L607
	movl	$0, %eax
	jmp	.L681
.L607:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -576(%rbp)
	cmpl	$4, -576(%rbp)
	jne	.L608
	movl	$2, -584(%rbp)
	jmp	.L609
.L608:
	cmpl	$20, -576(%rbp)
	jne	.L610
	movl	$3, -584(%rbp)
	jmp	.L609
.L610:
	movl	-576(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC93(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L609:
	movl	Alphabet_type(%rip), %eax
	testl	%eax, %eax
	jne	.L611
	movl	-584(%rbp), %eax
	movl	%eax, %edi
	call	SetAlphabet@PLT
	jmp	.L612
.L611:
	movl	Alphabet_type(%rip), %eax
	cmpl	%eax, -584(%rbp)
	je	.L612
	movl	-584(%rbp), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rax, %rbx
	movl	Alphabet_type(%rip), %eax
	movl	%eax, %edi
	call	AlphabetType2String@PLT
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L612:
	movl	-580(%rbp), %eax
	movl	%eax, %edi
	call	P9AllocHMM@PLT
	movq	%rax, -560(%rbp)
	cmpq	$0, -560(%rbp)
	jne	.L613
	leaq	.LC94(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L613:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L614
	movl	$0, %eax
	jmp	.L681
.L614:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L615
	movl	$0, %eax
	jmp	.L681
.L615:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L616
	movl	$0, %eax
	jmp	.L681
.L616:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L617
	movl	$0, %eax
	jmp	.L681
.L617:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L618
	movl	$0, %eax
	jmp	.L681
.L618:
	cmpl	$2, -604(%rbp)
	jne	.L619
	movl	$0, -588(%rbp)
	jmp	.L620
.L622:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L621
	movl	$0, %eax
	jmp	.L681
.L621:
	addl	$1, -588(%rbp)
.L620:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -588(%rbp)
	jl	.L622
.L619:
	cmpl	$6, -604(%rbp)
	jne	.L627
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L624
	movl	$0, %eax
	jmp	.L681
.L624:
	leaq	-544(%rbp), %rax
	movl	$3, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L625
	movq	-560(%rbp), %rax
	movl	144(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 144(%rax)
.L625:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L626
	movl	$0, %eax
	jmp	.L681
.L626:
	leaq	-544(%rbp), %rax
	movl	$3, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L627
	movq	-560(%rbp), %rax
	movl	144(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, 144(%rax)
	jmp	.L627
.L680:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jne	.L628
	movl	$0, %eax
	jmp	.L681
.L628:
	leaq	.LC72(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L629
	movl	$0, %eax
	jmp	.L681
.L629:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L630
	movl	$0, %eax
	jmp	.L681
.L630:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -572(%rbp)
	cmpl	$0, -572(%rbp)
	js	.L631
	movq	-560(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, -572(%rbp)
	jle	.L632
.L631:
	movl	$0, %eax
	jmp	.L681
.L632:
	movq	-552(%rbp), %rax
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L633
	cmpl	$6, -604(%rbp)
	jne	.L634
	leaq	.LC91(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	jmp	.L635
.L637:
	addq	$1, -568(%rbp)
.L635:
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L636
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L637
.L636:
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L638
	movl	$0, %eax
	jmp	.L681
.L638:
	movq	-560(%rbp), %rax
	movq	120(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-568(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L639
.L641:
	addq	$1, -568(%rbp)
.L639:
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L640
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L641
.L640:
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	je	.L642
	movl	$0, %eax
	jmp	.L681
.L642:
	movq	-560(%rbp), %rax
	movq	128(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-568(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
.L634:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L643
	movl	$0, %eax
	jmp	.L681
.L643:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L644
	movl	$0, %eax
	jmp	.L681
.L644:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L645
	movl	$0, %eax
	jmp	.L681
.L645:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L646
	movl	$0, %eax
	jmp	.L681
.L646:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L647
	movl	$0, %eax
	jmp	.L681
.L647:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L648
	movl	$0, %eax
	jmp	.L681
.L648:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rax)
	movl	$0, -588(%rbp)
	jmp	.L649
.L652:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L650
	movl	$0, %eax
	jmp	.L681
.L650:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L651
	movl	$0, %eax
	jmp	.L681
.L651:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	cvtsd2ss	%xmm0, %xmm0
	movl	-588(%rbp), %eax
	cltq
	movss	%xmm0, 12(%rdx,%rax,4)
	addl	$1, -588(%rbp)
.L649:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -588(%rbp)
	jl	.L652
	cmpl	$2, -604(%rbp)
	jne	.L627
	movl	$0, -588(%rbp)
	jmp	.L653
.L655:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L654
	movl	$0, %eax
	jmp	.L681
.L654:
	addl	$1, -588(%rbp)
.L653:
	movl	Alphabet_size(%rip), %eax
	addl	$3, %eax
	cmpl	%eax, -588(%rbp)
	jl	.L655
	jmp	.L627
.L633:
	movq	-552(%rbp), %rax
	leaq	.LC96(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L656
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L657
	movl	$0, %eax
	jmp	.L681
.L657:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L658
	movl	$0, %eax
	jmp	.L681
.L658:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L659
	movl	$0, %eax
	jmp	.L681
.L659:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L660
	movl	$0, %eax
	jmp	.L681
.L660:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L661
	movl	$0, %eax
	jmp	.L681
.L661:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L662
	movl	$0, %eax
	jmp	.L681
.L662:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rax)
	movl	$0, -588(%rbp)
	jmp	.L663
.L666:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L664
	movl	$0, %eax
	jmp	.L681
.L664:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L665
	movl	$0, %eax
	jmp	.L681
.L665:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rax, %rdx
	cvtsd2ss	%xmm0, %xmm0
	movl	-588(%rbp), %eax
	cltq
	movss	%xmm0, 12(%rdx,%rax,4)
	addl	$1, -588(%rbp)
.L663:
	movl	Alphabet_size(%rip), %eax
	cmpl	%eax, -588(%rbp)
	jl	.L666
	cmpl	$2, -604(%rbp)
	jne	.L627
	movl	$0, -588(%rbp)
	jmp	.L667
.L669:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L668
	movl	$0, %eax
	jmp	.L681
.L668:
	addl	$1, -588(%rbp)
.L667:
	movl	Alphabet_size(%rip), %eax
	addl	$3, %eax
	cmpl	%eax, -588(%rbp)
	jl	.L669
	jmp	.L627
.L656:
	movq	-552(%rbp), %rax
	leaq	.LC97(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L670
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L671
	movl	$0, %eax
	jmp	.L681
.L671:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L672
	movl	$0, %eax
	jmp	.L681
.L672:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L673
	movl	$0, %eax
	jmp	.L681
.L673:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L674
	movl	$0, %eax
	jmp	.L681
.L674:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rax)
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L675
	movl	$0, %eax
	jmp	.L681
.L675:
	leaq	-544(%rbp), %rax
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.L676
	movl	$0, %eax
	jmp	.L681
.L676:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-560(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-572(%rbp), %eax
	cltq
	imulq	$92, %rax, %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rax)
	cmpl	$2, -604(%rbp)
	jne	.L627
	movl	$0, -588(%rbp)
	jmp	.L677
.L679:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L678
	movl	$0, %eax
	jmp	.L681
.L678:
	addl	$1, -588(%rbp)
.L677:
	cmpl	$2, -588(%rbp)
	jle	.L679
	jmp	.L627
.L670:
	movl	$0, %eax
	jmp	.L681
.L627:
	movq	-600(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L680
	movq	-560(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	P9DefaultNullModel@PLT
	movq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	P9Renormalize@PLT
	movq	-560(%rbp), %rax
.L681:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L682
	call	__stack_chk_fail@PLT
.L682:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	read_plan9_aschmm, .-read_plan9_aschmm
	.local	buffer.7048
	.comm	buffer.7048,8,8
	.section	.rodata
	.align 4
.LC33:
	.long	1065353216
	.align 4
.LC84:
	.long	1065305418
	.align 4
.LC85:
	.long	1065336456
	.align 4
.LC86:
	.long	0
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
