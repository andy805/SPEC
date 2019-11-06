	.file	"misc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"May 2003"
.LC2:
	.string	"2.3"
.LC3:
	.string	"HMMER"
.LC4:
	.string	"%s %s (%s)\n"
	.align 8
.LC5:
	.string	"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine"
	.align 8
.LC6:
	.string	"Freely distributed under the GNU General Public License (GPL)"
	.align 8
.LC7:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
	.text
	.globl	HMMERBanner
	.type	HMMERBanner, @function
HMMERBanner:
.LFB5:
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
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %r8
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rdi
	call	fwrite@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	HMMERBanner, .-HMMERBanner
	.section	.rodata
.LC8:
	.string	" \t\n"
	.align 8
.LC9:
	.string	"Parse failed: expected string, got nothing"
	.align 8
.LC10:
	.string	"Parse failed: expected integer, got %s"
	.align 8
.LC11:
	.string	"Parse failed: expected real value, got %s"
	.text
	.globl	Getword
	.type	Getword, @function
Getword:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	sptr.5979(%rip), %rax
	testq	%rax, %rax
	je	.L4
	leaq	.LC8(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, sptr.5979(%rip)
	jmp	.L4
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$512, %esi
	leaq	buffer.5978(%rip), %rdi
	call	fgets@PLT
	movq	%rax, sptr.5979(%rip)
	movq	sptr.5979(%rip), %rax
	testq	%rax, %rax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$35, %esi
	leaq	buffer.5978(%rip), %rdi
	call	strchr@PLT
	movq	%rax, sptr.5979(%rip)
	movq	sptr.5979(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	sptr.5979(%rip), %rax
	movb	$0, (%rax)
.L7:
	leaq	.LC8(%rip), %rsi
	leaq	buffer.5978(%rip), %rdi
	call	strtok@PLT
	movq	%rax, sptr.5979(%rip)
.L4:
	movq	sptr.5979(%rip), %rax
	testq	%rax, %rax
	je	.L8
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	je	.L10
	cmpl	$4, %eax
	je	.L11
	cmpl	$1, %eax
	je	.L12
	jmp	.L9
.L11:
	movq	sptr.5979(%rip), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movq	$0, sptr.5979(%rip)
	jmp	.L16
.L12:
	movq	sptr.5979(%rip), %rax
	movq	%rax, %rdi
	call	IsInt@PLT
	testl	%eax, %eax
	jne	.L17
	movq	sptr.5979(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movq	$0, sptr.5979(%rip)
	jmp	.L17
.L10:
	movq	sptr.5979(%rip), %rax
	movq	%rax, %rdi
	call	IsReal@PLT
	testl	%eax, %eax
	jne	.L18
	movq	sptr.5979(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movq	$0, sptr.5979(%rip)
	jmp	.L18
.L16:
	nop
	jmp	.L9
.L17:
	nop
	jmp	.L9
.L18:
	nop
.L9:
	movq	sptr.5979(%rip), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Getword, .-Getword
	.globl	Getline
	.type	Getline, @function
Getline:
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
.L24:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	addq	$1, -8(%rbp)
.L22:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L23
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L24
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L24
	movq	-24(%rbp), %rax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Getline, .-Getline
	.globl	SetAutocuts
	.type	SetAutocuts, @function
SetAutocuts:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L26
	movq	-16(%rbp), %rax
	movl	456(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movss	112(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movss	116(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.L29
.L26:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L30
	movq	-16(%rbp), %rax
	movl	456(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L28
.L31:
	movq	-16(%rbp), %rax
	movss	128(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movss	132(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.L29
.L30:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.L29
	movq	-16(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L28
.L32:
	movq	-16(%rbp), %rax
	movss	120(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movss	124(%rax), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.L29:
	movl	$1, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SetAutocuts, .-SetAutocuts
	.local	sptr.5979
	.comm	sptr.5979,8,8
	.local	buffer.5978
	.comm	buffer.5978,512,32
	.section	.rodata
	.align 8
.LC12:
	.long	3758096384
	.long	1206910975
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
