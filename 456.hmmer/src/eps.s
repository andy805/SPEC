	.file	"eps.c"
	.text
	.section	.rodata
.LC0:
	.string	"Courier"
	.align 8
.LC1:
	.string	"No EPS fmt if alignment is >50 columns"
	.align 8
.LC2:
	.string	"Alignment too wide to write in EPS"
.LC3:
	.string	"Too many seqs to write in EPS"
.LC4:
	.string	"%%!PS-Adobe-3.0 EPSF-3.0\n"
.LC5:
	.string	"%%%%BoundingBox: %d %d %d %d\n"
.LC6:
	.string	"%%%%Pages: 1\n"
.LC7:
	.string	"%%%%EndComments\n"
.LC8:
	.string	"/%s findfont\n"
.LC9:
	.string	"%d scalefont\n"
.LC10:
	.string	"setfont\n"
.LC11:
	.string	"newpath\n"
.LC12:
	.string	"%d %d moveto\n"
.LC13:
	.string	"(%s) show\n"
.LC14:
	.string	"(%c) show\n"
	.text
	.globl	EPSWriteSmallMSA
	.type	EPSWriteSmallMSA, @function
EPSWriteSmallMSA:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$8, -40(%rbp)
	movl	$9, -36(%rbp)
	movl	$15, -32(%rbp)
	movl	$-1, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_strdup@PLT
	movq	%rax, -8(%rbp)
	movl	$12, -28(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L2
.L4:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L3
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)
.L3:
	addl	$1, -52(%rbp)
.L2:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L4
	addl	$1, -56(%rbp)
	movl	-56(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$50, %eax
	jle	.L5
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L5:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	cmpl	$612, -24(%rbp)
	jle	.L6
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L6:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	movl	-32(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$792, -20(%rbp)
	jle	.L7
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L7:
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-72(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC10(%rip), %rdi
	call	fwrite@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$1, %esi
	leaq	.LC11(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -52(%rbp)
	jmp	.L8
.L11:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	subl	-52(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-32(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L9
.L10:
	movl	-16(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-72(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-48(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-36(%rbp), %eax
	addl	%eax, -44(%rbp)
	addl	$1, -48(%rbp)
.L9:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L10
	addl	$1, -52(%rbp)
.L8:
	movq	-80(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	EPSWriteSmallMSA, .-EPSWriteSmallMSA
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
