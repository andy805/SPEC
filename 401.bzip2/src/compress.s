	.file	"compress.c"
	.text
	.globl	BZ2_bsInitWrite
	.type	BZ2_bsInitWrite, @function
BZ2_bsInitWrite:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 644(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 640(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	BZ2_bsInitWrite, .-BZ2_bsInitWrite
	.type	bsFinishWrite, @function
bsFinishWrite:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %eax
	leal	-8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 644(%rax)
.L3:
	movq	-8(%rbp), %rax
	movl	644(%rax), %eax
	testl	%eax, %eax
	jg	.L4
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bsFinishWrite, .-bsFinishWrite
	.type	bsW, @function
bsW:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	jmp	.L6
.L7:
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	116(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %eax
	leal	-8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 644(%rax)
.L6:
	movq	-8(%rbp), %rax
	movl	644(%rax), %eax
	cmpl	$7, %eax
	jg	.L7
	movq	-8(%rbp), %rax
	movl	640(%rax), %edx
	movq	-8(%rbp), %rax
	movl	644(%rax), %eax
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	subl	-12(%rbp), %eax
	movl	-16(%rbp), %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 644(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	bsW, .-bsW
	.type	bsPutUInt32, @function
bsPutUInt32:
.LFB8:
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
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-12(%rbp), %eax
	shrl	$16, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-12(%rbp), %eax
	shrl	$8, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-12(%rbp), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bsW
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	bsPutUInt32, .-bsPutUInt32
	.type	bsPutUChar, @function
bsPutUChar:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	bsW
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bsPutUChar, .-bsPutUChar
	.type	makeMaps_e, @function
makeMaps_e:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 124(%rax)
	movl	$0, -4(%rbp)
	jmp	.L11
.L13:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	128(%rdx,%rax), %eax
	testb	%al, %al
	je	.L12
	movq	-24(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, 384(%rdx,%rax)
	movq	-24(%rbp), %rax
	movl	124(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 124(%rax)
.L12:
	addl	$1, -4(%rbp)
.L11:
	cmpl	$255, -4(%rbp)
	jle	.L13
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	makeMaps_e, .-makeMaps_e
	.type	generateMTFValues, @function
generateMTFValues:
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
	subq	$336, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -360(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-360(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-360(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	makeMaps_e
	movq	-360(%rbp), %rax
	movl	124(%rax), %eax
	addl	$1, %eax
	movl	%eax, -332(%rbp)
	movl	$0, -348(%rbp)
	jmp	.L15
.L16:
	movq	-360(%rbp), %rax
	movl	-348(%rbp), %edx
	movslq	%edx, %rdx
	addq	$168, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -348(%rbp)
.L15:
	movl	-348(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jle	.L16
	movl	$0, -336(%rbp)
	movl	$0, -340(%rbp)
	movl	$0, -348(%rbp)
	jmp	.L17
.L18:
	movl	-348(%rbp), %eax
	movl	%eax, %edx
	movl	-348(%rbp), %eax
	cltq
	movb	%dl, -304(%rbp,%rax)
	addl	$1, -348(%rbp)
.L17:
	movq	-360(%rbp), %rax
	movl	124(%rax), %eax
	cmpl	%eax, -348(%rbp)
	jl	.L18
	movl	$0, -348(%rbp)
	jmp	.L19
.L31:
	movl	-348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-328(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -344(%rbp)
	cmpl	$0, -344(%rbp)
	jns	.L20
	movq	-360(%rbp), %rax
	movl	108(%rax), %eax
	addl	%eax, -344(%rbp)
.L20:
	movl	-344(%rbp), %eax
	movslq	%eax, %rdx
	movq	-320(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-360(%rbp), %rdx
	cltq
	movzbl	384(%rdx,%rax), %eax
	movb	%al, -349(%rbp)
	movzbl	-304(%rbp), %eax
	cmpb	%al, -349(%rbp)
	jne	.L21
	addl	$1, -340(%rbp)
	jmp	.L22
.L21:
	cmpl	$0, -340(%rbp)
	jle	.L23
	subl	$1, -340(%rbp)
.L28:
	movl	-340(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L24
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movw	$1, (%rax)
	addl	$1, -336(%rbp)
	movq	-360(%rbp), %rax
	movl	676(%rax), %eax
	leal	1(%rax), %edx
	movq	-360(%rbp), %rax
	movl	%edx, 676(%rax)
	jmp	.L25
.L24:
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	addl	$1, -336(%rbp)
	movq	-360(%rbp), %rax
	movl	672(%rax), %eax
	leal	1(%rax), %edx
	movq	-360(%rbp), %rax
	movl	%edx, 672(%rax)
.L25:
	cmpl	$1, -340(%rbp)
	jle	.L41
	movl	-340(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -340(%rbp)
	jmp	.L28
.L41:
	nop
	movl	$0, -340(%rbp)
.L23:
	movzbl	-303(%rbp), %r12d
	movzbl	-304(%rbp), %eax
	movb	%al, -303(%rbp)
	leaq	-304(%rbp), %rax
	leaq	1(%rax), %rbx
	movzbl	-349(%rbp), %r13d
	jmp	.L29
.L30:
	addq	$1, %rbx
	movl	%r12d, %r14d
	movzbl	(%rbx), %r12d
	movb	%r14b, (%rbx)
.L29:
	cmpb	%r12b, %r13b
	jne	.L30
	movb	%r12b, -304(%rbp)
	movq	%rbx, %rdx
	leaq	-304(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -344(%rbp)
	movl	-344(%rbp), %eax
	movl	%eax, %ecx
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	leal	1(%rcx), %edx
	movw	%dx, (%rax)
	addl	$1, -336(%rbp)
	movl	-344(%rbp), %eax
	addl	$1, %eax
	movq	-360(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$168, %rcx
	movl	(%rdx,%rcx,4), %edx
	leal	1(%rdx), %ecx
	movq	-360(%rbp), %rdx
	cltq
	addq	$168, %rax
	movl	%ecx, (%rdx,%rax,4)
.L22:
	addl	$1, -348(%rbp)
.L19:
	movq	-360(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	%eax, -348(%rbp)
	jl	.L31
	cmpl	$0, -340(%rbp)
	jle	.L32
	subl	$1, -340(%rbp)
.L37:
	movl	-340(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movw	$1, (%rax)
	addl	$1, -336(%rbp)
	movq	-360(%rbp), %rax
	movl	676(%rax), %eax
	leal	1(%rax), %edx
	movq	-360(%rbp), %rax
	movl	%edx, 676(%rax)
	jmp	.L34
.L33:
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	addl	$1, -336(%rbp)
	movq	-360(%rbp), %rax
	movl	672(%rax), %eax
	leal	1(%rax), %edx
	movq	-360(%rbp), %rax
	movl	%edx, 672(%rax)
.L34:
	cmpl	$1, -340(%rbp)
	jle	.L42
	movl	-340(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -340(%rbp)
	jmp	.L37
.L42:
	nop
	movl	$0, -340(%rbp)
.L32:
	movl	-336(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movl	-332(%rbp), %edx
	movw	%dx, (%rax)
	addl	$1, -336(%rbp)
	movq	-360(%rbp), %rax
	movl	-332(%rbp), %edx
	movslq	%edx, %rdx
	addq	$168, %rdx
	movl	(%rax,%rdx,4), %eax
	leal	1(%rax), %ecx
	movq	-360(%rbp), %rax
	movl	-332(%rbp), %edx
	movslq	%edx, %rdx
	addq	$168, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-360(%rbp), %rax
	movl	-336(%rbp), %edx
	movl	%edx, 668(%rax)
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	addq	$336, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	generateMTFValues, .-generateMTFValues
	.section	.rodata
	.align 8
.LC0:
	.string	"      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.align 8
.LC2:
	.string	"      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.align 8
.LC3:
	.string	"      pass %d: size is %d, grp uses are "
.LC4:
	.string	"%d "
.LC5:
	.string	"      bytes: mapping %d, "
.LC6:
	.string	"selectors %d, "
.LC7:
	.string	"code lengths %d, "
.LC8:
	.string	"codes %d\n"
	.text
	.type	sendMTFValues, @function
sendMTFValues:
.LFB12:
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
	subq	$224, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L44
	movq	-248(%rbp), %rax
	movl	124(%rax), %esi
	movq	-248(%rbp), %rax
	movl	668(%rax), %ecx
	movq	-248(%rbp), %rax
	movl	108(%rax), %edx
	movq	stderr(%rip), %rax
	movl	%esi, %r8d
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L44:
	movq	-248(%rbp), %rax
	movl	124(%rax), %eax
	addl	$2, %eax
	movl	%eax, -148(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L45
.L48:
	movl	$0, -224(%rbp)
	jmp	.L46
.L47:
	movq	-248(%rbp), %rsi
	movl	-224(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movb	$15, (%rax)
	addl	$1, -224(%rbp)
.L46:
	movl	-224(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L47
	addl	$1, -220(%rbp)
.L45:
	cmpl	$5, -220(%rbp)
	jle	.L48
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	testl	%eax, %eax
	jg	.L49
	movl	$3001, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L49:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	$199, %eax
	jg	.L50
	movl	$2, -168(%rbp)
	jmp	.L51
.L50:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	$599, %eax
	jg	.L52
	movl	$3, -168(%rbp)
	jmp	.L51
.L52:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	$1199, %eax
	jg	.L53
	movl	$4, -168(%rbp)
	jmp	.L51
.L53:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	$2399, %eax
	jg	.L54
	movl	$5, -168(%rbp)
	jmp	.L51
.L54:
	movl	$6, -168(%rbp)
.L51:
	movl	-168(%rbp), %eax
	movl	%eax, -164(%rbp)
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	movl	%eax, -160(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L55
.L65:
	movl	-160(%rbp), %eax
	cltd
	idivl	-164(%rbp)
	movl	%eax, -140(%rbp)
	movl	-208(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L56
.L58:
	addl	$1, -204(%rbp)
	movq	-248(%rbp), %rax
	movl	-204(%rbp), %edx
	movslq	%edx, %rdx
	addq	$168, %rdx
	movl	(%rax,%rdx,4), %eax
	addl	%eax, -156(%rbp)
.L56:
	movl	-156(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.L57
	movl	-148(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -204(%rbp)
	jl	.L58
.L57:
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jle	.L59
	movl	-164(%rbp), %eax
	cmpl	-168(%rbp), %eax
	je	.L59
	cmpl	$1, -164(%rbp)
	je	.L59
	movl	-168(%rbp), %eax
	subl	-164(%rbp), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	.L59
	movq	-248(%rbp), %rax
	movl	-204(%rbp), %edx
	movslq	%edx, %rdx
	addq	$168, %rdx
	movl	(%rax,%rdx,4), %eax
	subl	%eax, -156(%rbp)
	subl	$1, -204(%rbp)
.L59:
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L60
	cvtsi2ss	-156(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movq	stderr(%rip), %rax
	movl	-156(%rbp), %edi
	movl	-204(%rbp), %esi
	movl	-208(%rbp), %ecx
	movl	-164(%rbp), %edx
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L60:
	movl	$0, -224(%rbp)
	jmp	.L61
.L64:
	movl	-224(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L62
	movl	-224(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jg	.L62
	movl	-164(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-248(%rbp), %rsi
	movl	-224(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movb	$0, (%rax)
	jmp	.L63
.L62:
	movl	-164(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-248(%rbp), %rsi
	movl	-224(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movb	$15, (%rax)
.L63:
	addl	$1, -224(%rbp)
.L61:
	movl	-224(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L64
	subl	$1, -164(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-156(%rbp), %eax
	subl	%eax, -160(%rbp)
.L55:
	cmpl	$0, -164(%rbp)
	jg	.L65
	movl	$0, -188(%rbp)
	jmp	.L66
.L100:
	movl	$0, -220(%rbp)
	jmp	.L67
.L68:
	movl	-220(%rbp), %eax
	cltq
	movl	$0, -96(%rbp,%rax,4)
	addl	$1, -220(%rbp)
.L67:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L68
	movl	$0, -220(%rbp)
	jmp	.L69
.L72:
	movl	$0, -224(%rbp)
	jmp	.L70
.L71:
	movq	-248(%rbp), %rcx
	movl	-224(%rbp), %eax
	movslq	%eax, %rsi
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	$11360, %rax
	movl	$0, 8(%rcx,%rax,4)
	addl	$1, -224(%rbp)
.L70:
	movl	-224(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L71
	addl	$1, -220(%rbp)
.L69:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L72
	cmpl	$6, -168(%rbp)
	jne	.L73
	movl	$0, -224(%rbp)
	jmp	.L74
.L75:
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	37966(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	37708(%rdx,%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	%ecx, (%rax)
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	38482(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	38224(%rdx,%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	%ecx, (%rax)
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	38998(%rdx,%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx
	movl	-224(%rbp), %eax
	cltq
	movzbl	38740(%rdx,%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	%ecx, (%rax)
	addl	$1, -224(%rbp)
.L74:
	movl	-224(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L75
.L73:
	movl	$0, -184(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -208(%rbp)
.L94:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	%eax, -208(%rbp)
	jge	.L163
	movl	-208(%rbp), %eax
	addl	$49, %eax
	movl	%eax, -204(%rbp)
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	%eax, -204(%rbp)
	jl	.L78
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)
.L78:
	movl	$0, -220(%rbp)
	jmp	.L79
.L80:
	movl	-220(%rbp), %eax
	cltq
	movw	$0, -108(%rbp,%rax,2)
	addl	$1, -220(%rbp)
.L79:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L80
	cmpl	$6, -168(%rbp)
	jne	.L81
	movl	-204(%rbp), %eax
	subl	-208(%rbp), %eax
	cmpl	$49, %eax
	jne	.L81
	movl	$0, %r12d
	movl	%r12d, %r13d
	movl	%r13d, %r14d
	movl	-208(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$5, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$6, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$7, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$8, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$10, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$11, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$12, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$15, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$17, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$18, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$21, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$22, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$23, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$25, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$27, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$28, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$29, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$30, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$31, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$32, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$33, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$34, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$35, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$36, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$37, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$38, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$40, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$41, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$42, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$43, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$44, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$45, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$46, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$47, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$48, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	-208(%rbp), %eax
	cltq
	addq	$49, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ebx
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	addq	$3227, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	addl	%eax, %r14d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51644, %rax
	movl	(%rax), %eax
	addl	%eax, %r13d
	movzwl	%bx, %edx
	movq	-248(%rbp), %rax
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	addq	$51648, %rax
	movl	(%rax), %eax
	addl	%eax, %r12d
	movl	%r14d, %eax
	movw	%ax, -108(%rbp)
	movl	%r14d, %eax
	shrl	$16, %eax
	movw	%ax, -106(%rbp)
	movl	%r13d, %eax
	movw	%ax, -104(%rbp)
	movl	%r13d, %eax
	shrl	$16, %eax
	movw	%ax, -102(%rbp)
	movl	%r12d, %eax
	movw	%ax, -100(%rbp)
	movl	%r12d, %eax
	shrl	$16, %eax
	movw	%ax, -98(%rbp)
	jmp	.L82
.L81:
	movl	-208(%rbp), %eax
	movl	%eax, -216(%rbp)
	jmp	.L83
.L86:
	movl	-216(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -226(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L84
.L85:
	movl	-220(%rbp), %eax
	cltq
	movzwl	-108(%rbp,%rax,2), %ecx
	movzwl	-226(%rbp), %eax
	movq	-248(%rbp), %rdi
	movslq	%eax, %rsi
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	%rsi, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leal	(%rcx,%rax), %edx
	movl	-220(%rbp), %eax
	cltq
	movw	%dx, -108(%rbp,%rax,2)
	addl	$1, -220(%rbp)
.L84:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L85
	addl	$1, -216(%rbp)
.L83:
	movl	-216(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jle	.L86
.L82:
	movl	$999999999, -192(%rbp)
	movl	$-1, -196(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L87
.L89:
	movl	-220(%rbp), %eax
	cltq
	movzwl	-108(%rbp,%rax,2), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -192(%rbp)
	jle	.L88
	movl	-220(%rbp), %eax
	cltq
	movzwl	-108(%rbp,%rax,2), %eax
	movzwl	%ax, %eax
	movl	%eax, -192(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, -196(%rbp)
.L88:
	addl	$1, -220(%rbp)
.L87:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L89
	movl	-192(%rbp), %eax
	addl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-196(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx
	movl	-184(%rbp), %eax
	cltq
	movb	%cl, 1704(%rdx,%rax)
	addl	$1, -184(%rbp)
	cmpl	$6, -168(%rbp)
	jne	.L90
	movl	-204(%rbp), %eax
	subl	-208(%rbp), %eax
	cmpl	$49, %eax
	jne	.L90
	movl	-208(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$5, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$6, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$7, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$8, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$10, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$11, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$12, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$15, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$17, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$18, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$21, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$22, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$23, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$25, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$27, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$28, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$29, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$30, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$31, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$32, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$33, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$34, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$35, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$36, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$37, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$38, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$40, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$41, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$42, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$43, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$44, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$45, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$46, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$47, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$48, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	movl	-208(%rbp), %eax
	cltq
	addq	$49, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	jmp	.L91
.L90:
	movl	-208(%rbp), %eax
	movl	%eax, -216(%rbp)
	jmp	.L92
.L93:
	movl	-216(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	8(%rsi,%rax,4), %eax
	leal	1(%rax), %esi
	movq	-248(%rbp), %rcx
	movslq	%edx, %rdi
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	addq	$11360, %rax
	movl	%esi, 8(%rcx,%rax,4)
	addl	$1, -216(%rbp)
.L92:
	movl	-216(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jle	.L93
.L91:
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.L94
.L163:
	nop
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L95
	movl	-200(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movl	-188(%rbp), %eax
	leal	1(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -220(%rbp)
	jmp	.L96
.L97:
	movl	-220(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movq	stderr(%rip), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -220(%rbp)
.L96:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L97
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L95:
	movl	$0, -220(%rbp)
	jmp	.L98
.L99:
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45440(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rsi
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	37696(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdi
	movl	-148(%rbp), %eax
	movl	$17, %ecx
	movl	%eax, %edx
	call	BZ2_hbMakeCodeLengths@PLT
	addl	$1, -220(%rbp)
.L98:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L99
	addl	$1, -188(%rbp)
.L66:
	cmpl	$3, -188(%rbp)
	jle	.L100
	cmpl	$7, -168(%rbp)
	jle	.L101
	movl	$3002, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L101:
	cmpl	$32767, -184(%rbp)
	jg	.L102
	cmpl	$18002, -184(%rbp)
	jle	.L103
.L102:
	movl	$3003, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L103:
	movl	$0, -216(%rbp)
	jmp	.L104
.L105:
	movl	-216(%rbp), %eax
	movl	%eax, %edx
	movl	-216(%rbp), %eax
	cltq
	movb	%dl, -64(%rbp,%rax)
	addl	$1, -216(%rbp)
.L104:
	movl	-216(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L105
	movl	$0, -216(%rbp)
	jmp	.L106
.L109:
	movq	-248(%rbp), %rdx
	movl	-216(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movb	%al, -230(%rbp)
	movl	$0, -212(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	movb	%al, -231(%rbp)
	jmp	.L107
.L108:
	addl	$1, -212(%rbp)
	movzbl	-231(%rbp), %eax
	movb	%al, -229(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	movb	%al, -231(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movzbl	-229(%rbp), %edx
	movb	%dl, -64(%rbp,%rax)
.L107:
	movzbl	-230(%rbp), %eax
	cmpb	-231(%rbp), %al
	jne	.L108
	movzbl	-231(%rbp), %eax
	movb	%al, -64(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx
	movl	-216(%rbp), %eax
	cltq
	movb	%cl, 19706(%rdx,%rax)
	addl	$1, -216(%rbp)
.L106:
	movl	-216(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L109
	movl	$0, -220(%rbp)
	jmp	.L110
.L117:
	movl	$32, -180(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -216(%rbp)
	jmp	.L111
.L114:
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -176(%rbp)
	jge	.L112
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -176(%rbp)
.L112:
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -180(%rbp)
	jle	.L113
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -180(%rbp)
.L113:
	addl	$1, -216(%rbp)
.L111:
	movl	-216(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L114
	cmpl	$17, -176(%rbp)
	jle	.L115
	movl	$3004, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L115:
	cmpl	$0, -180(%rbp)
	jg	.L116
	movl	$3005, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L116:
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	37696(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rsi
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	39248(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdi
	movl	-148(%rbp), %ecx
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	BZ2_hbAssignCodes@PLT
	addl	$1, -220(%rbp)
.L110:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L117
	movl	$0, -216(%rbp)
	jmp	.L118
.L122:
	movl	-216(%rbp), %eax
	cltq
	movb	$0, -64(%rbp,%rax)
	movl	$0, -212(%rbp)
	jmp	.L119
.L121:
	movl	-216(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-212(%rbp), %eax
	addl	%edx, %eax
	movq	-248(%rbp), %rdx
	cltq
	movzbl	128(%rdx,%rax), %eax
	testb	%al, %al
	je	.L120
	movl	-216(%rbp), %eax
	cltq
	movb	$1, -64(%rbp,%rax)
.L120:
	addl	$1, -212(%rbp)
.L119:
	cmpl	$15, -212(%rbp)
	jle	.L121
	addl	$1, -216(%rbp)
.L118:
	cmpl	$15, -216(%rbp)
	jle	.L122
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	$0, -216(%rbp)
	jmp	.L123
.L126:
	movl	-216(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	je	.L124
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	jmp	.L125
.L124:
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
.L125:
	addl	$1, -216(%rbp)
.L123:
	cmpl	$15, -216(%rbp)
	jle	.L126
	movl	$0, -216(%rbp)
	jmp	.L127
.L133:
	movl	-216(%rbp), %eax
	cltq
	movzbl	-64(%rbp,%rax), %eax
	testb	%al, %al
	je	.L128
	movl	$0, -212(%rbp)
	jmp	.L129
.L132:
	movl	-216(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-212(%rbp), %eax
	addl	%edx, %eax
	movq	-248(%rbp), %rdx
	cltq
	movzbl	128(%rdx,%rax), %eax
	testb	%al, %al
	je	.L130
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	jmp	.L131
.L130:
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
.L131:
	addl	$1, -212(%rbp)
.L129:
	cmpl	$15, -212(%rbp)
	jle	.L132
.L128:
	addl	$1, -216(%rbp)
.L127:
	cmpl	$15, -216(%rbp)
	jle	.L133
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L134
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	subl	-144(%rbp), %eax
	movl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L134:
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	-168(%rbp), %edx
	movq	-248(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-184(%rbp), %edx
	movq	-248(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	bsW
	movl	$0, -216(%rbp)
	jmp	.L135
.L138:
	movl	$0, -212(%rbp)
	jmp	.L136
.L137:
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	addl	$1, -212(%rbp)
.L136:
	movq	-248(%rbp), %rdx
	movl	-216(%rbp), %eax
	cltq
	movzbl	19706(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -212(%rbp)
	jl	.L137
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	addl	$1, -216(%rbp)
.L135:
	movl	-216(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L138
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L139
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	subl	-144(%rbp), %eax
	movl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L139:
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L140
.L147:
	movq	-248(%rbp), %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %edx
	movq	-248(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	bsW
	movl	$0, -216(%rbp)
	jmp	.L141
.L143:
	movq	-248(%rbp), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	bsW
	addl	$1, -152(%rbp)
.L142:
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -152(%rbp)
	jl	.L143
	jmp	.L144
.L145:
	movq	-248(%rbp), %rax
	movl	$3, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	bsW
	subl	$1, -152(%rbp)
.L144:
	movq	-248(%rbp), %rsi
	movl	-216(%rbp), %eax
	movslq	%eax, %rcx
	movl	-220(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -152(%rbp)
	jg	.L145
	movq	-248(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	addl	$1, -216(%rbp)
.L141:
	movl	-216(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L142
	addl	$1, -220(%rbp)
.L140:
	movl	-220(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jl	.L147
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L148
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	subl	-144(%rbp), %eax
	movl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L148:
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -144(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -208(%rbp)
.L157:
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	%eax, -208(%rbp)
	jge	.L164
	movl	-208(%rbp), %eax
	addl	$49, %eax
	movl	%eax, -204(%rbp)
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	cmpl	%eax, -204(%rbp)
	jl	.L151
	movq	-248(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)
.L151:
	movq	-248(%rbp), %rdx
	movl	-172(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -168(%rbp)
	jg	.L152
	movl	$3006, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L152:
	cmpl	$6, -168(%rbp)
	jne	.L153
	movl	-204(%rbp), %eax
	subl	-208(%rbp), %eax
	cmpl	$49, %eax
	jne	.L153
	movq	-248(%rbp), %rdx
	movl	-172(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	37696(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -128(%rbp)
	movq	-248(%rbp), %rdx
	movl	-172(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	39248(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	movl	-208(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$4, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$5, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$6, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$7, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$8, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$9, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$10, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$11, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$12, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$13, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$14, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$15, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$17, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$18, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$19, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$20, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$21, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$22, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$23, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$24, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$25, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$26, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$27, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$28, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$29, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$30, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$31, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$32, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$33, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$34, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$35, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$36, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$37, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$38, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$39, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$40, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$41, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$42, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$43, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$44, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$45, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$46, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$47, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$48, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	movl	-208(%rbp), %eax
	cltq
	addq	$49, %rax
	leaq	(%rax,%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -228(%rbp)
	movzwl	-228(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movzwl	-228(%rbp), %edx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%esi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	jmp	.L154
.L153:
	movl	-208(%rbp), %eax
	movl	%eax, -216(%rbp)
	jmp	.L155
.L156:
	movq	-248(%rbp), %rdx
	movl	-172(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	movq	-136(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movzwl	%dx, %edx
	movq	-248(%rbp), %rcx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	$9812, %rax
	movl	8(%rcx,%rax,4), %eax
	movl	%eax, %edi
	movq	-248(%rbp), %rdx
	movl	-172(%rbp), %eax
	cltq
	movzbl	1704(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	movq	-136(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movzwl	%dx, %edx
	movq	-248(%rbp), %rsi
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$37708, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-248(%rbp), %rax
	movl	%edi, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	bsW
	addl	$1, -216(%rbp)
.L155:
	movl	-216(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jle	.L156
.L154:
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	addl	$1, -172(%rbp)
	jmp	.L157
.L164:
	nop
	movl	-172(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L158
	movl	$3007, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L158:
	movq	-248(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$2, %eax
	jle	.L165
	movq	-248(%rbp), %rax
	movl	116(%rax), %eax
	subl	-144(%rbp), %eax
	movl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L165:
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L160
	call	__stack_chk_fail@PLT
.L160:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sendMTFValues, .-sendMTFValues
	.section	.rodata
	.align 8
.LC9:
	.string	"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.align 8
.LC10:
	.string	"    final combined CRC = 0x%08x\n   "
	.text
	.globl	BZ2_compressBlock
	.type	BZ2_compressBlock, @function
BZ2_compressBlock:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	jle	.L167
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	notl	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 648(%rax)
	movq	-8(%rbp), %rax
	movl	652(%rax), %eax
	roll	%eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 652(%rax)
	movq	-8(%rbp), %rax
	movl	652(%rax), %edx
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 652(%rax)
	movq	-8(%rbp), %rax
	movl	660(%rax), %eax
	cmpl	$1, %eax
	jle	.L168
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
.L168:
	movq	-8(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$1, %eax
	jle	.L169
	movq	-8(%rbp), %rax
	movl	108(%rax), %edi
	movq	-8(%rbp), %rax
	movl	652(%rax), %esi
	movq	-8(%rbp), %rax
	movl	648(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	660(%rax), %edx
	movq	stderr(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L169:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_blockSort@PLT
.L167:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movl	660(%rax), %eax
	cmpl	$1, %eax
	jne	.L170
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BZ2_bsInitWrite
	movq	-8(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	664(%rax), %eax
	addl	$48, %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bsPutUChar
.L170:
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	jle	.L171
	movq	-8(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	648(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bsPutUInt32
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bsW
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	bsW
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	generateMTFValues
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sendMTFValues
.L171:
	cmpb	$0, -12(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	bsPutUChar
	movq	-8(%rbp), %rax
	movl	652(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bsPutUInt32
	movq	-8(%rbp), %rax
	movl	656(%rax), %eax
	cmpl	$1, %eax
	jle	.L173
	movq	-8(%rbp), %rax
	movl	652(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L173:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bsFinishWrite
.L174:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	BZ2_compressBlock, .-BZ2_compressBlock
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
