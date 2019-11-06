	.file	"main.c"
	.text
	.local	srcGrid
	.comm	srcGrid,8,8
	.local	dstGrid
	.comm	dstGrid,8,8
	.section	.rodata
.LC0:
	.string	"timestep: %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	MAIN_parseCommandLine
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MAIN_printInfo
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MAIN_initialize
	movl	$1, -52(%rbp)
	jmp	.L2
.L5:
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	jne	.L3
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_handleInOutFlow@PLT
.L3:
	movq	dstGrid(%rip), %rdx
	movq	srcGrid(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	LBM_performStreamCollide@PLT
	leaq	dstGrid(%rip), %rsi
	leaq	srcGrid(%rip), %rdi
	call	LBM_swapGrids@PLT
	movl	-52(%rbp), %eax
	andl	$63, %eax
	testl	%eax, %eax
	jne	.L4
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_showGridStatistics@PLT
.L4:
	addl	$1, -52(%rbp)
.L2:
	movl	-48(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L5
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	MAIN_finalize
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.string	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]"
	.align 8
.LC2:
	.string	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"
	.align 8
.LC3:
	.string	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"
	.align 8
.LC4:
	.string	"MAIN_parseCommandLine: cannot stat result file '%s'\n"
	.text
	.globl	MAIN_parseCommandLine
	.type	MAIN_parseCommandLine, @function
MAIN_parseCommandLine:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$4, -164(%rbp)
	jle	.L9
	cmpl	$6, -164(%rbp)
	jle	.L10
.L9:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, (%rax)
	movq	-176(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-176(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-176(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 20(%rax)
	cmpl	$6, -164(%rbp)
	jne	.L11
	movq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	je	.L12
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	movq	-112(%rbp), %rax
	cmpq	$1313130, %rax
	je	.L13
	movq	-112(%rbp), %rax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1313130, %ecx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L11:
	movq	-184(%rbp), %rax
	movq	$0, 24(%rax)
.L13:
	movq	-184(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L16
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	je	.L16
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN_parseCommandLine, .-MAIN_parseCommandLine
	.section	.rodata
.LC5:
	.string	"<none>"
	.align 8
.LC7:
	.string	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"
	.text
	.globl	MAIN_printInfo
	.type	MAIN_printInfo, @function
MAIN_printInfo:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$29113321604280174, %rax
	movl	$0, %edx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movabsq	$28554735471390563, %rax
	movl	$0, %edx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movabsq	$435711603827, %rax
	movl	$0, %edx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	movabsq	$8532476743613966700, %rax
	movabsq	$8388365941601234533, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$121, -96(%rbp)
	movq	$0, -88(%rbp)
	movabsq	$2336353831671130211, %rax
	movl	$2003790950, %edx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L19
.L18:
	leaq	.LC5(%rip), %rax
.L19:
	movq	-216(%rbp), %rdx
	movl	20(%rdx), %ecx
	leaq	-112(%rbp), %rdx
	movl	%ecx, %ecx
	salq	$5, %rcx
	leaq	(%rdx,%rcx), %r8
	movq	-216(%rbp), %rdx
	movl	16(%rdx), %ecx
	leaq	-208(%rbp), %rdx
	movl	%ecx, %ecx
	salq	$5, %rcx
	leaq	(%rdx,%rcx), %rdi
	movq	-216(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	-216(%rbp), %rdx
	movl	(%rdx), %ecx
	movq	.LC6(%rip), %rdx
	subq	$8, %rsp
	pushq	%rax
	pushq	%r8
	pushq	%rdi
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rdx, -224(%rbp)
	movsd	-224(%rbp), %xmm0
	movl	$130, %ecx
	movl	$100, %edx
	movl	$100, %esi
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addq	$32, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	MAIN_printInfo, .-MAIN_printInfo
	.globl	MAIN_initialize
	.type	MAIN_initialize, @function
MAIN_initialize:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	srcGrid(%rip), %rdi
	call	LBM_allocateGrid@PLT
	leaq	dstGrid(%rip), %rdi
	call	LBM_allocateGrid@PLT
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeGrid@PLT
	movq	dstGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeGrid@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	srcGrid(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	LBM_loadObstacleFile@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	dstGrid(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	LBM_loadObstacleFile@PLT
.L22:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$1, %eax
	jne	.L23
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeSpecialCellsForChannel@PLT
	movq	dstGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeSpecialCellsForChannel@PLT
	jmp	.L24
.L23:
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeSpecialCellsForLDC@PLT
	movq	dstGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_initializeSpecialCellsForLDC@PLT
.L24:
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_showGridStatistics@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	MAIN_initialize, .-MAIN_initialize
	.globl	MAIN_finalize
	.type	MAIN_finalize, @function
MAIN_finalize:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	srcGrid(%rip), %rax
	movq	%rax, %rdi
	call	LBM_showGridStatistics@PLT
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	srcGrid(%rip), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	LBM_compareVelocityField@PLT
.L26:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	srcGrid(%rip), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	LBM_storeVelocityField@PLT
.L27:
	leaq	srcGrid(%rip), %rdi
	call	LBM_freeGrid@PLT
	leaq	dstGrid(%rip), %rdi
	call	LBM_freeGrid@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MAIN_finalize, .-MAIN_finalize
	.section	.rodata
	.align 8
.LC6:
	.long	3435973836
	.long	1073007820
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
