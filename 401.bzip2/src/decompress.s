	.file	"decompress.c"
	.text
	.type	makeMaps_d, @function
makeMaps_d:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 3192(%rax)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	3196(%rdx,%rax), %eax
	testb	%al, %al
	je	.L3
	movq	-24(%rbp), %rax
	movl	3192(%rax), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	-24(%rbp), %rdx
	cltq
	movb	%cl, 3468(%rdx,%rax)
	movq	-24(%rbp), %rax
	movl	3192(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 3192(%rax)
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$255, -4(%rbp)
	jle	.L4
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	makeMaps_d, .-makeMaps_d
	.section	.rodata
.LC0:
	.string	"\n    [%d: huff+mtf "
.LC1:
	.string	"rt+rld"
	.text
	.globl	BZ2_decompress
	.type	BZ2_decompress, @function
BZ2_decompress:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$10, %eax
	jne	.L6
	movq	-376(%rbp), %rax
	movl	$0, 64036(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64040(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64044(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64048(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64052(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64056(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64060(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64064(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64068(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64072(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64076(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64080(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64084(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64088(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64092(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64096(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64100(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64104(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64108(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64112(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 64116(%rax)
	movq	-376(%rbp), %rax
	movq	$0, 64120(%rax)
	movq	-376(%rbp), %rax
	movq	$0, 64128(%rax)
	movq	-376(%rbp), %rax
	movq	$0, 64136(%rax)
.L6:
	movq	-376(%rbp), %rax
	movl	64036(%rax), %eax
	movl	%eax, -344(%rbp)
	movq	-376(%rbp), %rax
	movl	64040(%rax), %eax
	movl	%eax, -340(%rbp)
	movq	-376(%rbp), %rax
	movl	64044(%rax), %eax
	movl	%eax, -336(%rbp)
	movq	-376(%rbp), %rax
	movl	64048(%rax), %eax
	movl	%eax, -332(%rbp)
	movq	-376(%rbp), %rax
	movl	64052(%rax), %eax
	movl	%eax, -328(%rbp)
	movq	-376(%rbp), %rax
	movl	64056(%rax), %eax
	movl	%eax, -324(%rbp)
	movq	-376(%rbp), %rax
	movl	64060(%rax), %eax
	movl	%eax, -320(%rbp)
	movq	-376(%rbp), %rax
	movl	64064(%rax), %eax
	movl	%eax, -316(%rbp)
	movq	-376(%rbp), %rax
	movl	64068(%rax), %eax
	movl	%eax, -312(%rbp)
	movq	-376(%rbp), %rax
	movl	64072(%rax), %eax
	movl	%eax, -308(%rbp)
	movq	-376(%rbp), %rax
	movl	64076(%rax), %eax
	movl	%eax, -304(%rbp)
	movq	-376(%rbp), %rax
	movl	64080(%rax), %eax
	movl	%eax, -300(%rbp)
	movq	-376(%rbp), %rax
	movl	64084(%rax), %eax
	movl	%eax, -296(%rbp)
	movq	-376(%rbp), %rax
	movl	64088(%rax), %eax
	movl	%eax, -292(%rbp)
	movq	-376(%rbp), %rax
	movl	64092(%rax), %eax
	movl	%eax, -288(%rbp)
	movq	-376(%rbp), %rax
	movl	64096(%rax), %eax
	movl	%eax, -228(%rbp)
	movq	-376(%rbp), %rax
	movl	64100(%rax), %eax
	movl	%eax, -284(%rbp)
	movq	-376(%rbp), %rax
	movl	64104(%rax), %eax
	movl	%eax, -280(%rbp)
	movq	-376(%rbp), %rax
	movl	64108(%rax), %eax
	movl	%eax, -276(%rbp)
	movq	-376(%rbp), %rax
	movl	64112(%rax), %eax
	movl	%eax, -272(%rbp)
	movq	-376(%rbp), %rax
	movl	64116(%rax), %eax
	movl	%eax, -268(%rbp)
	movq	-376(%rbp), %rax
	movq	64120(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-376(%rbp), %rax
	movq	64128(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-376(%rbp), %rax
	movq	64136(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -356(%rbp)
	movq	-376(%rbp), %rax
	movl	8(%rax), %eax
	subl	$10, %eax
	cmpl	$40, %eax
	ja	.L396
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L9(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L8-.L9
	.long	.L10-.L9
	.long	.L11-.L9
	.long	.L12-.L9
	.long	.L13-.L9
	.long	.L14-.L9
	.long	.L15-.L9
	.long	.L16-.L9
	.long	.L17-.L9
	.long	.L18-.L9
	.long	.L19-.L9
	.long	.L20-.L9
	.long	.L21-.L9
	.long	.L22-.L9
	.long	.L23-.L9
	.long	.L24-.L9
	.long	.L25-.L9
	.long	.L26-.L9
	.long	.L27-.L9
	.long	.L28-.L9
	.long	.L29-.L9
	.long	.L30-.L9
	.long	.L192-.L9
	.long	.L32-.L9
	.long	.L33-.L9
	.long	.L34-.L9
	.long	.L35-.L9
	.long	.L36-.L9
	.long	.L37-.L9
	.long	.L38-.L9
	.long	.L39-.L9
	.long	.L40-.L9
	.long	.L41-.L9
	.long	.L42-.L9
	.long	.L43-.L9
	.long	.L44-.L9
	.long	.L45-.L9
	.long	.L46-.L9
	.long	.L47-.L9
	.long	.L48-.L9
	.long	.L49-.L9
	.text
.L8:
	movq	-376(%rbp), %rax
	movl	$10, 8(%rax)
.L55:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L50
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -224(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-224(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$66, -359(%rbp)
	je	.L10
	jmp	.L397
.L50:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movl	$0, -356(%rbp)
	jmp	.L53
.L52:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L55
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L55
.L397:
	movl	$-5, -356(%rbp)
	jmp	.L53
.L10:
	movq	-376(%rbp), %rax
	movl	$11, 8(%rax)
.L60:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L56
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -220(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-220(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$90, -359(%rbp)
	je	.L11
	jmp	.L398
.L56:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L58
	movl	$0, -356(%rbp)
	jmp	.L53
.L58:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L60
.L398:
	movl	$-5, -356(%rbp)
	jmp	.L53
.L11:
	movq	-376(%rbp), %rax
	movl	$12, 8(%rax)
.L65:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L61
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -216(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-216(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$104, -359(%rbp)
	je	.L12
	jmp	.L399
.L61:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L63
	movl	$0, -356(%rbp)
	jmp	.L53
.L63:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L65
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L65
.L399:
	movl	$-5, -356(%rbp)
	jmp	.L53
.L12:
	movq	-376(%rbp), %rax
	movl	$13, 8(%rax)
.L70:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L66
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -212(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-212(%rbp), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 40(%rax)
	nop
	movq	-376(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$48, %eax
	jle	.L71
	jmp	.L400
.L66:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L68
	movl	$0, -356(%rbp)
	jmp	.L53
.L68:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L70
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L70
.L400:
	movq	-376(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$57, %eax
	jle	.L72
.L71:
	movl	$-5, -356(%rbp)
	jmp	.L53
.L72:
	movq	-376(%rbp), %rax
	movl	40(%rax), %eax
	leal	-48(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-376(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L73
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-376(%rbp), %rdx
	movl	40(%rdx), %edx
	movslq	%edx, %rdx
	imull	$200000, %edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, 3160(%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-376(%rbp), %rdx
	movl	40(%rdx), %edx
	imull	$100000, %edx, %edx
	addl	$1, %edx
	movl	%edx, %esi
	sarl	%esi
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, 3168(%rax)
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rax
	testq	%rax, %rax
	jne	.L13
.L74:
	movl	$-3, -356(%rbp)
	jmp	.L53
.L73:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-376(%rbp), %rdx
	movl	40(%rdx), %edx
	movslq	%edx, %rdx
	imull	$400000, %edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, 3152(%rax)
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movl	$-3, -356(%rbp)
	jmp	.L53
.L13:
	movq	-376(%rbp), %rax
	movl	$14, 8(%rax)
.L79:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L75
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -208(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-208(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$23, -359(%rbp)
	jne	.L80
	jmp	.L41
.L75:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L77
	movl	$0, -356(%rbp)
	jmp	.L53
.L77:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L79
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L79
.L80:
	cmpb	$49, -359(%rbp)
	je	.L14
	movl	$-4, -356(%rbp)
	jmp	.L53
.L14:
	movq	-376(%rbp), %rax
	movl	$15, 8(%rax)
.L85:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L81
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -204(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-204(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$65, -359(%rbp)
	je	.L15
	jmp	.L401
.L81:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L83
	movl	$0, -356(%rbp)
	jmp	.L53
.L83:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L85
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L85
.L401:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L15:
	movq	-376(%rbp), %rax
	movl	$16, 8(%rax)
.L90:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L86
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -200(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-200(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$89, -359(%rbp)
	je	.L16
	jmp	.L402
.L86:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L88
	movl	$0, -356(%rbp)
	jmp	.L53
.L88:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L90
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L90
.L402:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L16:
	movq	-376(%rbp), %rax
	movl	$17, 8(%rax)
.L95:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L91
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -196(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-196(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$38, -359(%rbp)
	je	.L17
	jmp	.L403
.L91:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L93
	movl	$0, -356(%rbp)
	jmp	.L53
.L93:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L95
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L95
.L403:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L17:
	movq	-376(%rbp), %rax
	movl	$18, 8(%rax)
.L100:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L96
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -192(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-192(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$83, -359(%rbp)
	je	.L18
	jmp	.L404
.L96:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	movl	$0, -356(%rbp)
	jmp	.L53
.L98:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L100
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L100
.L404:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L18:
	movq	-376(%rbp), %rax
	movl	$19, 8(%rax)
.L105:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L101
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -188(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-188(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$89, -359(%rbp)
	je	.L106
	jmp	.L405
.L101:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L103
	movl	$0, -356(%rbp)
	jmp	.L53
.L103:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L105
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L105
.L405:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L106:
	movq	-376(%rbp), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-376(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	jle	.L107
	movq	-376(%rbp), %rax
	movl	48(%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L107:
	movq	-376(%rbp), %rax
	movl	$0, 3176(%rax)
.L19:
	movq	-376(%rbp), %rax
	movl	$20, 8(%rax)
.L112:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L108
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -184(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-184(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3176(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3176(%rax)
	jmp	.L20
.L108:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L110
	movl	$0, -356(%rbp)
	jmp	.L53
.L110:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L112
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L112
.L20:
	movq	-376(%rbp), %rax
	movl	$21, 8(%rax)
.L117:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L113
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -180(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-180(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3176(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3176(%rax)
	jmp	.L21
.L113:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L115
	movl	$0, -356(%rbp)
	jmp	.L53
.L115:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L117
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L117
.L21:
	movq	-376(%rbp), %rax
	movl	$22, 8(%rax)
.L122:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L118
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -176(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-176(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3176(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3176(%rax)
	jmp	.L22
.L118:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L120
	movl	$0, -356(%rbp)
	jmp	.L53
.L120:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L122
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L122
.L22:
	movq	-376(%rbp), %rax
	movl	$23, 8(%rax)
.L127:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L123
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -172(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-172(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3176(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3176(%rax)
	jmp	.L23
.L123:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L125
	movl	$0, -356(%rbp)
	jmp	.L53
.L125:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L127
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L127
.L23:
	movq	-376(%rbp), %rax
	movl	$24, 8(%rax)
.L132:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L128
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -168(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-168(%rbp), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movb	%dl, 20(%rax)
	nop
	movq	-376(%rbp), %rax
	movl	$0, 56(%rax)
	jmp	.L24
.L128:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L130
	movl	$0, -356(%rbp)
	jmp	.L53
.L130:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L132
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L132
.L24:
	movq	-376(%rbp), %rax
	movl	$25, 8(%rax)
.L137:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L133
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -164(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-164(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L25
.L133:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L135
	movl	$0, -356(%rbp)
	jmp	.L53
.L135:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L137
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L137
.L25:
	movq	-376(%rbp), %rax
	movl	$26, 8(%rax)
.L142:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L138
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -160(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-160(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L26
.L138:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L140
	movl	$0, -356(%rbp)
	jmp	.L53
.L140:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L142
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L142
.L26:
	movq	-376(%rbp), %rax
	movl	$27, 8(%rax)
.L147:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L143
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -156(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-156(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jns	.L148
	jmp	.L406
.L143:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L145
	movl	$0, -356(%rbp)
	jmp	.L53
.L145:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L147
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L147
.L406:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L148:
	movq	-376(%rbp), %rax
	movl	56(%rax), %edx
	movq	-376(%rbp), %rax
	movl	40(%rax), %eax
	imull	$100000, %eax, %eax
	addl	$10, %eax
	cmpl	%eax, %edx
	jle	.L149
	movl	$-4, -356(%rbp)
	jmp	.L53
.L149:
	movl	$0, -344(%rbp)
	jmp	.L150
.L27:
	movq	-376(%rbp), %rax
	movl	$28, 8(%rax)
.L155:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L151
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -88(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-88(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$1, -359(%rbp)
	jne	.L156
	jmp	.L407
.L151:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L153
	movl	$0, -356(%rbp)
	jmp	.L53
.L153:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L155
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L155
.L407:
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movb	$1, 3452(%rdx,%rax)
	jmp	.L157
.L156:
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movb	$0, 3452(%rdx,%rax)
.L157:
	addl	$1, -344(%rbp)
.L150:
	cmpl	$15, -344(%rbp)
	jle	.L27
	movl	$0, -344(%rbp)
	jmp	.L158
.L159:
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movb	$0, 3196(%rdx,%rax)
	addl	$1, -344(%rbp)
.L158:
	cmpl	$255, -344(%rbp)
	jle	.L159
	movl	$0, -344(%rbp)
	jmp	.L160
.L169:
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movzbl	3452(%rdx,%rax), %eax
	testb	%al, %al
	je	.L161
	movl	$0, -340(%rbp)
	jmp	.L162
.L28:
	movq	-376(%rbp), %rax
	movl	$29, 8(%rax)
.L167:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L163
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-92(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$1, -359(%rbp)
	jne	.L168
	jmp	.L408
.L163:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L165
	movl	$0, -356(%rbp)
	jmp	.L53
.L165:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L167
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L167
.L408:
	movl	-344(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-340(%rbp), %eax
	addl	%edx, %eax
	movq	-376(%rbp), %rdx
	cltq
	movb	$1, 3196(%rdx,%rax)
.L168:
	addl	$1, -340(%rbp)
.L162:
	cmpl	$15, -340(%rbp)
	jle	.L28
.L161:
	addl	$1, -344(%rbp)
.L160:
	cmpl	$15, -344(%rbp)
	jle	.L169
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	makeMaps_d
	movq	-376(%rbp), %rax
	movl	3192(%rax), %eax
	testl	%eax, %eax
	jne	.L170
	movl	$-4, -356(%rbp)
	jmp	.L53
.L170:
	movq	-376(%rbp), %rax
	movl	3192(%rax), %eax
	addl	$2, %eax
	movl	%eax, -332(%rbp)
.L29:
	movq	-376(%rbp), %rax
	movl	$30, 8(%rax)
.L175:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$2, %eax
	jle	.L171
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$3, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$7, %eax
	movl	%eax, -152(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-3(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-152(%rbp), %eax
	movl	%eax, -328(%rbp)
	nop
	cmpl	$1, -328(%rbp)
	jle	.L176
	jmp	.L409
.L171:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movl	$0, -356(%rbp)
	jmp	.L53
.L173:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L175
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L175
.L409:
	cmpl	$6, -328(%rbp)
	jle	.L30
.L176:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L30:
	movq	-376(%rbp), %rax
	movl	$31, 8(%rax)
.L181:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$14, %eax
	jle	.L177
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$15, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$32767, %eax
	movl	%eax, -148(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-15(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-148(%rbp), %eax
	movl	%eax, -324(%rbp)
	nop
	cmpl	$0, -324(%rbp)
	jg	.L182
	jmp	.L410
.L177:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L179
	movl	$0, -356(%rbp)
	jmp	.L53
.L179:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L181
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L181
.L410:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L182:
	movl	$0, -344(%rbp)
	jmp	.L183
.L193:
	movl	$0, -340(%rbp)
.L192:
	movq	-376(%rbp), %rax
	movl	$32, 8(%rax)
.L188:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L184
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -96(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-96(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$0, -359(%rbp)
	jne	.L189
	jmp	.L411
.L184:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L186
	movl	$0, -356(%rbp)
	jmp	.L53
.L186:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L188
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L188
.L189:
	addl	$1, -340(%rbp)
	movl	-340(%rbp), %eax
	cmpl	-328(%rbp), %eax
	jl	.L192
	movl	$-4, -356(%rbp)
	jmp	.L53
.L411:
	movl	-340(%rbp), %eax
	movl	%eax, %ecx
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movb	%cl, 25886(%rdx,%rax)
	addl	$1, -344(%rbp)
.L183:
	movl	-344(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L193
	movb	$0, -358(%rbp)
	jmp	.L194
.L195:
	movzbl	-358(%rbp), %eax
	cltq
	movzbl	-358(%rbp), %edx
	movb	%dl, -14(%rbp,%rax)
	movzbl	-358(%rbp), %eax
	addl	$1, %eax
	movb	%al, -358(%rbp)
.L194:
	movzbl	-358(%rbp), %eax
	cmpl	%eax, -328(%rbp)
	jg	.L195
	movl	$0, -344(%rbp)
	jmp	.L196
.L199:
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movzbl	25886(%rdx,%rax), %eax
	movb	%al, -358(%rbp)
	movzbl	-358(%rbp), %eax
	cltq
	movzbl	-14(%rbp,%rax), %eax
	movb	%al, -357(%rbp)
	jmp	.L197
.L198:
	movzbl	-358(%rbp), %eax
	subl	$1, %eax
	movzbl	-358(%rbp), %ecx
	cltq
	movzbl	-14(%rbp,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -14(%rbp,%rax)
	movzbl	-358(%rbp), %eax
	subl	$1, %eax
	movb	%al, -358(%rbp)
.L197:
	cmpb	$0, -358(%rbp)
	jne	.L198
	movzbl	-357(%rbp), %eax
	movb	%al, -14(%rbp)
	movq	-376(%rbp), %rdx
	movl	-344(%rbp), %eax
	cltq
	movzbl	-357(%rbp), %ecx
	movb	%cl, 7884(%rdx,%rax)
	addl	$1, -344(%rbp)
.L196:
	movl	-344(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L199
	movl	$0, -336(%rbp)
	jmp	.L200
.L32:
	movq	-376(%rbp), %rax
	movl	$33, 8(%rax)
.L205:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$4, %eax
	jle	.L201
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$5, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$31, %eax
	movl	%eax, -108(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-5(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-108(%rbp), %eax
	movl	%eax, -288(%rbp)
	nop
	movl	$0, -344(%rbp)
	jmp	.L206
.L201:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L203
	movl	$0, -356(%rbp)
	jmp	.L53
.L203:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L205
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L205
.L221:
	cmpl	$0, -288(%rbp)
	jle	.L207
	cmpl	$20, -288(%rbp)
	jle	.L33
.L207:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L33:
	movq	-376(%rbp), %rax
	movl	$34, 8(%rax)
.L212:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L208
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -104(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-104(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$0, -359(%rbp)
	jne	.L34
	jmp	.L412
.L208:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L210
	movl	$0, -356(%rbp)
	jmp	.L53
.L210:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L212
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L212
.L34:
	movq	-376(%rbp), %rax
	movl	$35, 8(%rax)
.L218:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L214
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -100(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-100(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$0, -359(%rbp)
	jne	.L219
	jmp	.L413
.L214:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L216
	movl	$0, -356(%rbp)
	jmp	.L53
.L216:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L218
.L413:
	addl	$1, -288(%rbp)
	jmp	.L221
.L219:
	subl	$1, -288(%rbp)
	jmp	.L221
.L412:
	movl	-288(%rbp), %eax
	movl	%eax, %edi
	movq	-376(%rbp), %rsi
	movl	-344(%rbp), %eax
	movslq	%eax, %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$43888, %rax
	movb	%dil, (%rax)
	addl	$1, -344(%rbp)
.L206:
	movl	-344(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jl	.L221
	addl	$1, -336(%rbp)
.L200:
	movl	-336(%rbp), %eax
	cmpl	-328(%rbp), %eax
	jl	.L32
	movl	$0, -336(%rbp)
	jmp	.L222
.L227:
	movl	$32, -352(%rbp)
	movl	$0, -348(%rbp)
	movl	$0, -344(%rbp)
	jmp	.L223
.L226:
	movq	-376(%rbp), %rsi
	movl	-344(%rbp), %eax
	movslq	%eax, %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$43888, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -348(%rbp)
	jge	.L224
	movq	-376(%rbp), %rsi
	movl	-344(%rbp), %eax
	movslq	%eax, %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$43888, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -348(%rbp)
.L224:
	movq	-376(%rbp), %rsi
	movl	-344(%rbp), %eax
	movslq	%eax, %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$43888, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -352(%rbp)
	jle	.L225
	movq	-376(%rbp), %rsi
	movl	-344(%rbp), %eax
	movslq	%eax, %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	addq	$43888, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -352(%rbp)
.L225:
	addl	$1, -344(%rbp)
.L223:
	movl	-344(%rbp), %eax
	cmpl	-332(%rbp), %eax
	jl	.L226
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	43888(%rax), %rdx
	movq	-376(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	57808(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %r10
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	51616(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rsi
	movl	-336(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45424(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdi
	movl	-348(%rbp), %r8d
	movl	-352(%rbp), %edx
	subq	$8, %rsp
	movl	-332(%rbp), %eax
	pushq	%rax
	movl	%r8d, %r9d
	movl	%edx, %r8d
	movq	%r10, %rdx
	call	BZ2_hbCreateDecodeTables@PLT
	addq	$16, %rsp
	movq	-376(%rbp), %rax
	movl	-336(%rbp), %edx
	movslq	%edx, %rdx
	leaq	16000(%rdx), %rcx
	movl	-352(%rbp), %edx
	movl	%edx, 12(%rax,%rcx,4)
	addl	$1, -336(%rbp)
.L222:
	movl	-336(%rbp), %eax
	cmpl	-328(%rbp), %eax
	jl	.L227
	movq	-376(%rbp), %rax
	movl	3192(%rax), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	movq	-376(%rbp), %rax
	movl	40(%rax), %eax
	imull	$100000, %eax, %eax
	movl	%eax, -304(%rbp)
	movl	$-1, -316(%rbp)
	movl	$0, -312(%rbp)
	movl	$0, -344(%rbp)
	jmp	.L228
.L229:
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	$0, 4(%rax,%rdx,4)
	addl	$1, -344(%rbp)
.L228:
	cmpl	$255, -344(%rbp)
	jle	.L229
	movl	$4095, -256(%rbp)
	movl	$15, -264(%rbp)
	jmp	.L230
.L233:
	movl	$15, -260(%rbp)
	jmp	.L231
.L232:
	movl	-264(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-260(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movl	-256(%rbp), %eax
	cltq
	movb	%cl, 3724(%rdx,%rax)
	subl	$1, -256(%rbp)
	subl	$1, -260(%rbp)
.L231:
	cmpl	$0, -260(%rbp)
	jns	.L232
	movl	-256(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-264(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	subl	$1, -264(%rbp)
.L230:
	cmpl	$0, -264(%rbp)
	jns	.L233
	movl	$0, -300(%rbp)
	cmpl	$0, -312(%rbp)
	jne	.L234
	addl	$1, -316(%rbp)
	movl	-316(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L235
	movl	$-4, -356(%rbp)
	jmp	.L53
.L235:
	movl	$50, -312(%rbp)
	movq	-376(%rbp), %rdx
	movl	-316(%rbp), %eax
	cltq
	movzbl	7884(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%rbp)
	movq	-376(%rbp), %rax
	movl	-272(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16000, %rdx
	movl	12(%rax,%rdx,4), %eax
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45424(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	57808(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -32(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	51616(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -40(%rbp)
.L234:
	subl	$1, -312(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -284(%rbp)
.L35:
	movq	-376(%rbp), %rax
	movl	$36, 8(%rax)
.L240:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, -284(%rbp)
	jg	.L236
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	-284(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -144(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-144(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L237
.L236:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L238
	movl	$0, -356(%rbp)
	jmp	.L53
.L238:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L240
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L240
.L237:
	cmpl	$20, -284(%rbp)
	jle	.L241
	movl	$-4, -356(%rbp)
	jmp	.L53
.L241:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -280(%rbp)
	jle	.L423
	addl	$1, -284(%rbp)
.L36:
	movq	-376(%rbp), %rax
	movl	$37, 8(%rax)
.L248:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L244
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -140(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-140(%rbp), %eax
	movl	%eax, -276(%rbp)
	nop
	movl	-280(%rbp), %eax
	addl	%eax, %eax
	orl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L237
.L244:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L246
	movl	$0, -356(%rbp)
	jmp	.L53
.L246:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L248
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L248
.L423:
	nop
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	js	.L249
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$257, %eax
	jle	.L250
.L249:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L250:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -308(%rbp)
.L318:
	movl	-308(%rbp), %eax
	cmpl	-320(%rbp), %eax
	je	.L424
	cmpl	$0, -308(%rbp)
	je	.L253
	cmpl	$1, -308(%rbp)
	jne	.L254
.L253:
	movl	$-1, -296(%rbp)
	movl	$1, -292(%rbp)
.L274:
	cmpl	$0, -308(%rbp)
	jne	.L255
	movl	-292(%rbp), %eax
	addl	%eax, -296(%rbp)
	jmp	.L256
.L255:
	cmpl	$1, -308(%rbp)
	jne	.L256
	movl	-292(%rbp), %eax
	addl	%eax, %eax
	addl	%eax, -296(%rbp)
.L256:
	sall	-292(%rbp)
	cmpl	$0, -312(%rbp)
	jne	.L257
	addl	$1, -316(%rbp)
	movl	-316(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L258
	movl	$-4, -356(%rbp)
	jmp	.L53
.L258:
	movl	$50, -312(%rbp)
	movq	-376(%rbp), %rdx
	movl	-316(%rbp), %eax
	cltq
	movzbl	7884(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%rbp)
	movq	-376(%rbp), %rax
	movl	-272(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16000, %rdx
	movl	12(%rax,%rdx,4), %eax
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45424(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	57808(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -32(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	51616(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -40(%rbp)
.L257:
	subl	$1, -312(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -284(%rbp)
.L37:
	movq	-376(%rbp), %rax
	movl	$38, 8(%rax)
.L263:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, -284(%rbp)
	jg	.L259
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	-284(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -116(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-116(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L260
.L259:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L261
	movl	$0, -356(%rbp)
	jmp	.L53
.L261:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L263
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L263
.L260:
	cmpl	$20, -284(%rbp)
	jle	.L264
	movl	$-4, -356(%rbp)
	jmp	.L53
.L264:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -280(%rbp)
	jle	.L425
	addl	$1, -284(%rbp)
.L38:
	movq	-376(%rbp), %rax
	movl	$39, 8(%rax)
.L271:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L267
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -112(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-112(%rbp), %eax
	movl	%eax, -276(%rbp)
	nop
	movl	-280(%rbp), %eax
	addl	%eax, %eax
	orl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L260
.L267:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L269
	movl	$0, -356(%rbp)
	jmp	.L53
.L269:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L271
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L271
.L425:
	nop
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	js	.L272
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$257, %eax
	jle	.L273
.L272:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L273:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -308(%rbp)
	cmpl	$0, -308(%rbp)
	je	.L274
	cmpl	$1, -308(%rbp)
	je	.L274
	addl	$1, -296(%rbp)
	movq	-376(%rbp), %rax
	movl	7820(%rax), %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3724(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3468(%rdx,%rax), %eax
	movb	%al, -359(%rbp)
	movzbl	-359(%rbp), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	4(%rax,%rdx,4), %ecx
	movzbl	-359(%rbp), %edx
	movl	-296(%rbp), %eax
	addl	%eax, %ecx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	%ecx, 4(%rax,%rdx,4)
	movq	-376(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L280
	jmp	.L276
.L278:
	movl	-300(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jl	.L277
	movl	$-4, -356(%rbp)
	jmp	.L53
.L277:
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-300(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movzbl	-359(%rbp), %eax
	movw	%ax, (%rdx)
	addl	$1, -300(%rbp)
	subl	$1, -296(%rbp)
.L276:
	cmpl	$0, -296(%rbp)
	jg	.L278
	jmp	.L283
.L282:
	movl	-300(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jl	.L281
	movl	$-4, -356(%rbp)
	jmp	.L53
.L281:
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rax
	movl	-300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movzbl	-359(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -300(%rbp)
	subl	$1, -296(%rbp)
.L280:
	cmpl	$0, -296(%rbp)
	jg	.L282
	jmp	.L283
.L254:
	movl	-300(%rbp), %eax
	cmpl	-304(%rbp), %eax
	jl	.L284
	movl	$-4, -356(%rbp)
	jmp	.L53
.L284:
	movl	-308(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -232(%rbp)
	cmpl	$15, -232(%rbp)
	ja	.L285
	movq	-376(%rbp), %rax
	movl	7820(%rax), %eax
	movl	%eax, -240(%rbp)
	movl	-240(%rbp), %edx
	movl	-232(%rbp), %eax
	addl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, %edx
	movzbl	3724(%rax,%rdx), %eax
	movb	%al, -359(%rbp)
	jmp	.L286
.L287:
	movl	-240(%rbp), %edx
	movl	-232(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movl	-132(%rbp), %eax
	cltq
	movb	%cl, 3724(%rdx,%rax)
	movl	-132(%rbp), %eax
	leal	-2(%rax), %ecx
	movl	-132(%rbp), %eax
	leal	-1(%rax), %esi
	movq	-376(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, 3724(%rdx,%rax)
	movl	-132(%rbp), %eax
	leal	-3(%rax), %ecx
	movl	-132(%rbp), %eax
	leal	-2(%rax), %esi
	movq	-376(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, 3724(%rdx,%rax)
	movl	-132(%rbp), %eax
	leal	-4(%rax), %ecx
	movl	-132(%rbp), %eax
	leal	-3(%rax), %esi
	movq	-376(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, 3724(%rdx,%rax)
	subl	$4, -232(%rbp)
.L286:
	cmpl	$3, -232(%rbp)
	ja	.L287
	jmp	.L288
.L289:
	movl	-240(%rbp), %edx
	movl	-232(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %esi
	movl	-240(%rbp), %edx
	movl	-232(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-376(%rbp), %rax
	movl	%esi, %edx
	movzbl	3724(%rax,%rdx), %edx
	movq	-376(%rbp), %rax
	movl	%ecx, %ecx
	movb	%dl, 3724(%rax,%rcx)
	subl	$1, -232(%rbp)
.L288:
	cmpl	$0, -232(%rbp)
	jne	.L289
	movq	-376(%rbp), %rdx
	movl	-240(%rbp), %eax
	cltq
	movzbl	-359(%rbp), %ecx
	movb	%cl, 3724(%rdx,%rax)
	jmp	.L290
.L285:
	movl	-232(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, -236(%rbp)
	movl	-232(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -136(%rbp)
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %edx
	movl	-136(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -240(%rbp)
	movq	-376(%rbp), %rdx
	movl	-240(%rbp), %eax
	cltq
	movzbl	3724(%rdx,%rax), %eax
	movb	%al, -359(%rbp)
	jmp	.L291
.L292:
	movl	-240(%rbp), %eax
	subl	$1, %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movl	-240(%rbp), %eax
	cltq
	movb	%cl, 3724(%rdx,%rax)
	subl	$1, -240(%rbp)
.L291:
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %eax
	cmpl	%eax, -240(%rbp)
	jg	.L292
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %eax
	leal	1(%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	jmp	.L293
.L294:
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %eax
	leal	-1(%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	movl	-236(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %eax
	leal	15(%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %esi
	movq	-376(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, 3724(%rdx,%rax)
	subl	$1, -236(%rbp)
.L293:
	cmpl	$0, -236(%rbp)
	jg	.L294
	movq	-376(%rbp), %rax
	movl	7820(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 7820(%rax)
	movq	-376(%rbp), %rax
	movl	7820(%rax), %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	-359(%rbp), %ecx
	movb	%cl, 3724(%rdx,%rax)
	movq	-376(%rbp), %rax
	movl	7820(%rax), %eax
	testl	%eax, %eax
	jne	.L290
	movl	$4095, -244(%rbp)
	movl	$15, -252(%rbp)
	jmp	.L295
.L298:
	movl	$15, -248(%rbp)
	jmp	.L296
.L297:
	movq	-376(%rbp), %rax
	movl	-252(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	12(%rax,%rdx,4), %edx
	movl	-248(%rbp), %eax
	addl	%edx, %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3724(%rdx,%rax), %ecx
	movq	-376(%rbp), %rdx
	movl	-244(%rbp), %eax
	cltq
	movb	%cl, 3724(%rdx,%rax)
	subl	$1, -244(%rbp)
	subl	$1, -248(%rbp)
.L296:
	cmpl	$0, -248(%rbp)
	jns	.L297
	movl	-244(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-252(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1952, %rdx
	movl	%ecx, 12(%rax,%rdx,4)
	subl	$1, -252(%rbp)
.L295:
	cmpl	$0, -252(%rbp)
	jns	.L298
.L290:
	movzbl	-359(%rbp), %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3468(%rdx,%rax), %eax
	movzbl	%al, %eax
	movq	-376(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$16, %rcx
	movl	4(%rdx,%rcx,4), %edx
	leal	1(%rdx), %ecx
	movq	-376(%rbp), %rdx
	cltq
	addq	$16, %rax
	movl	%ecx, 4(%rdx,%rax,4)
	movq	-376(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L299
	movzbl	-359(%rbp), %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3468(%rdx,%rax), %ecx
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-300(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movzbl	%cl, %eax
	movw	%ax, (%rdx)
	jmp	.L300
.L299:
	movzbl	-359(%rbp), %eax
	movq	-376(%rbp), %rdx
	cltq
	movzbl	3468(%rdx,%rax), %ecx
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rax
	movl	-300(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movzbl	%cl, %eax
	movl	%eax, (%rdx)
.L300:
	addl	$1, -300(%rbp)
	cmpl	$0, -312(%rbp)
	jne	.L301
	addl	$1, -316(%rbp)
	movl	-316(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L302
	movl	$-4, -356(%rbp)
	jmp	.L53
.L302:
	movl	$50, -312(%rbp)
	movq	-376(%rbp), %rdx
	movl	-316(%rbp), %eax
	cltq
	movzbl	7884(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -272(%rbp)
	movq	-376(%rbp), %rax
	movl	-272(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16000, %rdx
	movl	12(%rax,%rdx,4), %eax
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45424(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	57808(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -32(%rbp)
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	51616(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, -40(%rbp)
.L301:
	subl	$1, -312(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -284(%rbp)
.L39:
	movq	-376(%rbp), %rax
	movl	$40, 8(%rax)
.L307:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, -284(%rbp)
	jg	.L303
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	-284(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -124(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	-284(%rbp), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-124(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L304
.L303:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L305
	movl	$0, -356(%rbp)
	jmp	.L53
.L305:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L307
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L307
.L304:
	cmpl	$20, -284(%rbp)
	jle	.L308
	movl	$-4, -356(%rbp)
	jmp	.L53
.L308:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -280(%rbp)
	jle	.L426
	addl	$1, -284(%rbp)
.L40:
	movq	-376(%rbp), %rax
	movl	$41, 8(%rax)
.L315:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jle	.L311
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-120(%rbp), %eax
	movl	%eax, -276(%rbp)
	nop
	movl	-280(%rbp), %eax
	addl	%eax, %eax
	orl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.L304
.L311:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L313
	movl	$0, -356(%rbp)
	jmp	.L53
.L313:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L315
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L315
.L426:
	nop
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	js	.L316
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$257, %eax
	jle	.L317
.L316:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L317:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-280(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -308(%rbp)
	nop
.L283:
	jmp	.L318
.L424:
	nop
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	js	.L319
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	%eax, -300(%rbp)
	jg	.L320
.L319:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L320:
	movq	-376(%rbp), %rax
	movl	$0, 1096(%rax)
	movl	$1, -344(%rbp)
	jmp	.L321
.L322:
	movl	-344(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	4(%rax,%rdx,4), %edx
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$272, %rcx
	movl	%edx, 8(%rax,%rcx,4)
	addl	$1, -344(%rbp)
.L321:
	cmpl	$256, -344(%rbp)
	jle	.L322
	movl	$1, -344(%rbp)
	jmp	.L323
.L324:
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$272, %rdx
	movl	8(%rax,%rdx,4), %edx
	movl	-344(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-376(%rbp), %rax
	movslq	%ecx, %rcx
	addq	$272, %rcx
	movl	8(%rax,%rcx,4), %eax
	leal	(%rdx,%rax), %ecx
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$272, %rdx
	movl	%ecx, 8(%rax,%rdx,4)
	addl	$1, -344(%rbp)
.L323:
	cmpl	$256, -344(%rbp)
	jle	.L324
	movl	$0, -344(%rbp)
	jmp	.L325
.L328:
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$272, %rdx
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	js	.L326
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$272, %rdx
	movl	8(%rax,%rdx,4), %eax
	cmpl	%eax, -300(%rbp)
	jge	.L327
.L326:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L327:
	addl	$1, -344(%rbp)
.L325:
	cmpl	$256, -344(%rbp)
	jle	.L328
	movq	-376(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-376(%rbp), %rax
	movb	$0, 12(%rax)
	movq	-376(%rbp), %rax
	movl	$-1, 3184(%rax)
	movq	-376(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-376(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	jle	.L329
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.L329:
	movq	-376(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L330
	movl	$0, -344(%rbp)
	jmp	.L331
.L332:
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	$272, %rdx
	movl	8(%rax,%rdx,4), %edx
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$528, %rcx
	movl	%edx, 12(%rax,%rcx,4)
	addl	$1, -344(%rbp)
.L331:
	cmpl	$256, -344(%rbp)
	jle	.L332
	movl	$0, -344(%rbp)
	jmp	.L333
.L336:
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movb	%al, -359(%rbp)
	movzbl	-359(%rbp), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$528, %rdx
	movl	12(%rax,%rdx,4), %edx
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-344(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	-344(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L334
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-344(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	$-16, %eax
	movl	%eax, %ecx
	movzbl	-359(%rbp), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$528, %rdx
	movl	12(%rax,%rdx,4), %eax
	sarl	$16, %eax
	orl	%eax, %ecx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-344(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L335
.L334:
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-344(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movzbl	-359(%rbp), %edx
	movq	-376(%rbp), %rax
	movslq	%edx, %rdx
	addq	$528, %rdx
	movl	12(%rax,%rdx,4), %eax
	sarl	$16, %eax
	sall	$4, %eax
	orl	%eax, %ecx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-344(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L335:
	movzbl	-359(%rbp), %eax
	movq	-376(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$528, %rcx
	movl	12(%rdx,%rcx,4), %edx
	leal	1(%rdx), %ecx
	movq	-376(%rbp), %rdx
	cltq
	addq	$528, %rax
	movl	%ecx, 12(%rdx,%rax,4)
	addl	$1, -344(%rbp)
.L333:
	movl	-344(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jl	.L336
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -344(%rbp)
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rcx
	movl	-344(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movl	-344(%rbp), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%edx, %eax
	movl	%eax, -340(%rbp)
.L339:
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-340(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rcx
	movl	-340(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movl	-340(%rbp), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%edx, %eax
	movl	%eax, -128(%rbp)
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rax
	movl	-340(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	-344(%rbp), %edx
	movw	%dx, (%rax)
	movl	-340(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L337
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-340(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	$-16, %eax
	movl	%eax, %edx
	movl	-344(%rbp), %eax
	sarl	$16, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-340(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L338
.L337:
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-340(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movl	-344(%rbp), %eax
	sarl	$16, %eax
	sall	$4, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rdx
	movl	-340(%rbp), %eax
	sarl	%eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L338:
	movl	-340(%rbp), %eax
	movl	%eax, -344(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -340(%rbp)
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	%eax, -344(%rbp)
	jne	.L339
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 1092(%rax)
	movq	-376(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	je	.L340
	movq	-376(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-376(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF@PLT
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L341
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L341
	movq	-376(%rbp), %rax
	movl	$0, 28(%rax)
.L341:
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-376(%rbp), %rax
	movl	64(%rax), %edx
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L343
.L340:
	movq	-376(%rbp), %rax
	leaq	1096(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BZ2_indexIntoF@PLT
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-376(%rbp), %rax
	movq	3160(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-376(%rbp), %rax
	movq	3168(%rax), %rcx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	sall	$2, %eax
	andl	$4, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	sall	$16, %eax
	andl	$983040, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 1092(%rax)
	jmp	.L343
.L330:
	movl	$0, -344(%rbp)
	jmp	.L344
.L345:
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rax
	movl	-344(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movb	%al, -359(%rbp)
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rdx
	movzbl	-359(%rbp), %ecx
	movq	-376(%rbp), %rax
	movslq	%ecx, %rcx
	addq	$272, %rcx
	movl	8(%rax,%rcx,4), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-344(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edi
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rcx
	movzbl	-359(%rbp), %esi
	movq	-376(%rbp), %rax
	movslq	%esi, %rsi
	addq	$272, %rsi
	movl	8(%rax,%rsi,4), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	orl	%edi, %edx
	movl	%edx, (%rax)
	movzbl	-359(%rbp), %eax
	movq	-376(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$272, %rcx
	movl	8(%rdx,%rcx,4), %edx
	leal	1(%rdx), %ecx
	movq	-376(%rbp), %rdx
	cltq
	addq	$272, %rax
	movl	%ecx, 8(%rdx,%rax,4)
	addl	$1, -344(%rbp)
.L344:
	movl	-344(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jl	.L345
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	56(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 1092(%rax)
	movq	-376(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	je	.L346
	movq	-376(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-376(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movzbl	%al, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 1092(%rax)
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L347
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	BZ2_rNums(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-376(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$512, %eax
	jne	.L347
	movq	-376(%rbp), %rax
	movl	$0, 28(%rax)
.L347:
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-376(%rbp), %rax
	movl	64(%rax), %edx
	movq	-376(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L343
.L346:
	movq	-376(%rbp), %rax
	movq	3152(%rax), %rdx
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	movzbl	%al, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-376(%rbp), %rax
	movl	60(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-376(%rbp), %rax
	movl	1092(%rax), %eax
	leal	1(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 1092(%rax)
.L343:
	movl	$0, -356(%rbp)
	jmp	.L53
.L41:
	movq	-376(%rbp), %rax
	movl	$42, 8(%rax)
.L352:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L348
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -84(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-84(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$114, -359(%rbp)
	je	.L42
	jmp	.L418
.L348:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L350
	movl	$0, -356(%rbp)
	jmp	.L53
.L350:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L352
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L352
.L418:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L42:
	movq	-376(%rbp), %rax
	movl	$43, 8(%rax)
.L357:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L353
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -80(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-80(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$69, -359(%rbp)
	je	.L43
	jmp	.L419
.L353:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L355
	movl	$0, -356(%rbp)
	jmp	.L53
.L355:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L357
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L357
.L419:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L43:
	movq	-376(%rbp), %rax
	movl	$44, 8(%rax)
.L362:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L358
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -76(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-76(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$56, -359(%rbp)
	je	.L44
	jmp	.L420
.L358:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L360
	movl	$0, -356(%rbp)
	jmp	.L53
.L360:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L362
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L362
.L420:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L44:
	movq	-376(%rbp), %rax
	movl	$45, 8(%rax)
.L367:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L363
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -72(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-72(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$80, -359(%rbp)
	je	.L45
	jmp	.L421
.L363:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L365
	movl	$0, -356(%rbp)
	jmp	.L53
.L365:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L367
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L367
.L421:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L45:
	movq	-376(%rbp), %rax
	movl	$46, 8(%rax)
.L372:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L368
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-68(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	cmpb	$-112, -359(%rbp)
	je	.L373
	jmp	.L422
.L368:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L370
	movl	$0, -356(%rbp)
	jmp	.L53
.L370:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L372
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L372
.L422:
	movl	$-4, -356(%rbp)
	jmp	.L53
.L373:
	movq	-376(%rbp), %rax
	movl	$0, 3180(%rax)
.L46:
	movq	-376(%rbp), %rax
	movl	$47, 8(%rax)
.L378:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L374
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -64(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-64(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3180(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3180(%rax)
	jmp	.L47
.L374:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L376
	movl	$0, -356(%rbp)
	jmp	.L53
.L376:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L378
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L378
.L47:
	movq	-376(%rbp), %rax
	movl	$48, 8(%rax)
.L383:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L379
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -60(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-60(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3180(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3180(%rax)
	jmp	.L48
.L379:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L381
	movl	$0, -356(%rbp)
	jmp	.L53
.L381:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L383
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L383
.L48:
	movq	-376(%rbp), %rax
	movl	$49, 8(%rax)
.L388:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L384
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -56(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-56(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3180(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3180(%rax)
	jmp	.L49
.L384:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L386
	movl	$0, -356(%rbp)
	jmp	.L53
.L386:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L388
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L388
.L49:
	movq	-376(%rbp), %rax
	movl	$50, 8(%rax)
.L393:
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$7, %eax
	jle	.L389
	movq	-376(%rbp), %rax
	movl	32(%rax), %edx
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	subl	$8, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$255, %eax
	movl	%eax, -52(%rbp)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	-8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-52(%rbp), %eax
	movb	%al, -359(%rbp)
	nop
	movq	-376(%rbp), %rax
	movl	3180(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	-359(%rbp), %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 3180(%rax)
	movq	-376(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$4, -356(%rbp)
	jmp	.L53
.L389:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L391
	movl	$0, -356(%rbp)
	jmp	.L53
.L391:
	movq	-376(%rbp), %rax
	movl	32(%rax), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-376(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-376(%rbp), %rax
	movl	36(%rax), %eax
	leal	8(%rax), %edx
	movq	-376(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L393
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	jmp	.L393
.L396:
	movl	$4001, %edi
	call	BZ2_bz__AssertH__fail@PLT
	movl	$4002, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L53:
	movq	-376(%rbp), %rax
	movl	-344(%rbp), %edx
	movl	%edx, 64036(%rax)
	movq	-376(%rbp), %rax
	movl	-340(%rbp), %edx
	movl	%edx, 64040(%rax)
	movq	-376(%rbp), %rax
	movl	-336(%rbp), %edx
	movl	%edx, 64044(%rax)
	movq	-376(%rbp), %rax
	movl	-332(%rbp), %edx
	movl	%edx, 64048(%rax)
	movq	-376(%rbp), %rax
	movl	-328(%rbp), %edx
	movl	%edx, 64052(%rax)
	movq	-376(%rbp), %rax
	movl	-324(%rbp), %edx
	movl	%edx, 64056(%rax)
	movq	-376(%rbp), %rax
	movl	-320(%rbp), %edx
	movl	%edx, 64060(%rax)
	movq	-376(%rbp), %rax
	movl	-316(%rbp), %edx
	movl	%edx, 64064(%rax)
	movq	-376(%rbp), %rax
	movl	-312(%rbp), %edx
	movl	%edx, 64068(%rax)
	movq	-376(%rbp), %rax
	movl	-308(%rbp), %edx
	movl	%edx, 64072(%rax)
	movq	-376(%rbp), %rax
	movl	-304(%rbp), %edx
	movl	%edx, 64076(%rax)
	movq	-376(%rbp), %rax
	movl	-300(%rbp), %edx
	movl	%edx, 64080(%rax)
	movq	-376(%rbp), %rax
	movl	-296(%rbp), %edx
	movl	%edx, 64084(%rax)
	movq	-376(%rbp), %rax
	movl	-292(%rbp), %edx
	movl	%edx, 64088(%rax)
	movq	-376(%rbp), %rax
	movl	-288(%rbp), %edx
	movl	%edx, 64092(%rax)
	movq	-376(%rbp), %rax
	movl	-228(%rbp), %edx
	movl	%edx, 64096(%rax)
	movq	-376(%rbp), %rax
	movl	-284(%rbp), %edx
	movl	%edx, 64100(%rax)
	movq	-376(%rbp), %rax
	movl	-280(%rbp), %edx
	movl	%edx, 64104(%rax)
	movq	-376(%rbp), %rax
	movl	-276(%rbp), %edx
	movl	%edx, 64108(%rax)
	movq	-376(%rbp), %rax
	movl	-272(%rbp), %edx
	movl	%edx, 64112(%rax)
	movq	-376(%rbp), %rax
	movl	-268(%rbp), %edx
	movl	%edx, 64116(%rax)
	movq	-376(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 64120(%rax)
	movq	-376(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 64128(%rax)
	movq	-376(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 64136(%rax)
	movl	-356(%rbp), %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L395
	call	__stack_chk_fail@PLT
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	BZ2_decompress, .-BZ2_decompress
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
