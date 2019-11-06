	.file	"lbm.c"
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"LBM_allocateGrid: could not allocate %.1f MByte\n"
	.text
	.globl	LBM_allocateGrid
	.type	LBM_allocateGrid, @function
LBM_allocateGrid:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$400000, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$13000000, %rax
	salq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	.L3
	cvtsi2sdq	%rax, %xmm0
	jmp	.L4
.L3:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L4:
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	LBM_allocateGrid, .-LBM_allocateGrid
	.globl	LBM_freeGrid
	.type	LBM_freeGrid, @function
LBM_freeGrid:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$400000, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	LBM_freeGrid, .-LBM_freeGrid
	.globl	LBM_initializeGrid
	.type	LBM_initializeGrid, @function
LBM_initializeGrid:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$-400000, -12(%rbp)
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	addl	$19, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	addl	$20, -12(%rbp)
.L7:
	cmpl	$26399999, -12(%rbp)
	jle	.L8
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	LBM_initializeGrid, .-LBM_initializeGrid
	.globl	LBM_swapGrids
	.type	LBM_swapGrids, @function
LBM_swapGrids:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	LBM_swapGrids, .-LBM_swapGrids
	.section	.rodata
.LC5:
	.string	"rb"
	.text
	.globl	LBM_loadObstacleFile
	.type	LBM_loadObstacleFile, @function
LBM_loadObstacleFile:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L11
.L17:
	movl	$0, -24(%rbp)
	jmp	.L12
.L16:
	movl	$0, -28(%rbp)
	jmp	.L13
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	cmpl	$46, %eax
	je	.L14
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L14:
	addl	$1, -28(%rbp)
.L13:
	cmpl	$99, -28(%rbp)
	jle	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	addl	$1, -24(%rbp)
.L12:
	cmpl	$99, -24(%rbp)
	jle	.L16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	addl	$1, -20(%rbp)
.L11:
	cmpl	$129, -20(%rbp)
	jle	.L17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	LBM_loadObstacleFile, .-LBM_loadObstacleFile
	.globl	LBM_initializeSpecialCellsForLDC
	.type	LBM_initializeSpecialCellsForLDC, @function
LBM_initializeSpecialCellsForLDC:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$-2, -20(%rbp)
	jmp	.L19
.L28:
	movl	$0, -24(%rbp)
	jmp	.L20
.L27:
	movl	$0, -28(%rbp)
	jmp	.L21
.L26:
	cmpl	$0, -28(%rbp)
	je	.L22
	cmpl	$99, -28(%rbp)
	je	.L22
	cmpl	$0, -24(%rbp)
	je	.L22
	cmpl	$99, -24(%rbp)
	je	.L22
	cmpl	$0, -20(%rbp)
	je	.L22
	cmpl	$129, -20(%rbp)
	jne	.L23
.L22:
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L24
.L23:
	cmpl	$1, -20(%rbp)
	je	.L25
	cmpl	$128, -20(%rbp)
	jne	.L24
.L25:
	cmpl	$1, -28(%rbp)
	jle	.L24
	cmpl	$97, -28(%rbp)
	jg	.L24
	cmpl	$1, -24(%rbp)
	jle	.L24
	cmpl	$97, -24(%rbp)
	jg	.L24
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L24:
	addl	$1, -28(%rbp)
.L21:
	cmpl	$99, -28(%rbp)
	jle	.L26
	addl	$1, -24(%rbp)
.L20:
	cmpl	$99, -24(%rbp)
	jle	.L27
	addl	$1, -20(%rbp)
.L19:
	cmpl	$131, -20(%rbp)
	jle	.L28
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	LBM_initializeSpecialCellsForLDC, .-LBM_initializeSpecialCellsForLDC
	.globl	LBM_initializeSpecialCellsForChannel
	.type	LBM_initializeSpecialCellsForChannel, @function
LBM_initializeSpecialCellsForChannel:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$-2, -20(%rbp)
	jmp	.L30
.L38:
	movl	$0, -24(%rbp)
	jmp	.L31
.L37:
	movl	$0, -28(%rbp)
	jmp	.L32
.L36:
	cmpl	$0, -28(%rbp)
	je	.L33
	cmpl	$99, -28(%rbp)
	je	.L33
	cmpl	$0, -24(%rbp)
	je	.L33
	cmpl	$99, -24(%rbp)
	jne	.L34
.L33:
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L35
	cmpl	$129, -20(%rbp)
	jne	.L34
.L35:
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L34
	movl	-24(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L34:
	addl	$1, -28(%rbp)
.L32:
	cmpl	$99, -28(%rbp)
	jle	.L36
	addl	$1, -24(%rbp)
.L31:
	cmpl	$99, -24(%rbp)
	jle	.L37
	addl	$1, -20(%rbp)
.L30:
	cmpl	$131, -20(%rbp)
	jle	.L38
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	LBM_initializeSpecialCellsForChannel, .-LBM_initializeSpecialCellsForChannel
	.globl	LBM_performStreamCollide
	.type	LBM_performStreamCollide, @function
LBM_performStreamCollide:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L40
.L44:
	movl	-44(%rbp), %eax
	addl	$19, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$1998, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$2001, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$23, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$199994, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$200005, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$2010, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$1971, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$1988, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$2027, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$201986, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$198013, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$197988, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$202011, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$200002, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$199997, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	subl	$199964, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	addl	$200035, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L42
.L41:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-44(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-44(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-44(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-44(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-44(%rbp), %eax
	addl	$19, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L43
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
.L43:
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-40(%rbp), %xmm1
	movsd	-32(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	.LC12(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$2001, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	subsd	%xmm3, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$1998, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$23, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	subsd	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$200005, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC13(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm3
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	subsd	%xmm3, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$199994, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	addsd	-32(%rbp), %xmm3
	movsd	-40(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$2027, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-40(%rbp), %xmm3
	movsd	-32(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$1988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-32(%rbp), %xmm3
	movsd	-40(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$1971, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	subsd	-32(%rbp), %xmm3
	movsd	-40(%rbp), %xmm4
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm4, %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$2010, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	addsd	-24(%rbp), %xmm3
	movsd	-32(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$202011, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	movsd	-32(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$197988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-32(%rbp), %xmm3
	movsd	-24(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$198013, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-32(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	movsd	-32(%rbp), %xmm4
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm4, %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$201986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	addsd	-24(%rbp), %xmm3
	movsd	-40(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$200035, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	movsd	-40(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$199964, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm3
	subsd	-40(%rbp), %xmm3
	movsd	-24(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	addl	$199997, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-44(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	subsd	-24(%rbp), %xmm3
	movsd	-40(%rbp), %xmm4
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm4, %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm4
	mulsd	%xmm4, %xmm0
	movsd	.LC15(%rip), %xmm4
	addsd	%xmm4, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LC12(%rip), %xmm3
	addsd	%xmm3, %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	subl	$200002, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
.L42:
	addl	$20, -44(%rbp)
.L40:
	cmpl	$25999999, -44(%rbp)
	jle	.L44
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	LBM_performStreamCollide, .-LBM_performStreamCollide
	.globl	LBM_handleInOutFlow
	.type	LBM_handleInOutFlow, @function
LBM_handleInOutFlow:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -136(%rbp)
	movl	$0, -124(%rbp)
	jmp	.L46
.L47:
	movl	-124(%rbp), %eax
	addl	$200000, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-124(%rbp), %eax
	addl	$200001, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200002, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200003, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200004, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200005, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200006, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200007, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200008, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200009, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200010, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200011, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200012, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200013, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200014, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200015, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200016, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200017, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$200018, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-124(%rbp), %eax
	addl	$400000, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-124(%rbp), %eax
	addl	$400001, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400002, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400003, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400004, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400005, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400006, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400007, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400008, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400009, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400010, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400011, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400012, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400013, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400014, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400015, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400016, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400017, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	addl	$400018, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-120(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-124(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC18(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-124(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC18(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LC19(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-32(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	movsd	-32(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$20, -124(%rbp)
.L46:
	cmpl	$199999, -124(%rbp)
	jle	.L47
	movl	$25800000, -124(%rbp)
	jmp	.L48
.L49:
	movl	-124(%rbp), %eax
	subl	$200000, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-124(%rbp), %eax
	subl	$199999, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199998, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199997, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199996, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199995, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199994, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	$199997, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$199996, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-124(%rbp), %eax
	subl	$199999, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$199998, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-124(%rbp), %eax
	subl	$199995, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$199994, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$199982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-112(%rbp), %xmm0
	divsd	-120(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0
	divsd	-120(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0
	divsd	-120(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-124(%rbp), %eax
	subl	$400000, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-124(%rbp), %eax
	subl	$399999, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399998, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399997, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399996, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399995, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399994, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-124(%rbp), %eax
	subl	$399997, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$399996, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-124(%rbp), %eax
	subl	$399999, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$399998, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399993, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399992, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399991, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399990, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-124(%rbp), %eax
	subl	$399995, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-124(%rbp), %eax
	subl	$399994, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399989, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399988, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399987, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399986, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399985, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399984, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399983, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-124(%rbp), %eax
	subl	$399982, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-80(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-112(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-104(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-96(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-48(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-56(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-48(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC15(%rip), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-40(%rbp), %xmm2
	movsd	-32(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2
	movsd	-32(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm3
	movq	.LC17(%rip), %xmm0
	xorpd	%xmm3, %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm3
	mulsd	%xmm3, %xmm0
	movsd	.LC15(%rip), %xmm3
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	.LC12(%rip), %xmm2
	addsd	%xmm2, %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-124(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$20, -124(%rbp)
.L48:
	cmpl	$25999999, -124(%rbp)
	jle	.L49
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	LBM_handleInOutFlow, .-LBM_handleInOutFlow
	.section	.rodata
	.align 8
.LC22:
	.string	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.4f maxRho: %8.4f mass: %e\n\tminU: %e maxU: %e\n\n"
	.text
	.globl	LBM_showGridStatistics
	.type	LBM_showGridStatistics, @function
LBM_showGridStatistics:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movsd	.LC20(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC21(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC20(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC21(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L51
.L63:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-64(%rbp), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.L52
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.L52:
	movsd	-40(%rbp), %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.L54
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.L54:
	movsd	-48(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-84(%rbp), %eax
	addl	$19, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L56
	addl	$1, -96(%rbp)
	jmp	.L57
.L56:
	movl	-84(%rbp), %eax
	addl	$19, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L58
	addl	$1, -92(%rbp)
	jmp	.L59
.L58:
	addl	$1, -88(%rbp)
.L59:
	movl	-84(%rbp), %eax
	addl	$3, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-84(%rbp), %eax
	addl	$4, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-84(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$7, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$8, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$9, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-84(%rbp), %eax
	addl	$5, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-84(%rbp), %eax
	addl	$6, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$15, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$16, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$17, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	addl	$18, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1
	mulsd	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-80(%rbp), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L60
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.L60:
	movsd	-8(%rbp), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.L57
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.L57:
	addl	$20, -84(%rbp)
.L51:
	cmpl	$25999999, -84(%rbp)
	jle	.L63
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movsd	-112(%rbp), %xmm0
	call	sqrt@PLT
	movsd	%xmm0, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
	movsd	-120(%rbp), %xmm0
	call	sqrt@PLT
	movapd	%xmm0, %xmm2
	movsd	-48(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-64(%rbp), %rsi
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %eax
	movsd	-112(%rbp), %xmm4
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rsi, -112(%rbp)
	movsd	-112(%rbp), %xmm0
	movl	%eax, %esi
	leaq	.LC22(%rip), %rdi
	movl	$5, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	LBM_showGridStatistics, .-LBM_showGridStatistics
	.type	storeValue, @function
storeValue:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -32(%rbp)
	leaq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L69
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L70
.L71:
	movl	-28(%rbp), %eax
	cltq
	movl	$3, %edx
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
	addl	$1, -28(%rbp)
.L70:
	movl	-28(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L71
	movq	-40(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L74
.L69:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L74:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	storeValue, .-storeValue
	.type	loadValue, @function
loadValue:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -32(%rbp)
	leaq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L76
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	$0, -28(%rbp)
	jmp	.L77
.L78:
	movl	-28(%rbp), %eax
	cltq
	movl	$3, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	-12(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
.L77:
	movl	-28(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L78
	jmp	.L81
.L76:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
.L81:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	loadValue, .-loadValue
	.section	.rodata
.LC23:
	.string	"wb"
.LC24:
	.string	"w"
.LC25:
	.string	"%e %e %e\n"
	.text
	.globl	LBM_storeVelocityField
	.type	LBM_storeVelocityField, @function
LBM_storeVelocityField:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -68(%rbp)
	je	.L83
	leaq	.LC23(%rip), %rax
	jmp	.L84
.L83:
	leaq	.LC24(%rip), %rax
.L84:
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L85
.L92:
	movl	$0, -28(%rbp)
	jmp	.L86
.L91:
	movl	$0, -32(%rbp)
	jmp	.L87
.L90:
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -20(%rbp)
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-28(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-44(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-40(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-36(%rbp), %xmm0
	divss	-20(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L88
	leaq	-44(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	storeValue
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	storeValue
	leaq	-36(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	storeValue
	jmp	.L89
.L88:
	movss	-36(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$3, %eax
	call	fprintf@PLT
.L89:
	addl	$1, -32(%rbp)
.L87:
	cmpl	$99, -32(%rbp)
	jle	.L90
	addl	$1, -28(%rbp)
.L86:
	cmpl	$99, -28(%rbp)
	jle	.L91
	addl	$1, -24(%rbp)
.L85:
	cmpl	$129, -24(%rbp)
	jle	.L92
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	LBM_storeVelocityField, .-LBM_storeVelocityField
	.section	.rodata
.LC27:
	.string	"r"
.LC28:
	.string	"%f %f %f\n"
	.align 8
.LC29:
	.string	"LBM_compareVelocityField: maxDiff = %e  \n\n"
	.text
	.globl	LBM_compareVelocityField
	.type	LBM_compareVelocityField, @function
LBM_compareVelocityField:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L95
	leaq	.LC5(%rip), %rax
	jmp	.L96
.L95:
	leaq	.LC27(%rip), %rax
.L96:
	movq	-112(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fopen@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L97
.L106:
	movl	$0, -76(%rbp)
	jmp	.L98
.L105:
	movl	$0, -80(%rbp)
	jmp	.L99
.L104:
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	48(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	16(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	56(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	64(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	48(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	88(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	96(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	104(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	112(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	120(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	128(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	136(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-76(%rbp), %eax
	imull	$100, %eax, %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movl	-72(%rbp), %eax
	imull	$10000, %eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-16(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L100
	leaq	-92(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	loadValue
	leaq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	loadValue
	leaq	-84(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	loadValue
	jmp	.L101
.L100:
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf@PLT
.L101:
	movss	-92(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -64(%rbp)
	movss	-88(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -60(%rbp)
	movss	-84(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -56(%rbp)
	movss	-64(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-64(%rbp), %xmm1
	movss	-60(%rbp), %xmm0
	mulss	-60(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-56(%rbp), %xmm0
	mulss	-56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0
	ucomiss	-68(%rbp), %xmm0
	jbe	.L102
	movss	-52(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.L102:
	addl	$1, -80(%rbp)
.L99:
	cmpl	$99, -80(%rbp)
	jle	.L104
	addl	$1, -76(%rbp)
.L98:
	cmpl	$99, -76(%rbp)
	jle	.L105
	addl	$1, -72(%rbp)
.L97:
	cmpl	$129, -72(%rbp)
	jle	.L106
	cvtss2sd	-68(%rbp), %xmm0
	call	sqrt@PLT
	leaq	.LC29(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	LBM_compareVelocityField, .-LBM_compareVelocityField
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093664768
	.align 8
.LC2:
	.long	1431655765
	.long	1070945621
	.align 8
.LC3:
	.long	477218588
	.long	1068265927
	.align 8
.LC4:
	.long	477218588
	.long	1067217351
	.align 8
.LC6:
	.long	1202590843
	.long	1064598241
	.align 8
.LC7:
	.long	3539053052
	.long	1063281229
	.align 8
.LC9:
	.long	0
	.long	1073217536
	.align 8
.LC10:
	.long	1717986918
	.long	-1074895258
	.align 8
.LC11:
	.long	3435973836
	.long	1071959244
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	3149642683
	.long	1069267899
	.align 8
.LC14:
	.long	0
	.long	1074921472
	.align 8
.LC15:
	.long	0
	.long	1074266112
	.align 8
.LC16:
	.long	3149642683
	.long	1068219323
	.align 16
.LC17:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC18:
	.long	0
	.long	1078509568
	.align 8
.LC19:
	.long	1202590843
	.long	1065646817
	.align 8
.LC20:
	.long	966823146
	.long	1177108057
	.align 8
.LC21:
	.long	966823146
	.long	-970375591
	.align 4
.LC26:
	.long	4048155338
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
