	.file	"spec.c"
	.text
	.globl	dbglvl
	.data
	.align 4
	.type	dbglvl, @object
	.size	dbglvl, 4
dbglvl:
	.long	4
	.comm	spec_fd,72,32
	.comm	seedi,8,8
	.text
	.globl	ran
	.type	ran, @function
ran:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	seedi(%rip), %rcx
	movabsq	$4730756183288445817, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$15, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	seedi(%rip), %rcx
	movabsq	$4730756183288445817, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$15, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	$127773, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	$16807, %rax, %rdx
	movq	-24(%rbp), %rax
	imulq	$-2836, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L2
	movq	-8(%rbp), %rax
	movq	%rax, seedi(%rip)
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	addq	$2147483647, %rax
	movq	%rax, seedi(%rip)
.L3:
	movq	seedi(%rip), %rax
	cvtsi2ssq	%rax, %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ran, .-ran
	.section	.rodata
.LC1:
	.string	"spec_init"
	.align 8
.LC2:
	.string	"spec_init: Error mallocing memory!"
	.text
	.globl	spec_init
	.type	spec_init, @function
spec_init:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L6
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L6:
	movl	$0, -12(%rbp)
	jmp	.L7
.L11:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	spec_fd(%rip), %rdx
	addq	%rdx, %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	spec_fd(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-4(%rbp), %eax
	addl	$1048576, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	jne	.L8
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L8:
	movl	$0, -8(%rbp)
	jmp	.L9
.L10:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1024, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L10
	addl	$1, -12(%rbp)
.L7:
	cmpl	$2, -12(%rbp)
	jle	.L11
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	spec_init, .-spec_init
	.section	.rodata
.LC3:
	.string	"Creating Chunks"
.LC4:
	.string	"Creating Chunk %d\n"
.LC6:
	.string	"Filling input file"
	.text
	.globl	spec_random_load
	.type	spec_random_load, @function
spec_random_load:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4194352, %rsp
	movl	%edi, -4194340(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L14
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L14:
	movl	$0, -4194328(%rbp)
	jmp	.L15
.L19:
	movl	dbglvl(%rip), %eax
	cmpl	$5, %eax
	jle	.L16
	movl	-4194328(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L16:
	movl	$0, -4194324(%rbp)
	jmp	.L17
.L18:
	movl	$0, %eax
	call	ran
	movapd	%xmm0, %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	movl	-4194324(%rbp), %eax
	cltq
	movl	-4194328(%rbp), %edx
	movslq	%edx, %rdx
	salq	$17, %rdx
	addq	%rbp, %rdx
	addq	%rdx, %rax
	subq	$4194320, %rax
	movb	%cl, (%rax)
	addl	$1, -4194324(%rbp)
.L17:
	cmpl	$131071, -4194324(%rbp)
	jle	.L18
	addl	$1, -4194328(%rbp)
.L15:
	cmpl	$31, -4194328(%rbp)
	jle	.L19
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L20
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
.L20:
	movl	$0, -4194328(%rbp)
	jmp	.L21
.L22:
	movl	$0, %eax
	call	ran
	movapd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	leaq	-4194320(%rbp), %rax
	movslq	%edx, %rdx
	salq	$17, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-4194340(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-4194328(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	$131072, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addl	$131072, -4194328(%rbp)
.L21:
	movl	-4194340(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -4194328(%rbp)
	jl	.L22
	movl	-4194340(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	$1048576, (%rdx,%rax)
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	spec_random_load, .-spec_random_load
	.section	.rodata
.LC8:
	.string	"Can't open file %s: %s\n"
.LC9:
	.string	"Error reading from %s: %s\n"
.LC10:
	.string	"Duplicating %d bytes\n"
	.text
	.globl	spec_load
	.type	spec_load, @function
spec_load:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L26
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L26:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	$0, -16(%rbp)
	jmp	.L27
.L31:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	movl	$131072, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L37
	cmpl	$0, -4(%rbp)
	jns	.L30
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L30:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-4(%rbp), %eax
	addl	%eax, -16(%rbp)
.L27:
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L31
	jmp	.L29
.L37:
	nop
.L29:
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L32
.L35:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-24(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L33
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
.L33:
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L34
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L34:
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	addq	%rdi, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L32:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -24(%rbp)
	jg	.L35
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	spec_load, .-spec_load
	.section	.rodata
.LC11:
	.string	"spec_read: %d, %p, %d = "
	.align 8
.LC12:
	.string	"spec_read: fd=%d, > MAX_SPEC_FD!\n"
.LC13:
	.string	"EOF"
.LC14:
	.string	"%d\n"
	.text
	.globl	spec_read
	.type	spec_read, @function
spec_read:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L39
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L39:
	cmpl	$3, -20(%rbp)
	jle	.L40
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L40:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L41
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L42
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
.L42:
	movl	$-1, %eax
	jmp	.L43
.L41:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-24(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L44
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L45
.L44:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.L45:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	addq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L46
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L46:
	movl	-4(%rbp), %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	spec_read, .-spec_read
	.section	.rodata
	.align 8
.LC15:
	.string	"spec_fread: %p, (%d x %d) fd %d ="
	.align 8
.LC16:
	.string	"spec_fread: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_fread
	.type	spec_fread, @function
spec_fread:
.LFB10:
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
	movl	$0, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L48
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L48:
	cmpl	$3, -36(%rbp)
	jle	.L49
	movq	stderr(%rip), %rax
	movl	-36(%rbp), %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L49:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L50
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L51
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
.L51:
	movl	$-1, %eax
	jmp	.L52
.L50:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L53
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
	jmp	.L54
.L53:
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.L54:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	addq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	imull	-28(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L55
	movl	-4(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L55:
	movl	-4(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	spec_fread, .-spec_fread
	.section	.rodata
.LC17:
	.string	"spec_getc: %d = "
	.text
	.globl	spec_getc
	.type	spec_getc, @function
spec_getc:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L57
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L57:
	cmpl	$3, -20(%rbp)
	jle	.L58
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L58:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L59
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L60
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
.L60:
	movl	$-1, %eax
	jmp	.L61
.L59:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	leal	1(%rdx), %esi
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	8+spec_fd(%rip), %rax
	movl	%esi, (%rcx,%rax)
	movslq	%edx, %rax
	addq	%rdi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L62
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L62:
	movl	-4(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	spec_getc, .-spec_getc
	.section	.rodata
.LC18:
	.string	"spec_ungetc: %d = "
.LC19:
	.string	"spec_ungetc: pos %d <= 0\n"
	.align 8
.LC20:
	.string	"spec_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.text
	.globl	spec_ungetc
	.type	spec_ungetc, @function
spec_ungetc:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movb	%al, -20(%rbp)
	movl	$0, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L64
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L64:
	cmpl	$3, -24(%rbp)
	jle	.L65
	movq	stderr(%rip), %rax
	movl	-24(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L65:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jg	.L66
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	stderr(%rip), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L66:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %esi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -20(%rbp)
	je	.L67
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	call	fwrite@PLT
	movl	$0, %edi
	call	exit@PLT
.L67:
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L68
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L68:
	movzbl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	spec_ungetc, .-spec_ungetc
	.globl	spec_rewind
	.type	spec_rewind, @function
spec_rewind:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	spec_rewind, .-spec_rewind
	.globl	spec_reset
	.type	spec_reset, @function
spec_reset:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	spec_reset, .-spec_reset
	.section	.rodata
.LC21:
	.string	"spec_write: %d, %p, %d = "
	.align 8
.LC22:
	.string	"spec_write: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_write
	.type	spec_write, @function
spec_write:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L75
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L75:
	cmpl	$3, -4(%rbp)
	jle	.L76
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L76:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	(%rsi,%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L77
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L77:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	spec_write, .-spec_write
	.section	.rodata
	.align 8
.LC23:
	.string	"spec_fwrite: %p, %d, %d, %d = "
	.align 8
.LC24:
	.string	"spec_fwrite: fd=%d, > MAX_SPEC_FD!\n"
	.text
	.globl	spec_fwrite
	.type	spec_fwrite, @function
spec_fwrite:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L80
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L80:
	cmpl	$3, -20(%rbp)
	jle	.L81
	movq	stderr(%rip), %rax
	movl	-20(%rbp), %edx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L81:
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	(%rsi,%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L82
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L82:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	spec_fwrite, .-spec_fwrite
	.section	.rodata
.LC25:
	.string	"spec_putc: %d, %d = "
	.text
	.globl	spec_putc
	.type	spec_putc, @function
spec_putc:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	movl	dbglvl(%rip), %eax
	cmpl	$4, %eax
	jle	.L85
	movzbl	-4(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L85:
	cmpl	$3, -8(%rbp)
	jle	.L86
	movq	stderr(%rip), %rax
	movl	-8(%rbp), %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	exit@PLT
.L86:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+spec_fd(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %edx
	leal	1(%rdx), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	8+spec_fd(%rip), %rax
	movl	%esi, (%rcx,%rax)
	movslq	%edx, %rax
	leaq	(%rdi,%rax), %rdx
	movzbl	-4(%rbp), %eax
	movb	%al, (%rdx)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	4+spec_fd(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movzbl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	spec_putc, .-spec_putc
	.section	.rodata
.LC26:
	.string	"input.combined"
.LC27:
	.string	"Loading Input Data"
	.align 8
.LC28:
	.string	"Input data %d bytes in length\n"
.LC29:
	.string	"main: Error mallocing memory!"
	.align 8
.LC30:
	.string	"Compressing Input Data, level %d\n"
	.align 8
.LC31:
	.string	"Compressed data %d bytes in length\n"
.LC32:
	.string	"Uncompressing Data"
	.align 8
.LC33:
	.string	"Uncompressed data %d bytes in length\n"
	.align 8
.LC34:
	.string	"Tested %dMB buffer: Miscompared!!\n"
	.align 8
.LC35:
	.string	"Uncompressed data compared correctly"
.LC36:
	.string	"Tested %dMB buffer: OK!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$64, -24(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$10, seedi(%rip)
	cmpl	$1, -36(%rbp)
	jle	.L89
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L89:
	cmpl	$2, -36(%rbp)
	jle	.L90
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -24(%rbp)
.L90:
	cmpl	$3, -36(%rbp)
	jle	.L91
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -20(%rbp)
	jmp	.L92
.L91:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L92:
	movl	-24(%rbp), %eax
	sall	$20, %eax
	movl	%eax, spec_fd(%rip)
	movl	-20(%rbp), %eax
	sall	$20, %eax
	movl	%eax, 24+spec_fd(%rip)
	movl	-24(%rbp), %eax
	sall	$20, %eax
	movl	%eax, 48+spec_fd(%rip)
	movl	$0, %eax
	call	spec_init
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$2, %eax
	jle	.L93
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
.L93:
	movl	-24(%rbp), %eax
	sall	$20, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	spec_load
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L94
	movl	4+spec_fd(%rip), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L94:
	movl	-24(%rbp), %eax
	sall	$20, %eax
	leal	1023(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$10, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L95:
	movl	$0, -32(%rbp)
	jmp	.L96
.L97:
	movq	16+spec_fd(%rip), %rdx
	movl	-32(%rbp), %eax
	imull	$1027, %eax, %eax
	cltq
	addq	%rdx, %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -32(%rbp)
.L96:
	movl	-32(%rbp), %eax
	imull	$1027, %eax, %eax
	movl	-24(%rbp), %edx
	sall	$20, %edx
	cmpl	%edx, %eax
	jl	.L97
	movl	$0, %eax
	call	spec_initbufs
	movl	$5, -28(%rbp)
	jmp	.L98
.L107:
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$2, %eax
	jle	.L99
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L99:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	spec_compress
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L100
	movl	28+spec_fd(%rip), %eax
	movl	%eax, %esi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L100:
	movl	$0, %edi
	call	spec_reset
	movl	$1, %edi
	call	spec_rewind
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$2, %eax
	jle	.L101
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
.L101:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	spec_uncompress
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L102
	movl	4+spec_fd(%rip), %eax
	movl	%eax, %esi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L102:
	movl	$0, -32(%rbp)
	jmp	.L103
.L105:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	16+spec_fd(%rip), %rcx
	movl	-32(%rbp), %eax
	imull	$1027, %eax, %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L104
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %edi
	call	exit@PLT
.L104:
	addl	$1, -32(%rbp)
.L103:
	movl	-32(%rbp), %eax
	imull	$1027, %eax, %eax
	movl	-24(%rbp), %edx
	sall	$20, %edx
	cmpl	%edx, %eax
	jl	.L105
	movl	$0, %eax
	call	debug_time
	movl	dbglvl(%rip), %eax
	cmpl	$3, %eax
	jle	.L106
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
.L106:
	movl	$1, %edi
	call	spec_reset
	movl	$0, %edi
	call	spec_rewind
	addl	$2, -28(%rbp)
.L98:
	cmpl	$9, -28(%rbp)
	jle	.L107
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.globl	spec_initbufs
	.type	spec_initbufs, @function
spec_initbufs:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movb	$0, smallMode(%rip)
	movl	$0, verbosity(%rip)
	movl	$9, blockSize100k(%rip)
	movl	$30, workFactor(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	spec_initbufs, .-spec_initbufs
	.globl	spec_compress
	.type	spec_compress, @function
spec_compress:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, blockSize100k(%rip)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	compressStream@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	spec_compress, .-spec_compress
	.globl	spec_uncompress
	.type	spec_uncompress, @function
spec_uncompress:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$0, blockSize100k(%rip)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	uncompressStream@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	spec_uncompress, .-spec_uncompress
	.globl	debug_time
	.type	debug_time, @function
debug_time:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	debug_time, .-debug_time
	.section	.rodata
	.align 4
.LC0:
	.long	1325400064
	.align 8
.LC5:
	.long	0
	.long	1081081856
	.align 8
.LC7:
	.long	0
	.long	1077936128
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
