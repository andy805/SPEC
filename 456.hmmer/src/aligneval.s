	.file	"aligneval.c"
	.text
	.globl	ComparePairAlignments
	.type	ComparePairAlignments, @function
ComparePairAlignments:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-52(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	make_alilist
	testl	%eax, %eax
	jne	.L2
	movss	.LC0(%rip), %xmm0
	jmp	.L8
.L2:
	leaq	-48(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	make_alilist
	testl	%eax, %eax
	jne	.L4
	movss	.LC0(%rip), %xmm0
	jmp	.L8
.L4:
	leaq	-52(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	make_alilist
	testl	%eax, %eax
	jne	.L5
	movss	.LC0(%rip), %xmm0
	jmp	.L8
.L5:
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	make_alilist
	testl	%eax, %eax
	jne	.L6
	movss	.LC0(%rip), %xmm0
	jmp	.L8
.L6:
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	compare_lists
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L7
	movss	.LC0(%rip), %xmm0
	jmp	.L8
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	-44(%rbp), %xmm0
.L8:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ComparePairAlignments, .-ComparePairAlignments
	.globl	CompareRefPairAlignments
	.type	CompareRefPairAlignments, @function
CompareRefPairAlignments:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-24(%rbp), %r9
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-52(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	make_ref_alilist
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L11
	movss	.LC0(%rip), %xmm0
	jmp	.L17
.L11:
	leaq	-16(%rbp), %r9
	movq	-96(%rbp), %r8
	movq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	make_ref_alilist
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L13
	movss	.LC0(%rip), %xmm0
	jmp	.L17
.L13:
	leaq	-40(%rbp), %r9
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-52(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	make_ref_alilist
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L14
	movss	.LC0(%rip), %xmm0
	jmp	.L17
.L14:
	leaq	-32(%rbp), %r9
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	make_ref_alilist
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L15
	movss	.LC0(%rip), %xmm0
	jmp	.L17
.L15:
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-44(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	compare_lists
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L16
	movss	.LC0(%rip), %xmm0
	jmp	.L17
.L16:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	-44(%rbp), %xmm0
.L17:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	CompareRefPairAlignments, .-CompareRefPairAlignments
	.section	.rodata
.LC1:
	.string	"aligneval.c"
	.text
	.type	make_alilist, @function
make_alilist:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$179, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L20
.L25:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L22
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L22
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L22
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L22
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L22
	movl	-12(%rbp), %eax
	jmp	.L23
.L22:
	movl	$-1, %eax
.L23:
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
.L21:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L24
	addl	$1, -12(%rbp)
.L24:
	addl	$1, -20(%rbp)
.L20:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L25
	movq	-64(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	make_alilist, .-make_alilist
	.type	make_ref_alilist, @function
make_ref_alilist:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$236, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$237, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L28
.L30:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L29
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L29
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L29
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L29
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L29
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	setne	%cl
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	%cl, %eax
	movl	%eax, (%rdx)
	addl	$1, -28(%rbp)
.L29:
	addl	$1, -32(%rbp)
.L28:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L30
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L31
.L37:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L32
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L32
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L32
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L32
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L32
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L33
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L33
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L33
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L33
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L33
	movl	-24(%rbp), %eax
	jmp	.L34
.L33:
	movl	$-1, %eax
.L34:
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	addl	$1, -20(%rbp)
.L32:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L35
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L35
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L35
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L35
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L35
	addl	$1, -28(%rbp)
.L35:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L36
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L36
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L36
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L36
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L36
	addl	$1, -24(%rbp)
.L36:
	addl	$1, -32(%rbp)
.L31:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	make_ref_alilist, .-make_ref_alilist
	.type	compare_lists, @function
compare_lists:
.LFB9:
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
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L40
.L42:
	movss	-8(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L41
	movss	-12(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.L41:
	addl	$1, -4(%rbp)
.L40:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L42
	movl	$0, -4(%rbp)
	jmp	.L43
.L45:
	movss	-8(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L44
	movss	-12(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
.L44:
	addl	$1, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L45
	movss	-12(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	compare_lists, .-compare_lists
	.globl	CompareMultAlignments
	.type	CompareMultAlignments, @function
CompareMultAlignments:
.LFB10:
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L48
.L54:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L49
.L53:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movq	-24(%rbp), %rax
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ComparePairAlignments
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L56
	movss	.LC0(%rip), %xmm0
	jmp	.L52
.L56:
	movss	-8(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L49:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L53
	addl	$1, -16(%rbp)
.L48:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L54
	cvtss2sd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	cvtsi2ss	-36(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm2
	cvtsi2ss	-36(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC4(%rip), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	CompareMultAlignments, .-CompareMultAlignments
	.globl	CompareRefMultAlignments
	.type	CompareRefMultAlignments, @function
CompareRefMultAlignments:
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
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L58
.L64:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L59
.L63:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CompareRefPairAlignments
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L66
	movss	.LC0(%rip), %xmm0
	jmp	.L62
.L66:
	movss	-8(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L59:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L63
	addl	$1, -16(%rbp)
.L58:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L64
	cvtss2sd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	cvtsi2ss	-44(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm2
	cvtsi2ss	-44(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LC4(%rip), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	CompareRefMultAlignments, .-CompareRefMultAlignments
	.globl	PairwiseIdentity
	.type	PairwiseIdentity, @function
PairwiseIdentity:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L68
.L72:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L69
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L69
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L69
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L69
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L69
	addl	$1, -12(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L69
	addl	$1, -16(%rbp)
.L69:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L70
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L70
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L70
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L70
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L70
	addl	$1, -8(%rbp)
.L70:
	addl	$1, -4(%rbp)
.L68:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L71
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L72
.L71:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L73
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.L73:
	cmpl	$0, -12(%rbp)
	je	.L74
	cvtsi2ss	-16(%rbp), %xmm0
	cvtsi2ss	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	jmp	.L76
.L74:
	pxor	%xmm0, %xmm0
.L76:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PairwiseIdentity, .-PairwiseIdentity
	.globl	AlignmentIdentityBySampling
	.type	AlignmentIdentityBySampling, @function
AlignmentIdentityBySampling:
.LFB13:
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
	cmpl	$1, -32(%rbp)
	jg	.L78
	movss	.LC3(%rip), %xmm0
	jmp	.L79
.L78:
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L80
.L82:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -8(%rbp)
.L81:
	call	sre_random@PLT
	movapd	%xmm0, %xmm1
	cvtsi2sd	-32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L81
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PairwiseIdentity
	movaps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -16(%rbp)
.L80:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L82
	cvtsi2ss	-36(%rbp), %xmm0
	movss	-12(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	AlignmentIdentityBySampling, .-AlignmentIdentityBySampling
	.globl	MajorityRuleConsensus
	.type	MajorityRuleConsensus, @function
MajorityRuleConsensus:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movl	%edx, -192(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-192(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$485, %esi
	leaq	.LC1(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -136(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L84
.L96:
	movl	$0, -152(%rbp)
	jmp	.L85
.L86:
	movl	-152(%rbp), %eax
	cltq
	movl	$0, -128(%rbp,%rax,4)
	addl	$1, -152(%rbp)
.L85:
	cmpl	$26, -152(%rbp)
	jle	.L86
	movl	$0, -164(%rbp)
	jmp	.L87
.L90:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-164(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-184(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-160(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L88
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-160(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	subl	$65, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -128(%rbp,%rax,4)
	jmp	.L89
.L88:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.L89:
	addl	$1, -164(%rbp)
.L87:
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jl	.L90
	movl	-24(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	cvtsi2ss	-188(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC5(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.L91
	movl	$-1, -144(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	$0, -152(%rbp)
	jmp	.L93
.L95:
	movl	-152(%rbp), %eax
	cltq
	movl	-128(%rbp,%rax,4), %eax
	cmpl	%eax, -148(%rbp)
	jge	.L94
	movl	-152(%rbp), %eax
	cltq
	movl	-128(%rbp,%rax,4), %eax
	movl	%eax, -148(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -144(%rbp)
.L94:
	addl	$1, -152(%rbp)
.L93:
	cmpl	$25, -152(%rbp)
	jle	.L95
	movl	-144(%rbp), %eax
	leal	65(%rax), %ecx
	movl	-156(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -156(%rbp)
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L91:
	addl	$1, -160(%rbp)
.L84:
	movl	-160(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jl	.L96
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	MajorityRuleConsensus, .-MajorityRuleConsensus
	.section	.rodata
	.align 4
.LC0:
	.long	3212836864
	.align 4
.LC3:
	.long	1065353216
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 4
.LC5:
	.long	1056964608
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
