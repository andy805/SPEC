	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LBM_allocateGrid
.LCPI0_0:
	.quad	4641398086785040384     # double 204.4677734375
	.text
	.globl	LBM_allocateGrid
	.p2align	4, 0x90
	.type	LBM_allocateGrid,@function
LBM_allocateGrid:                       # @LBM_allocateGrid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$400000, -24(%rbp)      # imm = 0x61A80
	movq	$214400000, -16(%rbp)   # imm = 0xCC77C00
	movl	$214400000, %edi        # imm = 0xCC77C00
	callq	malloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	movabsq	$.L.str, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$3200000, %rcx          # imm = 0x30D400
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	LBM_allocateGrid, .Lfunc_end0-LBM_allocateGrid
	.cfi_endproc
                                        # -- End function
	.globl	LBM_freeGrid            # -- Begin function LBM_freeGrid
	.p2align	4, 0x90
	.type	LBM_freeGrid,@function
LBM_freeGrid:                           # @LBM_freeGrid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	$400000, -16(%rbp)      # imm = 0x61A80
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$-3200000, %rdi         # imm = 0xFFCF2C00
	callq	free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	LBM_freeGrid, .Lfunc_end1-LBM_freeGrid
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LBM_initializeGrid
.LCPI2_0:
	.quad	4583663620745971484     # double 0.027777777777777776
.LCPI2_1:
	.quad	4588167220373341980     # double 0.055555555555555552
.LCPI2_2:
	.quad	4599676419421066581     # double 0.33333333333333331
	.text
	.globl	LBM_initializeGrid
	.p2align	4, 0x90
	.type	LBM_initializeGrid,@function
LBM_initializeGrid:                     # @LBM_initializeGrid
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	$-400000, -4(%rbp)      # imm = 0xFFF9E580
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$26400000, -4(%rbp)     # imm = 0x192D500
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm2, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	popq	%rbp
	retq
.Lfunc_end2:
	.size	LBM_initializeGrid, .Lfunc_end2-LBM_initializeGrid
	.cfi_endproc
                                        # -- End function
	.globl	LBM_swapGrids           # -- Begin function LBM_swapGrids
	.p2align	4, 0x90
	.type	LBM_swapGrids,@function
LBM_swapGrids:                          # @LBM_swapGrids
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	LBM_swapGrids, .Lfunc_end3-LBM_swapGrids
	.cfi_endproc
                                        # -- End function
	.globl	LBM_loadObstacleFile    # -- Begin function LBM_loadObstacleFile
	.p2align	4, 0x90
	.type	LBM_loadObstacleFile,@function
LBM_loadObstacleFile:                   # @LBM_loadObstacleFile
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.1, %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
	cmpl	$130, -4(%rbp)
	jge	.LBB4_14
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -8(%rbp)
.LBB4_3:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
	cmpl	$100, -8(%rbp)
	jge	.LBB4_12
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=2
	movl	$0, -12(%rbp)
.LBB4_5:                                #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$100, -12(%rbp)
	jge	.LBB4_10
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=3
	movq	-24(%rbp), %rdi
	callq	fgetc
	cmpl	$46, %eax
	je	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=3
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=3
	jmp	.LBB4_9
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_5
.LBB4_10:                               #   in Loop: Header=BB4_3 Depth=2
	movq	-24(%rbp), %rdi
	callq	fgetc
# %bb.11:                               #   in Loop: Header=BB4_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	fgetc
# %bb.13:                               #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_1
.LBB4_14:
	movq	-24(%rbp), %rdi
	callq	fclose
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	LBM_loadObstacleFile, .Lfunc_end4-LBM_loadObstacleFile
	.cfi_endproc
                                        # -- End function
	.globl	LBM_initializeSpecialCellsForLDC # -- Begin function LBM_initializeSpecialCellsForLDC
	.p2align	4, 0x90
	.type	LBM_initializeSpecialCellsForLDC,@function
LBM_initializeSpecialCellsForLDC:       # @LBM_initializeSpecialCellsForLDC
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movl	$-2, -4(%rbp)
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
                                        #       Child Loop BB5_5 Depth 3
	cmpl	$132, -4(%rbp)
	jge	.LBB5_27
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -8(%rbp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
	cmpl	$100, -8(%rbp)
	jge	.LBB5_25
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=2
	movl	$0, -12(%rbp)
.LBB5_5:                                #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$100, -12(%rbp)
	jge	.LBB5_23
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=3
	cmpl	$0, -12(%rbp)
	je	.LBB5_12
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=3
	cmpl	$99, -12(%rbp)
	je	.LBB5_12
# %bb.8:                                #   in Loop: Header=BB5_5 Depth=3
	cmpl	$0, -8(%rbp)
	je	.LBB5_12
# %bb.9:                                #   in Loop: Header=BB5_5 Depth=3
	cmpl	$99, -8(%rbp)
	je	.LBB5_12
# %bb.10:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$0, -4(%rbp)
	je	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$129, -4(%rbp)
	jne	.LBB5_13
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB5_21
.LBB5_13:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$1, -4(%rbp)
	je	.LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$128, -4(%rbp)
	jne	.LBB5_20
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$1, -12(%rbp)
	jle	.LBB5_20
# %bb.16:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$98, -12(%rbp)
	jge	.LBB5_20
# %bb.17:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$1, -8(%rbp)
	jle	.LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_5 Depth=3
	cmpl	$98, -8(%rbp)
	jge	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, (%rax)
.LBB5_20:                               #   in Loop: Header=BB5_5 Depth=3
	jmp	.LBB5_21
.LBB5_21:                               #   in Loop: Header=BB5_5 Depth=3
	jmp	.LBB5_22
.LBB5_22:                               #   in Loop: Header=BB5_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_5
.LBB5_23:                               #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_24
.LBB5_24:                               #   in Loop: Header=BB5_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_25:                               #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               #   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_1
.LBB5_27:
	popq	%rbp
	retq
.Lfunc_end5:
	.size	LBM_initializeSpecialCellsForLDC, .Lfunc_end5-LBM_initializeSpecialCellsForLDC
	.cfi_endproc
                                        # -- End function
	.globl	LBM_initializeSpecialCellsForChannel # -- Begin function LBM_initializeSpecialCellsForChannel
	.p2align	4, 0x90
	.type	LBM_initializeSpecialCellsForChannel,@function
LBM_initializeSpecialCellsForChannel:   # @LBM_initializeSpecialCellsForChannel
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movl	$-2, -4(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	cmpl	$132, -4(%rbp)
	jge	.LBB6_21
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -8(%rbp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	cmpl	$100, -8(%rbp)
	jge	.LBB6_19
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	movl	$0, -12(%rbp)
.LBB6_5:                                #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$100, -12(%rbp)
	jge	.LBB6_17
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=3
	cmpl	$0, -12(%rbp)
	je	.LBB6_10
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=3
	cmpl	$99, -12(%rbp)
	je	.LBB6_10
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=3
	cmpl	$0, -8(%rbp)
	je	.LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=3
	cmpl	$99, -8(%rbp)
	jne	.LBB6_15
.LBB6_10:                               #   in Loop: Header=BB6_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
	cmpl	$0, -4(%rbp)
	je	.LBB6_12
# %bb.11:                               #   in Loop: Header=BB6_5 Depth=3
	cmpl	$129, -4(%rbp)
	jne	.LBB6_14
.LBB6_12:                               #   in Loop: Header=BB6_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,8), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB6_14
# %bb.13:                               #   in Loop: Header=BB6_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, (%rax)
.LBB6_14:                               #   in Loop: Header=BB6_5 Depth=3
	jmp	.LBB6_15
.LBB6_15:                               #   in Loop: Header=BB6_5 Depth=3
	jmp	.LBB6_16
.LBB6_16:                               #   in Loop: Header=BB6_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_5
.LBB6_17:                               #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_18
.LBB6_18:                               #   in Loop: Header=BB6_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB6_3
.LBB6_19:                               #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_20
.LBB6_20:                               #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_21:
	popq	%rbp
	retq
.Lfunc_end6:
	.size	LBM_initializeSpecialCellsForChannel, .Lfunc_end6-LBM_initializeSpecialCellsForChannel
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LBM_performStreamCollide
.LCPI7_0:
	.quad	4566758108544739836     # double 0.002
.LCPI7_1:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI7_2:
	.quad	4607182418800017408     # double 1
.LCPI7_3:
	.quad	4613937818241073152     # double 3
.LCPI7_4:
	.quad	4616752568008179712     # double 4.5
.LCPI7_5:
	.quad	4587967060389903291     # double 0.054166666666666662
.LCPI7_6:
	.quad	-4616639978017495450    # double -0.94999999999999996
.LCPI7_7:
	.quad	4592470660017273787     # double 0.10833333333333332
.LCPI7_8:
	.quad	4604029899060858060     # double 0.64999999999999991
.LCPI7_9:
	.quad	4609434218613702656     # double 1.5
	.text
	.globl	LBM_performStreamCollide
	.p2align	4, 0x90
	.type	LBM_performStreamCollide,@function
LBM_performStreamCollide:               # @LBM_performStreamCollide
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$26000000, -4(%rbp)     # imm = 0x18CBA80
	jge	.LBB7_8
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,8), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294965298, %ecx       # imm = 0xFFFFF832
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2001, %ecx             # imm = 0x7D1
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294967280, %ecx       # imm = 0xFFFFFFF0
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$23, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294767302, %ecx       # imm = 0xFFFCF2C6
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$200005, %ecx           # imm = 0x30D45
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294965286, %ecx       # imm = 0xFFFFF826
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294965325, %ecx       # imm = 0xFFFFF84D
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1988, %ecx             # imm = 0x7C4
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2027, %ecx             # imm = 0x7EB
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294765310, %ecx       # imm = 0xFFFCEAFE
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$198013, %ecx           # imm = 0x3057D
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294769308, %ecx       # imm = 0xFFFCFA9C
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$202011, %ecx           # imm = 0x3151B
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294767294, %ecx       # imm = 0xFFFCF2BE
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$199997, %ecx           # imm = 0x30D3D
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294767332, %ecx       # imm = 0xFFFCF2E4
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$200035, %ecx           # imm = 0x30D63
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB7_7
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,8), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm0, -32(%rbp)
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	.LCPI7_5(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI7_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_7(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_8(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_9(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	mulsd	-40(%rbp), %xmm4
	addsd	%xmm4, %xmm2
	movsd	-32(%rbp), %xmm4        # xmm4 = mem[0],zero
	mulsd	-32(%rbp), %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm7
	movsd	%xmm7, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	mulsd	-56(%rbp), %xmm6
	movaps	%xmm1, %xmm4
	subsd	-64(%rbp), %xmm4
	mulsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	-40(%rbp), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-64(%rbp), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$2001, %edx             # imm = 0x7D1
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	-40(%rbp), %xmm7
	subsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-64(%rbp), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294965298, %edx       # imm = 0xFFFFF832
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	-48(%rbp), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-64(%rbp), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$23, %edx
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	-48(%rbp), %xmm7
	subsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-64(%rbp), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294967280, %edx       # imm = 0xFFFFFFF0
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	-32(%rbp), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-64(%rbp), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$200005, %edx           # imm = 0x30D45
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	mulsd	-56(%rbp), %xmm5
	movsd	-32(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm3, %xmm6
	mulsd	-32(%rbp), %xmm6
	subsd	%xmm9, %xmm6
	mulsd	%xmm6, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm5
	addsd	%xmm5, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767302, %edx       # imm = 0xFFFCF2C6
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-40(%rbp), %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-40(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$2027, %edx             # imm = 0x7EB
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm5
	mulsd	(%rcx,%rdx,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	-56(%rbp), %xmm2
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	addsd	-40(%rbp), %xmm4
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-40(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1988, %edx             # imm = 0x7C4
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-40(%rbp), %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-40(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294965325, %edx       # imm = 0xFFFFF84D
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm5
	mulsd	(%rcx,%rdx,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	-56(%rbp), %xmm2
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	subsd	-40(%rbp), %xmm4
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	subsd	-40(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294965286, %edx       # imm = 0xFFFFF826
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$202011, %edx           # imm = 0x3151B
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294769308, %edx       # imm = 0xFFFCFA9C
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm5
	mulsd	(%rcx,%rdx,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	-56(%rbp), %xmm2
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	addsd	-32(%rbp), %xmm4
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$198013, %edx           # imm = 0x3057D
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm5
	mulsd	(%rcx,%rdx,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	-56(%rbp), %xmm2
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	subsd	-32(%rbp), %xmm4
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	subsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294765310, %edx       # imm = 0xFFFCEAFE
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-32(%rbp), %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$200035, %edx           # imm = 0x30D63
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm2
	mulsd	(%rcx,%rdx,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-32(%rbp), %xmm5
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767332, %edx       # imm = 0xFFFCF2E4
	movslq	%edx, %rdx
	movsd	%xmm2, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movaps	%xmm0, %xmm5
	mulsd	(%rcx,%rdx,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	-56(%rbp), %xmm2
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	addsd	-32(%rbp), %xmm4
	movsd	-48(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-32(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	-64(%rbp), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$199997, %edx           # imm = 0x30D3D
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$18, %edx
	movslq	%edx, %rdx
	mulsd	(%rcx,%rdx,8), %xmm0
	mulsd	-56(%rbp), %xmm8
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	%xmm2, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm2
	subsd	-32(%rbp), %xmm2
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	subsd	-32(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm9, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	subsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm8
	addsd	%xmm8, %xmm0
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$4294767294, %ecx       # imm = 0xFFFCF2BE
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_1
.LBB7_8:
	popq	%rbp
	retq
.Lfunc_end7:
	.size	LBM_performStreamCollide, .Lfunc_end7-LBM_performStreamCollide
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LBM_handleInOutFlow
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4613937818241073152     # double 3
.LCPI8_2:
	.quad	4616752568008179712     # double 4.5
.LCPI8_3:
	.quad	4583663620745971484     # double 0.027777777777777776
.LCPI8_4:
	.quad	4588167220373341980     # double 0.055555555555555552
.LCPI8_5:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI8_6:
	.quad	4609434218613702656     # double 1.5
.LCPI8_7:
	.quad	4611686018427387904     # double 2
.LCPI8_8:
	.quad	4576918229304087675     # double 0.01
.LCPI8_9:
	.quad	4632163322983088128     # double 49.5
	.text
	.globl	LBM_handleInOutFlow
	.p2align	4, 0x90
	.type	LBM_handleInOutFlow,@function
LBM_handleInOutFlow:                    # @LBM_handleInOutFlow
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rax
	movq	%rdi, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$200000, -4(%rbp)       # imm = 0x30D40
	jge	.LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI8_5(%rip), %xmm11  # xmm11 = mem[0],zero
	movsd	.LCPI8_6(%rip), %xmm10  # xmm10 = mem[0],zero
	movsd	.LCPI8_8(%rip), %xmm7   # xmm7 = mem[0],zero
	xorps	%xmm8, %xmm8
	movsd	.LCPI8_9(%rip), %xmm9   # xmm9 = mem[0],zero
	movl	$100, %esi
	movl	$20, %edi
	movsd	.LCPI8_7(%rip), %xmm6   # xmm6 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200000, %edx           # imm = 0x30D40
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200001, %edx           # imm = 0x30D41
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200002, %edx           # imm = 0x30D42
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200003, %edx           # imm = 0x30D43
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200004, %edx           # imm = 0x30D44
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200005, %edx           # imm = 0x30D45
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200006, %edx           # imm = 0x30D46
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200007, %edx           # imm = 0x30D47
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200008, %edx           # imm = 0x30D48
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200009, %edx           # imm = 0x30D49
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200010, %edx           # imm = 0x30D4A
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200011, %edx           # imm = 0x30D4B
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200012, %edx           # imm = 0x30D4C
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200013, %edx           # imm = 0x30D4D
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200014, %edx           # imm = 0x30D4E
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200015, %edx           # imm = 0x30D4F
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200016, %edx           # imm = 0x30D50
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200017, %edx           # imm = 0x30D51
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$200018, %edx           # imm = 0x30D52
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movsd	%xmm5, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400000, %edx           # imm = 0x61A80
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400001, %edx           # imm = 0x61A81
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400002, %edx           # imm = 0x61A82
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400003, %edx           # imm = 0x61A83
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400004, %edx           # imm = 0x61A84
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400005, %edx           # imm = 0x61A85
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400006, %edx           # imm = 0x61A86
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400007, %edx           # imm = 0x61A87
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400008, %edx           # imm = 0x61A88
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400009, %edx           # imm = 0x61A89
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400010, %edx           # imm = 0x61A8A
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400011, %edx           # imm = 0x61A8B
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400012, %edx           # imm = 0x61A8C
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400013, %edx           # imm = 0x61A8D
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400014, %edx           # imm = 0x61A8E
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400015, %edx           # imm = 0x61A8F
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400016, %edx           # imm = 0x61A90
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400017, %edx           # imm = 0x61A91
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$400018, %edx           # imm = 0x61A92
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movsd	%xmm5, -64(%rbp)
	mulsd	-72(%rbp), %xmm6
	subsd	-64(%rbp), %xmm6
	movsd	%xmm6, -56(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%edi
	cltd
	idivl	%esi
	cvtsi2sdl	%edx, %xmm5
	divsd	%xmm9, %xmm5
	subsd	%xmm1, %xmm5
	movsd	%xmm5, -136(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%edi
	cltd
	idivl	%esi
	cltd
	idivl	%esi
	cvtsi2sdl	%edx, %xmm5
	divsd	%xmm9, %xmm5
	subsd	%xmm1, %xmm5
	movsd	%xmm5, -128(%rbp)
	movsd	%xmm8, -40(%rbp)
	movsd	%xmm8, -32(%rbp)
	movsd	-136(%rbp), %xmm5       # xmm5 = mem[0],zero
	mulsd	-136(%rbp), %xmm5
	movaps	%xmm1, %xmm6
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm7
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	mulsd	-128(%rbp), %xmm5
	movaps	%xmm1, %xmm6
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, -24(%rbp)
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	mulsd	-40(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	mulsd	-32(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	mulsd	-24(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm5, %xmm10
	movsd	%xmm10, -48(%rbp)
	mulsd	-56(%rbp), %xmm11
	movaps	%xmm1, %xmm5
	subsd	-48(%rbp), %xmm5
	mulsd	%xmm5, %xmm11
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movsd	%xmm11, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-32(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-32(%rbp), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-40(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-40(%rbp), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-24(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	mulsd	-56(%rbp), %xmm4
	movsd	-24(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	-24(%rbp), %xmm6
	subsd	%xmm3, %xmm6
	mulsd	%xmm6, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	addsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm6
	addsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	subsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm6
	subsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	addsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm6
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	subsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm6
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	addsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm6
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	mulsd	-56(%rbp), %xmm0
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm4
	subsd	-24(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm5
	subsd	-24(%rbp), %xmm5
	mulsd	%xmm5, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm1
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_1
.LBB8_4:
	movl	$25800000, -4(%rbp)     # imm = 0x189AD40
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$26000000, -4(%rbp)     # imm = 0x18CBA80
	jge	.LBB8_8
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI8_5(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI8_6(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI8_7(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767296, %edx       # imm = 0xFFFCF2C0
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767297, %edx       # imm = 0xFFFCF2C1
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767298, %edx       # imm = 0xFFFCF2C2
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767299, %edx       # imm = 0xFFFCF2C3
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767300, %edx       # imm = 0xFFFCF2C4
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767301, %edx       # imm = 0xFFFCF2C5
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767302, %edx       # imm = 0xFFFCF2C6
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767303, %edx       # imm = 0xFFFCF2C7
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767304, %edx       # imm = 0xFFFCF2C8
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767305, %edx       # imm = 0xFFFCF2C9
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767306, %edx       # imm = 0xFFFCF2CA
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767307, %edx       # imm = 0xFFFCF2CB
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767308, %edx       # imm = 0xFFFCF2CC
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767309, %edx       # imm = 0xFFFCF2CD
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767310, %edx       # imm = 0xFFFCF2CE
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767311, %edx       # imm = 0xFFFCF2CF
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767312, %edx       # imm = 0xFFFCF2D0
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767313, %edx       # imm = 0xFFFCF2D1
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767314, %edx       # imm = 0xFFFCF2D2
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -72(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767299, %edx       # imm = 0xFFFCF2C3
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767300, %edx       # imm = 0xFFFCF2C4
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767303, %edx       # imm = 0xFFFCF2C7
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767304, %edx       # imm = 0xFFFCF2C8
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767305, %edx       # imm = 0xFFFCF2C9
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767306, %edx       # imm = 0xFFFCF2CA
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767311, %edx       # imm = 0xFFFCF2CF
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767312, %edx       # imm = 0xFFFCF2D0
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767313, %edx       # imm = 0xFFFCF2D1
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767314, %edx       # imm = 0xFFFCF2D2
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -120(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767297, %edx       # imm = 0xFFFCF2C1
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767298, %edx       # imm = 0xFFFCF2C2
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767303, %edx       # imm = 0xFFFCF2C7
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767304, %edx       # imm = 0xFFFCF2C8
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767305, %edx       # imm = 0xFFFCF2C9
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767306, %edx       # imm = 0xFFFCF2CA
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767307, %edx       # imm = 0xFFFCF2CB
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767308, %edx       # imm = 0xFFFCF2CC
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767309, %edx       # imm = 0xFFFCF2CD
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767310, %edx       # imm = 0xFFFCF2CE
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -112(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767301, %edx       # imm = 0xFFFCF2C5
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767302, %edx       # imm = 0xFFFCF2C6
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767307, %edx       # imm = 0xFFFCF2CB
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767308, %edx       # imm = 0xFFFCF2CC
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767309, %edx       # imm = 0xFFFCF2CD
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767310, %edx       # imm = 0xFFFCF2CE
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767311, %edx       # imm = 0xFFFCF2CF
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767312, %edx       # imm = 0xFFFCF2D0
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767313, %edx       # imm = 0xFFFCF2D1
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294767314, %edx       # imm = 0xFFFCF2D2
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -104(%rbp)
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # xmm5 = mem[0],zero
	divsd	%xmm6, %xmm5
	movsd	%xmm5, -120(%rbp)
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-112(%rbp), %xmm6       # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -112(%rbp)
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-104(%rbp), %xmm6       # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -104(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567296, %edx       # imm = 0xFFF9E580
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567297, %edx       # imm = 0xFFF9E581
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567298, %edx       # imm = 0xFFF9E582
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567299, %edx       # imm = 0xFFF9E583
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567300, %edx       # imm = 0xFFF9E584
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567301, %edx       # imm = 0xFFF9E585
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567302, %edx       # imm = 0xFFF9E586
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567303, %edx       # imm = 0xFFF9E587
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567304, %edx       # imm = 0xFFF9E588
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567305, %edx       # imm = 0xFFF9E589
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567306, %edx       # imm = 0xFFF9E58A
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567307, %edx       # imm = 0xFFF9E58B
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567308, %edx       # imm = 0xFFF9E58C
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567309, %edx       # imm = 0xFFF9E58D
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567310, %edx       # imm = 0xFFF9E58E
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567311, %edx       # imm = 0xFFF9E58F
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567312, %edx       # imm = 0xFFF9E590
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567313, %edx       # imm = 0xFFF9E591
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567314, %edx       # imm = 0xFFF9E592
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -64(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567299, %edx       # imm = 0xFFF9E583
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567300, %edx       # imm = 0xFFF9E584
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567303, %edx       # imm = 0xFFF9E587
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567304, %edx       # imm = 0xFFF9E588
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567305, %edx       # imm = 0xFFF9E589
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567306, %edx       # imm = 0xFFF9E58A
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567311, %edx       # imm = 0xFFF9E58F
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567312, %edx       # imm = 0xFFF9E590
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567313, %edx       # imm = 0xFFF9E591
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567314, %edx       # imm = 0xFFF9E592
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -96(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567297, %edx       # imm = 0xFFF9E581
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567298, %edx       # imm = 0xFFF9E582
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567303, %edx       # imm = 0xFFF9E587
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567304, %edx       # imm = 0xFFF9E588
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567305, %edx       # imm = 0xFFF9E589
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567306, %edx       # imm = 0xFFF9E58A
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567307, %edx       # imm = 0xFFF9E58B
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567308, %edx       # imm = 0xFFF9E58C
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567309, %edx       # imm = 0xFFF9E58D
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567310, %edx       # imm = 0xFFF9E58E
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -88(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567301, %edx       # imm = 0xFFF9E585
	movslq	%edx, %rdx
	movsd	(%rcx,%rdx,8), %xmm6    # xmm6 = mem[0],zero
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567302, %edx       # imm = 0xFFF9E586
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567307, %edx       # imm = 0xFFF9E58B
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567308, %edx       # imm = 0xFFF9E58C
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567309, %edx       # imm = 0xFFF9E58D
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567310, %edx       # imm = 0xFFF9E58E
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567311, %edx       # imm = 0xFFF9E58F
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567312, %edx       # imm = 0xFFF9E590
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567313, %edx       # imm = 0xFFF9E591
	movslq	%edx, %rdx
	addsd	(%rcx,%rdx,8), %xmm6
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4294567314, %edx       # imm = 0xFFF9E592
	movslq	%edx, %rdx
	subsd	(%rcx,%rdx,8), %xmm6
	movsd	%xmm6, -80(%rbp)
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-96(%rbp), %xmm6        # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -96(%rbp)
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -88(%rbp)
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-80(%rbp), %xmm6        # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -80(%rbp)
	movsd	%xmm1, -56(%rbp)
	movaps	%xmm7, %xmm5
	mulsd	-120(%rbp), %xmm5
	subsd	-96(%rbp), %xmm5
	movsd	%xmm5, -40(%rbp)
	movaps	%xmm7, %xmm5
	mulsd	-112(%rbp), %xmm5
	subsd	-88(%rbp), %xmm5
	movsd	%xmm5, -32(%rbp)
	mulsd	-104(%rbp), %xmm7
	subsd	-80(%rbp), %xmm7
	movsd	%xmm7, -24(%rbp)
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	mulsd	-40(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	mulsd	-32(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	mulsd	-24(%rbp), %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm5, %xmm8
	movsd	%xmm8, -48(%rbp)
	mulsd	-56(%rbp), %xmm9
	movaps	%xmm1, %xmm5
	subsd	-48(%rbp), %xmm5
	mulsd	%xmm5, %xmm9
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movsd	%xmm9, (%rcx,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-32(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-32(%rbp), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-40(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-40(%rbp), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	-24(%rbp), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	-48(%rbp), %xmm7
	mulsd	%xmm7, %xmm5
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rcx,%rdx,8)
	mulsd	-56(%rbp), %xmm4
	movsd	-24(%rbp), %xmm5        # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	-24(%rbp), %xmm6
	subsd	%xmm3, %xmm6
	mulsd	%xmm6, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	addsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	subsd	-32(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	subsd	-32(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	addsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-32(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	subsd	-24(%rbp), %xmm5
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	addsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	subsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	-56(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	addsd	-24(%rbp), %xmm5
	movsd	-40(%rbp), %xmm6        # xmm6 = mem[0],zero
	movq	%xmm6, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm6
	addsd	-24(%rbp), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	-48(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rcx,%rdx,8)
	mulsd	-56(%rbp), %xmm0
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movq	%xmm4, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm4
	subsd	-24(%rbp), %xmm4
	movsd	-40(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	%xmm5, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %xmm5
	subsd	-24(%rbp), %xmm5
	mulsd	%xmm5, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm1
	subsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB8_5 Depth=1
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_5
.LBB8_8:
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	LBM_handleInOutFlow, .Lfunc_end8-LBM_handleInOutFlow
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function LBM_showGridStatistics
.LCPI9_0:
	.quad	-4167731427214848790    # double -1.0E+30
.LCPI9_1:
	.quad	5055640609639927018     # double 1.0E+30
	.text
	.globl	LBM_showGridStatistics
	.p2align	4, 0x90
	.type	LBM_showGridStatistics,@function
LBM_showGridStatistics:                 # @LBM_showGridStatistics
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	%rdi, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movsd	%xmm2, -120(%rbp)
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm2, -104(%rbp)
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$26000000, -36(%rbp)    # imm = 0x18CBA80
	jge	.LBB9_18
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
.LBB9_6:                                #   in Loop: Header=BB9_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,8), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_16
.LBB9_8:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,8), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB9_10
# %bb.9:                                #   in Loop: Header=BB9_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB9_11
.LBB9_10:                               #   in Loop: Header=BB9_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB9_11:                               #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB9_13:                               #   in Loop: Header=BB9_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
.LBB9_15:                               #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_16
.LBB9_16:                               #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_18:
	movabsq	$.L.str.2, %r14
	movl	-68(%rbp), %ebx
	movl	-64(%rbp), %r15d
	movl	-60(%rbp), %r12d
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movaps	%xmm0, %xmm4
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movb	$5, %al
	callq	printf
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	LBM_showGridStatistics, .Lfunc_end9-LBM_showGridStatistics
	.cfi_endproc
                                        # -- End function
	.globl	LBM_storeVelocityField  # -- Begin function LBM_storeVelocityField
	.p2align	4, 0x90
	.type	LBM_storeVelocityField,@function
LBM_storeVelocityField:                 # @LBM_storeVelocityField
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.3, %rcx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -52(%rbp)
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %edx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
.LBB10_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_5 Depth 3
	cmpl	$130, -4(%rbp)
	jge	.LBB10_15
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -8(%rbp)
.LBB10_3:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_5 Depth 3
	cmpl	$100, -8(%rbp)
	jge	.LBB10_13
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=2
	movl	$0, -12(%rbp)
.LBB10_5:                               #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$100, -12(%rbp)
	jge	.LBB10_11
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	imull	$100, -8(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -4(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -36(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -32(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_8
# %bb.7:                                #   in Loop: Header=BB10_5 Depth=3
	leaq	-36(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	storeValue
	leaq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	storeValue
	leaq	-28(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	storeValue
	jmp	.LBB10_9
.LBB10_8:                               #   in Loop: Header=BB10_5 Depth=3
	movabsq	$.L.str.5, %rsi
	movq	-48(%rbp), %rdi
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-28(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movb	$3, %al
	callq	fprintf
.LBB10_9:                               #   in Loop: Header=BB10_5 Depth=3
	jmp	.LBB10_10
.LBB10_10:                              #   in Loop: Header=BB10_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_5
.LBB10_11:                              #   in Loop: Header=BB10_3 Depth=2
	jmp	.LBB10_12
.LBB10_12:                              #   in Loop: Header=BB10_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB10_3
.LBB10_13:                              #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_14
.LBB10_14:                              #   in Loop: Header=BB10_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB10_1
.LBB10_15:
	movq	-48(%rbp), %rdi
	callq	fclose
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	LBM_storeVelocityField, .Lfunc_end10-LBM_storeVelocityField
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function storeValue
	.type	storeValue,@function
storeValue:                             # @storeValue
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -8(%rbp)
	movzbl	-8(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB11_6
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB11_5
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	movl	$4, %eax
	movq	-40(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	subq	%rdx, %rax
	subq	$1, %rax
	movb	(%rcx,%rax), %al
	movslq	-4(%rbp), %rcx
	movb	%al, -12(%rbp,%rcx)
# %bb.4:                                #   in Loop: Header=BB11_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_2
.LBB11_5:
	leaq	-12(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB11_7
.LBB11_6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
.LBB11_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	storeValue, .Lfunc_end11-storeValue
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function LBM_compareVelocityField
.LCPI12_0:
	.long	4048155338              # float -1.00000002E+30
	.text
	.globl	LBM_compareVelocityField
	.p2align	4, 0x90
	.type	LBM_compareVelocityField,@function
LBM_compareVelocityField:               # @LBM_compareVelocityField
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -24
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.1, %rcx
	movss	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -32(%rbp)
	movq	%rsi, -120(%rbp)
	movl	%edx, -80(%rbp)
	movss	%xmm0, -36(%rbp)
	movq	-120(%rbp), %rdi
	movl	-80(%rbp), %edx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_5 Depth 3
	cmpl	$130, -12(%rbp)
	jge	.LBB12_17
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -16(%rbp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_5 Depth 3
	cmpl	$100, -16(%rbp)
	jge	.LBB12_15
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -20(%rbp)
.LBB12_5:                               #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$100, -20(%rbp)
	jge	.LBB12_13
# %bb.6:                                #   in Loop: Header=BB12_5 Depth=3
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	$100, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$100, -12(%rbp), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=3
	leaq	-76(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	loadValue
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	loadValue
	leaq	-68(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	loadValue
	jmp	.LBB12_9
.LBB12_8:                               #   in Loop: Header=BB12_5 Depth=3
	movabsq	$.L.str.7, %rsi
	leaq	-76(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-68(%rbp), %r8
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
.LBB12_9:                               #   in Loop: Header=BB12_5 Depth=3
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movss	-68(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-64(%rbp), %xmm0
	movss	-60(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-56(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-36(%rbp), %xmm0
	jbe	.LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_5 Depth=3
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
.LBB12_11:                              #   in Loop: Header=BB12_5 Depth=3
	jmp	.LBB12_12
.LBB12_12:                              #   in Loop: Header=BB12_5 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_5
.LBB12_13:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_14
.LBB12_14:                              #   in Loop: Header=BB12_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB12_3
.LBB12_15:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_16
.LBB12_16:                              #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_17:
	movabsq	$.L.str.8, %rbx
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	movq	%rbx, %rdi
	movb	$1, %al
	callq	printf
	movq	-48(%rbp), %rdi
	callq	fclose
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	LBM_compareVelocityField, .Lfunc_end12-LBM_compareVelocityField
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function loadValue
	.type	loadValue,@function
loadValue:                              # @loadValue
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -8(%rbp)
	movzbl	-8(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB13_6
# %bb.1:
	leaq	-12(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fread
	movl	$0, -4(%rbp)
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB13_5
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	movl	$4, %eax
	movslq	-4(%rbp), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movb	-12(%rbp,%rax), %al
	movq	-40(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_2
.LBB13_5:
	jmp	.LBB13_7
.LBB13_6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fread
.LBB13_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	loadValue, .Lfunc_end13-loadValue
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-56(%rbp), %rdx
	movl	$0, -20(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	MAIN_parseCommandLine
	leaq	-56(%rbp), %rdi
	callq	MAIN_printInfo
	leaq	-56(%rbp), %rdi
	callq	MAIN_initialize
	movl	$1, -4(%rbp)
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB14_8
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	cmpl	$1, -36(%rbp)
	jne	.LBB14_4
# %bb.3:                                #   in Loop: Header=BB14_1 Depth=1
	movq	srcGrid, %rdi
	callq	LBM_handleInOutFlow
.LBB14_4:                               #   in Loop: Header=BB14_1 Depth=1
	movq	srcGrid, %rdi
	movq	dstGrid, %rsi
	callq	LBM_performStreamCollide
	movabsq	$srcGrid, %rdi
	movabsq	$dstGrid, %rsi
	callq	LBM_swapGrids
	movl	-4(%rbp), %eax
	andl	$63, %eax
	cmpl	$0, %eax
	jne	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_1 Depth=1
	movabsq	$.L.str.9, %rdi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	printf
	movq	srcGrid, %rdi
	callq	LBM_showGridStatistics
.LBB14_6:                               #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_1
.LBB14_8:
	leaq	-56(%rbp), %rdi
	callq	MAIN_finalize
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	main, .Lfunc_end14-main
	.cfi_endproc
                                        # -- End function
	.globl	MAIN_parseCommandLine   # -- Begin function MAIN_parseCommandLine
	.p2align	4, 0x90
	.type	MAIN_parseCommandLine,@function
MAIN_parseCommandLine:                  # @MAIN_parseCommandLine
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -8(%rbp)
	cmpl	$5, -12(%rbp)
	jl	.LBB15_2
# %bb.1:
	cmpl	$6, -12(%rbp)
	jle	.LBB15_3
.LBB15_2:
	movabsq	$.L.str.1.12, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB15_3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movq	-8(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	atoi
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	cmpl	$6, -12(%rbp)
	jne	.LBB15_9
# %bb.4:
	leaq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB15_6
# %bb.5:
	movabsq	$.L.str.2.13, %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB15_6:
	cmpq	$1313130, -120(%rbp)    # imm = 0x14096A
	je	.LBB15_8
# %bb.7:
	movabsq	$.L.str.3.14, %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-120(%rbp), %rdx
                                        # kill: def %edx killed %edx killed %rdx
	movl	$1313130, %ecx          # imm = 0x14096A
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB15_8:
	jmp	.LBB15_10
.LBB15_9:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB15_10:
	movq	-8(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB15_13
# %bb.11:
	leaq	-168(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	stat
	cmpl	$0, %eax
	je	.LBB15_13
# %bb.12:
	movabsq	$.L.str.4.15, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB15_13:
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	MAIN_parseCommandLine, .Lfunc_end15-MAIN_parseCommandLine
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function MAIN_printInfo
.LCPI16_0:
	.quad	4608533498688228556     # double 1.2999999999999998
	.text
	.globl	MAIN_printInfo
	.p2align	4, 0x90
	.type	MAIN_printInfo,@function
MAIN_printInfo:                         # @MAIN_printInfo
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$MAIN_printInfo.simTypeString, %r10
	movabsq	$MAIN_printInfo.actionString, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %ecx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %ecx
	shlq	$5, %rcx
	addq	%rcx, %r10
	movq	-8(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	jne	.LBB16_2
# %bb.1:
	movabsq	$.L.str.6.10, %r11
	jmp	.LBB16_3
.LBB16_2:
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %r11
.LBB16_3:
	movabsq	$.L.str.5.11, %rdi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$100, %esi
	movl	$100, %edx
	movl	$130, %ecx
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movb	$1, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	MAIN_printInfo, .Lfunc_end16-MAIN_printInfo
	.cfi_endproc
                                        # -- End function
	.globl	MAIN_initialize         # -- Begin function MAIN_initialize
	.p2align	4, 0x90
	.type	MAIN_initialize,@function
MAIN_initialize:                        # @MAIN_initialize
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$srcGrid, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	LBM_allocateGrid
	movabsq	$dstGrid, %rdi
	callq	LBM_allocateGrid
	movq	srcGrid, %rdi
	callq	LBM_initializeGrid
	movq	dstGrid, %rdi
	callq	LBM_initializeGrid
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB17_2
# %bb.1:
	movq	srcGrid, %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	callq	LBM_loadObstacleFile
	movq	dstGrid, %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	callq	LBM_loadObstacleFile
.LBB17_2:
	movq	-8(%rbp), %rax
	cmpl	$1, 20(%rax)
	jne	.LBB17_4
# %bb.3:
	movq	srcGrid, %rdi
	callq	LBM_initializeSpecialCellsForChannel
	movq	dstGrid, %rdi
	callq	LBM_initializeSpecialCellsForChannel
	jmp	.LBB17_5
.LBB17_4:
	movq	srcGrid, %rdi
	callq	LBM_initializeSpecialCellsForLDC
	movq	dstGrid, %rdi
	callq	LBM_initializeSpecialCellsForLDC
.LBB17_5:
	movq	srcGrid, %rdi
	callq	LBM_showGridStatistics
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	MAIN_initialize, .Lfunc_end17-MAIN_initialize
	.cfi_endproc
                                        # -- End function
	.globl	MAIN_finalize           # -- Begin function MAIN_finalize
	.p2align	4, 0x90
	.type	MAIN_finalize,@function
MAIN_finalize:                          # @MAIN_finalize
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	srcGrid, %rdi
	callq	LBM_showGridStatistics
	movq	-8(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB18_2
# %bb.1:
	movq	srcGrid, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	LBM_compareVelocityField
.LBB18_2:
	movq	-8(%rbp), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB18_4
# %bb.3:
	movq	srcGrid, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	LBM_storeVelocityField
.LBB18_4:
	movabsq	$srcGrid, %rdi
	callq	LBM_freeGrid
	movabsq	$dstGrid, %rdi
	callq	LBM_freeGrid
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	MAIN_finalize, .Lfunc_end18-MAIN_finalize
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LBM_allocateGrid: could not allocate %.1f MByte\n"
	.size	.L.str, 49

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.4f maxRho: %8.4f mass: %e\n\tminU: %e maxU: %e\n\n"
	.size	.L.str.2, 138

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"wb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"w"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%e %e %e\n"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%f %f %f\n"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"LBM_compareVelocityField: maxDiff = %e  \n\n"
	.size	.L.str.8, 43

	.type	srcGrid,@object         # @srcGrid
	.local	srcGrid
	.comm	srcGrid,8,8
	.type	dstGrid,@object         # @dstGrid
	.local	dstGrid
	.comm	dstGrid,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"timestep: %i\n"
	.size	.L.str.9, 14

	.type	MAIN_printInfo.actionString,@object # @MAIN_printInfo.actionString
	.section	.rodata,"a",@progbits
	.p2align	4
MAIN_printInfo.actionString:
	.asciz	"nothing\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"compare\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"store\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	MAIN_printInfo.actionString, 96

	.type	MAIN_printInfo.simTypeString,@object # @MAIN_printInfo.simTypeString
	.p2align	4
MAIN_printInfo.simTypeString:
	.asciz	"lid-driven cavity\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"channel flow\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	32
	.size	MAIN_printInfo.simTypeString, 96

	.type	.L.str.6.10,@object     # @.str.6.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6.10:
	.asciz	"<none>"
	.size	.L.str.6.10, 7

	.type	.L.str.5.11,@object     # @.str.5.11
.L.str.5.11:
	.asciz	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"
	.size	.L.str.5.11, 174

	.type	.L.str.1.12,@object     # @.str.1.12
.L.str.1.12:
	.asciz	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]\n"
	.size	.L.str.1.12, 109

	.type	.L.str.2.13,@object     # @.str.2.13
.L.str.2.13:
	.asciz	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"
	.size	.L.str.2.13, 55

	.type	.L.str.3.14,@object     # @.str.3.14
.L.str.3.14:
	.asciz	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"
	.size	.L.str.3.14, 82

	.type	.L.str.4.15,@object     # @.str.4.15
.L.str.4.15:
	.asciz	"MAIN_parseCommandLine: cannot stat result file '%s'\n"
	.size	.L.str.4.15, 53


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
