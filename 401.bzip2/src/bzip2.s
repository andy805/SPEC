	.file	"bzip2.c"
	.text
	.comm	verbosity,4,4
	.comm	keepInputFiles,1,1
	.comm	smallMode,1,1
	.comm	deleteOutputOnInterrupt,1,1
	.comm	forceOverwrite,1,1
	.comm	testFailsExist,1,1
	.comm	unzFailsExist,1,1
	.comm	noisy,1,1
	.comm	numFileNames,4,4
	.comm	numFilesProcessed,4,4
	.comm	blockSize100k,4,4
	.comm	exitValue,4,4
	.comm	opMode,4,4
	.comm	srcMode,4,4
	.comm	longestFileName,4,4
	.comm	inName,1034,32
	.comm	outName,1034,32
	.comm	tmpName,1034,32
	.comm	progName,8,8
	.comm	progNameReally,1034,32
	.comm	outputHandleJustInCase,4,4
	.comm	workFactor,4,4
	.type	uInt64_from_UInt32s, @function
uInt64_from_UInt32s:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 7(%rax)
	movl	-16(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 6(%rax)
	movl	-16(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 5(%rax)
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 4(%rax)
	movl	-12(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 3(%rax)
	movl	-12(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 2(%rax)
	movl	-12(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 1(%rax)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	uInt64_from_UInt32s, .-uInt64_from_UInt32s
	.type	uInt64_to_double, @function
uInt64_to_double:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L4:
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -20(%rbp)
.L3:
	cmpl	$7, -20(%rbp)
	jle	.L4
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	uInt64_to_double, .-uInt64_to_double
	.type	uInt64_isZero, @function
uInt64_isZero:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	addl	$1, -4(%rbp)
.L7:
	cmpl	$7, -4(%rbp)
	jle	.L10
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	uInt64_isZero, .-uInt64_isZero
	.type	uInt64_qrm10, @function
uInt64_qrm10:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$7, -8(%rbp)
	jmp	.L12
.L13:
	movl	-12(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	movl	-4(%rbp), %ecx
	movl	$-858993459, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%rbp)
	subl	$1, -8(%rbp)
.L12:
	cmpl	$0, -8(%rbp)
	jns	.L13
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	uInt64_qrm10, .-uInt64_qrm10
	.type	uInt64_toAscii, @function
uInt64_toAscii:
.LFB9:
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
	movl	$0, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L16:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	uInt64_qrm10
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	leal	48(%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	movb	%dl, -48(%rbp,%rax)
	addl	$1, -64(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	uInt64_isZero
	testb	%al, %al
	je	.L16
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -68(%rbp)
	jmp	.L17
.L18:
	movl	-64(%rbp), %eax
	subl	-68(%rbp), %eax
	subl	$1, %eax
	cltq
	movzbl	-48(%rbp,%rax), %edx
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addl	$1, -68(%rbp)
.L17:
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L18
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	uInt64_toAscii, .-uInt64_toAscii
	.type	myfeof, @function
myfeof:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	spec_getc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	spec_ungetc@PLT
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	myfeof, .-myfeof
	.section	.rodata
.LC3:
	.string	" no data compressed.\n"
	.align 8
.LC6:
	.string	"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\n"
.LC7:
	.string	"compress:unexpected error"
.LC8:
	.string	"compress:end"
	.text
	.globl	compressStream
	.type	compressStream, @function
compressStream:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$5168, %rsp
	movl	%edi, -5156(%rbp)
	movl	%esi, -5160(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -5112(%rbp)
	movl	workFactor(%rip), %edi
	movl	verbosity(%rip), %ecx
	movl	blockSize100k(%rip), %edx
	movl	-5160(%rbp), %esi
	leaq	-5128(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	BZ2_bzWriteOpen@PLT
	movq	%rax, -5112(%rbp)
	movl	-5128(%rbp), %eax
	testl	%eax, %eax
	jne	.L47
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L31
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L31:
	movl	-5156(%rbp), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	jne	.L48
	movl	-5156(%rbp), %edx
	leaq	-5008(%rbp), %rax
	movl	%edx, %ecx
	movl	$5000, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	spec_fread@PLT
	movl	%eax, -5120(%rbp)
	cmpl	$0, -5120(%rbp)
	jle	.L29
	movl	-5120(%rbp), %ecx
	leaq	-5008(%rbp), %rdx
	movq	-5112(%rbp), %rsi
	leaq	-5128(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzWrite@PLT
.L29:
	movl	-5128(%rbp), %eax
	testl	%eax, %eax
	jne	.L49
	jmp	.L31
.L48:
	nop
	leaq	-5136(%rbp), %r8
	leaq	-5140(%rbp), %rdi
	leaq	-5144(%rbp), %rdx
	movq	-5112(%rbp), %rsi
	leaq	-5128(%rbp), %rax
	subq	$8, %rsp
	leaq	-5132(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BZ2_bzWriteClose64@PLT
	addq	$16, %rsp
	movl	-5128(%rbp), %eax
	testl	%eax, %eax
	jne	.L50
	movl	$0, -5116(%rbp)
	cmpl	$-1, -5116(%rbp)
	je	.L51
	cmpl	$1, -5160(%rbp)
	je	.L35
	movl	$0, -5116(%rbp)
	movl	$0, outputHandleJustInCase(%rip)
	cmpl	$-1, -5116(%rbp)
	je	.L52
.L35:
	movl	$0, outputHandleJustInCase(%rip)
	movl	$0, -5116(%rbp)
	cmpl	$-1, -5116(%rbp)
	je	.L53
	movl	verbosity(%rip), %eax
	testl	%eax, %eax
	jle	.L54
	movl	-5144(%rbp), %eax
	testl	%eax, %eax
	jne	.L38
	movl	-5140(%rbp), %eax
	testl	%eax, %eax
	jne	.L38
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
	jmp	.L23
.L38:
	movl	-5140(%rbp), %edx
	movl	-5144(%rbp), %ecx
	leaq	-5088(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uInt64_from_UInt32s
	movl	-5132(%rbp), %edx
	movl	-5136(%rbp), %ecx
	leaq	-5080(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	uInt64_from_UInt32s
	leaq	-5088(%rbp), %rax
	movq	%rax, %rdi
	call	uInt64_to_double
	movq	%xmm0, %rax
	movq	%rax, -5104(%rbp)
	leaq	-5080(%rbp), %rax
	movq	%rax, %rdi
	call	uInt64_to_double
	movq	%xmm0, %rax
	movq	%rax, -5096(%rbp)
	leaq	-5088(%rbp), %rdx
	leaq	-5072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uInt64_toAscii
	leaq	-5080(%rbp), %rdx
	leaq	-5040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uInt64_toAscii
	movsd	-5096(%rbp), %xmm0
	divsd	-5104(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LC4(%rip), %xmm1
	movapd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	-5096(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-5104(%rbp), %xmm1
	movsd	-5104(%rbp), %xmm0
	divsd	-5096(%rbp), %xmm0
	movq	stderr(%rip), %rax
	leaq	-5040(%rbp), %rcx
	leaq	-5072(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$3, %eax
	call	fprintf@PLT
	jmp	.L54
.L47:
	nop
	jmp	.L25
.L49:
	nop
	jmp	.L25
.L50:
	nop
.L25:
	leaq	-5136(%rbp), %r8
	leaq	-5140(%rbp), %rdi
	leaq	-5144(%rbp), %rdx
	movq	-5112(%rbp), %rsi
	leaq	-5124(%rbp), %rax
	subq	$8, %rsp
	leaq	-5132(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BZ2_bzWriteClose64@PLT
	addq	$16, %rsp
	movl	-5128(%rbp), %eax
	cmpl	$-6, %eax
	je	.L34
	cmpl	$-3, %eax
	je	.L41
	cmpl	$-9, %eax
	jne	.L46
	call	configError
	jmp	.L43
.L41:
	call	outOfMemory
	jmp	.L43
.L51:
	nop
	jmp	.L34
.L52:
	nop
	jmp	.L34
.L53:
	nop
.L34:
	call	ioError
	jmp	.L43
.L46:
	leaq	.LC7(%rip), %rdi
	call	panic
.L43:
	leaq	.LC8(%rip), %rdi
	call	panic
	jmp	.L23
.L54:
	nop
.L23:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	compressStream, .-compressStream
	.section	.rodata
.LC9:
	.string	"decompress:bzReadGetUnused"
.LC10:
	.string	"\n    "
	.align 8
.LC11:
	.string	"\n%s: %s: trailing garbage after EOF ignored\n"
.LC12:
	.string	"decompress:unexpected error"
.LC13:
	.string	"decompress:end"
	.text
	.globl	uncompressStream
	.type	uncompressStream, @function
uncompressStream:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$10096, %rsp
	movl	%edi, -10084(%rbp)
	movl	%esi, -10088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -10032(%rbp)
	movl	$0, -10060(%rbp)
	movl	$0, -10056(%rbp)
.L70:
	movl	-10060(%rbp), %r8d
	movzbl	smallMode(%rip), %eax
	movzbl	%al, %ecx
	movl	verbosity(%rip), %edx
	leaq	-5008(%rbp), %rdi
	movl	-10084(%rbp), %esi
	leaq	-10068(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BZ2_bzReadOpen@PLT
	movq	%rax, -10032(%rbp)
	cmpq	$0, -10032(%rbp)
	je	.L98
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	jne	.L98
	addl	$1, -10056(%rbp)
	jmp	.L57
.L62:
	leaq	-10016(%rbp), %rdx
	movq	-10032(%rbp), %rsi
	leaq	-10068(%rbp), %rax
	movl	$5000, %ecx
	movq	%rax, %rdi
	call	BZ2_bzRead@PLT
	movl	%eax, -10048(%rbp)
	movl	-10068(%rbp), %eax
	cmpl	$-5, %eax
	je	.L99
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L60
	movl	-10068(%rbp), %eax
	cmpl	$4, %eax
	jne	.L57
.L60:
	cmpl	$0, -10048(%rbp)
	jle	.L57
	movl	-10088(%rbp), %ecx
	movl	-10048(%rbp), %edx
	leaq	-10016(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	spec_fwrite@PLT
.L57:
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L62
	movl	-10068(%rbp), %eax
	cmpl	$4, %eax
	jne	.L100
	leaq	-10060(%rbp), %rcx
	leaq	-10040(%rbp), %rdx
	movq	-10032(%rbp), %rsi
	leaq	-10068(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzReadGetUnused@PLT
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L64
	leaq	.LC9(%rip), %rdi
	call	panic
.L64:
	movq	-10040(%rbp), %rax
	movq	%rax, -10024(%rbp)
	movl	$0, -10052(%rbp)
	jmp	.L65
.L66:
	movl	-10052(%rbp), %eax
	movslq	%eax, %rdx
	movq	-10024(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-10052(%rbp), %eax
	cltq
	movb	%dl, -5008(%rbp,%rax)
	addl	$1, -10052(%rbp)
.L65:
	movl	-10060(%rbp), %eax
	cmpl	%eax, -10052(%rbp)
	jl	.L66
	movq	-10032(%rbp), %rdx
	leaq	-10068(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BZ2_bzReadClose@PLT
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L67
	leaq	.LC9(%rip), %rdi
	call	panic
.L67:
	movl	-10060(%rbp), %eax
	testl	%eax, %eax
	jne	.L70
	movl	-10084(%rbp), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	jne	.L101
	jmp	.L70
.L69:
.L101:
	nop
.L93:
	movl	$0, -10044(%rbp)
	cmpl	$-1, -10044(%rbp)
	je	.L102
	movl	$0, -10044(%rbp)
	cmpl	$0, -10044(%rbp)
	jne	.L103
	cmpl	$1, -10088(%rbp)
	je	.L74
	movl	$0, -10044(%rbp)
	movl	$0, outputHandleJustInCase(%rip)
	cmpl	$-1, -10044(%rbp)
	je	.L104
.L74:
	movl	$0, outputHandleJustInCase(%rip)
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L75
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
.L75:
	movl	$1, %eax
	jmp	.L91
.L99:
	nop
.L59:
	movzbl	forceOverwrite(%rip), %eax
	testb	%al, %al
	je	.L98
	movl	-10084(%rbp), %eax
	movl	%eax, %edi
	call	spec_rewind@PLT
.L80:
	movl	-10084(%rbp), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	jne	.L105
	movl	-10084(%rbp), %edx
	leaq	-10016(%rbp), %rax
	movl	%edx, %ecx
	movl	$5000, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	spec_fread@PLT
	movl	%eax, -10048(%rbp)
	cmpl	$0, -10048(%rbp)
	jle	.L80
	movl	-10088(%rbp), %ecx
	movl	-10048(%rbp), %edx
	leaq	-10016(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	spec_fwrite@PLT
	jmp	.L80
.L105:
	nop
	jmp	.L93
.L98:
	nop
	jmp	.L56
.L100:
	nop
.L56:
	movq	-10032(%rbp), %rdx
	leaq	-10064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BZ2_bzReadClose@PLT
	movl	-10068(%rbp), %eax
	addl	$9, %eax
	cmpl	$6, %eax
	ja	.L81
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L83(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L83(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L82-.L83
	.long	.L81-.L83
	.long	.L84-.L83
	.long	.L72-.L83
	.long	.L95-.L83
	.long	.L86-.L83
	.long	.L87-.L83
	.text
.L82:
	call	configError
	jmp	.L88
.L102:
	nop
	jmp	.L72
.L103:
	nop
	jmp	.L72
.L104:
	nop
.L72:
	call	ioError
	jmp	.L88
.L86:
	call	crcError
.L87:
	call	outOfMemory
.L84:
	call	compressedStreamEOF
.L95:
	cmpl	$1, -10056(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L91
.L89:
	movzbl	noisy(%rip), %eax
	testb	%al, %al
	je	.L90
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	inName(%rip), %rcx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L90:
	movl	$1, %eax
	jmp	.L91
.L81:
	leaq	.LC12(%rip), %rdi
	call	panic
.L88:
	leaq	.LC13(%rip), %rdi
	call	panic
	movl	$1, %eax
.L91:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	uncompressStream, .-uncompressStream
	.section	.rodata
.LC14:
	.string	"test:bzReadGetUnused"
.LC15:
	.string	"%s: %s: "
	.align 8
.LC16:
	.string	"data integrity (CRC) error in data\n"
.LC17:
	.string	"file ends unexpectedly\n"
	.align 8
.LC18:
	.string	"bad magic number (file not created by bzip2)\n"
	.align 8
.LC19:
	.string	"trailing garbage after EOF ignored\n"
.LC20:
	.string	"test:unexpected error"
.LC21:
	.string	"test:end"
	.text
	.type	testStream, @function
testStream:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$10096, %rsp
	movl	%edi, -10084(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -10032(%rbp)
	movl	$0, -10060(%rbp)
	movl	$0, -10056(%rbp)
.L117:
	movl	-10060(%rbp), %r8d
	movzbl	smallMode(%rip), %eax
	movzbl	%al, %ecx
	movl	verbosity(%rip), %edx
	leaq	-5008(%rbp), %rdi
	movl	-10084(%rbp), %esi
	leaq	-10068(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BZ2_bzReadOpen@PLT
	movq	%rax, -10032(%rbp)
	cmpq	$0, -10032(%rbp)
	je	.L138
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	jne	.L138
	addl	$1, -10056(%rbp)
	jmp	.L108
.L109:
	leaq	-10016(%rbp), %rdx
	movq	-10032(%rbp), %rsi
	leaq	-10068(%rbp), %rax
	movl	$5000, %ecx
	movq	%rax, %rdi
	call	BZ2_bzRead@PLT
	movl	%eax, -10044(%rbp)
	movl	-10068(%rbp), %eax
	cmpl	$-5, %eax
	je	.L139
.L108:
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L109
	movl	-10068(%rbp), %eax
	cmpl	$4, %eax
	jne	.L140
	leaq	-10060(%rbp), %rcx
	leaq	-10040(%rbp), %rdx
	movq	-10032(%rbp), %rsi
	leaq	-10068(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzReadGetUnused@PLT
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L111
	leaq	.LC14(%rip), %rdi
	call	panic
.L111:
	movq	-10040(%rbp), %rax
	movq	%rax, -10024(%rbp)
	movl	$0, -10052(%rbp)
	jmp	.L112
.L113:
	movl	-10052(%rbp), %eax
	movslq	%eax, %rdx
	movq	-10024(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-10052(%rbp), %eax
	cltq
	movb	%dl, -5008(%rbp,%rax)
	addl	$1, -10052(%rbp)
.L112:
	movl	-10060(%rbp), %eax
	cmpl	%eax, -10052(%rbp)
	jl	.L113
	movq	-10032(%rbp), %rdx
	leaq	-10068(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BZ2_bzReadClose@PLT
	movl	-10068(%rbp), %eax
	testl	%eax, %eax
	je	.L114
	leaq	.LC14(%rip), %rdi
	call	panic
.L114:
	movl	-10060(%rbp), %eax
	testl	%eax, %eax
	jne	.L117
	movl	-10084(%rbp), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	jne	.L141
	jmp	.L117
.L141:
	nop
	movl	$0, -10048(%rbp)
	cmpl	$-1, -10048(%rbp)
	je	.L142
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L120
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
.L120:
	movl	$1, %eax
	jmp	.L133
.L138:
	nop
	jmp	.L107
.L139:
	nop
	jmp	.L107
.L140:
	nop
.L107:
	movq	-10032(%rbp), %rdx
	leaq	-10064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BZ2_bzReadClose@PLT
	movl	verbosity(%rip), %eax
	testl	%eax, %eax
	jne	.L122
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	inName(%rip), %rcx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L122:
	movl	-10068(%rbp), %eax
	addl	$9, %eax
	cmpl	$6, %eax
	ja	.L123
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L125(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L125(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L125:
	.long	.L124-.L125
	.long	.L123-.L125
	.long	.L126-.L125
	.long	.L119-.L125
	.long	.L136-.L125
	.long	.L128-.L125
	.long	.L129-.L125
	.text
.L124:
	call	configError
	jmp	.L130
.L142:
	nop
.L119:
	call	ioError
	jmp	.L130
.L128:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L133
.L129:
	call	outOfMemory
.L126:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC17(%rip), %rdi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L133
.L136:
	cmpl	$1, -10056(%rbp)
	jne	.L131
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	leaq	.LC18(%rip), %rdi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L133
.L131:
	movzbl	noisy(%rip), %eax
	testb	%al, %al
	je	.L132
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC19(%rip), %rdi
	call	fwrite@PLT
.L132:
	movl	$1, %eax
	jmp	.L133
.L123:
	leaq	.LC20(%rip), %rdi
	call	panic
.L130:
	leaq	.LC21(%rip), %rdi
	call	panic
	movl	$1, %eax
.L133:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	testStream, .-testStream
	.type	setExit, @function
setExit:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$0, exitValue(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	setExit, .-setExit
	.section	.rodata
	.align 8
.LC22:
	.string	"\nIt is possible that the compressed file(s) have become corrupted.\nYou can use the -tvv option to test integrity of such files.\n\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.text
	.type	cadvise, @function
cadvise:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	noisy(%rip), %eax
	testb	%al, %al
	je	.L146
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$240, %edx
	movl	$1, %esi
	leaq	.LC22(%rip), %rdi
	call	fwrite@PLT
.L146:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	cadvise, .-cadvise
	.section	.rodata
	.align 8
.LC23:
	.string	"\tInput file = %s, output file = %s\n"
	.text
	.type	showFileNames, @function
showFileNames:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	noisy(%rip), %eax
	testb	%al, %al
	je	.L149
	movq	stderr(%rip), %rax
	leaq	outName(%rip), %rcx
	leaq	inName(%rip), %rdx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L149:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	showFileNames, .-showFileNames
	.type	cleanUpAndFail, @function
cleanUpAndFail:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	setExit
	movl	exitValue(%rip), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE17:
	.size	cleanUpAndFail, .-cleanUpAndFail
	.section	.rodata
	.align 8
.LC24:
	.string	"\n%s: PANIC -- internal consistency error:\n\t%s\n\tThis is probably a BUG, but it may be in your COMPILER.  Please do not bother\n\tthe original author.\n"
	.text
	.type	panic, @function
panic:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rcx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	call	showFileNames
	movl	$3, %edi
	call	cleanUpAndFail
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	panic, .-panic
	.section	.rodata
	.align 8
.LC25:
	.string	"\n%s: Data integrity error when decompressing.\n"
	.text
	.type	crcError, @function
crcError:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	call	showFileNames
	call	cadvise
	movl	$2, %edi
	call	cleanUpAndFail
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	crcError, .-crcError
	.section	.rodata
	.align 8
.LC26:
	.string	"\n%s: Compressed file ends unexpectedly;\n\tperhaps it is corrupted?  *Possible* reason follows.\n"
	.text
	.type	compressedStreamEOF, @function
compressedStreamEOF:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	noisy(%rip), %eax
	testb	%al, %al
	je	.L154
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	progName(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	call	showFileNames
	call	cadvise
.L154:
	movl	$2, %edi
	call	cleanUpAndFail
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	compressedStreamEOF, .-compressedStreamEOF
	.section	.rodata
	.align 8
.LC27:
	.string	"\n%s: I/O or other error, bailing out.  Possible reason follows.\n"
	.text
	.type	ioError, @function
ioError:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	progName(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	call	showFileNames
	movl	$1, %edi
	call	cleanUpAndFail
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ioError, .-ioError
	.section	.rodata
	.align 8
.LC28:
	.string	"\n%s: Control-C or similar caught, quitting.\n"
	.text
	.type	mySignalCatcher, @function
mySignalCatcher:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	cleanUpAndFail
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	mySignalCatcher, .-mySignalCatcher
	.section	.rodata
	.align 8
.LC29:
	.ascii	"\n%s: Caught a SIGSEGV or SIGBUS whilst compressing.\n\n   P"
	.ascii	"ossible causes are (most likely first):\n   (1) This compute"
	.ascii	"r has unreliable memory or cache hardware\n       (a surpris"
	.ascii	"ingly common problem; try a different machi"
	.string	"ne.)\n   (2) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (3) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (1) and (2).\n\n"
	.align 8
.LC30:
	.ascii	"\n%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\n\n  "
	.ascii	" Possible causes are (most likely first):\n   (1) The compre"
	.ascii	"ssed data is corrupted, and bzip2's usual checks\n       fai"
	.ascii	"led to detect this.  Try bzip2 -tvv my_file.bz2.\n   (2) Thi"
	.ascii	"s computer has unreliable memory or cache hardware\n       ("
	.ascii	"a surprisingly common problem; try a different machi"
	.string	"ne.)\n   (3) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (4) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (2) and (3).\n\n"
	.text
	.type	mySIGSEGVorSIGBUScatcher, @function
mySIGSEGVorSIGBUScatcher:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	opMode(%rip), %eax
	cmpl	$1, %eax
	jne	.L158
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L159
.L158:
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L159:
	call	showFileNames
	movl	opMode(%rip), %eax
	cmpl	$1, %eax
	jne	.L160
	movl	$3, %edi
	call	cleanUpAndFail
	jmp	.L162
.L160:
	call	cadvise
	movl	$2, %edi
	call	cleanUpAndFail
.L162:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	mySIGSEGVorSIGBUScatcher, .-mySIGSEGVorSIGBUScatcher
	.section	.rodata
	.align 8
.LC31:
	.string	"\n%s: couldn't allocate enough memory\n"
	.text
	.type	outOfMemory, @function
outOfMemory:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	progName(%rip), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	call	showFileNames
	movl	$1, %edi
	call	cleanUpAndFail
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	outOfMemory, .-outOfMemory
	.section	.rodata
	.align 8
.LC32:
	.string	"bzip2: I'm not configured correctly for this platform!\n\tI require Int32, Int16 and Char to have sizes\n\tof 4, 2 and 1 bytes to run properly, and they don't.\n\tProbably you can fix this by defining them correctly,\n\tand recompiling.  Bye!\n"
	.text
	.type	configError, @function
configError:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$235, %edx
	movl	$1, %esi
	leaq	.LC32(%rip), %rdi
	call	fwrite@PLT
	movl	$3, %edi
	call	setExit
	movl	exitValue(%rip), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE25:
	.size	configError, .-configError
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1081081856
	.align 8
.LC4:
	.long	0
	.long	1079574528
	.align 8
.LC5:
	.long	0
	.long	1075838976
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
