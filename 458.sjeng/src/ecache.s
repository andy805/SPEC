	.file	"ecache.c"
	.text
	.comm	ECache,8,8
	.comm	ECacheProbes,4,4
	.comm	ECacheHits,4,4
	.globl	storeECache
	.type	storeECache, @function
storeECache:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	hash(%rip), %eax
	movl	ECacheSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hash(%rip), %eax
	movl	%eax, (%rdx)
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	hold_hash(%rip), %eax
	movl	%eax, 4(%rdx)
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 8(%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	storeECache, .-storeECache
	.globl	checkECache
	.type	checkECache, @function
checkECache:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	ECacheProbes(%rip), %eax
	addl	$1, %eax
	movl	%eax, ECacheProbes(%rip)
	movl	hash(%rip), %eax
	movl	ECacheSize(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L4
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	4(%rax), %edx
	movl	hold_hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	ECacheHits(%rip), %eax
	addl	$1, %eax
	movl	%eax, ECacheHits(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	ECache(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	checkECache, .-checkECache
	.globl	reset_ecache
	.type	reset_ecache, @function
reset_ecache:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	ECacheSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	ECache(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	reset_ecache, .-reset_ecache
	.section	.rodata
	.align 8
.LC0:
	.string	"Out of memory allocating ECache."
	.text
	.globl	alloc_ecache
	.type	alloc_ecache, @function
alloc_ecache:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	ECacheSize(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, ECache(%rip)
	movq	ECache(%rip), %rax
	testq	%rax, %rax
	jne	.L10
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	alloc_ecache, .-alloc_ecache
	.globl	free_ecache
	.type	free_ecache, @function
free_ecache:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ECache(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_ecache, .-free_ecache
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
