	.file	"types.c"
	.text
	.section	.rodata
.LC0:
	.string	"0x"
.LC1:
	.string	"0X"
	.text
	.globl	IsInt
	.type	IsInt, @function
IsInt:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L4
	movl	$6, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L3
.L5:
	addq	$1, -24(%rbp)
.L4:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L5
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L6
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L7
.L6:
	addq	$1, -24(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movl	$2, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	$2, %eax
	jg	.L9
.L8:
	movq	-24(%rbp), %rax
	movl	$2, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	$2, %eax
	jle	.L10
.L9:
	addq	$2, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpl	$1, %eax
	jle	.L11
	addq	$1, -24(%rbp)
.L11:
	cmpl	$0, -4(%rbp)
	jne	.L17
	jmp	.L13
.L15:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L3
.L14:
	addq	$1, -24(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
	jmp	.L16
.L19:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L3
.L18:
	addq	$1, -24(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
.L16:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	IsInt, .-IsInt
	.globl	IsReal
	.type	IsReal, @function
IsReal:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L24:
	addq	$1, -24(%rbp)
.L23:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L24
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L27
.L25:
	addq	$1, -24(%rbp)
	jmp	.L27
.L37:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L28
	addl	$1, -4(%rbp)
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L30
	cmpl	$0, -12(%rbp)
	je	.L31
	movl	$0, %eax
	jmp	.L22
.L31:
	cmpl	$0, -8(%rbp)
	je	.L32
	movl	$0, %eax
	jmp	.L22
.L32:
	addl	$1, -12(%rbp)
	jmp	.L29
.L30:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$101, %al
	je	.L33
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L34
.L33:
	cmpl	$0, -8(%rbp)
	je	.L35
	movl	$0, %eax
	jmp	.L22
.L35:
	addl	$1, -8(%rbp)
	jmp	.L29
.L34:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L41
.L29:
	addq	$1, -24(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	jmp	.L38
.L41:
	nop
	jmp	.L38
.L39:
	addq	$1, -24(%rbp)
.L38:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L39
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	cmpl	$0, -4(%rbp)
	je	.L40
	movl	$1, %eax
	jmp	.L22
.L40:
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	IsReal, .-IsReal
	.globl	Byteswap
	.type	Byteswap, @function
Byteswap:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L43
.L44:
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
.L43:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -4(%rbp)
	jl	.L44
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Byteswap, .-Byteswap
	.globl	sre_ntoh16
	.type	sre_ntoh16, @function
sre_ntoh16:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sre_ntoh16, .-sre_ntoh16
	.globl	sre_ntoh32
	.type	sre_ntoh32, @function
sre_ntoh32:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sre_ntoh32, .-sre_ntoh32
	.globl	sre_hton16
	.type	sre_hton16, @function
sre_hton16:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sre_hton16, .-sre_hton16
	.globl	sre_hton32
	.type	sre_hton32, @function
sre_hton32:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	sre_hton32, .-sre_hton32
	.globl	sre_ntoh64
	.type	sre_ntoh64, @function
sre_ntoh64:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sre_ntoh64, .-sre_ntoh64
	.globl	sre_hton64
	.type	sre_hton64, @function
sre_hton64:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sre_hton64, .-sre_hton64
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
