	.file	"readmin.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"%ld %ld"
.LC2:
	.string	"read_min(): not enough memory"
.LC3:
	.string	"%ld %ld %ld"
	.text
	.globl	read_min
	.type	read_min, @function
read_min:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -240(%rbp)
	movq	-296(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.L2
	movq	$-1, %rax
	jmp	.L22
.L2:
	movq	-240(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-272(%rbp), %rcx
	leaq	-280(%rbp), %rdx
	leaq	-224(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	je	.L4
	movq	$-1, %rax
	jmp	.L22
.L4:
	movq	-280(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 408(%rax)
	movq	-272(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 432(%rax)
	movq	-280(%rbp), %rax
	addq	%rax, %rax
	leaq	1(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-280(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 424(%rax)
	movq	-296(%rbp), %rax
	movq	408(%rax), %rax
	cmpq	$15000, %rax
	jg	.L5
	movq	-296(%rbp), %rax
	movq	424(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 416(%rax)
	movq	-296(%rbp), %rax
	movq	$3000000, 456(%rax)
	jmp	.L6
.L5:
	movq	-296(%rbp), %rax
	movq	$27328512, 416(%rax)
	movq	-296(%rbp), %rax
	movq	$28900000, 456(%rax)
.L6:
	movq	-296(%rbp), %rax
	movq	416(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	424(%rax), %rax
	subq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 448(%rax)
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	addq	$1, %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 552(%rax)
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 584(%rax)
	movq	-296(%rbp), %rax
	movq	416(%rax), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 568(%rax)
	movq	-296(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-296(%rbp), %rax
	movq	568(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-296(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L7:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	getfree@PLT
	movq	$-1, %rax
	jmp	.L22
.L8:
	movq	-296(%rbp), %rax
	movq	552(%rax), %rcx
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 560(%rax)
	movq	-296(%rbp), %rax
	movq	568(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	424(%rax), %rax
	salq	$6, %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 576(%rax)
	movq	-296(%rbp), %rax
	movq	584(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	salq	$6, %rax
	addq	%rax, %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 592(%rax)
	movq	-296(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-296(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	$1, -256(%rbp)
	jmp	.L9
.L12:
	movq	-240(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-272(%rbp), %rcx
	leaq	-280(%rbp), %rdx
	leaq	-224(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.L10
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rax
	cmpq	%rax, %rdx
	jle	.L11
.L10:
	movq	$-1, %rax
	jmp	.L22
.L11:
	movq	-256(%rbp), %rax
	negl	%eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, 96(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	$-1, 80(%rax)
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	-256(%rbp), %rdx
	movl	%edx, 96(%rax)
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, 80(%rax)
	movq	-280(%rbp), %rcx
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, 100(%rax)
	movq	-272(%rbp), %rcx
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, 100(%rax)
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-296(%rbp), %rax
	movq	528(%rax), %rax
	leaq	15(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 64(%rax)
	addq	$64, -248(%rbp)
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-296(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-248(%rbp), %rax
	movq	$15, (%rax)
	movq	-248(%rbp), %rax
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 64(%rax)
	addq	$64, -248(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-296(%rbp), %rax
	movq	528(%rax), %rax
	movl	$10000000, %edx
	cmpq	$10000000, %rax
	cmovl	%rdx, %rax
	leaq	(%rax,%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	movq	(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 64(%rax)
	addq	$64, -248(%rbp)
	addq	$1, -256(%rbp)
.L9:
	movq	-296(%rbp), %rax
	movq	408(%rax), %rax
	cmpq	%rax, -256(%rbp)
	jle	.L12
	movq	-296(%rbp), %rax
	movq	408(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, -256(%rbp)
	je	.L13
	movq	$-1, %rax
	jmp	.L22
.L13:
	movq	$0, -256(%rbp)
	jmp	.L14
.L16:
	movq	-240(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-264(%rbp), %rsi
	leaq	-272(%rbp), %rcx
	leaq	-280(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	je	.L15
	movq	$-1, %rax
	jmp	.L22
.L15:
	movq	-296(%rbp), %rax
	movq	408(%rax), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-264(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-264(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 64(%rax)
	addq	$1, -256(%rbp)
	addq	$64, -248(%rbp)
.L14:
	movq	-296(%rbp), %rax
	movq	432(%rax), %rax
	cmpq	%rax, -256(%rbp)
	jl	.L16
	movq	-296(%rbp), %rax
	movq	576(%rax), %rax
	cmpq	%rax, -248(%rbp)
	je	.L17
	movq	-296(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rdx, 576(%rax)
	movq	-296(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-296(%rbp), %rax
	movq	$0, 424(%rax)
	jmp	.L18
.L19:
	movq	-296(%rbp), %rax
	movq	424(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 424(%rax)
	addq	$64, -248(%rbp)
.L18:
	movq	-296(%rbp), %rax
	movq	576(%rax), %rax
	cmpq	%rax, -248(%rbp)
	jb	.L19
	movq	-296(%rbp), %rax
	movq	424(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 432(%rax)
.L17:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-296(%rbp), %rax
	movb	$0, 200(%rax)
	movq	$1, -256(%rbp)
	jmp	.L20
.L21:
	movq	-296(%rbp), %rax
	movq	528(%rax), %rax
	movl	$10000000, %edx
	cmpq	$10000000, %rax
	movq	%rdx, %rcx
	cmovge	%rax, %rcx
	movq	-296(%rbp), %rax
	movq	568(%rax), %rsi
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	subq	$64, %rax
	leaq	(%rsi,%rax), %rdx
	movl	$0, %eax
	subq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, (%rdx)
	movq	-296(%rbp), %rax
	movq	528(%rax), %rax
	movl	$10000000, %edx
	cmpq	$10000000, %rax
	movq	%rdx, %rcx
	cmovge	%rax, %rcx
	movq	-296(%rbp), %rax
	movq	568(%rax), %rsi
	movq	-256(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	subq	$64, %rax
	leaq	(%rsi,%rax), %rdx
	movl	$0, %eax
	subq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, 56(%rdx)
	addq	$1, -256(%rbp)
.L20:
	movq	-296(%rbp), %rax
	movq	408(%rax), %rax
	cmpq	%rax, -256(%rbp)
	jle	.L21
	movl	$0, %eax
.L22:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	read_min, .-read_min
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
