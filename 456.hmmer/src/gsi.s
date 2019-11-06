	.file	"gsi.c"
	.text
	.section	.rodata
.LC0:
	.string	"gsi.c"
.LC1:
	.string	"r"
.LC2:
	.string	"GSI"
	.text
	.globl	GSIOpen
	.type	GSIOpen, @function
GSIOpen:
.LFB5:
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
	movl	$16, %edx
	movl	$58, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L8
.L2:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L4
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L8
.L4:
	leaq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L5
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L8
.L5:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$2, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L6
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L8
.L6:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	12(%rdx), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_ntoh16@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movw	%dx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edi
	call	sre_ntoh32@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rax
.L8:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	GSIOpen, .-GSIOpen
	.globl	GSIGetRecord
	.type	GSIGetRecord, @function
GSIGetRecord:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L12
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L13
.L12:
	cmpq	$0, -24(%rbp)
	jne	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L15
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L13
.L15:
	cmpq	$0, -32(%rbp)
	jne	.L16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L17
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L13
.L17:
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_ntoh16@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
.L18:
	cmpq	$0, -32(%rbp)
	je	.L19
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	sre_ntoh32@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L19:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	GSIGetRecord, .-GSIGetRecord
	.globl	GSIGetOffset
	.type	GSIGetOffset, @function
GSIGetOffset:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -16(%rbp)
	movq	-88(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %edx
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	jmp	.L21
.L28:
	movq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L31
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jb	.L24
	movl	$0, %eax
	jmp	.L29
.L24:
	cmpl	$0, -52(%rbp)
	jns	.L26
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.L27
.L26:
	cmpl	$0, -52(%rbp)
	jle	.L27
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.L27:
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	$38, %eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
.L21:
	leaq	-72(%rbp), %rcx
	leaq	-74(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	GSIGetRecord
	testl	%eax, %eax
	jne	.L28
	jmp	.L23
.L31:
	nop
.L23:
	movzwl	-74(%rbp), %eax
	movzwl	%ax, %eax
	imull	$38, %eax, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	leaq	-68(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	GSIGetRecord
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	GSIGetOffset, .-GSIGetOffset
	.globl	GSIClose
	.type	GSIClose, @function
GSIClose:
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
	call	fclose@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	GSIClose, .-GSIClose
	.globl	GSIAllocIndex
	.type	GSIAllocIndex, @function
GSIAllocIndex:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$40, %edx
	movl	$200, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$80, %edx
	movl	$201, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$40, %edx
	movl	$202, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$4000, %edx
	movl	$203, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	GSIAllocIndex, .-GSIAllocIndex
	.globl	GSIFreeIndex
	.type	GSIFreeIndex, @function
GSIFreeIndex:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L36:
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L37
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	GSIFreeIndex, .-GSIFreeIndex
	.section	.rodata
	.align 8
.LC3:
	.string	"File name too long to be indexed."
	.text
	.globl	GSIAddFileToIndex
	.type	GSIAddFileToIndex, @function
GSIAddFileToIndex:
.LFB11:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
	cmpl	$31, -20(%rbp)
	jle	.L39
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L39:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %ecx
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
	jne	.L41
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$229, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$230, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L41:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	GSIAddFileToIndex, .-GSIAddFileToIndex
	.section	.rodata
.LC4:
	.string	"key too long in GSI index"
.LC5:
	.string	"too many files in GSI index"
.LC6:
	.string	"offset too big in GSI index"
	.text
	.globl	GSIAddKeyToIndex
	.type	GSIAddKeyToIndex, @function
GSIAddKeyToIndex:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$31, %rax
	jbe	.L43
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L43:
	cmpl	$65535, -20(%rbp)
	jle	.L44
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L44:
	movl	$4294967295, %eax
	cmpq	%rax, -32(%rbp)
	jle	.L45
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L45:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$31, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movb	$0, 31(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	-20(%rbp), %edx
	movw	%dx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	-32(%rbp), %rdx
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L47
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	addl	$100, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$247, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	GSIAddKeyToIndex, .-GSIAddKeyToIndex
	.type	gsi_keysorter, @function
gsi_keysorter:
.LFB13:
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
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	gsi_keysorter, .-gsi_keysorter
	.globl	GSISortIndex
	.type	GSISortIndex, @function
GSISortIndex:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	gsi_keysorter(%rip), %rcx
	movl	$40, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	specqsort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	GSISortIndex, .-GSISortIndex
	.globl	GSIWriteIndex
	.type	GSIWriteIndex, @function
GSIWriteIndex:
.LFB15:
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
	movl	32(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	GSIWriteHeader
	movl	$0, -4(%rbp)
	jmp	.L52
.L53:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	GSIWriteFileRecord
	addl	$1, -4(%rbp)
.L52:
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -4(%rbp)
	jb	.L53
	movl	$0, -4(%rbp)
	jmp	.L54
.L55:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	36(%rax), %eax
	movl	%eax, %r8d
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movzwl	32(%rax), %eax
	movzwl	%ax, %esi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	%r8, %rcx
	movl	%esi, %edx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	GSIWriteKeyRecord
	addl	$1, -4(%rbp)
.L54:
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L55
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	GSIWriteIndex, .-GSIWriteIndex
	.section	.rodata
.LC7:
	.string	"GSI: nfiles out of range"
.LC8:
	.string	"GSI: nkeys out of range"
	.text
	.globl	GSIWriteHeader
	.type	GSIWriteHeader, @function
GSIWriteHeader:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$65535, -76(%rbp)
	jle	.L57
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L57:
	movl	$4294967295, %eax
	cmpq	%rax, -88(%rbp)
	jle	.L58
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L58:
	movl	-76(%rbp), %eax
	movw	%ax, -54(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, -52(%rbp)
	movzwl	-54(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_hton16@PLT
	movw	%ax, -54(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	sre_hton32@PLT
	movl	%eax, -52(%rbp)
	leaq	-48(%rbp), %rax
	movl	$4805447, (%rax)
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$31, %rax
	ja	.L59
	movl	$314, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L59:
	movq	-72(%rbp), %rdx
	leaq	-54(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L60
	movl	$315, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L60:
	movq	-72(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L63
	movl	$316, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L63:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L62
	call	__stack_chk_fail@PLT
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	GSIWriteHeader, .-GSIWriteHeader
	.section	.rodata
.LC9:
	.string	"GSI: file index out of range"
	.text
	.globl	GSIWriteFileRecord
	.type	GSIWriteFileRecord, @function
GSIWriteFileRecord:
.LFB17:
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
	movl	%ecx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$31, %rax
	jbe	.L65
	movl	$0, %eax
	jmp	.L71
.L65:
	cmpl	$65535, -36(%rbp)
	jle	.L73
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L73:
	movl	-36(%rbp), %eax
	movw	%ax, -14(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_hton16@PLT
	movw	%ax, -14(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	sre_hton32@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$31, %rax
	ja	.L68
	movl	$347, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L68:
	movq	-24(%rbp), %rdx
	leaq	-14(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L69
	movl	$348, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L69:
	movq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L70
	movl	$349, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L70:
	movl	$1, %eax
.L71:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	GSIWriteFileRecord, .-GSIWriteFileRecord
	.section	.rodata
.LC10:
	.string	"GSI: offset out of range"
	.text
	.globl	GSIWriteKeyRecord
	.type	GSIWriteKeyRecord, @function
GSIWriteKeyRecord:
.LFB18:
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
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$31, %rax
	jbe	.L75
	movl	$0, %eax
	jmp	.L82
.L75:
	cmpl	$65535, -36(%rbp)
	jle	.L77
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L77:
	movl	$4294967295, %eax
	cmpq	%rax, -48(%rbp)
	jle	.L78
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L78:
	movl	-36(%rbp), %eax
	movw	%ax, -14(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, -12(%rbp)
	movzwl	-14(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	sre_hton16@PLT
	movw	%ax, -14(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	sre_hton32@PLT
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	cmpq	$31, %rax
	ja	.L79
	movl	$382, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L79:
	movq	-24(%rbp), %rdx
	leaq	-14(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L80
	movl	$383, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L80:
	movq	-24(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	testq	%rax, %rax
	jne	.L81
	movl	$384, %esi
	leaq	.LC0(%rip), %rdi
	call	Panic@PLT
.L81:
	movl	$1, %eax
.L82:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	GSIWriteKeyRecord, .-GSIWriteKeyRecord
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
