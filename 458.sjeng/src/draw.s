	.file	"draw.c"
	.text
	.globl	is_draw
	.type	is_draw, @function
is_draw:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -12(%rbp)
	movl	fifty(%rip), %eax
	cmpl	$3, %eax
	jle	.L2
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	fifty(%rip), %eax
	subl	%eax, %edx
	movl	move_number(%rip), %eax
	cmpl	%eax, %edx
	jle	.L3
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	fifty(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	jmp	.L4
.L3:
	movl	move_number(%rip), %eax
	movl	%eax, -8(%rbp)
.L4:
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	subl	$3, %eax
	movl	%eax, -16(%rbp)
	jmp	.L5
.L8:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hash_history(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	subl	$2, -16(%rbp)
.L5:
	cmpl	$0, -16(%rbp)
	js	.L2
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L8
.L2:
	movl	fifty(%rip), %eax
	cmpl	$5, %eax
	jle	.L9
	movl	move_number(%rip), %eax
	leal	-1(%rax), %ecx
	movl	ply(%rip), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	move_number(%rip), %edx
	movl	ply(%rip), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movl	fifty(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L10
.L13:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hash_history(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	cmpl	%eax, %edx
	jne	.L11
	addl	$1, -12(%rbp)
.L11:
	cmpl	$1, -12(%rbp)
	jle	.L12
	movl	$1, %eax
	jmp	.L7
.L12:
	subl	$2, -16(%rbp)
.L10:
	cmpl	$0, -16(%rbp)
	js	.L9
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L13
.L9:
	movl	$0, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	is_draw, .-is_draw
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
