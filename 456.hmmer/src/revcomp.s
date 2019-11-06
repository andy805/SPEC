	.file	"revcomp.c"
	.text
	.globl	revcomp
	.type	revcomp, @function
revcomp:
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
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpq	$0, -32(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	StrReverse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L25:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	sre_toupper@PLT
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %eax
	subl	$65, %eax
	cmpl	$24, %eax
	ja	.L26
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L8(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L8(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L7-.L8
	.long	.L9-.L8
	.long	.L10-.L8
	.long	.L11-.L8
	.long	.L26-.L8
	.long	.L26-.L8
	.long	.L12-.L8
	.long	.L13-.L8
	.long	.L26-.L8
	.long	.L26-.L8
	.long	.L14-.L8
	.long	.L26-.L8
	.long	.L15-.L8
	.long	.L26-.L8
	.long	.L26-.L8
	.long	.L26-.L8
	.long	.L26-.L8
	.long	.L16-.L8
	.long	.L17-.L8
	.long	.L18-.L8
	.long	.L19-.L8
	.long	.L20-.L8
	.long	.L21-.L8
	.long	.L26-.L8
	.long	.L22-.L8
	.text
.L7:
	movb	$84, -9(%rbp)
	jmp	.L23
.L10:
	movb	$71, -9(%rbp)
	jmp	.L23
.L12:
	movb	$67, -9(%rbp)
	jmp	.L23
.L18:
	movb	$65, -9(%rbp)
	jmp	.L23
.L19:
	movb	$65, -9(%rbp)
	jmp	.L23
.L16:
	movb	$89, -9(%rbp)
	jmp	.L23
.L22:
	movb	$82, -9(%rbp)
	jmp	.L23
.L15:
	movb	$75, -9(%rbp)
	jmp	.L23
.L14:
	movb	$77, -9(%rbp)
	jmp	.L23
.L17:
	movb	$83, -9(%rbp)
	jmp	.L23
.L21:
	movb	$87, -9(%rbp)
	jmp	.L23
.L13:
	movb	$68, -9(%rbp)
	jmp	.L23
.L11:
	movb	$72, -9(%rbp)
	jmp	.L23
.L9:
	movb	$86, -9(%rbp)
	jmp	.L23
.L20:
	movb	$66, -9(%rbp)
	jmp	.L23
.L26:
	nop
.L23:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L24
	movsbl	-9(%rbp), %eax
	movl	%eax, %edi
	call	sre_tolower@PLT
	movb	%al, -9(%rbp)
.L24:
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L25
	movq	-24(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	revcomp, .-revcomp
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
