	.file	"gki.c"
	.text
	.data
	.align 16
	.type	gki_primes, @object
	.size	gki_primes, 16
gki_primes:
	.long	101
	.long	1009
	.long	10007
	.long	100003
	.text
	.globl	GKIInit
	.type	GKIInit, @function
GKIInit:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %edi
	call	gki_alloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	GKIInit, .-GKIInit
	.globl	GKIFree
	.type	GKIFree, @function
GKIFree:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L11
	movl	$0, -12(%rbp)
	jmp	.L6
.L9:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L8:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L7:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	addl	$1, -12(%rbp)
.L6:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L3
.L11:
	nop
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	GKIFree, .-GKIFree
	.section	.rodata
.LC0:
	.string	"gki.c"
	.text
	.globl	GKIStoreKey
	.type	GKIStoreKey, @function
GKIStoreKey:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gki_hashvalue
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	$24, %edx
	movl	$189, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rbx
	movl	$190, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	16(%rdx), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jle	.L13
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jg	.L13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	gki_upsize
.L13:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	GKIStoreKey, .-GKIStoreKey
	.globl	GKIKeyIndex
	.type	GKIKeyIndex, @function
GKIKeyIndex:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gki_hashvalue
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L16
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L16:
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$-1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	GKIKeyIndex, .-GKIKeyIndex
	.section	.rodata
.LC1:
	.string	"Total keys:        %d\n"
.LC2:
	.string	"Hash table size:   %d\n"
.LC3:
	.string	"Average occupancy: %.1f\n"
.LC4:
	.string	"Unoccupied slots:  %d\n"
.LC5:
	.string	"Most in one slot:  %d\n"
.LC6:
	.string	"Least in one slot: %d\n"
	.text
	.globl	GKIStatus
	.type	GKIStatus, @function
GKIStatus:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -16(%rbp)
	movl	$2147483647, -12(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L21
.L27:
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	addl	$1, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L22:
	cmpq	$0, -8(%rbp)
	jne	.L23
	cmpl	$0, -24(%rbp)
	jne	.L24
	addl	$1, -20(%rbp)
.L24:
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L25
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
.L25:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L26
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
.L26:
	addl	$1, -28(%rbp)
.L21:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L27
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	GKIStatus, .-GKIStatus
	.section	.rodata
.LC7:
	.string	"bad primelevel in gki_alloc()"
	.text
	.type	gki_alloc, @function
gki_alloc:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L29
	cmpl	$3, -20(%rbp)
	jle	.L30
.L29:
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L30:
	movl	$24, %edx
	movl	$294, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	gki_primes(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$298, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -12(%rbp)
	jmp	.L31
.L32:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -12(%rbp)
.L31:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L32
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gki_alloc, .-gki_alloc
	.type	gki_hashvalue, @function
gki_hashvalue:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L35
.L38:
	movl	-4(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L36
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -4(%rbp)
	jmp	.L37
.L36:
	movl	-4(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -4(%rbp)
	addq	$1, -32(%rbp)
.L35:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L38
.L37:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	gki_hashvalue, .-gki_hashvalue
	.type	gki_upsize, @function
gki_upsize:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	gki_alloc
	movq	%rax, -16(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L43
.L46:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gki_hashvalue
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L44:
	cmpq	$0, -24(%rbp)
	jne	.L45
	addl	$1, -32(%rbp)
.L43:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L46
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	gki_upsize, .-gki_upsize
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
