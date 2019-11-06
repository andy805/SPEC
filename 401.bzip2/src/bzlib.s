	.file	"bzlib.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.ascii	"\n\nbzip2/libb"
	.string	"zip2: internal error number %d.\nThis may be a bug in bzip2/libbzip2, %s.\nIt may also be a bug in your compiler.  Please do not bother the\noriginal author of bzip2 with a bug report for this.  He\ndoesn't know anything about bzip2 as it appears in CPU2006.\n\n"
	.align 8
.LC1:
	.ascii	"\n*** A special note about internal error number 1007 ***\n\n"
	.ascii	"Experience suggests that a common cause of i.e. 1007\nis unr"
	.ascii	"eliable memory or other hardware.  The 1007 assertion\njust "
	.ascii	"happens to cross-check the results of huge numbers of\nmemor"
	.ascii	"y reads/writes, and so acts (unintendedly) as a stress\ntest"
	.ascii	" of your memory system.\n\nI suggest the following: try comp"
	.ascii	"ressing the file again,\npossibly monitoring progress in det"
	.ascii	"ail with the -vv flag.\n\n* If the error cannot be reproduce"
	.ascii	"d, and/or happens at different\n  points in compression, you"
	.ascii	" may have a flaky memory system.\n  Try a memory-test progra"
	.ascii	"m.  I have used Memtest86\n  (www.memtest86.com).  At the ti"
	.ascii	"me of writing it is free (GPLd).\n  Memtest86 tests memory m"
	.ascii	"uch more thorougly than your BIOSs\n  power-on test, and may"
	.ascii	" find failures that the BIOS doesn't"
	.string	".\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"
	.text
	.globl	BZ2_bz__AssertH__fail
	.type	BZ2_bz__AssertH__fail, @function
BZ2_bz__AssertH__fail:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	BZ2_bzlibVersion
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	cmpl	$1007, -4(%rbp)
	jne	.L2
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$1056, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.L2:
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE5:
	.size	BZ2_bz__AssertH__fail, .-BZ2_bz__AssertH__fail
	.type	bz_config_ok, @function
bz_config_ok:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bz_config_ok, .-bz_config_ok
	.type	default_bzalloc, @function
default_bzalloc:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	default_bzalloc, .-default_bzalloc
	.type	default_bzfree, @function
default_bzfree:
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
	cmpq	$0, -16(%rbp)
	je	.L9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	default_bzfree, .-default_bzfree
	.type	prepare_new_block, @function
prepare_new_block:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 648(%rax)
	movl	$0, -4(%rbp)
	jmp	.L11
.L12:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	$0, 128(%rdx,%rax)
	addl	$1, -4(%rbp)
.L11:
	cmpl	$255, -4(%rbp)
	jle	.L12
	movq	-24(%rbp), %rax
	movl	660(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 660(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	prepare_new_block, .-prepare_new_block
	.type	init_RL, @function
init_RL:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, 92(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	init_RL, .-init_RL
	.type	isempty_RL, @function
isempty_RL:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	$255, %eax
	ja	.L15
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jle	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	isempty_RL, .-isempty_RL
	.globl	BZ2_bzCompressInit
	.type	BZ2_bzCompressInit, @function
BZ2_bzCompressInit:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	call	bz_config_ok
	testl	%eax, %eax
	jne	.L18
	movl	$-9, %eax
	jmp	.L19
.L18:
	cmpq	$0, -24(%rbp)
	je	.L20
	cmpl	$0, -28(%rbp)
	jle	.L20
	cmpl	$9, -28(%rbp)
	jg	.L20
	cmpl	$0, -36(%rbp)
	js	.L20
	cmpl	$250, -36(%rbp)
	jle	.L21
.L20:
	movl	$-2, %eax
	jmp	.L19
.L21:
	cmpl	$0, -36(%rbp)
	jne	.L22
	movl	$30, -36(%rbp)
.L22:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	leaq	default_bzalloc(%rip), %rdx
	movq	%rdx, 56(%rax)
.L23:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movq	-24(%rbp), %rax
	leaq	default_bzfree(%rip), %rdx
	movq	%rdx, 64(%rax)
.L24:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movl	$55768, %esi
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	movl	$-3, %eax
	jmp	.L19
.L25:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movl	-28(%rbp), %eax
	imull	$100000, %eax, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	sall	$2, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	-12(%rbp), %edx
	addl	$34, %edx
	movslq	%edx, %rdx
	sall	$2, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movl	$262148, %esi
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L28:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L29:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L30:
	cmpq	$0, -8(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L31:
	movl	$-3, %eax
	jmp	.L19
.L27:
	movq	-8(%rbp), %rax
	movl	$0, 660(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 652(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 664(%rax)
	movl	-28(%rbp), %eax
	imull	$100000, %eax, %eax
	leal	-19(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 656(%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_RL
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	prepare_new_block
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	BZ2_bzCompressInit, .-BZ2_bzCompressInit
	.type	add_pair_to_block, @function
add_pair_to_block:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -5(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L33
.L34:
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	-5(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 648(%rax)
	addl	$1, -4(%rbp)
.L33:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L34
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movb	$1, 128(%rax,%rdx)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$2, %eax
	je	.L36
	cmpl	$3, %eax
	je	.L37
	cmpl	$1, %eax
	jne	.L40
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	jmp	.L39
.L36:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	jmp	.L39
.L37:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	jmp	.L39
.L40:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	subl	$4, %eax
	movq	-24(%rbp), %rdx
	cltq
	movb	$1, 128(%rdx,%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-5(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rdx, %rax
	leal	-4(%rcx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	nop
.L39:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	add_pair_to_block, .-add_pair_to_block
	.type	flush_RL, @function
flush_RL:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	$255, %eax
	ja	.L42
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_pair_to_block
.L42:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_RL
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	flush_RL, .-flush_RL
	.type	copy_input_until_stop, @function
copy_input_until_stop:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -11(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L44
.L54:
	movq	-24(%rbp), %rax
	movl	108(%rax), %edx
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jge	.L66
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L67
	movb	$1, -11(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L48
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	jne	.L48
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	-9(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 648(%rax)
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movb	$1, 128(%rax,%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 92(%rax)
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L50
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$255, %eax
	jne	.L51
.L50:
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	$255, %eax
	ja	.L52
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	add_pair_to_block
.L52:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 92(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 96(%rax)
	jmp	.L49
.L51:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 96(%rax)
.L49:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L54
.L44:
	movq	-24(%rbp), %rax
	movl	108(%rax), %edx
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jge	.L68
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movb	$1, -11(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L59
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$1, %eax
	jne	.L59
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -10(%rbp)
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	648(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	-10(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 648(%rax)
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %edx
	movb	$1, 128(%rax,%rdx)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movzbl	-10(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movl	108(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 108(%rax)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 92(%rax)
	jmp	.L60
.L59:
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L61
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$255, %eax
	jne	.L62
.L61:
	movq	-24(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	$255, %eax
	ja	.L63
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	add_pair_to_block
.L63:
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 92(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 96(%rax)
	jmp	.L60
.L62:
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 96(%rax)
.L60:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L64
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
.L64:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L44
.L66:
	nop
	jmp	.L55
.L67:
	nop
	jmp	.L55
.L68:
	nop
	jmp	.L55
.L69:
	nop
	jmp	.L55
.L70:
	nop
.L55:
	movzbl	-11(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	copy_input_until_stop, .-copy_input_until_stop
	.type	copy_output_until_stop, @function
copy_output_until_stop:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movb	$0, -1(%rbp)
.L76:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movl	120(%rax), %edx
	movq	-24(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, %edx
	jge	.L79
	movb	$1, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	addl	$1, %edx
	movl	%edx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L76
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	jmp	.L76
.L78:
	nop
	jmp	.L73
.L79:
	nop
.L73:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	copy_output_until_stop, .-copy_output_until_stop
	.type	handle_compress, @function
handle_compress:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -10(%rbp)
	movb	$0, -9(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.L88:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$1, %eax
	jne	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	copy_output_until_stop
	orb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, %edx
	jl	.L93
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L84
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	isempty_RL
	testb	%al, %al
	jne	.L94
.L84:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	prepare_new_block
	movq	-8(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	.L81
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	isempty_RL
	testb	%al, %al
	jne	.L95
.L81:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	jne	.L88
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	copy_input_until_stop
	orb	%al, -10(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L86
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	flush_RL
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BZ2_compressBlock@PLT
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.L85
.L86:
	movq	-8(%rbp), %rax
	movl	108(%rax), %edx
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, %edx
	jl	.L87
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BZ2_compressBlock@PLT
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L96
.L85:
	jmp	.L88
.L93:
	nop
	jmp	.L83
.L94:
	nop
	jmp	.L83
.L95:
	nop
	jmp	.L83
.L96:
	nop
.L83:
	cmpb	$0, -10(%rbp)
	jne	.L89
	cmpb	$0, -9(%rbp)
	je	.L90
.L89:
	movl	$1, %eax
	jmp	.L91
.L90:
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	handle_compress, .-handle_compress
	.globl	BZ2_bzCompress
	.type	BZ2_bzCompress, @function
BZ2_bzCompress:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L98
	movl	$-2, %eax
	jmp	.L99
.L98:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	movl	$-2, %eax
	jmp	.L99
.L100:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L122
	movl	$-2, %eax
	jmp	.L99
.L122:
	nop
.L101:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L103
	cmpl	$2, %eax
	jg	.L104
	cmpl	$1, %eax
	je	.L105
	jmp	.L102
.L104:
	cmpl	$3, %eax
	je	.L106
	cmpl	$4, %eax
	je	.L107
	jmp	.L102
.L105:
	movl	$-1, %eax
	jmp	.L99
.L103:
	cmpl	$0, -28(%rbp)
	jne	.L108
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	handle_compress
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	je	.L109
	movl	$1, %eax
	jmp	.L99
.L109:
	movl	$-2, %eax
	jmp	.L99
.L108:
	cmpl	$1, -28(%rbp)
	jne	.L111
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.L101
.L111:
	cmpl	$2, -28(%rbp)
	jne	.L112
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 8(%rax)
	jmp	.L101
.L112:
	movl	$-2, %eax
	jmp	.L99
.L106:
	cmpl	$1, -28(%rbp)
	je	.L113
	movl	$-1, %eax
	jmp	.L99
.L113:
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L114
	movl	$-1, %eax
	jmp	.L99
.L114:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	handle_compress
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L115
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	isempty_RL
	testb	%al, %al
	je	.L115
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, %edx
	jge	.L116
.L115:
	movl	$2, %eax
	jmp	.L99
.L116:
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movl	$1, %eax
	jmp	.L99
.L107:
	cmpl	$2, -28(%rbp)
	je	.L117
	movl	$-1, %eax
	jmp	.L99
.L117:
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L118
	movl	$-1, %eax
	jmp	.L99
.L118:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	handle_compress
	movb	%al, -9(%rbp)
	cmpb	$0, -9(%rbp)
	jne	.L119
	movl	$-1, %eax
	jmp	.L99
.L119:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	isempty_RL
	testb	%al, %al
	je	.L120
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cmpl	%eax, %edx
	jge	.L121
.L120:
	movl	$3, %eax
	jmp	.L99
.L121:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$4, %eax
	jmp	.L99
.L102:
	movl	$0, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	BZ2_bzCompress, .-BZ2_bzCompress
	.globl	BZ2_bzCompressEnd
	.type	BZ2_bzCompressEnd, @function
BZ2_bzCompressEnd:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L124
	movl	$-2, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L126
	movl	$-2, %eax
	jmp	.L125
.L126:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L127
	movl	$-2, %eax
	jmp	.L125
.L127:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L128:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L129
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L129:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L130:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	BZ2_bzCompressEnd, .-BZ2_bzCompressEnd
	.globl	BZ2_bzDecompressInit
	.type	BZ2_bzDecompressInit, @function
BZ2_bzDecompressInit:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	call	bz_config_ok
	testl	%eax, %eax
	jne	.L132
	movl	$-9, %eax
	jmp	.L133
.L132:
	cmpq	$0, -24(%rbp)
	jne	.L134
	movl	$-2, %eax
	jmp	.L133
.L134:
	cmpl	$0, -32(%rbp)
	je	.L135
	cmpl	$1, -32(%rbp)
	je	.L135
	movl	$-2, %eax
	jmp	.L133
.L135:
	cmpl	$0, -28(%rbp)
	js	.L136
	cmpl	$4, -28(%rbp)
	jle	.L137
.L136:
	movl	$-2, %eax
	jmp	.L133
.L137:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movq	-24(%rbp), %rax
	leaq	default_bzalloc(%rip), %rdx
	movq	%rdx, 56(%rax)
.L138:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	movq	-24(%rbp), %rax
	leaq	default_bzfree(%rip), %rdx
	movq	%rdx, 64(%rax)
.L139:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movl	$64144, %esi
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	movl	$-3, %eax
	jmp	.L133
.L140:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 3188(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 44(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 3168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 3160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 3152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 52(%rax)
	movl	$0, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	BZ2_bzDecompressInit, .-BZ2_bzDecompressInit
	.type	unRLE_obuf_to_output_FAST, @function
unRLE_obuf_to_output_FAST:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	je	.L142
.L148:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L143
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L182
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	movzbl	12(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movl	3184(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	3184(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 3184(%rax)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	addl	$1, %edx
	movl	%edx, 36(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L148
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	jmp	.L148
.L182:
	nop
	movq	-72(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L149
	movl	$0, %eax
	jmp	.L144
.L149:
	movq	-72(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jle	.L150
	movl	$1, %eax
	jmp	.L144
.L150:
	movq	-72(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L151
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L151
	movq	-72(%rbp), %rax
	movl	$0, 28(%rax)
.L151:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-53(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L183
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L154
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L153
.L154:
	movq	-72(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L155
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L155
	movq	-72(%rbp), %rax
	movl	$0, 28(%rax)
.L155:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-53(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L184
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L157
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L153
.L157:
	movq	-72(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L158
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L158
	movq	-72(%rbp), %rax
	movl	$0, 28(%rax)
.L158:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-53(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L185
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L160
	movzbl	-53(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L153
.L160:
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L161
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L161
	movq	-72(%rbp), %rax
	movl	$0, 28(%rax)
.L161:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-53(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 1092(%rax)
	movzbl	-53(%rbp), %eax
	leal	4(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L162
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L162
	movq	-72(%rbp), %rax
	movl	$0, 28(%rax)
.L162:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-72(%rbp), %rax
	movl	64(%rax), %edx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 1092(%rax)
	jmp	.L148
.L183:
	nop
	jmp	.L148
.L184:
	nop
	jmp	.L148
.L185:
	nop
.L153:
	jmp	.L148
.L142:
	movq	-72(%rbp), %rax
	movl	3184(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movzbl	12(%rax), %eax
	movb	%al, -54(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	1092(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	3152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.L179:
	cmpl	$0, -48(%rbp)
	jle	.L163
.L168:
	cmpl	$0, -32(%rbp)
	je	.L186
	cmpl	$1, -48(%rbp)
	je	.L187
	movq	-16(%rbp), %rax
	movzbl	-54(%rbp), %edx
	movb	%dl, (%rax)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	-54(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, -52(%rbp)
	subl	$1, -48(%rbp)
	addq	$1, -16(%rbp)
	subl	$1, -32(%rbp)
	jmp	.L168
.L187:
	nop
	jmp	.L167
.L188:
	nop
.L167:
	cmpl	$0, -32(%rbp)
	jne	.L169
	movl	$1, -48(%rbp)
	jmp	.L165
.L169:
	movq	-16(%rbp), %rax
	movzbl	-54(%rbp), %edx
	movb	%dl, (%rax)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-52(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movzbl	-54(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, -52(%rbp)
	addq	$1, -16(%rbp)
	subl	$1, -32(%rbp)
.L163:
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L170
	movl	$1, %eax
	jmp	.L144
.L170:
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L171
	movl	$0, -48(%rbp)
	jmp	.L165
.L171:
	movl	-40(%rbp), %eax
	movb	%al, -54(%rbp)
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, -53(%rbp)
	shrl	$8, -36(%rbp)
	addl	$1, -44(%rbp)
	movzbl	-53(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	je	.L172
	movzbl	-53(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L167
.L172:
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L188
	movl	$2, -48(%rbp)
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, -53(%rbp)
	shrl	$8, -36(%rbp)
	addl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L189
	movzbl	-53(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	je	.L176
	movzbl	-53(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L175
.L176:
	movl	$3, -48(%rbp)
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, -53(%rbp)
	shrl	$8, -36(%rbp)
	addl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L190
	movzbl	-53(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	je	.L178
	movzbl	-53(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L175
.L178:
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, -53(%rbp)
	shrl	$8, -36(%rbp)
	addl	$1, -44(%rbp)
	movzbl	-53(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	shrl	$8, -36(%rbp)
	addl	$1, -44(%rbp)
	jmp	.L179
.L189:
	nop
	jmp	.L179
.L190:
	nop
.L175:
	jmp	.L179
.L186:
	nop
.L165:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addl	%ecx, %edx
	movl	%edx, 36(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jbe	.L180
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
.L180:
	movq	-72(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 3184(%rax)
	movq	-72(%rbp), %rax
	movzbl	-54(%rbp), %edx
	movb	%dl, 12(%rax)
	movq	-72(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 1092(%rax)
	movq	-72(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 64(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 3152(%rax)
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$0, %eax
.L144:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	unRLE_obuf_to_output_FAST, .-unRLE_obuf_to_output_FAST
	.globl	BZ2_indexIntoF
	.type	BZ2_indexIntoF, @function
BZ2_indexIntoF:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$256, -8(%rbp)
.L194:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L192
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L193
.L192:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L193:
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L194
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	BZ2_indexIntoF, .-BZ2_indexIntoF
	.type	unRLE_obuf_to_output_SMALL, @function
unRLE_obuf_to_output_SMALL:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	je	.L197
.L203:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movzbl	12(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	3184(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	3184(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 3184(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	addl	$1, %edx
	movl	%edx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L203
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	jmp	.L203
.L233:
	nop
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L204
	movl	$0, %eax
	jmp	.L199
.L204:
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jle	.L205
	movl	$1, %eax
	jmp	.L199
.L205:
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L206
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L206
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
.L206:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L234
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L209
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L208
.L209:
	movq	-24(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L210
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L210
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
.L210:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L235
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L212
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L208
.L212:
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L213
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L213
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
.L213:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L236
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L215
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L208
.L215:
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L216
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L216
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
.L216:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movzbl	-1(%rbp), %eax
	leal	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L217
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L217
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
.L217:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	jmp	.L203
.L234:
	nop
	jmp	.L203
.L235:
	nop
	jmp	.L203
.L236:
	nop
.L208:
	jmp	.L203
.L197:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L199
.L218:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L237
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movzbl	12(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movl	3184(%rax), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	3184(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_crc32Table(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 3184(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	addl	$1, %edx
	movl	%edx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L197
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	jmp	.L197
.L237:
	nop
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L222
	movl	$0, %eax
	jmp	.L199
.L222:
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jle	.L223
	movl	$1, %eax
	jmp	.L199
.L223:
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L238
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L226
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L225
.L226:
	movq	-24(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L239
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L228
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L225
.L228:
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-24(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L240
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	%eax, %edx
	je	.L230
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L225
.L230:
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	movzbl	-1(%rbp), %eax
	leal	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1092(%rax)
	jmp	.L197
.L238:
	nop
	jmp	.L197
.L239:
	nop
	jmp	.L197
.L240:
	nop
.L225:
	jmp	.L197
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	unRLE_obuf_to_output_SMALL, .-unRLE_obuf_to_output_SMALL
	.section	.rodata
.LC2:
	.string	" {0x%08x, 0x%08x}"
	.align 8
.LC3:
	.string	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"
	.text
	.globl	BZ2_bzDecompress
	.type	BZ2_bzDecompress, @function
BZ2_bzDecompress:
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
	jne	.L242
	movl	$-2, %eax
	jmp	.L243
.L242:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L244
	movl	$-2, %eax
	jmp	.L243
.L244:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L245
	movl	$-2, %eax
	jmp	.L243
.L245:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L246
	movl	$-1, %eax
	jmp	.L243
.L246:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L247
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L248
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	unRLE_obuf_to_output_SMALL
	movb	%al, -13(%rbp)
	jmp	.L249
.L248:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	unRLE_obuf_to_output_FAST
	movb	%al, -13(%rbp)
.L249:
	cmpb	$0, -13(%rbp)
	je	.L250
	movl	$-4, %eax
	jmp	.L243
.L250:
	movq	-8(%rbp), %rax
	movl	1092(%rax), %edx
	movq	-8(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	.L251
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L251
	movq	-8(%rbp), %rax
	movl	3184(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 3184(%rax)
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$2, %eax
	jle	.L252
	movq	-8(%rbp), %rax
	movl	3184(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	3176(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L252:
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	jle	.L253
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$93, %edi
	call	fputc@PLT
.L253:
	movq	-8(%rbp), %rax
	movl	3184(%rax), %edx
	movq	-8(%rbp), %rax
	movl	3176(%rax), %eax
	cmpl	%eax, %edx
	je	.L254
	movl	$-4, %eax
	jmp	.L243
.L254:
	movq	-8(%rbp), %rax
	movl	3188(%rax), %eax
	roll	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 3188(%rax)
	movq	-8(%rbp), %rax
	movl	3188(%rax), %edx
	movq	-8(%rbp), %rax
	movl	3184(%rax), %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 3188(%rax)
	movq	-8(%rbp), %rax
	movl	$14, 8(%rax)
	jmp	.L247
.L251:
	movl	$0, %eax
	jmp	.L243
.L247:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$9, %eax
	jle	.L245
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_decompress@PLT
	movl	%eax, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jne	.L256
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$2, %eax
	jle	.L257
	movq	-8(%rbp), %rax
	movl	3188(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	3180(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L257:
	movq	-8(%rbp), %rax
	movl	3188(%rax), %edx
	movq	-8(%rbp), %rax
	movl	3180(%rax), %eax
	cmpl	%eax, %edx
	je	.L258
	movl	$-4, %eax
	jmp	.L243
.L258:
	movl	-12(%rbp), %eax
	jmp	.L243
.L256:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L245
	movl	-12(%rbp), %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	BZ2_bzDecompress, .-BZ2_bzDecompress
	.globl	BZ2_bzDecompressEnd
	.type	BZ2_bzDecompressEnd, @function
BZ2_bzDecompressEnd:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L260
	movl	$-2, %eax
	jmp	.L261
.L260:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L262
	movl	$-2, %eax
	jmp	.L261
.L262:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L263
	movl	$-2, %eax
	jmp	.L261
.L263:
	movq	-8(%rbp), %rax
	movq	3152(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	3152(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L264:
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	testq	%rax, %rax
	je	.L265
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	3160(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L265:
	movq	-8(%rbp), %rax
	movq	3168(%rax), %rax
	testq	%rax, %rax
	je	.L266
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	3168(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L266:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movl	$0, %eax
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	BZ2_bzDecompressEnd, .-BZ2_bzDecompressEnd
	.type	myfeof, @function
myfeof:
.LFB26:
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
	jne	.L268
	movl	$1, %eax
	jmp	.L269
.L268:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	spec_ungetc@PLT
	movl	$0, %eax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	myfeof, .-myfeof
	.globl	BZ2_bzWriteOpen
	.type	BZ2_bzWriteOpen, @function
BZ2_bzWriteOpen:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L271
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L271:
	cmpq	$0, -8(%rbp)
	je	.L272
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L272:
	cmpl	$0, -28(%rbp)
	je	.L273
	cmpl	$0, -32(%rbp)
	jle	.L273
	cmpl	$9, -32(%rbp)
	jg	.L273
	cmpl	$0, -40(%rbp)
	js	.L273
	cmpl	$250, -40(%rbp)
	jg	.L273
	cmpl	$0, -36(%rbp)
	js	.L273
	cmpl	$4, -36(%rbp)
	jle	.L274
.L273:
	cmpq	$0, -24(%rbp)
	je	.L275
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.L275:
	cmpq	$0, -8(%rbp)
	je	.L276
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.L276:
	movl	$0, %eax
	jmp	.L277
.L274:
	movl	$5104, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L278
	cmpq	$0, -24(%rbp)
	je	.L279
	movq	-24(%rbp), %rax
	movl	$-3, (%rax)
.L279:
	cmpq	$0, -8(%rbp)
	je	.L280
	movq	-8(%rbp), %rax
	movl	$-3, 5096(%rax)
.L280:
	movl	$0, %eax
	jmp	.L277
.L278:
	cmpq	$0, -24(%rbp)
	je	.L281
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L281:
	cmpq	$0, -8(%rbp)
	je	.L282
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L282:
	movq	-8(%rbp), %rax
	movb	$0, 5100(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 5004(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movb	$1, 5008(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5072(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5080(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5088(%rax)
	cmpl	$0, -40(%rbp)
	jne	.L283
	movl	$30, -40(%rbp)
.L283:
	movq	-8(%rbp), %rax
	leaq	5016(%rax), %rdi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	call	BZ2_bzCompressInit
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L284
	cmpq	$0, -24(%rbp)
	je	.L285
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L285:
	cmpq	$0, -8(%rbp)
	je	.L286
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 5096(%rax)
.L286:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L277
.L284:
	movq	-8(%rbp), %rax
	movl	$0, 5024(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 5100(%rax)
	movq	-8(%rbp), %rax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	BZ2_bzWriteOpen, .-BZ2_bzWriteOpen
	.globl	BZ2_bzWrite
	.type	BZ2_bzWrite, @function
BZ2_bzWrite:
.LFB28:
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
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L288
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L288:
	cmpq	$0, -8(%rbp)
	je	.L289
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L289:
	cmpq	$0, -8(%rbp)
	je	.L290
	cmpq	$0, -56(%rbp)
	je	.L290
	cmpl	$0, -60(%rbp)
	jns	.L291
.L290:
	cmpq	$0, -40(%rbp)
	je	.L292
	movq	-40(%rbp), %rax
	movl	$-2, (%rax)
.L292:
	cmpq	$0, -8(%rbp)
	je	.L311
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
	jmp	.L311
.L291:
	movq	-8(%rbp), %rax
	movzbl	5008(%rax), %eax
	testb	%al, %al
	jne	.L295
	cmpq	$0, -40(%rbp)
	je	.L296
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
.L296:
	cmpq	$0, -8(%rbp)
	je	.L312
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
	jmp	.L312
.L295:
	cmpl	$0, -60(%rbp)
	jne	.L298
	cmpq	$0, -40(%rbp)
	je	.L299
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L299:
	cmpq	$0, -8(%rbp)
	je	.L313
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
	jmp	.L313
.L298:
	movl	-60(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 5024(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 5016(%rax)
.L310:
	movq	-8(%rbp), %rax
	movl	$5000, 5048(%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5040(%rax)
	movq	-8(%rbp), %rax
	addq	$5016, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BZ2_bzCompress
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L301
	cmpq	$0, -40(%rbp)
	je	.L302
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
.L302:
	cmpq	$0, -8(%rbp)
	je	.L314
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 5096(%rax)
	jmp	.L314
.L301:
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	cmpl	$4999, %eax
	ja	.L304
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	movl	$5000, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdi
	movl	-16(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$1, %esi
	call	spec_fwrite@PLT
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L304
	cmpq	$0, -40(%rbp)
	je	.L305
	movq	-40(%rbp), %rax
	movl	$-6, (%rax)
.L305:
	cmpq	$0, -8(%rbp)
	je	.L315
	movq	-8(%rbp), %rax
	movl	$-6, 5096(%rax)
	jmp	.L315
.L304:
	movq	-8(%rbp), %rax
	movl	5024(%rax), %eax
	testl	%eax, %eax
	jne	.L310
	cmpq	$0, -40(%rbp)
	je	.L308
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L308:
	cmpq	$0, -8(%rbp)
	je	.L316
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
	jmp	.L316
.L311:
	nop
	jmp	.L287
.L312:
	nop
	jmp	.L287
.L313:
	nop
	jmp	.L287
.L314:
	nop
	jmp	.L287
.L315:
	nop
	jmp	.L287
.L316:
	nop
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	BZ2_bzWrite, .-BZ2_bzWrite
	.globl	BZ2_bzWriteClose
	.type	BZ2_bzWriteClose, @function
BZ2_bzWriteClose:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BZ2_bzWriteClose64
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	BZ2_bzWriteClose, .-BZ2_bzWriteClose
	.globl	BZ2_bzWriteClose64
	.type	BZ2_bzWriteClose64, @function
BZ2_bzWriteClose64:
.LFB30:
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
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L319
	cmpq	$0, -40(%rbp)
	je	.L320
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L320:
	cmpq	$0, -8(%rbp)
	je	.L346
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
	jmp	.L346
.L319:
	movq	-8(%rbp), %rax
	movzbl	5008(%rax), %eax
	testb	%al, %al
	jne	.L323
	cmpq	$0, -40(%rbp)
	je	.L324
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
.L324:
	cmpq	$0, -8(%rbp)
	je	.L347
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
	jmp	.L347
.L323:
	cmpq	$0, -64(%rbp)
	je	.L326
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
.L326:
	cmpq	$0, -72(%rbp)
	je	.L327
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
.L327:
	cmpq	$0, -80(%rbp)
	je	.L328
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.L328:
	cmpq	$0, 16(%rbp)
	je	.L329
	movq	16(%rbp), %rax
	movl	$0, (%rax)
.L329:
	cmpl	$0, -52(%rbp)
	jne	.L345
	movq	-8(%rbp), %rax
	movl	5096(%rax), %eax
	testl	%eax, %eax
	jne	.L345
.L338:
	movq	-8(%rbp), %rax
	movl	$5000, 5048(%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5040(%rax)
	movq	-8(%rbp), %rax
	addq	$5016, %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BZ2_bzCompress
	movl	%eax, -20(%rbp)
	cmpl	$3, -20(%rbp)
	je	.L331
	cmpl	$4, -20(%rbp)
	je	.L331
	cmpq	$0, -40(%rbp)
	je	.L332
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
.L332:
	cmpq	$0, -8(%rbp)
	je	.L348
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 5096(%rax)
	jmp	.L348
.L331:
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	cmpl	$4999, %eax
	ja	.L334
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	movl	$5000, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdi
	movl	-16(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$1, %esi
	call	spec_fwrite@PLT
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L334
	cmpq	$0, -40(%rbp)
	je	.L335
	movq	-40(%rbp), %rax
	movl	$-6, (%rax)
.L335:
	cmpq	$0, -8(%rbp)
	je	.L349
	movq	-8(%rbp), %rax
	movl	$-6, 5096(%rax)
	jmp	.L349
.L334:
	cmpl	$4, -20(%rbp)
	je	.L350
	jmp	.L338
.L350:
	nop
.L345:
	cmpq	$0, -64(%rbp)
	je	.L339
	movq	-8(%rbp), %rax
	movl	5028(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L339:
	cmpq	$0, -72(%rbp)
	je	.L340
	movq	-8(%rbp), %rax
	movl	5032(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
.L340:
	cmpq	$0, -80(%rbp)
	je	.L341
	movq	-8(%rbp), %rax
	movl	5052(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L341:
	cmpq	$0, 16(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	movl	5056(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
.L342:
	cmpq	$0, -40(%rbp)
	je	.L343
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.L343:
	cmpq	$0, -8(%rbp)
	je	.L344
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L344:
	movq	-8(%rbp), %rax
	addq	$5016, %rax
	movq	%rax, %rdi
	call	BZ2_bzCompressEnd
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L318
.L346:
	nop
	jmp	.L318
.L347:
	nop
	jmp	.L318
.L348:
	nop
	jmp	.L318
.L349:
	nop
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	BZ2_bzWriteClose64, .-BZ2_bzWriteClose64
	.globl	BZ2_bzReadOpen
	.type	BZ2_bzReadOpen, @function
BZ2_bzReadOpen:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L352
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L352:
	cmpq	$0, -8(%rbp)
	je	.L353
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L353:
	cmpl	$0, -28(%rbp)
	je	.L354
	cmpl	$0, -36(%rbp)
	je	.L355
	cmpl	$1, -36(%rbp)
	jne	.L354
.L355:
	cmpl	$0, -32(%rbp)
	js	.L354
	cmpl	$4, -32(%rbp)
	jg	.L354
	cmpq	$0, -48(%rbp)
	jne	.L356
	cmpl	$0, -40(%rbp)
	jne	.L354
.L356:
	cmpq	$0, -48(%rbp)
	je	.L357
	cmpl	$0, -40(%rbp)
	js	.L354
	cmpl	$5000, -40(%rbp)
	jle	.L357
.L354:
	cmpq	$0, -24(%rbp)
	je	.L358
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.L358:
	cmpq	$0, -8(%rbp)
	je	.L359
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.L359:
	movl	$0, %eax
	jmp	.L360
.L357:
	movl	$5104, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L361
	cmpq	$0, -24(%rbp)
	je	.L362
	movq	-24(%rbp), %rax
	movl	$-3, (%rax)
.L362:
	cmpq	$0, -8(%rbp)
	je	.L363
	movq	-8(%rbp), %rax
	movl	$-3, 5096(%rax)
.L363:
	movl	$0, %eax
	jmp	.L360
.L361:
	cmpq	$0, -24(%rbp)
	je	.L364
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L364:
	cmpq	$0, -8(%rbp)
	je	.L365
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L365:
	movq	-8(%rbp), %rax
	movb	$0, 5100(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 5004(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 5008(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5072(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5080(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5088(%rax)
	jmp	.L366
.L367:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	movl	%edx, %ecx
	movq	-8(%rbp), %rdx
	cltq
	movb	%cl, 4(%rdx,%rax)
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 5004(%rax)
	addq	$1, -48(%rbp)
	subl	$1, -40(%rbp)
.L366:
	cmpl	$0, -40(%rbp)
	jg	.L367
	movq	-8(%rbp), %rax
	leaq	5016(%rax), %rcx
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BZ2_bzDecompressInit
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L368
	cmpq	$0, -24(%rbp)
	je	.L369
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L369:
	cmpq	$0, -8(%rbp)
	je	.L370
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 5096(%rax)
.L370:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	jmp	.L360
.L368:
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 5024(%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5016(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 5100(%rax)
	movq	-8(%rbp), %rax
.L360:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	BZ2_bzReadOpen, .-BZ2_bzReadOpen
	.globl	BZ2_bzReadClose
	.type	BZ2_bzReadClose, @function
BZ2_bzReadClose:
.LFB32:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L372
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L372:
	cmpq	$0, -8(%rbp)
	je	.L373
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L373:
	cmpq	$0, -8(%rbp)
	jne	.L374
	cmpq	$0, -24(%rbp)
	je	.L375
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L375:
	cmpq	$0, -8(%rbp)
	je	.L382
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
	jmp	.L382
.L374:
	movq	-8(%rbp), %rax
	movzbl	5008(%rax), %eax
	testb	%al, %al
	je	.L378
	cmpq	$0, -24(%rbp)
	je	.L379
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
.L379:
	cmpq	$0, -8(%rbp)
	je	.L383
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
	jmp	.L383
.L378:
	movq	-8(%rbp), %rax
	movzbl	5100(%rax), %eax
	testb	%al, %al
	je	.L381
	movq	-8(%rbp), %rax
	addq	$5016, %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompressEnd
.L381:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L371
.L382:
	nop
	jmp	.L371
.L383:
	nop
.L371:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	BZ2_bzReadClose, .-BZ2_bzReadClose
	.globl	BZ2_bzRead
	.type	BZ2_bzRead, @function
BZ2_bzRead:
.LFB33:
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
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L385
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L385:
	cmpq	$0, -8(%rbp)
	je	.L386
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L386:
	cmpq	$0, -8(%rbp)
	je	.L387
	cmpq	$0, -40(%rbp)
	je	.L387
	cmpl	$0, -44(%rbp)
	jns	.L388
.L387:
	cmpq	$0, -24(%rbp)
	je	.L389
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.L389:
	cmpq	$0, -8(%rbp)
	je	.L390
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.L390:
	movl	$0, %eax
	jmp	.L391
.L388:
	movq	-8(%rbp), %rax
	movzbl	5008(%rax), %eax
	testb	%al, %al
	je	.L392
	cmpq	$0, -24(%rbp)
	je	.L393
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
.L393:
	cmpq	$0, -8(%rbp)
	je	.L394
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.L394:
	movl	$0, %eax
	jmp	.L391
.L392:
	cmpl	$0, -44(%rbp)
	jne	.L395
	cmpq	$0, -24(%rbp)
	je	.L396
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L396:
	cmpq	$0, -8(%rbp)
	je	.L397
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L397:
	movl	$0, %eax
	jmp	.L391
.L395:
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 5048(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 5040(%rax)
.L411:
	movq	-8(%rbp), %rax
	movl	5024(%rax), %eax
	testl	%eax, %eax
	jne	.L398
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	jne	.L398
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	leaq	4(%rdx), %rdi
	movl	%eax, %ecx
	movl	$5000, %edx
	movl	$1, %esi
	call	spec_fread@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 5004(%rax)
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 5024(%rax)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5016(%rax)
.L398:
	movq	-8(%rbp), %rax
	addq	$5016, %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompress
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L399
	cmpl	$4, -12(%rbp)
	je	.L399
	cmpq	$0, -24(%rbp)
	je	.L400
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
.L400:
	cmpq	$0, -8(%rbp)
	je	.L401
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 5096(%rax)
.L401:
	movl	$0, %eax
	jmp	.L391
.L399:
	cmpl	$0, -12(%rbp)
	jne	.L402
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	myfeof
	testb	%al, %al
	je	.L402
	movq	-8(%rbp), %rax
	movl	5024(%rax), %eax
	testl	%eax, %eax
	jne	.L402
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	testl	%eax, %eax
	je	.L402
	cmpq	$0, -24(%rbp)
	je	.L403
	movq	-24(%rbp), %rax
	movl	$-7, (%rax)
.L403:
	cmpq	$0, -8(%rbp)
	je	.L404
	movq	-8(%rbp), %rax
	movl	$-7, 5096(%rax)
.L404:
	movl	$0, %eax
	jmp	.L391
.L402:
	cmpl	$4, -12(%rbp)
	jne	.L405
	cmpq	$0, -24(%rbp)
	je	.L406
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
.L406:
	cmpq	$0, -8(%rbp)
	je	.L407
	movq	-8(%rbp), %rax
	movl	$4, 5096(%rax)
.L407:
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L391
.L405:
	movq	-8(%rbp), %rax
	movl	5048(%rax), %eax
	testl	%eax, %eax
	jne	.L411
	cmpq	$0, -24(%rbp)
	je	.L409
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L409:
	cmpq	$0, -8(%rbp)
	je	.L410
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L410:
	movl	-44(%rbp), %eax
.L391:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	BZ2_bzRead, .-BZ2_bzRead
	.globl	BZ2_bzReadGetUnused
	.type	BZ2_bzReadGetUnused, @function
BZ2_bzReadGetUnused:
.LFB34:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L413
	cmpq	$0, -24(%rbp)
	je	.L414
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.L414:
	cmpq	$0, -8(%rbp)
	je	.L426
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
	jmp	.L426
.L413:
	movq	-8(%rbp), %rax
	movl	5096(%rax), %eax
	cmpl	$4, %eax
	je	.L417
	cmpq	$0, -24(%rbp)
	je	.L418
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
.L418:
	cmpq	$0, -8(%rbp)
	je	.L427
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
	jmp	.L427
.L417:
	cmpq	$0, -40(%rbp)
	je	.L420
	cmpq	$0, -48(%rbp)
	jne	.L421
.L420:
	cmpq	$0, -24(%rbp)
	je	.L422
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.L422:
	cmpq	$0, -8(%rbp)
	je	.L428
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
	jmp	.L428
.L421:
	cmpq	$0, -24(%rbp)
	je	.L424
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.L424:
	cmpq	$0, -8(%rbp)
	je	.L425
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.L425:
	movq	-8(%rbp), %rax
	movl	5024(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	5016(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L412
.L426:
	nop
	jmp	.L412
.L427:
	nop
	jmp	.L412
.L428:
	nop
.L412:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	BZ2_bzReadGetUnused, .-BZ2_bzReadGetUnused
	.globl	BZ2_bzBuffToBuffCompress
	.type	BZ2_bzBuffToBuffCompress, @function
BZ2_bzBuffToBuffCompress:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movl	%r9d, -148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -120(%rbp)
	je	.L430
	cmpq	$0, -128(%rbp)
	je	.L430
	cmpq	$0, -136(%rbp)
	je	.L430
	cmpl	$0, -144(%rbp)
	jle	.L430
	cmpl	$9, -144(%rbp)
	jg	.L430
	cmpl	$0, -148(%rbp)
	js	.L430
	cmpl	$4, -148(%rbp)
	jg	.L430
	cmpl	$0, 16(%rbp)
	js	.L430
	cmpl	$250, 16(%rbp)
	jle	.L431
.L430:
	movl	$-2, %eax
	jmp	.L439
.L431:
	cmpl	$0, 16(%rbp)
	jne	.L433
	movl	$30, 16(%rbp)
.L433:
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-148(%rbp), %edx
	movl	-144(%rbp), %esi
	leaq	-96(%rbp), %rax
	movl	16(%rbp), %ecx
	movq	%rax, %rdi
	call	BZ2_bzCompressInit
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L434
	movl	-100(%rbp), %eax
	jmp	.L439
.L434:
	movq	-136(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	leaq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BZ2_bzCompress
	movl	%eax, -100(%rbp)
	cmpl	$3, -100(%rbp)
	je	.L443
	cmpl	$4, -100(%rbp)
	jne	.L444
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	subl	%eax, %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzCompressEnd
	movl	$0, %eax
	jmp	.L439
.L443:
	nop
.L436:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzCompressEnd
	movl	$-8, %eax
	jmp	.L439
.L444:
	nop
.L438:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzCompressEnd
	movl	-100(%rbp), %eax
.L439:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L440
	call	__stack_chk_fail@PLT
.L440:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	BZ2_bzBuffToBuffCompress, .-BZ2_bzBuffToBuffCompress
	.globl	BZ2_bzBuffToBuffDecompress
	.type	BZ2_bzBuffToBuffDecompress, @function
BZ2_bzBuffToBuffDecompress:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movl	%r8d, -144(%rbp)
	movl	%r9d, -148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -120(%rbp)
	je	.L446
	cmpq	$0, -128(%rbp)
	je	.L446
	cmpq	$0, -136(%rbp)
	je	.L446
	cmpl	$0, -144(%rbp)
	je	.L447
	cmpl	$1, -144(%rbp)
	jne	.L446
.L447:
	cmpl	$0, -148(%rbp)
	js	.L446
	cmpl	$4, -148(%rbp)
	jle	.L448
.L446:
	movl	$-2, %eax
	jmp	.L456
.L448:
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BZ2_bzDecompressInit
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L450
	movl	-100(%rbp), %eax
	jmp	.L456
.L450:
	movq	-136(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompress
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L460
	cmpl	$4, -100(%rbp)
	jne	.L461
	movq	-128(%rbp), %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	subl	%eax, %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompressEnd
	movl	$0, %eax
	jmp	.L456
.L460:
	nop
.L452:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.L455
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompressEnd
	movl	$-7, %eax
	jmp	.L456
.L455:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompressEnd
	movl	$-8, %eax
	jmp	.L456
.L461:
	nop
.L454:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzDecompressEnd
	movl	-100(%rbp), %eax
.L456:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L457
	call	__stack_chk_fail@PLT
.L457:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	BZ2_bzBuffToBuffDecompress, .-BZ2_bzBuffToBuffDecompress
	.section	.rodata
.LC4:
	.string	"1.0.3, 15-Feb-2005"
	.text
	.globl	BZ2_bzlibVersion
	.type	BZ2_bzlibVersion, @function
BZ2_bzlibVersion:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	BZ2_bzlibVersion, .-BZ2_bzlibVersion
	.section	.rodata
.LC5:
	.string	"w"
.LC6:
	.string	"r"
	.text
	.type	bzopen_or_bzdopen, @function
bzopen_or_bzdopen:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$5104, %rsp
	movq	%rdi, -5080(%rbp)
	movl	%esi, -5084(%rbp)
	movq	%rdx, -5096(%rbp)
	movl	%ecx, -5088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$9, -5060(%rbp)
	movl	$0, -5056(%rbp)
	movq	$0, -5018(%rbp)
	movw	$0, -5010(%rbp)
	movl	$0, -5052(%rbp)
	movq	$0, -5032(%rbp)
	movl	$0, -5044(%rbp)
	movl	$30, -5040(%rbp)
	movl	$0, -5048(%rbp)
	movl	$0, -5036(%rbp)
	cmpq	$0, -5096(%rbp)
	jne	.L467
	movl	$0, %eax
	jmp	.L487
.L473:
	movq	-5096(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$115, %eax
	je	.L469
	cmpl	$119, %eax
	je	.L470
	cmpl	$114, %eax
	jne	.L489
	movl	$0, -5056(%rbp)
	jmp	.L472
.L470:
	movl	$1, -5056(%rbp)
	jmp	.L472
.L469:
	movl	$1, -5048(%rbp)
	jmp	.L472
.L489:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-5096(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L472
	movq	-5096(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -5060(%rbp)
.L472:
	addq	$1, -5096(%rbp)
.L467:
	movq	-5096(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L473
	cmpl	$0, -5056(%rbp)
	je	.L474
	leaq	.LC5(%rip), %rax
	jmp	.L475
.L474:
	leaq	.LC6(%rip), %rax
.L475:
	leaq	-5018(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcat@PLT
	leaq	-5018(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-5018(%rbp), %rax
	addq	%rdx, %rax
	movw	$98, (%rax)
	cmpl	$0, -5088(%rbp)
	jne	.L476
	cmpq	$0, -5080(%rbp)
	je	.L477
	movq	-5080(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L478
.L477:
	cmpl	$0, -5056(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -5052(%rbp)
	jmp	.L480
.L478:
	movl	$0, -5052(%rbp)
	jmp	.L480
.L476:
	movl	$0, -5052(%rbp)
.L480:
	cmpl	$0, -5052(%rbp)
	jne	.L481
	movl	$0, %eax
	jmp	.L487
.L481:
	cmpl	$0, -5056(%rbp)
	je	.L482
	cmpl	$0, -5060(%rbp)
	jg	.L483
	movl	$1, -5060(%rbp)
.L483:
	cmpl	$9, -5060(%rbp)
	jle	.L484
	movl	$9, -5060(%rbp)
.L484:
	movl	-5040(%rbp), %edi
	movl	-5044(%rbp), %ecx
	movl	-5060(%rbp), %edx
	movl	-5052(%rbp), %esi
	leaq	-5064(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	BZ2_bzWriteOpen
	movq	%rax, -5032(%rbp)
	jmp	.L485
.L482:
	movl	-5036(%rbp), %r8d
	leaq	-5008(%rbp), %rdi
	movl	-5048(%rbp), %ecx
	movl	-5044(%rbp), %edx
	movl	-5052(%rbp), %esi
	leaq	-5064(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BZ2_bzReadOpen
	movq	%rax, -5032(%rbp)
.L485:
	cmpq	$0, -5032(%rbp)
	jne	.L486
	movl	$0, %eax
	jmp	.L487
.L486:
	movq	-5032(%rbp), %rax
.L487:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L488
	call	__stack_chk_fail@PLT
.L488:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	bzopen_or_bzdopen, .-bzopen_or_bzdopen
	.globl	BZ2_bzopen
	.type	BZ2_bzopen, @function
BZ2_bzopen:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	bzopen_or_bzdopen
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	BZ2_bzopen, .-BZ2_bzopen
	.globl	BZ2_bzdopen
	.type	BZ2_bzdopen, @function
BZ2_bzdopen:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %esi
	movl	$0, %edi
	call	bzopen_or_bzdopen
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	BZ2_bzdopen, .-BZ2_bzdopen
	.globl	BZ2_bzread
	.type	BZ2_bzread, @function
BZ2_bzread:
.LFB41:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	5096(%rax), %eax
	cmpl	$4, %eax
	jne	.L495
	movl	$0, %eax
	jmp	.L499
.L495:
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzRead
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L497
	movl	-16(%rbp), %eax
	cmpl	$4, %eax
	jne	.L498
.L497:
	movl	-12(%rbp), %eax
	jmp	.L499
.L498:
	movl	$-1, %eax
.L499:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L500
	call	__stack_chk_fail@PLT
.L500:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	BZ2_bzread, .-BZ2_bzread
	.globl	BZ2_bzwrite
	.type	BZ2_bzwrite, @function
BZ2_bzwrite:
.LFB42:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bzWrite
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L502
	movl	-36(%rbp), %eax
	jmp	.L504
.L502:
	movl	$-1, %eax
.L504:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L505
	call	__stack_chk_fail@PLT
.L505:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	BZ2_bzwrite, .-BZ2_bzwrite
	.globl	BZ2_bzflush
	.type	BZ2_bzflush, @function
BZ2_bzflush:
.LFB43:
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
.LFE43:
	.size	BZ2_bzflush, .-BZ2_bzflush
	.globl	BZ2_bzclose
	.type	BZ2_bzclose, @function
BZ2_bzclose:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L515
	movq	-24(%rbp), %rax
	movzbl	5008(%rax), %eax
	testb	%al, %al
	je	.L511
	movq	-24(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BZ2_bzWriteClose
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L508
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	BZ2_bzWriteClose
	jmp	.L508
.L511:
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BZ2_bzReadClose
	jmp	.L508
.L515:
	nop
.L508:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L514
	call	__stack_chk_fail@PLT
.L514:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	BZ2_bzclose, .-BZ2_bzclose
	.section	.rodata
.LC7:
	.string	"OK"
.LC8:
	.string	"SEQUENCE_ERROR"
.LC9:
	.string	"PARAM_ERROR"
.LC10:
	.string	"MEM_ERROR"
.LC11:
	.string	"DATA_ERROR"
.LC12:
	.string	"DATA_ERROR_MAGIC"
.LC13:
	.string	"IO_ERROR"
.LC14:
	.string	"UNEXPECTED_EOF"
.LC15:
	.string	"OUTBUFF_FULL"
.LC16:
	.string	"CONFIG_ERROR"
.LC17:
	.string	"???"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	bzerrorstrings, @object
	.size	bzerrorstrings, 128
bzerrorstrings:
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.text
	.globl	BZ2_bzerror
	.type	BZ2_bzerror, @function
BZ2_bzerror:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	5096(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L517
	movl	$0, -4(%rbp)
.L517:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	negl	%eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bzerrorstrings(%rip), %rax
	movq	(%rdx,%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	BZ2_bzerror, .-BZ2_bzerror
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
