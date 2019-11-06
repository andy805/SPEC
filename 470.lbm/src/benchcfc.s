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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-5567, %ax             # imm = 0xEA41
	xorw	%cx, %ax
	cmpw	$124, %ax
	jne	.LBB0_7
# %bb.1:                                # %LBM_allocateGrid.split18
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-5567, %ax             # imm = 0xEA41
	xorw	%cx, %ax
	cmpw	$124, %ax
	jne	.LBB0_7
# %bb.2:                                # %LBM_allocateGrid.split16
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rdi, (%rbx)
	movq	$400000, (%rax)         # imm = 0x61A80
	movq	$214400000, (%rcx)      # imm = 0xCC77C00
	movl	$214400000, %edi        # imm = 0xCC77C00
	callq	malloc
	movq	(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movw	$124, BasicBlockSignatureTracker
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.3:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$357, %ax               # imm = 0x165
	cmpw	$281, %ax               # imm = 0x119
	jne	.LBB0_7
# %bb.4:                                # %LBM_allocateGrid.split14
	movabsq	$.L.str, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	movw	$281, BasicBlockSignatureTracker # imm = 0x119
	movw	$0, RunTimeSignatureAdjuster
.LBB0_5:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$352, %ax               # imm = 0x160
	cmpw	$284, %ax               # imm = 0x11C
	jne	.LBB0_7
# %bb.6:                                # %LBM_allocateGrid.split
	movq	(%rbx), %rax
	movq	(%rax), %rcx
	addq	$3200000, %rcx          # imm = 0x30D400
	movq	%rcx, (%rax)
	movw	$284, BasicBlockSignatureTracker # imm = 0x11C
	movw	$-12877, RunTimeSignatureAdjuster # imm = 0xCDB3
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_7:                                # %CFerrorHandler.LBM_allocateGrid
	callq	FAULT_DETECTED_CFC
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-1939, %ax             # imm = 0xF86D
	xorw	%cx, %ax
	cmpw	$367, %ax               # imm = 0x16F
	jne	.LBB1_3
# %bb.1:                                # %LBM_freeGrid.split8
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-1939, %ax             # imm = 0xF86D
	xorw	%cx, %ax
	cmpw	$367, %ax               # imm = 0x16F
	jne	.LBB1_3
# %bb.2:                                # %LBM_freeGrid.split
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rdi, (%rbx)
	movq	$400000, (%rax)         # imm = 0x61A80
	movq	(%rbx), %rax
	movq	(%rax), %rdi
	addq	$-3200000, %rdi         # imm = 0xFFCF2C00
	callq	free
	movq	(%rbx), %rax
	movq	$0, (%rax)
	movw	$367, BasicBlockSignatureTracker # imm = 0x16F
	movw	$-1765, RunTimeSignatureAdjuster # imm = 0xF91B
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_3:                                # %CFerrorHandler.LBM_freeGrid
	callq	FAULT_DETECTED_CFC
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
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-5095, %ax             # imm = 0xEC19
	xorw	%cx, %ax
	cmpw	$1572, %ax              # imm = 0x624
	jne	.LBB2_12
# %bb.1:                                # %LBM_initializeGrid.split30
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-5095, %ax             # imm = 0xEC19
	xorw	%cx, %ax
	cmpw	$1572, %ax              # imm = 0x624
	jne	.LBB2_12
# %bb.2:                                # %LBM_initializeGrid.split28
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rdi, (%rax)
	movl	$-400000, (%rcx)        # imm = 0xFFF9E580
	movw	$1572, BasicBlockSignatureTracker # imm = 0x624
	movw	$0, RunTimeSignatureAdjuster
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %si
	movw	RunTimeSignatureAdjuster, %di
	xorw	$223, %si
	xorw	%di, %si
	cmpw	$1787, %si              # imm = 0x6FB
	jne	.LBB2_11
# %bb.4:                                # %LBM_initializeGrid.split
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	(%rcx), %esi
	movw	$1787, BasicBlockSignatureTracker # imm = 0x6FB
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$26400000, %esi         # imm = 0x192D500
	jge	.LBB2_9
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$353, %si               # imm = 0x161
	cmpw	$1946, %si              # imm = 0x79A
	jne	.LBB2_11
# %bb.6:                                # %LBM_initializeGrid.split22
                                        #   in Loop: Header=BB2_3 Depth=1
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rcx), %edi
	addl	$19, %edi
	movslq	%edi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	%rsi, (%rdx)
	movq	(%rdx), %rsi
	movl	$0, (%rsi)
	movw	$1946, BasicBlockSignatureTracker # imm = 0x79A
	movw	$0, RunTimeSignatureAdjuster
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$4046, %si              # imm = 0xFCE
	cmpw	$2132, %si              # imm = 0x854
	jne	.LBB2_11
# %bb.8:                                # %LBM_initializeGrid.split26
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	(%rcx), %esi
	addl	$20, %esi
	movl	%esi, (%rcx)
	movw	$2132, BasicBlockSignatureTracker # imm = 0x854
	movw	$3696, RunTimeSignatureAdjuster # imm = 0xE70
	jmp	.LBB2_3
.LBB2_9:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3102, %ax              # imm = 0xC1E
	cmpw	$2789, %ax              # imm = 0xAE5
	jne	.LBB2_12
# %bb.10:                               # %LBM_initializeGrid.split24
	movw	$2789, BasicBlockSignatureTracker # imm = 0xAE5
	movw	$-14774, RunTimeSignatureAdjuster # imm = 0xC64A
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB2_11:                               # %CFerrorHandler.LBM_initializeGrid.loopexit
	jmp	.LBB2_12
.LBB2_12:                               # %CFerrorHandler.LBM_initializeGrid
	callq	FAULT_DETECTED_CFC
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
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-8806, %ax             # imm = 0xDD9A
	xorw	%cx, %ax
	cmpw	$3811, %ax              # imm = 0xEE3
	jne	.LBB3_2
# %bb.1:                                # %LBM_swapGrids.split
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%rcx)
	movq	(%rax), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rdx)
	movq	(%rcx), %rsi
	movq	(%rsi), %rsi
	movq	(%rax), %rax
	movq	%rsi, (%rax)
	movq	(%rdx), %rax
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movw	$3811, BasicBlockSignatureTracker # imm = 0xEE3
	movw	$-8658, RunTimeSignatureAdjuster # imm = 0xDE2E
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB3_2:                                # %CFerrorHandler.LBM_swapGrids
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-6791, %ax             # imm = 0xE579
	xorw	%cx, %ax
	cmpw	$4056, %ax              # imm = 0xFD8
	jne	.LBB4_34
# %bb.1:                                # %LBM_loadObstacleFile.split86
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-6791, %ax             # imm = 0xE579
	xorw	%cx, %ax
	cmpw	$4056, %ax              # imm = 0xFD8
	jne	.LBB4_34
# %bb.2:                                # %LBM_loadObstacleFile.split84
	movabsq	$.L.str.1, %rax
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rdi, (%r12)
	movq	%rsi, (%rcx)
	movq	(%rcx), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, (%r13)
	movl	$0, (%rbx)
	movw	$4056, BasicBlockSignatureTracker # imm = 0xFD8
	movw	$0, RunTimeSignatureAdjuster
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_11 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7889, %ax              # imm = 0x1ED1
	xorw	%cx, %ax
	cmpw	$4361, %ax              # imm = 0x1109
	jne	.LBB4_33
# %bb.4:                                # %LBM_loadObstacleFile.split
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	(%rbx), %eax
	movw	$4361, BasicBlockSignatureTracker # imm = 0x1109
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$130, %eax
	jge	.LBB4_29
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$251, %ax
	cmpw	$4594, %ax              # imm = 0x11F2
	jne	.LBB4_33
# %bb.6:                                # %LBM_loadObstacleFile.split58
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$0, (%r15)
	movw	$4594, BasicBlockSignatureTracker # imm = 0x11F2
	movw	$0, RunTimeSignatureAdjuster
.LBB4_7:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1005, %ax              # imm = 0x3ED
	xorw	%cx, %ax
	cmpw	$4639, %ax              # imm = 0x121F
	jne	.LBB4_32
# %bb.8:                                # %LBM_loadObstacleFile.split62
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	(%r15), %eax
	movw	$4639, BasicBlockSignatureTracker # imm = 0x121F
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB4_25
# %bb.9:                                #   in Loop: Header=BB4_7 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$135, %ax
	cmpw	$4760, %ax              # imm = 0x1298
	jne	.LBB4_32
# %bb.10:                               # %LBM_loadObstacleFile.split64
                                        #   in Loop: Header=BB4_7 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movw	$4760, BasicBlockSignatureTracker # imm = 0x1298
	movw	$0, RunTimeSignatureAdjuster
.LBB4_11:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1830, %ax              # imm = 0x726
	xorw	%cx, %ax
	cmpw	$5566, %ax              # imm = 0x15BE
	jne	.LBB4_31
# %bb.12:                               # %LBM_loadObstacleFile.split68
                                        #   in Loop: Header=BB4_11 Depth=3
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movw	$5566, BasicBlockSignatureTracker # imm = 0x15BE
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB4_21
# %bb.13:                               #   in Loop: Header=BB4_11 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3398, %ax              # imm = 0xD46
	cmpw	$6392, %ax              # imm = 0x18F8
	jne	.LBB4_31
# %bb.14:                               # %LBM_loadObstacleFile.split70
                                        #   in Loop: Header=BB4_11 Depth=3
	movq	(%r13), %rdi
	callq	fgetc
	movw	$6392, BasicBlockSignatureTracker # imm = 0x18F8
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$46, %eax
	je	.LBB4_17
# %bb.15:                               #   in Loop: Header=BB4_11 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$716, %ax               # imm = 0x2CC
	cmpw	$6708, %ax              # imm = 0x1A34
	jne	.LBB4_31
# %bb.16:                               # %LBM_loadObstacleFile.split74
                                        #   in Loop: Header=BB4_11 Depth=3
	movq	(%r12), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	imull	$100, (%r15), %edx
	addl	%edx, %ecx
	imull	$100, (%rbx), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, (%r14)
	movq	(%r14), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
	movw	$6708, BasicBlockSignatureTracker # imm = 0x1A34
	movw	$716, RunTimeSignatureAdjuster # imm = 0x2CC
.LBB4_17:                               #   in Loop: Header=BB4_11 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$648, %ax               # imm = 0x288
	xorw	%cx, %ax
	cmpw	$6768, %ax              # imm = 0x1A70
	jne	.LBB4_31
# %bb.18:                               # %LBM_loadObstacleFile.split76
                                        #   in Loop: Header=BB4_11 Depth=3
	movw	$6768, BasicBlockSignatureTracker # imm = 0x1A70
	movw	$0, RunTimeSignatureAdjuster
# %bb.19:                               #   in Loop: Header=BB4_11 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$360, %ax               # imm = 0x168
	cmpw	$6936, %ax              # imm = 0x1B18
	jne	.LBB4_31
# %bb.20:                               # %LBM_loadObstacleFile.split78
                                        #   in Loop: Header=BB4_11 Depth=3
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
	movw	$6936, BasicBlockSignatureTracker # imm = 0x1B18
	movw	$2432, RunTimeSignatureAdjuster # imm = 0x980
	jmp	.LBB4_11
.LBB4_21:                               #   in Loop: Header=BB4_7 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3824, %ax              # imm = 0xEF0
	cmpw	$6990, %ax              # imm = 0x1B4E
	jne	.LBB4_32
# %bb.22:                               # %LBM_loadObstacleFile.split72
                                        #   in Loop: Header=BB4_7 Depth=2
	movq	(%r13), %rdi
	callq	fgetc
	movw	$6990, BasicBlockSignatureTracker # imm = 0x1B4E
	movw	$0, RunTimeSignatureAdjuster
# %bb.23:                               #   in Loop: Header=BB4_7 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1740, %ax              # imm = 0x6CC
	cmpw	$7554, %ax              # imm = 0x1D82
	jne	.LBB4_32
# %bb.24:                               # %LBM_loadObstacleFile.split80
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	(%r15), %eax
	addl	$1, %eax
	movl	%eax, (%r15)
	movw	$7554, BasicBlockSignatureTracker # imm = 0x1D82
	movw	$3184, RunTimeSignatureAdjuster # imm = 0xC70
	jmp	.LBB4_7
.LBB4_25:                               #   in Loop: Header=BB4_3 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3326, %ax              # imm = 0xCFE
	cmpw	$7905, %ax              # imm = 0x1EE1
	jne	.LBB4_33
# %bb.26:                               # %LBM_loadObstacleFile.split66
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	(%r13), %rdi
	callq	fgetc
	movw	$7905, BasicBlockSignatureTracker # imm = 0x1EE1
	movw	$0, RunTimeSignatureAdjuster
# %bb.27:                               #   in Loop: Header=BB4_3 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$26, %ax
	cmpw	$7931, %ax              # imm = 0x1EFB
	jne	.LBB4_33
# %bb.28:                               # %LBM_loadObstacleFile.split82
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, (%rbx)
	movw	$7931, BasicBlockSignatureTracker # imm = 0x1EFB
	movw	$4387, RunTimeSignatureAdjuster # imm = 0x1123
	jmp	.LBB4_3
.LBB4_29:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3616, %ax              # imm = 0xE20
	cmpw	$7977, %ax              # imm = 0x1F29
	jne	.LBB4_34
# %bb.30:                               # %LBM_loadObstacleFile.split60
	movq	(%r13), %rdi
	callq	fclose
	movw	$7977, BasicBlockSignatureTracker # imm = 0x1F29
	movw	$-2796, RunTimeSignatureAdjuster # imm = 0xF514
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_31:                               # %CFerrorHandler.LBM_loadObstacleFile.loopexit
	jmp	.LBB4_34
.LBB4_32:                               # %CFerrorHandler.LBM_loadObstacleFile.loopexit1
	jmp	.LBB4_34
.LBB4_33:                               # %CFerrorHandler.LBM_loadObstacleFile.loopexit2
	jmp	.LBB4_34
.LBB4_34:                               # %CFerrorHandler.LBM_loadObstacleFile
	callq	FAULT_DETECTED_CFC
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
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-12960, %ax            # imm = 0xCD60
	xorw	%cx, %ax
	cmpw	$8987, %ax              # imm = 0x231B
	jne	.LBB5_80
# %bb.1:                                # %LBM_initializeSpecialCellsForLDC.split216
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-12960, %ax            # imm = 0xCD60
	xorw	%cx, %ax
	cmpw	$8987, %ax              # imm = 0x231B
	jne	.LBB5_80
# %bb.2:                                # %LBM_initializeSpecialCellsForLDC.split214
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rdi, (%rax)
	movl	$-2, (%rsi)
	movw	$8987, BasicBlockSignatureTracker # imm = 0x231B
	movw	$0, RunTimeSignatureAdjuster
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_11 Depth 3
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$80, %di
	xorw	%cx, %di
	cmpw	$9035, %di              # imm = 0x234B
	jne	.LBB5_79
# %bb.4:                                # %LBM_initializeSpecialCellsForLDC.split
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	(%rsi), %ecx
	movw	$9035, BasicBlockSignatureTracker # imm = 0x234B
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$132, %ecx
	jge	.LBB5_75
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$44, %cx
	cmpw	$9063, %cx              # imm = 0x2367
	jne	.LBB5_79
# %bb.6:                                # %LBM_initializeSpecialCellsForLDC.split160
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, (%rdx)
	movw	$9063, BasicBlockSignatureTracker # imm = 0x2367
	movw	$0, RunTimeSignatureAdjuster
.LBB5_7:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$161, %cx
	xorw	%di, %cx
	cmpw	$9158, %cx              # imm = 0x23C6
	jne	.LBB5_78
# %bb.8:                                # %LBM_initializeSpecialCellsForLDC.split164
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	(%rdx), %ecx
	movw	$9158, BasicBlockSignatureTracker # imm = 0x23C6
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %ecx
	jge	.LBB5_71
# %bb.9:                                #   in Loop: Header=BB5_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1938, %cx              # imm = 0x792
	cmpw	$9300, %cx              # imm = 0x2454
	jne	.LBB5_78
# %bb.10:                               # %LBM_initializeSpecialCellsForLDC.split166
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	$0, (%r8)
	movw	$9300, BasicBlockSignatureTracker # imm = 0x2454
	movw	$0, RunTimeSignatureAdjuster
.LBB5_11:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$238, %cx
	xorw	%di, %cx
	cmpw	$9402, %cx              # imm = 0x24BA
	jne	.LBB5_77
# %bb.12:                               # %LBM_initializeSpecialCellsForLDC.split170
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	movw	$9402, BasicBlockSignatureTracker # imm = 0x24BA
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %ecx
	jge	.LBB5_67
# %bb.13:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$480, %cx               # imm = 0x1E0
	cmpw	$9562, %cx              # imm = 0x255A
	jne	.LBB5_77
# %bb.14:                               # %LBM_initializeSpecialCellsForLDC.split172
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	movw	$9562, BasicBlockSignatureTracker # imm = 0x255A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	je	.LBB5_33
# %bb.15:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$993, %cx               # imm = 0x3E1
	cmpw	$9915, %cx              # imm = 0x26BB
	jne	.LBB5_77
# %bb.16:                               # %LBM_initializeSpecialCellsForLDC.split178
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	movw	$9915, BasicBlockSignatureTracker # imm = 0x26BB
	movw	$993, RunTimeSignatureAdjuster # imm = 0x3E1
	cmpl	$99, %ecx
	je	.LBB5_33
# %bb.17:                               # %Buffer__
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$28016, %cx             # imm = 0x6D70
	cmpw	$19403, %cx             # imm = 0x4BCB
	jne	.LBB5_77
# %bb.18:                               # %LBM_initializeSpecialCellsForLDC.split180
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$19403, BasicBlockSignatureTracker # imm = 0x4BCB
	movw	$28016, RunTimeSignatureAdjuster # imm = 0x6D70
# %bb.19:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$65, %cx
	xorw	%di, %cx
	cmpw	$9978, %cx              # imm = 0x26FA
	jne	.LBB5_77
# %bb.20:                               # %LBM_initializeSpecialCellsForLDC.split218
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rdx), %ecx
	movw	$9978, BasicBlockSignatureTracker # imm = 0x26FA
	movw	$928, RunTimeSignatureAdjuster # imm = 0x3A0
	cmpl	$0, %ecx
	je	.LBB5_33
# %bb.21:                               # %Buffer__1
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$3734, %cx              # imm = 0xE96
	cmpw	$10348, %cx             # imm = 0x286C
	jne	.LBB5_77
# %bb.22:                               # %LBM_initializeSpecialCellsForLDC.split182
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$10348, BasicBlockSignatureTracker # imm = 0x286C
	movw	$3734, RunTimeSignatureAdjuster # imm = 0xE96
# %bb.23:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$258, %cx               # imm = 0x102
	xorw	%di, %cx
	cmpw	$10232, %cx             # imm = 0x27F8
	jne	.LBB5_77
# %bb.24:                               # %LBM_initializeSpecialCellsForLDC.split220
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rdx), %ecx
	movw	$10232, BasicBlockSignatureTracker # imm = 0x27F8
	movw	$674, RunTimeSignatureAdjuster # imm = 0x2A2
	cmpl	$99, %ecx
	je	.LBB5_33
# %bb.25:                               # %Buffer__2
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-9475, %cx             # imm = 0xDAFD
	cmpw	$-763, %cx              # imm = 0xFD05
	jne	.LBB5_77
# %bb.26:                               # %LBM_initializeSpecialCellsForLDC.split184
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$-763, BasicBlockSignatureTracker # imm = 0xFD05
	movw	$-9475, RunTimeSignatureAdjuster # imm = 0xDAFD
# %bb.27:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3439, %cx              # imm = 0xD6F
	xorw	%di, %cx
	cmpw	$10903, %cx             # imm = 0x2A97
	jne	.LBB5_77
# %bb.28:                               # %LBM_initializeSpecialCellsForLDC.split222
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rsi), %ecx
	movw	$10903, BasicBlockSignatureTracker # imm = 0x2A97
	movw	$4045, RunTimeSignatureAdjuster # imm = 0xFCD
	cmpl	$0, %ecx
	je	.LBB5_33
# %bb.29:                               # %Buffer__3
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$16443, %cx             # imm = 0x403B
	cmpw	$27308, %cx             # imm = 0x6AAC
	jne	.LBB5_77
# %bb.30:                               # %LBM_initializeSpecialCellsForLDC.split186
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$27308, BasicBlockSignatureTracker # imm = 0x6AAC
	movw	$16443, RunTimeSignatureAdjuster # imm = 0x403B
# %bb.31:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$93, %cx
	xorw	%di, %cx
	cmpw	$10954, %cx             # imm = 0x2ACA
	jne	.LBB5_77
# %bb.32:                               # %LBM_initializeSpecialCellsForLDC.split224
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rsi), %ecx
	movw	$10954, BasicBlockSignatureTracker # imm = 0x2ACA
	movw	$3984, RunTimeSignatureAdjuster # imm = 0xF90
	cmpl	$129, %ecx
	jne	.LBB5_35
.LBB5_33:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3662, %cx              # imm = 0xE4E
	xorw	%di, %cx
	cmpw	$11028, %cx             # imm = 0x2B14
	jne	.LBB5_77
# %bb.34:                               # %LBM_initializeSpecialCellsForLDC.split176
                                        #   in Loop: Header=BB5_11 Depth=3
	movq	(%rax), %r11
	movl	(%r8), %edi
	imull	$100, (%rdx), %ecx
	addl	%ecx, %edi
	imull	$100, (%rsi), %ecx
	imull	$100, %ecx, %ecx
	addl	%ecx, %edi
	imull	$20, %edi, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %r11
	movq	%r11, (%r9)
	movq	(%r9), %rcx
	movl	(%rcx), %edi
	orl	$1, %edi
	movl	%edi, (%rcx)
	movw	$11028, BasicBlockSignatureTracker # imm = 0x2B14
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB5_63
.LBB5_35:                               # %Buffer__4
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-436, %cx              # imm = 0xFE4C
	cmpw	$-11130, %cx            # imm = 0xD486
	jne	.LBB5_77
# %bb.36:                               # %LBM_initializeSpecialCellsForLDC.split188
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$-11130, BasicBlockSignatureTracker # imm = 0xD486
	movw	$-436, RunTimeSignatureAdjuster # imm = 0xFE4C
# %bb.37:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1449, %cx              # imm = 0x5A9
	xorw	%di, %cx
	cmpw	$12131, %cx             # imm = 0x2F63
	jne	.LBB5_77
# %bb.38:                               # %LBM_initializeSpecialCellsForLDC.split226
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rsi), %ecx
	movw	$12131, BasicBlockSignatureTracker # imm = 0x2F63
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %ecx
	je	.LBB5_41
# %bb.39:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$7966, %cx              # imm = 0x1F1E
	cmpw	$12413, %cx             # imm = 0x307D
	jne	.LBB5_77
# %bb.40:                               # %LBM_initializeSpecialCellsForLDC.split194
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rsi), %ecx
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$7966, RunTimeSignatureAdjuster # imm = 0x1F1E
	cmpl	$128, %ecx
	jne	.LBB5_59
.LBB5_41:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$8128, %cx              # imm = 0x1FC0
	xorw	%di, %cx
	cmpw	$12451, %cx             # imm = 0x30A3
	jne	.LBB5_77
# %bb.42:                               # %LBM_initializeSpecialCellsForLDC.split192
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	movw	$12451, BasicBlockSignatureTracker # imm = 0x30A3
	movw	$222, RunTimeSignatureAdjuster
	cmpl	$1, %ecx
	jle	.LBB5_61
# %bb.43:                               # %Buffer__6
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-13688, %cx            # imm = 0xCA88
	cmpw	$-1493, %cx             # imm = 0xFA2B
	jne	.LBB5_77
# %bb.44:                               # %LBM_initializeSpecialCellsForLDC.split200
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$-1493, BasicBlockSignatureTracker # imm = 0xFA2B
	movw	$-13688, RunTimeSignatureAdjuster # imm = 0xCA88
# %bb.45:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$491, %cx               # imm = 0x1EB
	xorw	%di, %cx
	cmpw	$12616, %cx             # imm = 0x3148
	jne	.LBB5_77
# %bb.46:                               # %LBM_initializeSpecialCellsForLDC.split228
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	movw	$12616, BasicBlockSignatureTracker # imm = 0x3148
	movw	$309, RunTimeSignatureAdjuster # imm = 0x135
	cmpl	$98, %ecx
	jge	.LBB5_61
# %bb.47:                               # %Buffer__7
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-24350, %cx            # imm = 0xA0E2
	cmpw	$-28246, %cx            # imm = 0x91AA
	jne	.LBB5_77
# %bb.48:                               # %LBM_initializeSpecialCellsForLDC.split202
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$-28246, BasicBlockSignatureTracker # imm = 0x91AA
	movw	$-24350, RunTimeSignatureAdjuster # imm = 0xA0E2
# %bb.49:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1516, %cx              # imm = 0x5EC
	xorw	%di, %cx
	cmpw	$13476, %cx             # imm = 0x34A4
	jne	.LBB5_77
# %bb.50:                               # %LBM_initializeSpecialCellsForLDC.split230
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rdx), %ecx
	movw	$13476, BasicBlockSignatureTracker # imm = 0x34A4
	movw	$1241, RunTimeSignatureAdjuster # imm = 0x4D9
	cmpl	$1, %ecx
	jle	.LBB5_61
# %bb.51:                               # %Buffer__8
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$28094, %cx             # imm = 0x6DBE
	cmpw	$22810, %cx             # imm = 0x591A
	jne	.LBB5_77
# %bb.52:                               # %LBM_initializeSpecialCellsForLDC.split204
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$22810, BasicBlockSignatureTracker # imm = 0x591A
	movw	$28094, RunTimeSignatureAdjuster # imm = 0x6DBE
# %bb.53:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$335, %cx               # imm = 0x14F
	xorw	%di, %cx
	cmpw	$13803, %cx             # imm = 0x35EB
	jne	.LBB5_77
# %bb.54:                               # %LBM_initializeSpecialCellsForLDC.split232
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%rdx), %ecx
	movw	$13803, BasicBlockSignatureTracker # imm = 0x35EB
	movw	$1430, RunTimeSignatureAdjuster # imm = 0x596
	cmpl	$98, %ecx
	jge	.LBB5_61
# %bb.55:                               # %Buffer__9
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$24510, %cx             # imm = 0x5FBE
	cmpw	$27221, %cx             # imm = 0x6A55
	jne	.LBB5_77
# %bb.56:                               # %LBM_initializeSpecialCellsForLDC.split206
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$27221, BasicBlockSignatureTracker # imm = 0x6A55
	movw	$24510, RunTimeSignatureAdjuster # imm = 0x5FBE
# %bb.57:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$736, %cx               # imm = 0x2E0
	xorw	%di, %cx
	cmpw	$14091, %cx             # imm = 0x370B
	jne	.LBB5_77
# %bb.58:                               # %LBM_initializeSpecialCellsForLDC.split234
                                        #   in Loop: Header=BB5_11 Depth=3
	movq	(%rax), %r11
	movl	(%r8), %edi
	imull	$100, (%rdx), %ecx
	addl	%ecx, %edi
	imull	$100, (%rsi), %ecx
	imull	$100, %ecx, %ecx
	addl	%ecx, %edi
	imull	$20, %edi, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %r11
	movq	%r11, (%r10)
	movq	(%r10), %rcx
	movl	(%rcx), %edi
	orl	$2, %edi
	movl	%edi, (%rcx)
	movw	$14091, BasicBlockSignatureTracker # imm = 0x370B
	movw	$1910, RunTimeSignatureAdjuster # imm = 0x776
	jmp	.LBB5_61
.LBB5_59:                               # %Buffer__5
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-12708, %cx            # imm = 0xCE5C
	cmpw	$-479, %cx              # imm = 0xFE21
	jne	.LBB5_77
# %bb.60:                               # %LBM_initializeSpecialCellsForLDC.split196
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$-479, BasicBlockSignatureTracker # imm = 0xFE21
	movw	$-12708, RunTimeSignatureAdjuster # imm = 0xCE5C
.LBB5_61:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3300, %cx              # imm = 0xCE4
	xorw	%di, %cx
	cmpw	$15513, %cx             # imm = 0x3C99
	jne	.LBB5_77
# %bb.62:                               # %LBM_initializeSpecialCellsForLDC.split198
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$6029, RunTimeSignatureAdjuster # imm = 0x178D
.LBB5_63:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$5454, %cx              # imm = 0x154E
	xorw	%di, %cx
	cmpw	$15962, %cx             # imm = 0x3E5A
	jne	.LBB5_77
# %bb.64:                               # %LBM_initializeSpecialCellsForLDC.split190
                                        #   in Loop: Header=BB5_11 Depth=3
	movw	$15962, BasicBlockSignatureTracker # imm = 0x3E5A
	movw	$0, RunTimeSignatureAdjuster
# %bb.65:                               #   in Loop: Header=BB5_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$324, %cx               # imm = 0x144
	cmpw	$16158, %cx             # imm = 0x3F1E
	jne	.LBB5_77
# %bb.66:                               # %LBM_initializeSpecialCellsForLDC.split208
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	(%r8), %ecx
	addl	$1, %ecx
	movl	%ecx, (%r8)
	movw	$16158, BasicBlockSignatureTracker # imm = 0x3F1E
	movw	$6986, RunTimeSignatureAdjuster # imm = 0x1B4A
	jmp	.LBB5_11
.LBB5_67:                               #   in Loop: Header=BB5_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$7004, %cx              # imm = 0x1B5C
	cmpw	$16358, %cx             # imm = 0x3FE6
	jne	.LBB5_78
# %bb.68:                               # %LBM_initializeSpecialCellsForLDC.split174
                                        #   in Loop: Header=BB5_7 Depth=2
	movw	$16358, BasicBlockSignatureTracker # imm = 0x3FE6
	movw	$0, RunTimeSignatureAdjuster
# %bb.69:                               #   in Loop: Header=BB5_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$32627, %cx             # imm = 0x7F73
	cmpw	$16533, %cx             # imm = 0x4095
	jne	.LBB5_78
# %bb.70:                               # %LBM_initializeSpecialCellsForLDC.split210
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx)
	movw	$16533, BasicBlockSignatureTracker # imm = 0x4095
	movw	$25586, RunTimeSignatureAdjuster # imm = 0x63F2
	jmp	.LBB5_7
.LBB5_71:                               #   in Loop: Header=BB5_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$25405, %cx             # imm = 0x633D
	cmpw	$16635, %cx             # imm = 0x40FB
	jne	.LBB5_79
# %bb.72:                               # %LBM_initializeSpecialCellsForLDC.split168
                                        #   in Loop: Header=BB5_3 Depth=1
	movw	$16635, BasicBlockSignatureTracker # imm = 0x40FB
	movw	$0, RunTimeSignatureAdjuster
# %bb.73:                               #   in Loop: Header=BB5_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$265, %cx               # imm = 0x109
	cmpw	$16882, %cx             # imm = 0x41F2
	jne	.LBB5_79
# %bb.74:                               # %LBM_initializeSpecialCellsForLDC.split212
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	(%rsi), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rsi)
	movw	$16882, BasicBlockSignatureTracker # imm = 0x41F2
	movw	$25321, RunTimeSignatureAdjuster # imm = 0x62E9
	jmp	.LBB5_3
.LBB5_75:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$24999, %ax             # imm = 0x61A7
	cmpw	$17132, %ax             # imm = 0x42EC
	jne	.LBB5_80
# %bb.76:                               # %LBM_initializeSpecialCellsForLDC.split162
	movw	$17132, BasicBlockSignatureTracker # imm = 0x42EC
	movw	$-20675, RunTimeSignatureAdjuster # imm = 0xAF3D
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB5_77:                               # %CFerrorHandler.LBM_initializeSpecialCellsForLDC.loopexit
	jmp	.LBB5_80
.LBB5_78:                               # %CFerrorHandler.LBM_initializeSpecialCellsForLDC.loopexit1
	jmp	.LBB5_80
.LBB5_79:                               # %CFerrorHandler.LBM_initializeSpecialCellsForLDC.loopexit2
	jmp	.LBB5_80
.LBB5_80:                               # %CFerrorHandler.LBM_initializeSpecialCellsForLDC
	callq	FAULT_DETECTED_CFC
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
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-21757, %ax            # imm = 0xAB03
	xorw	%cx, %ax
	cmpw	$17767, %ax             # imm = 0x4567
	jne	.LBB6_58
# %bb.1:                                # %LBM_initializeSpecialCellsForChannel.split156
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-21757, %ax            # imm = 0xAB03
	xorw	%cx, %ax
	cmpw	$17767, %ax             # imm = 0x4567
	jne	.LBB6_58
# %bb.2:                                # %LBM_initializeSpecialCellsForChannel.split154
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rdi, (%rax)
	movl	$-2, (%rsi)
	movw	$17767, BasicBlockSignatureTracker # imm = 0x4567
	movw	$0, RunTimeSignatureAdjuster
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #       Child Loop BB6_11 Depth 3
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$635, %di               # imm = 0x27B
	xorw	%cx, %di
	cmpw	$18204, %di             # imm = 0x471C
	jne	.LBB6_57
# %bb.4:                                # %LBM_initializeSpecialCellsForChannel.split
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	(%rsi), %ecx
	movw	$18204, BasicBlockSignatureTracker # imm = 0x471C
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$132, %ecx
	jge	.LBB6_53
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$120, %cx
	cmpw	$18276, %cx             # imm = 0x4764
	jne	.LBB6_57
# %bb.6:                                # %LBM_initializeSpecialCellsForChannel.split110
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$0, (%rdx)
	movw	$18276, BasicBlockSignatureTracker # imm = 0x4764
	movw	$0, RunTimeSignatureAdjuster
.LBB6_7:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3966, %cx              # imm = 0xF7E
	xorw	%di, %cx
	cmpw	$18458, %cx             # imm = 0x481A
	jne	.LBB6_56
# %bb.8:                                # %LBM_initializeSpecialCellsForChannel.split114
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	(%rdx), %ecx
	movw	$18458, BasicBlockSignatureTracker # imm = 0x481A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %ecx
	jge	.LBB6_49
# %bb.9:                                #   in Loop: Header=BB6_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$105, %cx
	cmpw	$18547, %cx             # imm = 0x4873
	jne	.LBB6_56
# %bb.10:                               # %LBM_initializeSpecialCellsForChannel.split116
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	$0, (%r8)
	movw	$18547, BasicBlockSignatureTracker # imm = 0x4873
	movw	$0, RunTimeSignatureAdjuster
.LBB6_11:                               #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$696, %cx               # imm = 0x2B8
	xorw	%di, %cx
	cmpw	$19147, %cx             # imm = 0x4ACB
	jne	.LBB6_55
# %bb.12:                               # %LBM_initializeSpecialCellsForChannel.split120
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%r8), %ecx
	movw	$19147, BasicBlockSignatureTracker # imm = 0x4ACB
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %ecx
	jge	.LBB6_45
# %bb.13:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$23, %cx
	cmpw	$19164, %cx             # imm = 0x4ADC
	jne	.LBB6_55
# %bb.14:                               # %LBM_initializeSpecialCellsForChannel.split122
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%r8), %ecx
	movw	$19164, BasicBlockSignatureTracker # imm = 0x4ADC
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	je	.LBB6_25
# %bb.15:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1270, %cx              # imm = 0x4F6
	cmpw	$20010, %cx             # imm = 0x4E2A
	jne	.LBB6_55
# %bb.16:                               # %LBM_initializeSpecialCellsForChannel.split128
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%r8), %ecx
	movw	$20010, BasicBlockSignatureTracker # imm = 0x4E2A
	movw	$1270, RunTimeSignatureAdjuster # imm = 0x4F6
	cmpl	$99, %ecx
	je	.LBB6_25
# %bb.17:                               # %Buffer__
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-7032, %cx             # imm = 0xE488
	cmpw	$-21854, %cx            # imm = 0xAAA2
	jne	.LBB6_55
# %bb.18:                               # %LBM_initializeSpecialCellsForChannel.split130
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$-21854, BasicBlockSignatureTracker # imm = 0xAAA2
	movw	$-7032, RunTimeSignatureAdjuster # imm = 0xE488
# %bb.19:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$401, %cx               # imm = 0x191
	xorw	%di, %cx
	cmpw	$20411, %cx             # imm = 0x4FBB
	jne	.LBB6_55
# %bb.20:                               # %LBM_initializeSpecialCellsForChannel.split158
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%rdx), %ecx
	movw	$20411, BasicBlockSignatureTracker # imm = 0x4FBB
	movw	$1383, RunTimeSignatureAdjuster # imm = 0x567
	cmpl	$0, %ecx
	je	.LBB6_25
# %bb.21:                               # %Buffer__1
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-15867, %cx            # imm = 0xC205
	cmpw	$-29250, %cx            # imm = 0x8DBE
	jne	.LBB6_55
# %bb.22:                               # %LBM_initializeSpecialCellsForChannel.split132
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$-29250, BasicBlockSignatureTracker # imm = 0x8DBE
	movw	$-15867, RunTimeSignatureAdjuster # imm = 0xC205
# %bb.23:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$8118, %cx              # imm = 0x1FB6
	xorw	%di, %cx
	cmpw	$20493, %cx             # imm = 0x500D
	jne	.LBB6_55
# %bb.24:                               # %LBM_initializeSpecialCellsForChannel.split160
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%rdx), %ecx
	movw	$20493, BasicBlockSignatureTracker # imm = 0x500D
	movw	$6865, RunTimeSignatureAdjuster # imm = 0x1AD1
	cmpl	$99, %ecx
	jne	.LBB6_39
.LBB6_25:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$6767, %cx              # imm = 0x1A6F
	xorw	%di, %cx
	cmpw	$20659, %cx             # imm = 0x50B3
	jne	.LBB6_55
# %bb.26:                               # %LBM_initializeSpecialCellsForChannel.split126
                                        #   in Loop: Header=BB6_11 Depth=3
	movq	(%rax), %r11
	movl	(%r8), %edi
	imull	$100, (%rdx), %ecx
	addl	%ecx, %edi
	imull	$100, (%rsi), %ecx
	imull	$100, %ecx, %ecx
	addl	%ecx, %edi
	imull	$20, %edi, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %r11
	movq	%r11, (%r9)
	movq	(%r9), %rcx
	movl	(%rcx), %edi
	orl	$1, %edi
	movl	%edi, (%rcx)
	movl	(%rsi), %ecx
	movw	$20659, BasicBlockSignatureTracker # imm = 0x50B3
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	je	.LBB6_29
# %bb.27:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1286, %cx              # imm = 0x506
	cmpw	$21941, %cx             # imm = 0x55B5
	jne	.LBB6_55
# %bb.28:                               # %LBM_initializeSpecialCellsForChannel.split138
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%rsi), %ecx
	movw	$21941, BasicBlockSignatureTracker # imm = 0x55B5
	movw	$1286, RunTimeSignatureAdjuster # imm = 0x506
	cmpl	$129, %ecx
	jne	.LBB6_35
.LBB6_29:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1832, %cx              # imm = 0x728
	xorw	%di, %cx
	cmpw	$22427, %cx             # imm = 0x579B
	jne	.LBB6_55
# %bb.30:                               # %LBM_initializeSpecialCellsForChannel.split136
                                        #   in Loop: Header=BB6_11 Depth=3
	movq	(%rax), %r11
	movl	(%r8), %edi
	imull	$100, (%rdx), %ecx
	addl	%ecx, %edi
	imull	$100, (%rsi), %ecx
	imull	$100, %ecx, %ecx
	addl	%ecx, %edi
	imull	$20, %edi, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movl	(%r11,%rcx,8), %ecx
	andl	$1, %ecx
	movw	$22427, BasicBlockSignatureTracker # imm = 0x579B
	movw	$558, RunTimeSignatureAdjuster # imm = 0x22E
	cmpl	$0, %ecx
	jne	.LBB6_37
# %bb.31:                               # %Buffer__4
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-19224, %cx            # imm = 0xB4E8
	cmpw	$-7309, %cx             # imm = 0xE373
	jne	.LBB6_55
# %bb.32:                               # %LBM_initializeSpecialCellsForChannel.split144
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$-7309, BasicBlockSignatureTracker # imm = 0xE373
	movw	$-19224, RunTimeSignatureAdjuster # imm = 0xB4E8
# %bb.33:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$42, %cx
	xorw	%di, %cx
	cmpw	$22449, %cx             # imm = 0x57B1
	jne	.LBB6_55
# %bb.34:                               # %LBM_initializeSpecialCellsForChannel.split162
                                        #   in Loop: Header=BB6_11 Depth=3
	movq	(%rax), %r11
	movl	(%r8), %edi
	imull	$100, (%rdx), %ecx
	addl	%ecx, %edi
	imull	$100, (%rsi), %ecx
	imull	$100, %ecx, %ecx
	addl	%ecx, %edi
	imull	$20, %edi, %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %r11
	movq	%r11, (%r10)
	movq	(%r10), %rcx
	movl	(%rcx), %edi
	orl	$4, %edi
	movl	%edi, (%rcx)
	movw	$22449, BasicBlockSignatureTracker # imm = 0x57B1
	movw	$516, RunTimeSignatureAdjuster # imm = 0x204
	jmp	.LBB6_37
.LBB6_35:                               # %Buffer__3
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$29696, %cx             # imm = 0x7400
	cmpw	$8629, %cx              # imm = 0x21B5
	jne	.LBB6_55
# %bb.36:                               # %LBM_initializeSpecialCellsForChannel.split140
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$8629, BasicBlockSignatureTracker # imm = 0x21B5
	movw	$29696, RunTimeSignatureAdjuster # imm = 0x7400
.LBB6_37:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3561, %cx              # imm = 0xDE9
	xorw	%di, %cx
	cmpw	$22620, %cx             # imm = 0x585C
	jne	.LBB6_55
# %bb.38:                               # %LBM_initializeSpecialCellsForChannel.split142
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$22620, BasicBlockSignatureTracker # imm = 0x585C
	movw	$2129, RunTimeSignatureAdjuster # imm = 0x851
	jmp	.LBB6_41
.LBB6_39:                               # %Buffer__2
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-17283, %cx            # imm = 0xBC7D
	cmpw	$-5008, %cx             # imm = 0xEC70
	jne	.LBB6_55
# %bb.40:                               # %LBM_initializeSpecialCellsForChannel.split134
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$-5008, BasicBlockSignatureTracker # imm = 0xEC70
	movw	$-17283, RunTimeSignatureAdjuster # imm = 0xBC7D
.LBB6_41:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$2231, %cx              # imm = 0x8B7
	xorw	%di, %cx
	cmpw	$22714, %cx             # imm = 0x58BA
	jne	.LBB6_55
# %bb.42:                               # %LBM_initializeSpecialCellsForChannel.split146
                                        #   in Loop: Header=BB6_11 Depth=3
	movw	$22714, BasicBlockSignatureTracker # imm = 0x58BA
	movw	$0, RunTimeSignatureAdjuster
# %bb.43:                               #   in Loop: Header=BB6_11 Depth=3
	movw	BasicBlockSignatureTracker, %cx
	xorw	$86, %cx
	cmpw	$22764, %cx             # imm = 0x58EC
	jne	.LBB6_55
# %bb.44:                               # %LBM_initializeSpecialCellsForChannel.split148
                                        #   in Loop: Header=BB6_11 Depth=3
	movl	(%r8), %ecx
	addl	$1, %ecx
	movl	%ecx, (%r8)
	movw	$22764, BasicBlockSignatureTracker # imm = 0x58EC
	movw	$4255, RunTimeSignatureAdjuster # imm = 0x109F
	jmp	.LBB6_11
.LBB6_45:                               #   in Loop: Header=BB6_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$4887, %cx              # imm = 0x1317
	cmpw	$23004, %cx             # imm = 0x59DC
	jne	.LBB6_56
# %bb.46:                               # %LBM_initializeSpecialCellsForChannel.split124
                                        #   in Loop: Header=BB6_7 Depth=2
	movw	$23004, BasicBlockSignatureTracker # imm = 0x59DC
	movw	$0, RunTimeSignatureAdjuster
# %bb.47:                               #   in Loop: Header=BB6_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$821, %cx               # imm = 0x335
	cmpw	$23273, %cx             # imm = 0x5AE9
	jne	.LBB6_56
# %bb.48:                               # %LBM_initializeSpecialCellsForChannel.split150
                                        #   in Loop: Header=BB6_7 Depth=2
	movl	(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx)
	movw	$23273, BasicBlockSignatureTracker # imm = 0x5AE9
	movw	$7565, RunTimeSignatureAdjuster # imm = 0x1D8D
	jmp	.LBB6_7
.LBB6_49:                               #   in Loop: Header=BB6_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$4834, %cx              # imm = 0x12E2
	cmpw	$23288, %cx             # imm = 0x5AF8
	jne	.LBB6_57
# %bb.50:                               # %LBM_initializeSpecialCellsForChannel.split118
                                        #   in Loop: Header=BB6_3 Depth=1
	movw	$23288, BasicBlockSignatureTracker # imm = 0x5AF8
	movw	$0, RunTimeSignatureAdjuster
# %bb.51:                               #   in Loop: Header=BB6_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$300, %cx               # imm = 0x12C
	cmpw	$23508, %cx             # imm = 0x5BD4
	jne	.LBB6_57
# %bb.52:                               # %LBM_initializeSpecialCellsForChannel.split152
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	(%rsi), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rsi)
	movw	$23508, BasicBlockSignatureTracker # imm = 0x5BD4
	movw	$7859, RunTimeSignatureAdjuster # imm = 0x1EB3
	jmp	.LBB6_3
.LBB6_53:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6993, %ax              # imm = 0x1B51
	cmpw	$23629, %ax             # imm = 0x5C4D
	jne	.LBB6_58
# %bb.54:                               # %LBM_initializeSpecialCellsForChannel.split112
	movw	$23629, BasicBlockSignatureTracker # imm = 0x5C4D
	movw	$-20068, RunTimeSignatureAdjuster # imm = 0xB19C
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB6_55:                               # %CFerrorHandler.LBM_initializeSpecialCellsForChannel.loopexit
	jmp	.LBB6_58
.LBB6_56:                               # %CFerrorHandler.LBM_initializeSpecialCellsForChannel.loopexit1
	jmp	.LBB6_58
.LBB6_57:                               # %CFerrorHandler.LBM_initializeSpecialCellsForChannel.loopexit2
	jmp	.LBB6_58
.LBB6_58:                               # %CFerrorHandler.LBM_initializeSpecialCellsForChannel
	callq	FAULT_DETECTED_CFC
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-29094, %ax            # imm = 0x8E5A
	xorw	%cx, %ax
	cmpw	$23843, %ax             # imm = 0x5D23
	jne	.LBB7_19
# %bb.1:                                # %LBM_performStreamCollide.split47
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%rcx)
	movl	$0, (%rdx)
	movw	$23843, BasicBlockSignatureTracker # imm = 0x5D23
	movw	$0, RunTimeSignatureAdjuster
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %si
	movw	RunTimeSignatureAdjuster, %di
	xorw	$17, %si
	xorw	%di, %si
	cmpw	$23858, %si             # imm = 0x5D32
	jne	.LBB7_18
# %bb.3:                                # %LBM_performStreamCollide.split
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	(%rdx), %esi
	movw	$23858, BasicBlockSignatureTracker # imm = 0x5D32
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$26000000, %esi         # imm = 0x18CBA80
	jge	.LBB7_16
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$142, %si
	cmpw	$23996, %si             # imm = 0x5DBC
	jne	.LBB7_18
# %bb.5:                                # %LBM_performStreamCollide.split33
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$19, %edi
	movslq	%edi, %rdi
	movl	(%rsi,%rdi,8), %esi
	andl	$1, %esi
	movw	$23996, BasicBlockSignatureTracker # imm = 0x5DBC
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %esi
	je	.LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$83, %si
	cmpw	$24047, %si             # imm = 0x5DEF
	jne	.LBB7_18
# %bb.7:                                # %LBM_performStreamCollide.split37
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965298, %edi       # imm = 0xFFFFF832
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$2001, %edi             # imm = 0x7D1
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294967280, %edi       # imm = 0xFFFFFFF0
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$23, %edi
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767302, %edi       # imm = 0xFFFCF2C6
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$200005, %edi           # imm = 0x30D45
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965286, %edi       # imm = 0xFFFFF826
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965325, %edi       # imm = 0xFFFFF84D
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$1988, %edi             # imm = 0x7C4
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$2027, %edi             # imm = 0x7EB
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294765310, %edi       # imm = 0xFFFCEAFE
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$198013, %edi           # imm = 0x3057D
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294769308, %edi       # imm = 0xFFFCFA9C
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$202011, %edi           # imm = 0x3151B
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767294, %edi       # imm = 0xFFFCF2BE
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$199997, %edi           # imm = 0x30D3D
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767332, %edi       # imm = 0xFFFCF2E4
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$200035, %edi           # imm = 0x30D63
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movw	$24047, BasicBlockSignatureTracker # imm = 0x5DEF
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB7_14
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$935, %si               # imm = 0x3A7
	cmpw	$24091, %si             # imm = 0x5E1B
	jne	.LBB7_18
# %bb.9:                                # %LBM_performStreamCollide.split39
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movsd	%xmm0, (%rbx)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movsd	%xmm0, (%r8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movsd	%xmm0, (%r9)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movsd	(%rsi,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	addsd	(%rsi,%rdi,8), %xmm0
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	subsd	(%rsi,%rdi,8), %xmm0
	movsd	%xmm0, (%r10)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r8), %xmm1            # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r8)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r9), %xmm1            # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r9)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r10), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$19, %edi
	movslq	%edi, %rdi
	movl	(%rsi,%rdi,8), %esi
	andl	$2, %esi
	movw	$24091, BasicBlockSignatureTracker # imm = 0x5E1B
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %esi
	je	.LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	xorw	$282, %si               # imm = 0x11A
	cmpw	$24321, %si             # imm = 0x5F01
	jne	.LBB7_18
# %bb.11:                               # %LBM_performStreamCollide.split43
                                        #   in Loop: Header=BB7_2 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm2, (%r8)
	movsd	%xmm1, (%r9)
	movsd	%xmm0, (%r10)
	movw	$24321, BasicBlockSignatureTracker # imm = 0x5F01
	movw	$282, RunTimeSignatureAdjuster # imm = 0x11A
.LBB7_12:                               #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	movw	RunTimeSignatureAdjuster, %di
	xorw	$16190, %si             # imm = 0x3F3E
	xorw	%di, %si
	cmpw	$24869, %si             # imm = 0x6125
	jne	.LBB7_18
# %bb.13:                               # %LBM_performStreamCollide.split45
                                        #   in Loop: Header=BB7_2 Depth=1
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI7_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movabsq	$-9223372036854775808, %r14 # imm = 0x8000000000000000
	movsd	.LCPI7_5(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI7_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_7(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI7_8(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI7_9(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	(%r8), %xmm2            # xmm2 = mem[0],zero
	mulsd	(%r8), %xmm2
	movsd	(%r9), %xmm4            # xmm4 = mem[0],zero
	mulsd	(%r9), %xmm4
	addsd	%xmm4, %xmm2
	movsd	(%r10), %xmm4           # xmm4 = mem[0],zero
	mulsd	(%r10), %xmm4
	addsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm7
	movsd	%xmm7, (%r11)
	movq	(%rax), %rdi
	movl	(%rdx), %esi
	addl	$0, %esi
	movslq	%esi, %rsi
	movaps	%xmm0, %xmm2
	mulsd	(%rdi,%rsi,8), %xmm2
	mulsd	(%rbx), %xmm6
	movaps	%xmm1, %xmm4
	subsd	(%r11), %xmm4
	mulsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	(%r9), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r11), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$2001, %edi             # imm = 0x7D1
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	(%r9), %xmm7
	subsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r11), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965298, %edi       # imm = 0xFFFFF832
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	(%r8), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r11), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$23, %edi
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	(%r8), %xmm7
	subsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r11), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294967280, %edi       # imm = 0xFFFFFFF0
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm5, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r10), %xmm6           # xmm6 = mem[0],zero
	movaps	%xmm3, %xmm7
	mulsd	(%r10), %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r11), %xmm7
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$200005, %edi           # imm = 0x30D45
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	mulsd	(%rbx), %xmm5
	movsd	(%r10), %xmm4           # xmm4 = mem[0],zero
	movaps	%xmm3, %xmm6
	mulsd	(%r10), %xmm6
	subsd	%xmm9, %xmm6
	mulsd	%xmm6, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm5
	addsd	%xmm5, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767302, %edi       # imm = 0xFFFCF2C6
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%r9), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$2027, %edi             # imm = 0x7EB
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm5
	mulsd	(%rsi,%rdi,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	(%rbx), %xmm2
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	addsd	(%r9), %xmm4
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm6
	addsd	(%r9), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$1988, %edi             # imm = 0x7C4
	movslq	%edi, %rdi
	movsd	%xmm5, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%r9), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965325, %edi       # imm = 0xFFFFF84D
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm5
	mulsd	(%rsi,%rdi,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	(%rbx), %xmm2
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	subsd	(%r9), %xmm4
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm6
	subsd	(%r9), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294965286, %edi       # imm = 0xFFFFF826
	movslq	%edi, %rdi
	movsd	%xmm5, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	addsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	addsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$202011, %edi           # imm = 0x3151B
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	subsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	subsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294769308, %edi       # imm = 0xFFFCFA9C
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm5
	mulsd	(%rsi,%rdi,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	(%rbx), %xmm2
	movsd	(%r9), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	addsd	(%r10), %xmm4
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm6
	addsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$198013, %edi           # imm = 0x3057D
	movslq	%edi, %rdi
	movsd	%xmm5, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm5
	mulsd	(%rsi,%rdi,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	(%rbx), %xmm2
	movsd	(%r9), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	subsd	(%r10), %xmm4
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm6
	subsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294765310, %edi       # imm = 0xFFFCEAFE
	movslq	%edi, %rdi
	movsd	%xmm5, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$200035, %edi           # imm = 0x30D63
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm2
	mulsd	(%rsi,%rdi,8), %xmm2
	movaps	%xmm8, %xmm4
	mulsd	(%rbx), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm2
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767332, %edi       # imm = 0xFFFCF2E4
	movslq	%edi, %rdi
	movsd	%xmm2, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	movaps	%xmm0, %xmm5
	mulsd	(%rsi,%rdi,8), %xmm5
	movaps	%xmm8, %xmm2
	mulsd	(%rbx), %xmm2
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	addsd	(%r10), %xmm4
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm6
	addsd	(%r10), %xmm6
	movaps	%xmm3, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm9, %xmm7
	mulsd	%xmm7, %xmm4
	movaps	%xmm1, %xmm6
	addsd	%xmm4, %xmm6
	subsd	(%r11), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm5
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$199997, %edi           # imm = 0x30D3D
	movslq	%edi, %rdi
	movsd	%xmm5, (%rsi,%rdi,8)
	movq	(%rax), %rsi
	movl	(%rdx), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	mulsd	(%rsi,%rdi,8), %xmm0
	mulsd	(%rbx), %xmm8
	movsd	(%r8), %xmm2            # xmm2 = mem[0],zero
	movq	%xmm2, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm2
	subsd	(%r10), %xmm2
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rsi
	xorq	%r14, %rsi
	movq	%rsi, %xmm4
	subsd	(%r10), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm9, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	subsd	(%r11), %xmm1
	mulsd	%xmm1, %xmm8
	addsd	%xmm8, %xmm0
	movq	(%rcx), %rsi
	movl	(%rdx), %edi
	addl	$4294767294, %edi       # imm = 0xFFFCF2BE
	movslq	%edi, %rdi
	movsd	%xmm0, (%rsi,%rdi,8)
	movw	$24869, BasicBlockSignatureTracker # imm = 0x6125
	movw	$15562, RunTimeSignatureAdjuster # imm = 0x3CCA
.LBB7_14:                               #   in Loop: Header=BB7_2 Depth=1
	movw	BasicBlockSignatureTracker, %si
	movw	RunTimeSignatureAdjuster, %di
	xorw	$16173, %si             # imm = 0x3F2D
	xorw	%di, %si
	cmpw	$25282, %si             # imm = 0x62C2
	jne	.LBB7_18
# %bb.15:                               # %LBM_performStreamCollide.split41
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	(%rdx), %esi
	addl	$20, %esi
	movl	%esi, (%rdx)
	movw	$25282, BasicBlockSignatureTracker # imm = 0x62C2
	movw	$16353, RunTimeSignatureAdjuster # imm = 0x3FE1
	jmp	.LBB7_2
.LBB7_16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$14407, %ax             # imm = 0x3847
	cmpw	$25973, %ax             # imm = 0x6575
	jne	.LBB7_19
# %bb.17:                               # %LBM_performStreamCollide.split35
	movw	$25973, BasicBlockSignatureTracker # imm = 0x6575
	movw	$-19016, RunTimeSignatureAdjuster # imm = 0xB5B8
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB7_18:                               # %CFerrorHandler.LBM_performStreamCollide.loopexit
	jmp	.LBB7_19
.LBB7_19:                               # %CFerrorHandler.LBM_performStreamCollide
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-23712, %ax            # imm = 0xA360
	xorw	%cx, %ax
	cmpw	$28683, %ax             # imm = 0x700B
	jne	.LBB8_20
# %bb.1:                                # %LBM_handleInOutFlow.split45
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rdi, (%rcx)
	movl	$0, (%r12)
	movw	$28683, BasicBlockSignatureTracker # imm = 0x700B
	movw	$0, RunTimeSignatureAdjuster
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$34, %ax
	xorw	%dx, %ax
	cmpw	$28713, %ax             # imm = 0x7029
	jne	.LBB8_19
# %bb.3:                                # %LBM_handleInOutFlow.split
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	(%r12), %eax
	movw	$28713, BasicBlockSignatureTracker # imm = 0x7029
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$200000, %eax           # imm = 0x30D40
	jge	.LBB8_8
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$18, %ax
	cmpw	$28731, %ax             # imm = 0x703B
	jne	.LBB8_19
# %bb.5:                                # %LBM_handleInOutFlow.split31
                                        #   in Loop: Header=BB8_2 Depth=1
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI8_5(%rip), %xmm11  # xmm11 = mem[0],zero
	movsd	.LCPI8_6(%rip), %xmm10  # xmm10 = mem[0],zero
	movsd	.LCPI8_8(%rip), %xmm7   # xmm7 = mem[0],zero
	xorps	%xmm8, %xmm8
	movsd	.LCPI8_9(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI8_7(%rip), %xmm6   # xmm6 = mem[0],zero
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200000, %edx           # imm = 0x30D40
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200001, %edx           # imm = 0x30D41
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200002, %edx           # imm = 0x30D42
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200003, %edx           # imm = 0x30D43
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200004, %edx           # imm = 0x30D44
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200005, %edx           # imm = 0x30D45
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200006, %edx           # imm = 0x30D46
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200007, %edx           # imm = 0x30D47
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200008, %edx           # imm = 0x30D48
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200009, %edx           # imm = 0x30D49
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200010, %edx           # imm = 0x30D4A
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200011, %edx           # imm = 0x30D4B
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200012, %edx           # imm = 0x30D4C
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200013, %edx           # imm = 0x30D4D
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200014, %edx           # imm = 0x30D4E
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200015, %edx           # imm = 0x30D4F
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200016, %edx           # imm = 0x30D50
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200017, %edx           # imm = 0x30D51
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$200018, %edx           # imm = 0x30D52
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movsd	%xmm5, (%r14)
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400000, %edx           # imm = 0x61A80
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400001, %edx           # imm = 0x61A81
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400002, %edx           # imm = 0x61A82
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400003, %edx           # imm = 0x61A83
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400004, %edx           # imm = 0x61A84
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400005, %edx           # imm = 0x61A85
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400006, %edx           # imm = 0x61A86
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400007, %edx           # imm = 0x61A87
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400008, %edx           # imm = 0x61A88
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400009, %edx           # imm = 0x61A89
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400010, %edx           # imm = 0x61A8A
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400011, %edx           # imm = 0x61A8B
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400012, %edx           # imm = 0x61A8C
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400013, %edx           # imm = 0x61A8D
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400014, %edx           # imm = 0x61A8E
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400015, %edx           # imm = 0x61A8F
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400016, %edx           # imm = 0x61A90
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400017, %edx           # imm = 0x61A91
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$400018, %edx           # imm = 0x61A92
	movslq	%edx, %rdx
	addsd	(%rax,%rdx,8), %xmm5
	movsd	%xmm5, (%rbx)
	movq	%r14, -72(%rbp)         # 8-byte Spill
	mulsd	(%r14), %xmm6
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	subsd	(%rbx), %xmm6
	movsd	%xmm6, (%r10)
	movl	(%r12), %eax
	cltd
	movl	$20, %r14d
	idivl	%r14d
	cltd
	movl	$100, %ebx
	idivl	%ebx
	cvtsi2sdl	%edx, %xmm5
	divsd	%xmm9, %xmm5
	subsd	%xmm1, %xmm5
	movsd	%xmm5, (%r13)
	movl	(%r12), %eax
	cltd
	idivl	%r14d
	cltd
	idivl	%ebx
	movl	$100, %ebx
	cltd
	idivl	%ebx
	cvtsi2sdl	%edx, %xmm5
	divsd	%xmm9, %xmm5
	subsd	%xmm1, %xmm5
	movsd	%xmm5, (%r11)
	movsd	%xmm8, (%r8)
	movsd	%xmm8, (%r9)
	movsd	(%r13), %xmm5           # xmm5 = mem[0],zero
	mulsd	(%r13), %xmm5
	movaps	%xmm1, %xmm6
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm7
	movsd	(%r11), %xmm5           # xmm5 = mem[0],zero
	mulsd	(%r11), %xmm5
	movaps	%xmm1, %xmm6
	subsd	%xmm5, %xmm6
	mulsd	%xmm6, %xmm7
	movsd	%xmm7, (%rsi)
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	mulsd	(%r8), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	mulsd	(%r9), %xmm6
	addsd	%xmm6, %xmm5
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	mulsd	(%rsi), %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm5, %xmm10
	movsd	%xmm10, (%r15)
	mulsd	(%r10), %xmm11
	movaps	%xmm1, %xmm5
	subsd	(%r15), %xmm5
	mulsd	%xmm5, %xmm11
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movsd	%xmm11, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r9), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r9), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r8), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r8), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%rsi), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movsd	%xmm5, (%rax,%rdx,8)
	mulsd	(%r10), %xmm4
	movsd	(%rsi), %xmm5           # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	(%rsi), %xmm6
	subsd	%xmm3, %xmm6
	mulsd	%xmm6, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	addsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm6
	addsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	subsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm6
	subsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	addsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	subsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	addsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm6
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	subsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm6
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	addsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm6
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movsd	%xmm4, (%rax,%rdx,8)
	mulsd	(%r10), %xmm0
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm4
	subsd	(%rsi), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rax
	xorq	%rdi, %rax
	movq	%rax, %xmm5
	subsd	(%rsi), %xmm5
	mulsd	%xmm5, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm1
	subsd	(%r15), %xmm1
	mulsd	%xmm1, %xmm0
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$18, %edx
	movslq	%edx, %rdx
	movsd	%xmm0, (%rax,%rdx,8)
	movw	$28731, BasicBlockSignatureTracker # imm = 0x703B
	movw	$0, RunTimeSignatureAdjuster
# %bb.6:                                #   in Loop: Header=BB8_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$165, %ax
	cmpw	$28830, %ax             # imm = 0x709E
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jne	.LBB8_19
# %bb.7:                                # %LBM_handleInOutFlow.split35
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	(%r12), %eax
	addl	$20, %eax
	movl	%eax, (%r12)
	movw	$28830, BasicBlockSignatureTracker # imm = 0x709E
	movw	$149, RunTimeSignatureAdjuster
	jmp	.LBB8_2
.LBB8_8:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$586, %ax               # imm = 0x24A
	cmpw	$29283, %ax             # imm = 0x7263
	jne	.LBB8_20
# %bb.9:                                # %LBM_handleInOutFlow.split33
	movl	$25800000, (%r12)       # imm = 0x189AD40
	movw	$29283, BasicBlockSignatureTracker # imm = 0x7263
	movw	$0, RunTimeSignatureAdjuster
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$1272, %ax              # imm = 0x4F8
	xorw	%dx, %ax
	cmpw	$30363, %ax             # imm = 0x769B
	jne	.LBB8_18
# %bb.11:                               # %LBM_handleInOutFlow.split37
                                        #   in Loop: Header=BB8_10 Depth=1
	movl	(%r12), %eax
	movw	$30363, BasicBlockSignatureTracker # imm = 0x769B
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$26000000, %eax         # imm = 0x18CBA80
	jge	.LBB8_16
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$392, %ax               # imm = 0x188
	cmpw	$30483, %ax             # imm = 0x7713
	jne	.LBB8_18
# %bb.13:                               # %LBM_handleInOutFlow.split39
                                        #   in Loop: Header=BB8_10 Depth=1
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_4(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI8_5(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI8_6(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI8_7(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767296, %edi       # imm = 0xFFFCF2C0
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767297, %edi       # imm = 0xFFFCF2C1
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767298, %edi       # imm = 0xFFFCF2C2
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767299, %edi       # imm = 0xFFFCF2C3
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767300, %edi       # imm = 0xFFFCF2C4
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767301, %edi       # imm = 0xFFFCF2C5
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767302, %edi       # imm = 0xFFFCF2C6
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767303, %edi       # imm = 0xFFFCF2C7
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767304, %edi       # imm = 0xFFFCF2C8
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767305, %edi       # imm = 0xFFFCF2C9
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767306, %edi       # imm = 0xFFFCF2CA
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767307, %edi       # imm = 0xFFFCF2CB
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767308, %edi       # imm = 0xFFFCF2CC
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767309, %edi       # imm = 0xFFFCF2CD
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767310, %edi       # imm = 0xFFFCF2CE
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767311, %edi       # imm = 0xFFFCF2CF
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767312, %edi       # imm = 0xFFFCF2D0
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767313, %edi       # imm = 0xFFFCF2D1
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767314, %edi       # imm = 0xFFFCF2D2
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movsd	%xmm6, (%r14)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767299, %edi       # imm = 0xFFFCF2C3
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767300, %edi       # imm = 0xFFFCF2C4
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767303, %edi       # imm = 0xFFFCF2C7
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767304, %edi       # imm = 0xFFFCF2C8
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767305, %edi       # imm = 0xFFFCF2C9
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767306, %edi       # imm = 0xFFFCF2CA
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767311, %edi       # imm = 0xFFFCF2CF
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767312, %edi       # imm = 0xFFFCF2D0
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767313, %edi       # imm = 0xFFFCF2D1
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767314, %edi       # imm = 0xFFFCF2D2
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsd	%xmm6, (%rax)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767297, %edi       # imm = 0xFFFCF2C1
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767298, %edi       # imm = 0xFFFCF2C2
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767303, %edi       # imm = 0xFFFCF2C7
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767304, %edi       # imm = 0xFFFCF2C8
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767305, %edi       # imm = 0xFFFCF2C9
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767306, %edi       # imm = 0xFFFCF2CA
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767307, %edi       # imm = 0xFFFCF2CB
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767308, %edi       # imm = 0xFFFCF2CC
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767309, %edi       # imm = 0xFFFCF2CD
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767310, %edi       # imm = 0xFFFCF2CE
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-48(%rbp), %r11         # 8-byte Reload
	movsd	%xmm6, (%r11)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767301, %edi       # imm = 0xFFFCF2C5
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767302, %edi       # imm = 0xFFFCF2C6
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767307, %edi       # imm = 0xFFFCF2CB
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767308, %edi       # imm = 0xFFFCF2CC
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767309, %edi       # imm = 0xFFFCF2CD
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767310, %edi       # imm = 0xFFFCF2CE
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767311, %edi       # imm = 0xFFFCF2CF
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767312, %edi       # imm = 0xFFFCF2D0
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767313, %edi       # imm = 0xFFFCF2D1
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294767314, %edi       # imm = 0xFFFCF2D2
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-104(%rbp), %r13        # 8-byte Reload
	movsd	%xmm6, (%r13)
	movsd	(%r14), %xmm6           # xmm6 = mem[0],zero
	movsd	(%rax), %xmm5           # xmm5 = mem[0],zero
	divsd	%xmm6, %xmm5
	movsd	%xmm5, (%rax)
	movsd	(%r14), %xmm5           # xmm5 = mem[0],zero
	movsd	(%r11), %xmm6           # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, (%r11)
	movsd	(%r14), %xmm5           # xmm5 = mem[0],zero
	movsd	(%r13), %xmm6           # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, (%r13)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567296, %edi       # imm = 0xFFF9E580
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567297, %edi       # imm = 0xFFF9E581
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567298, %edi       # imm = 0xFFF9E582
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567299, %edi       # imm = 0xFFF9E583
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567300, %edi       # imm = 0xFFF9E584
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567301, %edi       # imm = 0xFFF9E585
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567302, %edi       # imm = 0xFFF9E586
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567303, %edi       # imm = 0xFFF9E587
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567304, %edi       # imm = 0xFFF9E588
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567305, %edi       # imm = 0xFFF9E589
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567306, %edi       # imm = 0xFFF9E58A
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567307, %edi       # imm = 0xFFF9E58B
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567308, %edi       # imm = 0xFFF9E58C
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567309, %edi       # imm = 0xFFF9E58D
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567310, %edi       # imm = 0xFFF9E58E
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567311, %edi       # imm = 0xFFF9E58F
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567312, %edi       # imm = 0xFFF9E590
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567313, %edi       # imm = 0xFFF9E591
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567314, %edi       # imm = 0xFFF9E592
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movsd	%xmm6, (%rbx)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567299, %edi       # imm = 0xFFF9E583
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567300, %edi       # imm = 0xFFF9E584
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567303, %edi       # imm = 0xFFF9E587
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567304, %edi       # imm = 0xFFF9E588
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567305, %edi       # imm = 0xFFF9E589
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567306, %edi       # imm = 0xFFF9E58A
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567311, %edi       # imm = 0xFFF9E58F
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567312, %edi       # imm = 0xFFF9E590
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567313, %edi       # imm = 0xFFF9E591
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567314, %edi       # imm = 0xFFF9E592
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-96(%rbp), %r11         # 8-byte Reload
	movsd	%xmm6, (%r11)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567297, %edi       # imm = 0xFFF9E581
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567298, %edi       # imm = 0xFFF9E582
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567303, %edi       # imm = 0xFFF9E587
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567304, %edi       # imm = 0xFFF9E588
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567305, %edi       # imm = 0xFFF9E589
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567306, %edi       # imm = 0xFFF9E58A
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567307, %edi       # imm = 0xFFF9E58B
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567308, %edi       # imm = 0xFFF9E58C
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567309, %edi       # imm = 0xFFF9E58D
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567310, %edi       # imm = 0xFFF9E58E
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	%xmm6, (%rax)
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567301, %edi       # imm = 0xFFF9E585
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm6    # xmm6 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567302, %edi       # imm = 0xFFF9E586
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567307, %edi       # imm = 0xFFF9E58B
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567308, %edi       # imm = 0xFFF9E58C
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567309, %edi       # imm = 0xFFF9E58D
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567310, %edi       # imm = 0xFFF9E58E
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567311, %edi       # imm = 0xFFF9E58F
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567312, %edi       # imm = 0xFFF9E590
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567313, %edi       # imm = 0xFFF9E591
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm6
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4294567314, %edi       # imm = 0xFFF9E592
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm6
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm6, (%rdx)
	movsd	(%rbx), %xmm5           # xmm5 = mem[0],zero
	movsd	(%r11), %xmm6           # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, (%r11)
	movsd	(%rbx), %xmm5           # xmm5 = mem[0],zero
	movsd	(%rax), %xmm6           # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, (%rax)
	movsd	(%rbx), %xmm5           # xmm5 = mem[0],zero
	movsd	(%rdx), %xmm6           # xmm6 = mem[0],zero
	divsd	%xmm5, %xmm6
	movsd	%xmm6, (%rdx)
	movsd	%xmm1, (%r10)
	movaps	%xmm7, %xmm5
	movq	-56(%rbp), %rdi         # 8-byte Reload
	mulsd	(%rdi), %xmm5
	subsd	(%r11), %xmm5
	movsd	%xmm5, (%r8)
	movaps	%xmm7, %xmm5
	movq	-48(%rbp), %rdi         # 8-byte Reload
	mulsd	(%rdi), %xmm5
	subsd	(%rax), %xmm5
	movsd	%xmm5, (%r9)
	mulsd	(%r13), %xmm7
	subsd	(%rdx), %xmm7
	movsd	%xmm7, (%rsi)
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	mulsd	(%r8), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	mulsd	(%r9), %xmm6
	addsd	%xmm6, %xmm5
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	mulsd	(%rsi), %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm5, %xmm8
	movsd	%xmm8, (%r15)
	mulsd	(%r10), %xmm9
	movaps	%xmm1, %xmm5
	subsd	(%r15), %xmm5
	mulsd	%xmm5, %xmm9
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$0, %edi
	movslq	%edi, %rdi
	movsd	%xmm9, (%rdx,%rdi,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r9), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movsd	%xmm5, (%rdx,%rdi,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r9), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	movsd	%xmm5, (%rdx,%rdi,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r8), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movsd	%xmm5, (%rdx,%rdi,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%r8), %xmm7
	subsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	movsd	%xmm5, (%rdx,%rdi,8)
	movaps	%xmm4, %xmm5
	mulsd	(%r10), %xmm5
	movsd	(%rsi), %xmm6           # xmm6 = mem[0],zero
	movaps	%xmm2, %xmm7
	mulsd	(%rsi), %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm6
	movaps	%xmm1, %xmm7
	addsd	%xmm6, %xmm7
	subsd	(%r15), %xmm7
	mulsd	%xmm7, %xmm5
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movsd	%xmm5, (%rdx,%rdi,8)
	mulsd	(%r10), %xmm4
	movsd	(%rsi), %xmm5           # xmm5 = mem[0],zero
	movaps	%xmm2, %xmm6
	mulsd	(%rsi), %xmm6
	subsd	%xmm3, %xmm6
	mulsd	%xmm6, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	addsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm6
	addsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	subsd	(%r9), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm6
	subsd	(%r9), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	addsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	subsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	addsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm6
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r9), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	subsd	(%rsi), %xmm5
	movsd	(%r9), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm6
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	addsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	subsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	subsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	movaps	%xmm0, %xmm4
	mulsd	(%r10), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	addsd	(%rsi), %xmm5
	movsd	(%r8), %xmm6            # xmm6 = mem[0],zero
	movq	%xmm6, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm6
	addsd	(%rsi), %xmm6
	movaps	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm5
	movaps	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	subsd	(%r15), %xmm6
	mulsd	%xmm6, %xmm4
	movq	(%rcx), %rdx
	movl	(%r12), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	movsd	%xmm4, (%rdx,%rdi,8)
	mulsd	(%r10), %xmm0
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	movq	%xmm4, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm4
	subsd	(%rsi), %xmm4
	movsd	(%r8), %xmm5            # xmm5 = mem[0],zero
	movq	%xmm5, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %xmm5
	subsd	(%rsi), %xmm5
	mulsd	%xmm5, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm1
	subsd	(%r15), %xmm1
	mulsd	%xmm1, %xmm0
	movq	(%rcx), %rax
	movl	(%r12), %edx
	addl	$18, %edx
	movslq	%edx, %rdx
	movsd	%xmm0, (%rax,%rdx,8)
	movw	$30483, BasicBlockSignatureTracker # imm = 0x7713
	movw	$0, RunTimeSignatureAdjuster
# %bb.14:                               #   in Loop: Header=BB8_10 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$133, %ax
	cmpw	$30614, %ax             # imm = 0x7796
	jne	.LBB8_18
# %bb.15:                               # %LBM_handleInOutFlow.split43
                                        #   in Loop: Header=BB8_10 Depth=1
	movl	(%r12), %eax
	addl	$20, %eax
	movl	%eax, (%r12)
	movw	$30614, BasicBlockSignatureTracker # imm = 0x7796
	movw	$1525, RunTimeSignatureAdjuster # imm = 0x5F5
	jmp	.LBB8_10
.LBB8_16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3685, %ax              # imm = 0xE65
	cmpw	$30974, %ax             # imm = 0x78FE
	jne	.LBB8_20
# %bb.17:                               # %LBM_handleInOutFlow.split41
	movw	$30974, BasicBlockSignatureTracker # imm = 0x78FE
	movw	$-22477, RunTimeSignatureAdjuster # imm = 0xA833
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_18:                               # %CFerrorHandler.LBM_handleInOutFlow.loopexit
	jmp	.LBB8_20
.LBB8_19:                               # %CFerrorHandler.LBM_handleInOutFlow.loopexit1
	jmp	.LBB8_20
.LBB8_20:                               # %CFerrorHandler.LBM_handleInOutFlow
	callq	FAULT_DETECTED_CFC
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-20648, %ax            # imm = 0xAF58
	xorw	%cx, %ax
	cmpw	$31920, %ax             # imm = 0x7CB0
	jne	.LBB9_41
# %bb.1:                                # %LBM_showGridStatistics.split119
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-20648, %ax            # imm = 0xAF58
	xorw	%cx, %ax
	cmpw	$31920, %ax             # imm = 0x7CB0
	jne	.LBB9_41
# %bb.2:                                # %LBM_showGridStatistics.split117
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-20648, %ax            # imm = 0xAF58
	xorw	%cx, %ax
	cmpw	$31920, %ax             # imm = 0x7CB0
	jne	.LBB9_41
# %bb.3:                                # %LBM_showGridStatistics.split115
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rdi, (%rcx)
	movl	$0, (%r9)
	movl	$0, (%r12)
	movl	$0, (%r8)
	movsd	%xmm2, (%rax)
	movsd	%xmm1, (%rbx)
	movsd	%xmm2, (%r14)
	movsd	%xmm1, (%r15)
	movsd	%xmm0, (%r13)
	movl	$0, (%r10)
	movw	$31920, BasicBlockSignatureTracker # imm = 0x7CB0
	movw	$0, RunTimeSignatureAdjuster
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %r11w
	xorw	$125, %di
	xorw	%r11w, %di
	cmpw	$31949, %di             # imm = 0x7CCD
	jne	.LBB9_40
# %bb.5:                                # %LBM_showGridStatistics.split
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	(%r10), %edi
	movw	$31949, BasicBlockSignatureTracker # imm = 0x7CCD
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$26000000, %edi         # imm = 0x18CBA80
	jge	.LBB9_38
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$712, %di               # imm = 0x2C8
	cmpw	$32261, %di             # imm = 0x7E05
	jne	.LBB9_40
# %bb.7:                                # %LBM_showGridStatistics.split81
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	%rdx, %r11
	movq	(%rcx), %rdi
	movl	(%r10), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movsd	(%rdi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movsd	%xmm0, (%rsi)
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movw	$32261, BasicBlockSignatureTracker # imm = 0x7E05
	movw	$0, RunTimeSignatureAdjuster
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_10
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$54, %dx
	cmpw	$32307, %dx             # imm = 0x7E33
	jne	.LBB9_40
# %bb.9:                                # %LBM_showGridStatistics.split85
                                        #   in Loop: Header=BB9_4 Depth=1
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	movw	$32307, BasicBlockSignatureTracker # imm = 0x7E33
	movw	$54, RunTimeSignatureAdjuster
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$469, %dx               # imm = 0x1D5
	xorw	%di, %dx
	cmpw	$32720, %dx             # imm = 0x7FD0
	jne	.LBB9_40
# %bb.11:                               # %LBM_showGridStatistics.split87
                                        #   in Loop: Header=BB9_4 Depth=1
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r15), %xmm1           # xmm1 = mem[0],zero
	movw	$32720, BasicBlockSignatureTracker # imm = 0x7FD0
	movw	$0, RunTimeSignatureAdjuster
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_14
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$11, %dx
	cmpw	$32731, %dx             # imm = 0x7FDB
	jne	.LBB9_40
# %bb.13:                               # %LBM_showGridStatistics.split89
                                        #   in Loop: Header=BB9_4 Depth=1
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%r15)
	movw	$32731, BasicBlockSignatureTracker # imm = 0x7FDB
	movw	$11, RunTimeSignatureAdjuster
.LBB9_14:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$-277, %dx              # imm = 0xFEEB
	xorw	%di, %dx
	cmpw	$-32453, %dx            # imm = 0x813B
	jne	.LBB9_40
# %bb.15:                               # %LBM_showGridStatistics.split91
                                        #   in Loop: Header=BB9_4 Depth=1
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	addsd	(%r13), %xmm0
	movsd	%xmm0, (%r13)
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$19, %edi
	movslq	%edi, %rdi
	movl	(%rdx,%rdi,8), %edx
	andl	$1, %edx
	movw	$-32453, BasicBlockSignatureTracker # imm = 0x813B
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %edx
	je	.LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$800, %dx               # imm = 0x320
	cmpw	$-32229, %dx            # imm = 0x821B
	jne	.LBB9_40
# %bb.17:                               # %LBM_showGridStatistics.split93
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	(%r9), %edx
	addl	$1, %edx
	movl	%edx, (%r9)
	movw	$-32229, BasicBlockSignatureTracker # imm = 0x821B
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB9_34
.LBB9_18:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$769, %dx               # imm = 0x301
	cmpw	$-32198, %dx            # imm = 0x823A
	jne	.LBB9_40
# %bb.19:                               # %LBM_showGridStatistics.split95
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$19, %edi
	movslq	%edi, %rdi
	movl	(%rdx,%rdi,8), %edx
	andl	$2, %edx
	movw	$-32198, BasicBlockSignatureTracker # imm = 0x823A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %edx
	je	.LBB9_22
# %bb.20:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$4, %dx
	cmpw	$-32194, %dx            # imm = 0x823E
	jne	.LBB9_40
# %bb.21:                               # %LBM_showGridStatistics.split99
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	(%r12), %edx
	addl	$1, %edx
	movl	%edx, (%r12)
	movw	$-32194, BasicBlockSignatureTracker # imm = 0x823E
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB9_24
.LBB9_22:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$77, %dx
	cmpw	$-32137, %dx            # imm = 0x8277
	jne	.LBB9_40
# %bb.23:                               # %LBM_showGridStatistics.split101
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	(%r8), %edx
	addl	$1, %edx
	movl	%edx, (%r8)
	movw	$-32137, BasicBlockSignatureTracker # imm = 0x8277
	movw	$73, RunTimeSignatureAdjuster
.LBB9_24:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$251, %dx
	xorw	%di, %dx
	cmpw	$-32059, %dx            # imm = 0x82C5
	movq	%r11, %rdx
	jne	.LBB9_40
# %bb.25:                               # %LBM_showGridStatistics.split103
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$3, %edi
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$4, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm0, (%rdx)
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$2, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$10, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm0, (%rdx)
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movsd	(%rdx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$11, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$12, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$13, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$14, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$15, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$16, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$17, %edi
	movslq	%edi, %rdi
	addsd	(%rdx,%rdi,8), %xmm0
	movq	(%rcx), %rdx
	movl	(%r10), %edi
	addl	$18, %edi
	movslq	%edi, %rdi
	subsd	(%rdx,%rdi,8), %xmm0
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm0, (%rdx)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rdi), %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rdi), %xmm1
	addsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	(%rsi), %xmm1
	divsd	%xmm1, %xmm0
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm0, (%rdx)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movw	$-32059, BasicBlockSignatureTracker # imm = 0x82C5
	movw	$0, RunTimeSignatureAdjuster
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_28
# %bb.26:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$1767, %dx              # imm = 0x6E7
	cmpw	$-31710, %dx            # imm = 0x8422
	jne	.LBB9_40
# %bb.27:                               # %LBM_showGridStatistics.split105
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movw	$-31710, BasicBlockSignatureTracker # imm = 0x8422
	movw	$1767, RunTimeSignatureAdjuster # imm = 0x6E7
.LBB9_28:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1691, %dx              # imm = 0x69B
	xorw	%di, %dx
	cmpw	$-31650, %dx            # imm = 0x845E
	jne	.LBB9_40
# %bb.29:                               # %LBM_showGridStatistics.split107
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movw	$-31650, BasicBlockSignatureTracker # imm = 0x845E
	movw	$0, RunTimeSignatureAdjuster
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_32
# %bb.30:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$183, %dx
	cmpw	$-31511, %dx            # imm = 0x84E9
	jne	.LBB9_40
# %bb.31:                               # %LBM_showGridStatistics.split109
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rbx)
	movw	$-31511, BasicBlockSignatureTracker # imm = 0x84E9
	movw	$183, RunTimeSignatureAdjuster
.LBB9_32:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$421, %dx               # imm = 0x1A5
	xorw	%di, %dx
	cmpw	$-31237, %dx            # imm = 0x85FB
	jne	.LBB9_40
# %bb.33:                               # %LBM_showGridStatistics.split111
                                        #   in Loop: Header=BB9_4 Depth=1
	movw	$-31237, BasicBlockSignatureTracker # imm = 0x85FB
	movw	$2016, RunTimeSignatureAdjuster # imm = 0x7E0
.LBB9_34:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1034, %dx              # imm = 0x40A
	xorw	%di, %dx
	cmpw	$-31215, %dx            # imm = 0x8611
	jne	.LBB9_40
# %bb.35:                               # %LBM_showGridStatistics.split97
                                        #   in Loop: Header=BB9_4 Depth=1
	movw	$-31215, BasicBlockSignatureTracker # imm = 0x8611
	movw	$0, RunTimeSignatureAdjuster
# %bb.36:                               #   in Loop: Header=BB9_4 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$80, %dx
	cmpw	$-31167, %dx            # imm = 0x8641
	jne	.LBB9_40
# %bb.37:                               # %LBM_showGridStatistics.split113
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	(%r10), %edx
	addl	$20, %edx
	movl	%edx, (%r10)
	movq	%r11, %rdx
	movw	$-31167, BasicBlockSignatureTracker # imm = 0x8641
	movw	$-1295, RunTimeSignatureAdjuster # imm = 0xFAF1
	jmp	.LBB9_4
.LBB9_38:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$-2672, %cx             # imm = 0xF590
	cmpw	$-30371, %cx            # imm = 0x895D
	jne	.LBB9_41
# %bb.39:                               # %LBM_showGridStatistics.split83
	movl	(%r9), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	(%r12), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	(%r8), %r12d
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	callq	sqrt
	movaps	%xmm0, %xmm4
	movabsq	$.L.str.2, %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movl	%r12d, %ecx
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movb	$5, %al
	callq	printf
	movw	$-30371, BasicBlockSignatureTracker # imm = 0x895D
	movw	$23076, RunTimeSignatureAdjuster # imm = 0x5A24
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_40:                               # %CFerrorHandler.LBM_showGridStatistics.loopexit
	jmp	.LBB9_41
.LBB9_41:                               # %CFerrorHandler.LBM_showGridStatistics
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$29800, %ax             # imm = 0x7468
	xorw	%cx, %ax
	cmpw	$-29559, %ax            # imm = 0x8C89
	jne	.LBB10_35
# %bb.1:                                # %LBM_storeVelocityField.split84
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.3, %r8
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rdi, (%r13)
	movq	%rsi, (%rbx)
	movl	%edx, (%r14)
	movq	(%rbx), %rdi
	movl	(%r14), %edx
	cmpl	$0, %edx
	cmovneq	%r8, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, (%r12)
	movl	$0, (%r15)
	movw	$-29559, BasicBlockSignatureTracker # imm = 0x8C89
	movw	$0, RunTimeSignatureAdjuster
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
                                        #       Child Loop BB10_10 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$59, %ax
	xorw	%cx, %ax
	cmpw	$-29518, %ax            # imm = 0x8CB2
	jne	.LBB10_34
# %bb.3:                                # %LBM_storeVelocityField.split
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	(%r15), %eax
	movw	$-29518, BasicBlockSignatureTracker # imm = 0x8CB2
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$130, %eax
	jge	.LBB10_30
# %bb.4:                                #   in Loop: Header=BB10_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$398, %ax               # imm = 0x18E
	cmpw	$-29380, %ax            # imm = 0x8D3C
	jne	.LBB10_34
# %bb.5:                                # %LBM_storeVelocityField.split56
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	$0, (%rbx)
	movw	$-29380, BasicBlockSignatureTracker # imm = 0x8D3C
	movw	$0, RunTimeSignatureAdjuster
.LBB10_6:                               #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_10 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$224, %ax
	xorw	%cx, %ax
	cmpw	$-29220, %ax            # imm = 0x8DDC
	jne	.LBB10_33
# %bb.7:                                # %LBM_storeVelocityField.split60
                                        #   in Loop: Header=BB10_6 Depth=2
	movl	(%rbx), %eax
	movw	$-29220, BasicBlockSignatureTracker # imm = 0x8DDC
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB10_26
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$648, %ax               # imm = 0x288
	cmpw	$-28844, %ax            # imm = 0x8F54
	jne	.LBB10_33
# %bb.9:                                # %LBM_storeVelocityField.split62
                                        #   in Loop: Header=BB10_6 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movw	$-28844, BasicBlockSignatureTracker # imm = 0x8F54
	movw	$0, RunTimeSignatureAdjuster
.LBB10_10:                              #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$43, %ax
	xorw	%cx, %ax
	cmpw	$-28801, %ax            # imm = 0x8F7F
	jne	.LBB10_32
# %bb.11:                               # %LBM_storeVelocityField.split66
                                        #   in Loop: Header=BB10_10 Depth=3
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movw	$-28801, BasicBlockSignatureTracker # imm = 0x8F7F
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB10_22
# %bb.12:                               #   in Loop: Header=BB10_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$181, %ax
	cmpw	$-28726, %ax            # imm = 0x8FCA
	jne	.LBB10_32
# %bb.13:                               # %LBM_storeVelocityField.split68
                                        #   in Loop: Header=BB10_10 Depth=3
	movq	(%r13), %rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-80(%rbp), %r8          # 8-byte Reload
	movss	%xmm0, (%r8)
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-72(%rbp), %r9          # 8-byte Reload
	movss	%xmm0, (%r9)
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movss	%xmm0, (%rdi)
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%r13), %rax
	movl	(%rsi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-56(%rbp), %rax         # 8-byte Reload
	movss	%xmm0, (%rax)
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%r9), %xmm1            # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%r9)
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rdi)
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rax)
	movl	(%r14), %eax
	movw	$-28726, BasicBlockSignatureTracker # imm = 0x8FCA
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB10_16
# %bb.14:                               #   in Loop: Header=BB10_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$7040, %ax              # imm = 0x1B80
	cmpw	$-27574, %ax            # imm = 0x944A
	jne	.LBB10_32
# %bb.15:                               # %LBM_storeVelocityField.split72
                                        #   in Loop: Header=BB10_10 Depth=3
	movq	(%r12), %rdi
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	storeValue
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movq	(%r12), %rdi
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	storeValue
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movq	(%r12), %rdi
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	storeValue
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB10_18
.LBB10_16:                              #   in Loop: Header=BB10_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6519, %ax              # imm = 0x1977
	cmpw	$-26947, %ax            # imm = 0x96BD
	jne	.LBB10_32
# %bb.17:                               # %LBM_storeVelocityField.split74
                                        #   in Loop: Header=BB10_10 Depth=3
	movabsq	$.L.str.5, %rsi
	movq	(%r12), %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movb	$3, %al
	callq	fprintf
	movw	$-26947, BasicBlockSignatureTracker # imm = 0x96BD
	movw	$759, RunTimeSignatureAdjuster # imm = 0x2F7
.LBB10_18:                              #   in Loop: Header=BB10_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3107, %ax              # imm = 0xC23
	xorw	%cx, %ax
	cmpw	$-26519, %ax            # imm = 0x9869
	jne	.LBB10_32
# %bb.19:                               # %LBM_storeVelocityField.split76
                                        #   in Loop: Header=BB10_10 Depth=3
	movw	$-26519, BasicBlockSignatureTracker # imm = 0x9869
	movw	$0, RunTimeSignatureAdjuster
# %bb.20:                               #   in Loop: Header=BB10_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$337, %ax               # imm = 0x151
	cmpw	$-26312, %ax            # imm = 0x9938
	jne	.LBB10_32
# %bb.21:                               # %LBM_storeVelocityField.split78
                                        #   in Loop: Header=BB10_10 Depth=3
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
	movw	$-26312, BasicBlockSignatureTracker # imm = 0x9938
	movw	$5740, RunTimeSignatureAdjuster # imm = 0x166C
	jmp	.LBB10_10
.LBB10_22:                              #   in Loop: Header=BB10_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$5453, %ax              # imm = 0x154D
	cmpw	$-26062, %ax            # imm = 0x9A32
	jne	.LBB10_33
# %bb.23:                               # %LBM_storeVelocityField.split70
                                        #   in Loop: Header=BB10_6 Depth=2
	movw	$-26062, BasicBlockSignatureTracker # imm = 0x9A32
	movw	$0, RunTimeSignatureAdjuster
# %bb.24:                               #   in Loop: Header=BB10_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1178, %ax              # imm = 0x49A
	cmpw	$-24920, %ax            # imm = 0x9EA8
	jne	.LBB10_33
# %bb.25:                               # %LBM_storeVelocityField.split80
                                        #   in Loop: Header=BB10_6 Depth=2
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, (%rbx)
	movw	$-24920, BasicBlockSignatureTracker # imm = 0x9EA8
	movw	$5012, RunTimeSignatureAdjuster # imm = 0x1394
	jmp	.LBB10_6
.LBB10_26:                              #   in Loop: Header=BB10_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4968, %ax              # imm = 0x1368
	cmpw	$-24908, %ax            # imm = 0x9EB4
	jne	.LBB10_34
# %bb.27:                               # %LBM_storeVelocityField.split64
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	$-24908, BasicBlockSignatureTracker # imm = 0x9EB4
	movw	$0, RunTimeSignatureAdjuster
# %bb.28:                               #   in Loop: Header=BB10_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$15779, %ax             # imm = 0x3DA3
	cmpw	$-23785, %ax            # imm = 0xA317
	jne	.LBB10_34
# %bb.29:                               # %LBM_storeVelocityField.split82
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	(%r15), %eax
	addl	$1, %eax
	movl	%eax, (%r15)
	movw	$-23785, BasicBlockSignatureTracker # imm = 0xA317
	movw	$12190, RunTimeSignatureAdjuster # imm = 0x2F9E
	jmp	.LBB10_2
.LBB10_30:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$10378, %ax             # imm = 0x288A
	cmpw	$-23496, %ax            # imm = 0xA438
	jne	.LBB10_35
# %bb.31:                               # %LBM_storeVelocityField.split58
	movq	(%r12), %rdi
	callq	fclose
	movw	$-23496, BasicBlockSignatureTracker # imm = 0xA438
	movw	$23628, RunTimeSignatureAdjuster # imm = 0x5C4C
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_32:                              # %CFerrorHandler.LBM_storeVelocityField.loopexit
	jmp	.LBB10_35
.LBB10_33:                              # %CFerrorHandler.LBM_storeVelocityField.loopexit1
	jmp	.LBB10_35
.LBB10_34:                              # %CFerrorHandler.LBM_storeVelocityField.loopexit2
	jmp	.LBB10_35
.LBB10_35:                              # %CFerrorHandler.LBM_storeVelocityField
	callq	FAULT_DETECTED_CFC
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
	movq	%rdi, %rax
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$12643, %cx             # imm = 0x3163
	xorw	%dx, %cx
	cmpw	$-23255, %cx            # imm = 0xA529
	jne	.LBB11_19
# %bb.1:                                # %storeValue.split40
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$12643, %cx             # imm = 0x3163
	xorw	%dx, %cx
	cmpw	$-23255, %cx            # imm = 0xA529
	jne	.LBB11_19
# %bb.2:                                # %storeValue.split38
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$12643, %cx             # imm = 0x3163
	xorw	%dx, %cx
	cmpw	$-23255, %cx            # imm = 0xA529
	jne	.LBB11_19
# %bb.3:                                # %storeValue.split
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rax, (%r8)
	movq	%rsi, (%rdx)
	movl	$1, (%rcx)
	movzbl	(%rcx), %eax
	movw	$-23255, BasicBlockSignatureTracker # imm = 0xA529
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jne	.LBB11_14
# %bb.4:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$220, %ax
	cmpw	$-23051, %ax            # imm = 0xA5F5
	jne	.LBB11_19
# %bb.5:                                # %storeValue.split42
	movq	(%rdx), %rax
	movq	%rax, (%r9)
	movl	$0, (%r10)
	movw	$-23051, BasicBlockSignatureTracker # imm = 0xA5F5
	movw	$0, RunTimeSignatureAdjuster
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3501, %ax              # imm = 0xDAD
	xorw	%cx, %ax
	cmpw	$-22440, %ax            # imm = 0xA858
	jne	.LBB11_18
# %bb.7:                                # %storeValue.split46
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	(%r10), %rax
	movw	$-22440, BasicBlockSignatureTracker # imm = 0xA858
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$4, %rax
	jae	.LBB11_12
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$57, %ax
	cmpw	$-22431, %ax            # imm = 0xA861
	jne	.LBB11_18
# %bb.9:                                # %storeValue.split48
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	$4, %eax
	movq	(%r9), %rcx
	movslq	(%r10), %rdx
	subq	%rdx, %rax
	subq	$1, %rax
	movb	(%rcx,%rax), %al
	movslq	(%r10), %rcx
	movb	%al, (%rdi,%rcx)
	movw	$-22431, BasicBlockSignatureTracker # imm = 0xA861
	movw	$0, RunTimeSignatureAdjuster
# %bb.10:                               #   in Loop: Header=BB11_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$206, %ax
	cmpw	$-22353, %ax            # imm = 0xA8AF
	jne	.LBB11_18
# %bb.11:                               # %storeValue.split52
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	(%r10), %eax
	addl	$1, %eax
	movl	%eax, (%r10)
	movw	$-22353, BasicBlockSignatureTracker # imm = 0xA8AF
	movw	$3418, RunTimeSignatureAdjuster # imm = 0xD5A
	jmp	.LBB11_6
.LBB11_12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$140, %ax
	cmpw	$-22316, %ax            # imm = 0xA8D4
	jne	.LBB11_19
# %bb.13:                               # %storeValue.split50
	movq	(%r8), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movw	$-22316, BasicBlockSignatureTracker # imm = 0xA8D4
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB11_16
.LBB11_14:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3274, %ax              # imm = 0xCCA
	cmpw	$-22045, %ax            # imm = 0xA9E3
	jne	.LBB11_19
# %bb.15:                               # %storeValue.split44
	movq	(%rdx), %rdi
	movq	(%r8), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movw	$-22045, BasicBlockSignatureTracker # imm = 0xA9E3
	movw	$311, RunTimeSignatureAdjuster # imm = 0x137
.LBB11_16:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1230, %ax              # imm = 0x4CE
	xorw	%cx, %ax
	cmpw	$-21478, %ax            # imm = 0xAC1A
	jne	.LBB11_19
# %bb.17:                               # %storeValue.split54
	movw	$-21478, BasicBlockSignatureTracker # imm = 0xAC1A
	movw	$9168, RunTimeSignatureAdjuster # imm = 0x23D0
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB11_18:                              # %CFerrorHandler.storeValue.loopexit
	jmp	.LBB11_19
.LBB11_19:                              # %CFerrorHandler.storeValue
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$22894, %ax             # imm = 0x596E
	xorw	%cx, %ax
	cmpw	$-20644, %ax            # imm = 0xAF5C
	jne	.LBB12_39
# %bb.1:                                # %LBM_compareVelocityField.split96
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.1, %r8
	movss	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdi, (%rcx)
	movq	%rsi, (%rbx)
	movl	%edx, (%r13)
	movss	%xmm0, (%r14)
	movq	(%rbx), %rdi
	movl	(%r13), %edx
	cmpl	$0, %edx
	cmovneq	%r8, %r9
	movq	%r9, %rsi
	callq	fopen
	movq	%rax, (%r12)
	movl	$0, (%r15)
	movw	$-20644, BasicBlockSignatureTracker # imm = 0xAF5C
	movw	$0, RunTimeSignatureAdjuster
.LBB12_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #       Child Loop BB12_10 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7769, %ax              # imm = 0x1E59
	xorw	%cx, %ax
	cmpw	$-20219, %ax            # imm = 0xB105
	jne	.LBB12_38
# %bb.3:                                # %LBM_compareVelocityField.split
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	(%r15), %eax
	movw	$-20219, BasicBlockSignatureTracker # imm = 0xB105
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$130, %eax
	jge	.LBB12_34
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$91, %ax
	cmpw	$-20130, %ax            # imm = 0xB15E
	jne	.LBB12_38
# %bb.5:                                # %LBM_compareVelocityField.split64
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movl	$0, (%rbx)
	movw	$-20130, BasicBlockSignatureTracker # imm = 0xB15E
	movw	$0, RunTimeSignatureAdjuster
.LBB12_6:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_10 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1873, %ax              # imm = 0x751
	xorw	%cx, %ax
	cmpw	$-18929, %ax            # imm = 0xB60F
	jne	.LBB12_37
# %bb.7:                                # %LBM_compareVelocityField.split68
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	(%rbx), %eax
	movw	$-18929, BasicBlockSignatureTracker # imm = 0xB60F
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB12_30
# %bb.8:                                #   in Loop: Header=BB12_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$167, %ax
	cmpw	$-18776, %ax            # imm = 0xB6A8
	jne	.LBB12_37
# %bb.9:                                # %LBM_compareVelocityField.split70
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movw	$-18776, BasicBlockSignatureTracker # imm = 0xB6A8
	movw	$0, RunTimeSignatureAdjuster
.LBB12_10:                              #   Parent Loop BB12_2 Depth=1
                                        #     Parent Loop BB12_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$468, %ax               # imm = 0x1D4
	xorw	%cx, %ax
	cmpw	$-18564, %ax            # imm = 0xB77C
	jne	.LBB12_36
# %bb.11:                               # %LBM_compareVelocityField.split74
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movw	$-18564, BasicBlockSignatureTracker # imm = 0xB77C
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$100, %eax
	jge	.LBB12_26
# %bb.12:                               #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3734, %ax              # imm = 0xE96
	cmpw	$-17942, %ax            # imm = 0xB9EA
	jne	.LBB12_36
# %bb.13:                               # %LBM_compareVelocityField.split76
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	-136(%rbp), %r8         # 8-byte Reload
	movsd	%xmm0, (%r8)
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-104(%rbp), %r9         # 8-byte Reload
	movsd	%xmm0, (%r9)
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-96(%rbp), %r10         # 8-byte Reload
	movsd	%xmm0, (%r10)
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movq	(%rsi), %rax
	movl	(%rdi), %ecx
	imull	$100, (%rbx), %edx
	addl	%edx, %ecx
	imull	$100, (%r15), %edx
	imull	$100, %edx, %edx
	addl	%edx, %ecx
	imull	$20, %ecx, %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movsd	(%r8), %xmm0            # xmm0 = mem[0],zero
	movsd	(%r9), %xmm1            # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r9)
	movsd	(%r8), %xmm0            # xmm0 = mem[0],zero
	movsd	(%r10), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10)
	movsd	(%r8), %xmm0            # xmm0 = mem[0],zero
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movl	(%r13), %eax
	movw	$-17942, BasicBlockSignatureTracker # imm = 0xB9EA
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB12_16
# %bb.14:                               #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$987, %ax               # imm = 0x3DB
	cmpw	$-17871, %ax            # imm = 0xBA31
	jne	.LBB12_36
# %bb.15:                               # %LBM_compareVelocityField.split80
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	(%r12), %rdi
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	loadValue
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movq	(%r12), %rdi
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	loadValue
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movq	(%r12), %rdi
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	loadValue
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB12_18
.LBB12_16:                              #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$681, %ax               # imm = 0x2A9
	cmpw	$-17597, %ax            # imm = 0xBB43
	jne	.LBB12_36
# %bb.17:                               # %LBM_compareVelocityField.split82
                                        #   in Loop: Header=BB12_10 Depth=3
	movabsq	$.L.str.7, %rsi
	movq	(%r12), %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_fscanf
	movw	$-17597, BasicBlockSignatureTracker # imm = 0xBB43
	movw	$370, RunTimeSignatureAdjuster # imm = 0x172
.LBB12_18:                              #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1810, %ax              # imm = 0x712
	xorw	%cx, %ax
	cmpw	$-17117, %ax            # imm = 0xBD23
	jne	.LBB12_36
# %bb.19:                               # %LBM_compareVelocityField.split84
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movss	%xmm0, (%rcx)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movss	%xmm0, (%rdx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-112(%rbp), %rax        # 8-byte Reload
	movss	%xmm0, (%rax)
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rcx), %xmm0
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rdx), %xmm1
	addss	%xmm1, %xmm0
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	addss	%xmm1, %xmm0
	movq	-80(%rbp), %rax         # 8-byte Reload
	movss	%xmm0, (%rax)
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%r14), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movw	$-17117, BasicBlockSignatureTracker # imm = 0xBD23
	movw	$0, RunTimeSignatureAdjuster
	ucomiss	%xmm1, %xmm0
	jbe	.LBB12_22
# %bb.20:                               #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$30, %ax
	cmpw	$-17091, %ax            # imm = 0xBD3D
	jne	.LBB12_36
# %bb.21:                               # %LBM_compareVelocityField.split86
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r14)
	movw	$-17091, BasicBlockSignatureTracker # imm = 0xBD3D
	movw	$30, RunTimeSignatureAdjuster
.LBB12_22:                              #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$136, %ax
	xorw	%cx, %ax
	cmpw	$-16981, %ax            # imm = 0xBDAB
	jne	.LBB12_36
# %bb.23:                               # %LBM_compareVelocityField.split88
                                        #   in Loop: Header=BB12_10 Depth=3
	movw	$-16981, BasicBlockSignatureTracker # imm = 0xBDAB
	movw	$0, RunTimeSignatureAdjuster
# %bb.24:                               #   in Loop: Header=BB12_10 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$683, %ax               # imm = 0x2AB
	cmpw	$-16640, %ax            # imm = 0xBF00
	jne	.LBB12_36
# %bb.25:                               # %LBM_compareVelocityField.split90
                                        #   in Loop: Header=BB12_10 Depth=3
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
	movw	$-16640, BasicBlockSignatureTracker # imm = 0xBF00
	movw	$2472, RunTimeSignatureAdjuster # imm = 0x9A8
	jmp	.LBB12_10
.LBB12_26:                              #   in Loop: Header=BB12_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$30272, %ax             # imm = 0x7640
	cmpw	$-16068, %ax            # imm = 0xC13C
	jne	.LBB12_37
# %bb.27:                               # %LBM_compareVelocityField.split78
                                        #   in Loop: Header=BB12_6 Depth=2
	movw	$-16068, BasicBlockSignatureTracker # imm = 0xC13C
	movw	$0, RunTimeSignatureAdjuster
# %bb.28:                               #   in Loop: Header=BB12_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$783, %ax               # imm = 0x30F
	cmpw	$-15821, %ax            # imm = 0xC233
	jne	.LBB12_37
# %bb.29:                               # %LBM_compareVelocityField.split92
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, (%rbx)
	movw	$-15821, BasicBlockSignatureTracker # imm = 0xC233
	movw	$29549, RunTimeSignatureAdjuster # imm = 0x736D
	jmp	.LBB12_6
.LBB12_30:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$29774, %ax             # imm = 0x744E
	cmpw	$-15807, %ax            # imm = 0xC241
	jne	.LBB12_38
# %bb.31:                               # %LBM_compareVelocityField.split72
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$-15807, BasicBlockSignatureTracker # imm = 0xC241
	movw	$0, RunTimeSignatureAdjuster
# %bb.32:                               #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$340, %ax               # imm = 0x154
	cmpw	$-15595, %ax            # imm = 0xC315
	jne	.LBB12_38
# %bb.33:                               # %LBM_compareVelocityField.split94
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	(%r15), %eax
	addl	$1, %eax
	movl	%eax, (%r15)
	movw	$-15595, BasicBlockSignatureTracker # imm = 0xC315
	movw	$27721, RunTimeSignatureAdjuster # imm = 0x6C49
	jmp	.LBB12_2
.LBB12_34:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$29247, %ax             # imm = 0x723F
	cmpw	$-15558, %ax            # imm = 0xC33A
	jne	.LBB12_39
# %bb.35:                               # %LBM_compareVelocityField.split66
	movabsq	$.L.str.8, %rbx
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	movq	%rbx, %rdi
	movb	$1, %al
	callq	printf
	movq	(%r12), %rdi
	callq	fclose
	movw	$-15558, BasicBlockSignatureTracker # imm = 0xC33A
	movw	$13851, RunTimeSignatureAdjuster # imm = 0x361B
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_36:                              # %CFerrorHandler.LBM_compareVelocityField.loopexit
	jmp	.LBB12_39
.LBB12_37:                              # %CFerrorHandler.LBM_compareVelocityField.loopexit1
	jmp	.LBB12_39
.LBB12_38:                              # %CFerrorHandler.LBM_compareVelocityField.loopexit2
	jmp	.LBB12_39
.LBB12_39:                              # %CFerrorHandler.LBM_compareVelocityField
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32504, %ax             # imm = 0x7EF8
	xorw	%cx, %ax
	cmpw	$-15159, %ax            # imm = 0xC4C9
	jne	.LBB13_19
# %bb.1:                                # %loadValue.split40
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32504, %ax             # imm = 0x7EF8
	xorw	%cx, %ax
	cmpw	$-15159, %ax            # imm = 0xC4C9
	jne	.LBB13_19
# %bb.2:                                # %loadValue.split38
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32504, %ax             # imm = 0x7EF8
	xorw	%cx, %ax
	cmpw	$-15159, %ax            # imm = 0xC4C9
	jne	.LBB13_19
# %bb.3:                                # %loadValue.split
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%rcx)
	movl	$1, (%rdx)
	movzbl	(%rdx), %edx
	movw	$-15159, BasicBlockSignatureTracker # imm = 0xC4C9
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %edx
	jne	.LBB13_14
# %bb.4:
	movw	BasicBlockSignatureTracker, %dx
	xorw	$409, %dx               # imm = 0x199
	cmpw	$-15024, %dx            # imm = 0xC550
	jne	.LBB13_19
# %bb.5:                                # %loadValue.split42
	movq	(%rcx), %rcx
	movq	%rcx, (%r14)
	movq	(%rax), %rcx
	movq	%r15, %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread
	movl	$0, (%rbx)
	movw	$-15024, BasicBlockSignatureTracker # imm = 0xC550
	movw	$0, RunTimeSignatureAdjuster
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$52, %ax
	xorw	%cx, %ax
	cmpw	$-15004, %ax            # imm = 0xC564
	jne	.LBB13_18
# %bb.7:                                # %loadValue.split46
                                        #   in Loop: Header=BB13_6 Depth=1
	movslq	(%rbx), %rax
	movw	$-15004, BasicBlockSignatureTracker # imm = 0xC564
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$4, %rax
	jae	.LBB13_12
# %bb.8:                                #   in Loop: Header=BB13_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$158, %ax
	cmpw	$-14854, %ax            # imm = 0xC5FA
	jne	.LBB13_18
# %bb.9:                                # %loadValue.split48
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	$4, %eax
	movslq	(%rbx), %rcx
	subq	%rcx, %rax
	subq	$1, %rax
	movb	(%r15,%rax), %al
	movq	(%r14), %rcx
	movslq	(%rbx), %rdx
	movb	%al, (%rcx,%rdx)
	movw	$-14854, BasicBlockSignatureTracker # imm = 0xC5FA
	movw	$0, RunTimeSignatureAdjuster
# %bb.10:                               #   in Loop: Header=BB13_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$900, %ax               # imm = 0x384
	cmpw	$-14722, %ax            # imm = 0xC67E
	jne	.LBB13_18
# %bb.11:                               # %loadValue.split52
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	(%rbx), %eax
	addl	$1, %eax
	movl	%eax, (%rbx)
	movw	$-14722, BasicBlockSignatureTracker # imm = 0xC67E
	movw	$814, RunTimeSignatureAdjuster # imm = 0x32E
	jmp	.LBB13_6
.LBB13_12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$752, %ax               # imm = 0x2F0
	cmpw	$-14444, %ax            # imm = 0xC794
	jne	.LBB13_19
# %bb.13:                               # %loadValue.split50
	movw	$-14444, BasicBlockSignatureTracker # imm = 0xC794
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB13_16
.LBB13_14:
	movw	BasicBlockSignatureTracker, %dx
	xorw	$3319, %dx              # imm = 0xCF7
	cmpw	$-14274, %dx            # imm = 0xC83E
	jne	.LBB13_19
# %bb.15:                               # %loadValue.split44
	movq	(%rcx), %rdi
	movq	(%rax), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fread
	movw	$-14274, BasicBlockSignatureTracker # imm = 0xC83E
	movw	$4010, RunTimeSignatureAdjuster # imm = 0xFAA
.LBB13_16:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3461, %ax              # imm = 0xD85
	xorw	%cx, %ax
	cmpw	$-13807, %ax            # imm = 0xCA11
	jne	.LBB13_19
# %bb.17:                               # %loadValue.split54
	movw	$-13807, BasicBlockSignatureTracker # imm = 0xCA11
	movw	$29691, RunTimeSignatureAdjuster # imm = 0x73FB
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_18:                              # %CFerrorHandler.loadValue.loopexit
	jmp	.LBB13_19
.LBB13_19:                              # %CFerrorHandler.loadValue
	callq	FAULT_DETECTED_CFC
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
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	callq	MAIN_parseCommandLine
	leaq	-56(%rbp), %rdi
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	callq	MAIN_printInfo
	leaq	-56(%rbp), %rdi
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	callq	MAIN_initialize
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	movl	$1, -4(%rbp)
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$328, %ax               # imm = 0x148
	xorw	%cx, %ax
	cmpw	$-12825, %ax            # imm = 0xCDE7
	jne	.LBB14_17
# %bb.2:                                # %main.split
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-56(%rbp), %ecx
	movw	$-12825, BasicBlockSignatureTracker # imm = 0xCDE7
	movw	$0, RunTimeSignatureAdjuster
	cmpl	%ecx, %eax
	jg	.LBB14_15
# %bb.3:                                #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$7466, %ax              # imm = 0x1D2A
	cmpw	$-12083, %ax            # imm = 0xD0CD
	jne	.LBB14_17
# %bb.4:                                # %main.split28
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-36(%rbp), %eax
	movw	$-12083, BasicBlockSignatureTracker # imm = 0xD0CD
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %eax
	jne	.LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$934, %ax               # imm = 0x3A6
	cmpw	$-11413, %ax            # imm = 0xD36B
	jne	.LBB14_17
# %bb.6:                                # %main.split32
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	srcGrid, %rdi
	movw	$-11413, BasicBlockSignatureTracker # imm = 0xD36B
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_handleInOutFlow
	movw	$-11413, BasicBlockSignatureTracker # imm = 0xD36B
	movw	$934, RunTimeSignatureAdjuster # imm = 0x3A6
	movw	$-11413, BasicBlockSignatureTracker # imm = 0xD36B
	movw	$934, RunTimeSignatureAdjuster # imm = 0x3A6
.LBB14_7:                               #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$948, %ax               # imm = 0x3B4
	xorw	%cx, %ax
	cmpw	$-11399, %ax            # imm = 0xD379
	jne	.LBB14_17
# %bb.8:                                # %main.split34
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	srcGrid, %rdi
	movq	dstGrid, %rsi
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_performStreamCollide
	movabsq	$srcGrid, %rdi
	movabsq	$dstGrid, %rsi
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$0, RunTimeSignatureAdjuster
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_swapGrids
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$0, RunTimeSignatureAdjuster
	movl	-4(%rbp), %eax
	andl	$63, %eax
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jne	.LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$145, %ax
	cmpw	$-11288, %ax            # imm = 0xD3E8
	jne	.LBB14_17
# %bb.10:                               # %main.split36
                                        #   in Loop: Header=BB14_1 Depth=1
	movabsq	$.L.str.9, %rdi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	printf
	movq	srcGrid, %rdi
	movw	$-11288, BasicBlockSignatureTracker # imm = 0xD3E8
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_showGridStatistics
	movw	$-11288, BasicBlockSignatureTracker # imm = 0xD3E8
	movw	$145, RunTimeSignatureAdjuster
	movw	$-11288, BasicBlockSignatureTracker # imm = 0xD3E8
	movw	$145, RunTimeSignatureAdjuster
.LBB14_11:                              #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1858, %ax              # imm = 0x742
	xorw	%cx, %ax
	cmpw	$-11205, %ax            # imm = 0xD43B
	jne	.LBB14_17
# %bb.12:                               # %main.split38
                                        #   in Loop: Header=BB14_1 Depth=1
	movw	$-11205, BasicBlockSignatureTracker # imm = 0xD43B
	movw	$0, RunTimeSignatureAdjuster
# %bb.13:                               #   in Loop: Header=BB14_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$124, %ax
	cmpw	$-11193, %ax            # imm = 0xD447
	jne	.LBB14_17
# %bb.14:                               # %main.split40
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movw	$-11193, BasicBlockSignatureTracker # imm = 0xD447
	movw	$6376, RunTimeSignatureAdjuster # imm = 0x18E8
	jmp	.LBB14_1
.LBB14_15:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6470, %ax              # imm = 0x1946
	cmpw	$-11103, %ax            # imm = 0xD4A1
	jne	.LBB14_18
# %bb.16:                               # %main.split30
	leaq	-56(%rbp), %rdi
	movw	$-11103, BasicBlockSignatureTracker # imm = 0xD4A1
	movw	$0, RunTimeSignatureAdjuster
	callq	MAIN_finalize
	movw	$-11103, BasicBlockSignatureTracker # imm = 0xD4A1
	movw	$0, RunTimeSignatureAdjuster
	movw	$-11103, BasicBlockSignatureTracker # imm = 0xD4A1
	movw	$0, RunTimeSignatureAdjuster
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB14_17:                              # %CFerrorHandler.main.loopexit
	jmp	.LBB14_18
.LBB14_18:                              # %CFerrorHandler.main
	callq	FAULT_DETECTED_CFC
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$6944, %ax              # imm = 0x1B20
	xorw	%cx, %ax
	cmpw	$-10353, %ax            # imm = 0xD78F
	jne	.LBB15_32
# %bb.1:                                # %MAIN_parseCommandLine.split
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r14
	addq	$-144, %r14
	movq	%r14, %rsp
	movl	%edi, (%rbx)
	movq	%rsi, (%r12)
	movq	%rdx, (%r15)
	movl	(%rbx), %eax
	movw	$-10353, BasicBlockSignatureTracker # imm = 0xD78F
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$5, %eax
	jl	.LBB15_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$16, %ax
	cmpw	$-10337, %ax            # imm = 0xD79F
	jne	.LBB15_32
# %bb.3:                                # %MAIN_parseCommandLine.split61
	movl	(%rbx), %eax
	movw	$-10337, BasicBlockSignatureTracker # imm = 0xD79F
	movw	$16, RunTimeSignatureAdjuster
	cmpl	$6, %eax
	jle	.LBB15_6
.LBB15_4:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$36, %ax
	xorw	%cx, %ax
	cmpw	$-10325, %ax            # imm = 0xD7AB
	jne	.LBB15_32
# %bb.5:                                # %MAIN_parseCommandLine.split59
	movabsq	$.L.str.1.12, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	movw	$-10325, BasicBlockSignatureTracker # imm = 0xD7AB
	movw	$0, RunTimeSignatureAdjuster
.LBB15_6:                               # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-16220, %ax            # imm = 0xC0A4
	cmpw	$5947, %ax              # imm = 0x173B
	jne	.LBB15_32
# %bb.7:                                # %MAIN_parseCommandLine.split63
	movw	$5947, BasicBlockSignatureTracker # imm = 0x173B
	movw	$-16220, RunTimeSignatureAdjuster # imm = 0xC0A4
# %bb.8:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$40, %ax
	xorw	%cx, %ax
	cmpw	$-10313, %ax            # imm = 0xD7B7
	jne	.LBB15_32
# %bb.9:                                # %MAIN_parseCommandLine.split85
	movq	(%r12), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movq	(%r15), %rcx
	movl	%eax, (%rcx)
	movq	(%r12), %rax
	movq	16(%rax), %rax
	movq	(%r15), %rcx
	movq	%rax, 8(%rcx)
	movq	(%r12), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movq	(%r15), %rcx
	movl	%eax, 16(%rcx)
	movq	(%r12), %rax
	movq	32(%rax), %rdi
	callq	atoi
	movq	(%r15), %rcx
	movl	%eax, 20(%rcx)
	movl	(%rbx), %eax
	movw	$-10313, BasicBlockSignatureTracker # imm = 0xD7B7
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$6, %eax
	jne	.LBB15_20
# %bb.10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3821, %ax              # imm = 0xEED
	cmpw	$-9894, %ax             # imm = 0xD95A
	jne	.LBB15_32
# %bb.11:                               # %MAIN_parseCommandLine.split65
	movq	(%r12), %rax
	movq	40(%rax), %rax
	movq	(%r15), %rcx
	movq	%rax, 24(%rcx)
	movq	(%r15), %rax
	movq	24(%rax), %rdi
	movq	%r14, %rsi
	callq	stat
	movw	$-9894, BasicBlockSignatureTracker # imm = 0xD95A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB15_14
# %bb.12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$246, %ax
	cmpw	$-9812, %ax             # imm = 0xD9AC
	jne	.LBB15_32
# %bb.13:                               # %MAIN_parseCommandLine.split69
	movabsq	$.L.str.2.13, %rdi
	movq	(%r15), %rax
	movq	24(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	movw	$-9812, BasicBlockSignatureTracker # imm = 0xD9AC
	movw	$0, RunTimeSignatureAdjuster
.LBB15_14:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1291, %ax              # imm = 0x50B
	cmpw	$-9135, %ax             # imm = 0xDC51
	jne	.LBB15_32
# %bb.15:                               # %MAIN_parseCommandLine.split71
	movq	48(%r14), %rax
	movw	$-9135, BasicBlockSignatureTracker # imm = 0xDC51
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$1313130, %rax          # imm = 0x14096A
	je	.LBB15_18
# %bb.16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$440, %ax               # imm = 0x1B8
	cmpw	$-8727, %ax             # imm = 0xDDE9
	jne	.LBB15_32
# %bb.17:                               # %MAIN_parseCommandLine.split73
	movabsq	$.L.str.3.14, %rdi
	movq	(%r15), %rax
	movq	24(%rax), %rsi
	movq	48(%r14), %rdx
                                        # kill: def %edx killed %edx killed %rdx
	movl	$1313130, %ecx          # imm = 0x14096A
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	movw	$-8727, BasicBlockSignatureTracker # imm = 0xDDE9
	movw	$0, RunTimeSignatureAdjuster
.LBB15_18:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$763, %ax               # imm = 0x2FB
	cmpw	$-8534, %ax             # imm = 0xDEAA
	jne	.LBB15_32
# %bb.19:                               # %MAIN_parseCommandLine.split75
	movw	$-8534, BasicBlockSignatureTracker # imm = 0xDEAA
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB15_22
.LBB15_20:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2247, %ax              # imm = 0x8C7
	cmpw	$-8336, %ax             # imm = 0xDF70
	jne	.LBB15_32
# %bb.21:                               # %MAIN_parseCommandLine.split67
	movq	(%r15), %rax
	movq	$0, 24(%rax)
	movw	$-8336, BasicBlockSignatureTracker # imm = 0xDF70
	movw	$474, RunTimeSignatureAdjuster # imm = 0x1DA
.LBB15_22:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$15872, %ax             # imm = 0x3E00
	xorw	%cx, %ax
	cmpw	$-8022, %ax             # imm = 0xE0AA
	jne	.LBB15_32
# %bb.23:                               # %MAIN_parseCommandLine.split77
	movq	(%r15), %rax
	movl	16(%rax), %eax
	movw	$-8022, BasicBlockSignatureTracker # imm = 0xE0AA
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %eax
	jne	.LBB15_30
# %bb.24:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$108, %ax
	cmpw	$-7994, %ax             # imm = 0xE0C6
	jne	.LBB15_32
# %bb.25:                               # %MAIN_parseCommandLine.split79
	movq	(%r15), %rax
	movq	8(%rax), %rdi
	movq	%r14, %rsi
	callq	stat
	movw	$-7994, BasicBlockSignatureTracker # imm = 0xE0C6
	movw	$108, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB15_30
# %bb.26:                               # %Buffer__1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-5694, %ax             # imm = 0xE9C2
	cmpw	$2308, %ax              # imm = 0x904
	jne	.LBB15_32
# %bb.27:                               # %MAIN_parseCommandLine.split83
	movw	$2308, BasicBlockSignatureTracker # imm = 0x904
	movw	$-5694, RunTimeSignatureAdjuster # imm = 0xE9C2
# %bb.28:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$384, %ax               # imm = 0x180
	xorw	%cx, %ax
	cmpw	$-7866, %ax             # imm = 0xE146
	jne	.LBB15_32
# %bb.29:                               # %MAIN_parseCommandLine.split87
	movabsq	$.L.str.4.15, %rdi
	movq	(%r15), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
	movw	$-7866, BasicBlockSignatureTracker # imm = 0xE146
	movw	$0, RunTimeSignatureAdjuster
.LBB15_30:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1266, %ax              # imm = 0x4F2
	xorw	%cx, %ax
	cmpw	$-7080, %ax             # imm = 0xE458
	jne	.LBB15_32
# %bb.31:                               # %MAIN_parseCommandLine.split81
	movw	$-7080, BasicBlockSignatureTracker # imm = 0xE458
	movw	$0, RunTimeSignatureAdjuster
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_32:                              # %CFerrorHandler.MAIN_parseCommandLine
	callq	FAULT_DETECTED_CFC
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
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$11233, %ax             # imm = 0x2BE1
	xorw	%cx, %ax
	cmpw	$-6322, %ax             # imm = 0xE74E
	jne	.LBB16_8
# %bb.1:                                # %MAIN_printInfo.split
	movabsq	$MAIN_printInfo.simTypeString, %r10
	movabsq	$MAIN_printInfo.actionString, %rax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rdi, (%rcx)
	movq	(%rcx), %rdx
	movl	(%rdx), %r8d
	movq	(%rcx), %rdx
	movq	8(%rdx), %r9
	movq	(%rcx), %rdx
	movl	16(%rdx), %edx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rcx), %rdx
	movl	20(%rdx), %edx
	shlq	$5, %rdx
	addq	%rdx, %r10
	movq	(%rcx), %rdx
	movq	24(%rdx), %rdx
	movw	$-6322, BasicBlockSignatureTracker # imm = 0xE74E
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rdx
	jne	.LBB16_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$131, %cx
	cmpw	$-6195, %cx             # imm = 0xE7CD
	jne	.LBB16_8
# %bb.3:                                # %MAIN_printInfo.split14
	movabsq	$.L.str.6.10, %r11
	movw	$-6195, BasicBlockSignatureTracker # imm = 0xE7CD
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB16_6
.LBB16_4:
	movw	BasicBlockSignatureTracker, %dx
	xorw	$4014, %dx              # imm = 0xFAE
	cmpw	$-5920, %dx             # imm = 0xE8E0
	jne	.LBB16_8
# %bb.5:                                # %MAIN_printInfo.split16
	movq	(%rcx), %rcx
	movq	24(%rcx), %r11
	movw	$-5920, BasicBlockSignatureTracker # imm = 0xE8E0
	movw	$3885, RunTimeSignatureAdjuster # imm = 0xF2D
.LBB16_6:
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$3621, %cx              # imm = 0xE25
	xorw	%dx, %cx
	cmpw	$-5656, %cx             # imm = 0xE9E8
	jne	.LBB16_8
# %bb.7:                                # %MAIN_printInfo.split18
	movabsq	$.L.str.5.11, %rdi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	subq	$32, %rsp
	movl	$100, %esi
	movl	$100, %edx
	movl	$130, %ecx
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movb	$1, %al
	callq	printf
	addq	$32, %rsp
	movw	$-5656, BasicBlockSignatureTracker # imm = 0xE9E8
	movw	$3504, RunTimeSignatureAdjuster # imm = 0xDB0
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB16_8:                               # %CFerrorHandler.MAIN_printInfo
	callq	FAULT_DETECTED_CFC
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$9874, %ax              # imm = 0x2692
	xorw	%cx, %ax
	cmpw	$-5571, %ax             # imm = 0xEA3D
	jne	.LBB17_12
# %bb.1:                                # %MAIN_initialize.split
	movabsq	$srcGrid, %rax
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%rbx)
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	movq	%rax, %rdi
	callq	LBM_allocateGrid
	movabsq	$dstGrid, %rdi
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_allocateGrid
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	movq	srcGrid, %rdi
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeGrid
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	movq	dstGrid, %rdi
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeGrid
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB17_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$156, %ax
	cmpw	$-5471, %ax             # imm = 0xEAA1
	jne	.LBB17_12
# %bb.3:                                # %MAIN_initialize.split22
	movq	srcGrid, %rdi
	movq	(%rbx), %rax
	movq	24(%rax), %rsi
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_loadObstacleFile
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$156, RunTimeSignatureAdjuster
	movq	dstGrid, %rdi
	movq	(%rbx), %rax
	movq	24(%rax), %rsi
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_loadObstacleFile
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$0, RunTimeSignatureAdjuster
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$156, RunTimeSignatureAdjuster
.LBB17_4:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$2028, %ax              # imm = 0x7EC
	xorw	%cx, %ax
	cmpw	$-4655, %ax             # imm = 0xEDD1
	jne	.LBB17_12
# %bb.5:                                # %MAIN_initialize.split24
	movq	(%rbx), %rax
	movl	20(%rax), %eax
	movw	$-4655, BasicBlockSignatureTracker # imm = 0xEDD1
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %eax
	jne	.LBB17_8
# %bb.6:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$949, %ax               # imm = 0x3B5
	cmpw	$-4508, %ax             # imm = 0xEE64
	jne	.LBB17_12
# %bb.7:                                # %MAIN_initialize.split26
	movq	srcGrid, %rdi
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeSpecialCellsForChannel
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$0, RunTimeSignatureAdjuster
	movq	dstGrid, %rdi
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeSpecialCellsForChannel
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$0, RunTimeSignatureAdjuster
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB17_10
.LBB17_8:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$938, %ax               # imm = 0x3AA
	cmpw	$-4485, %ax             # imm = 0xEE7B
	jne	.LBB17_12
# %bb.9:                                # %MAIN_initialize.split28
	movq	srcGrid, %rdi
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeSpecialCellsForLDC
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$31, RunTimeSignatureAdjuster
	movq	dstGrid, %rdi
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_initializeSpecialCellsForLDC
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$0, RunTimeSignatureAdjuster
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$31, RunTimeSignatureAdjuster
.LBB17_10:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7777, %ax              # imm = 0x1E61
	xorw	%cx, %ax
	cmpw	$-4091, %ax             # imm = 0xF005
	jne	.LBB17_12
# %bb.11:                               # %MAIN_initialize.split30
	movq	srcGrid, %rdi
	movw	$-4091, BasicBlockSignatureTracker # imm = 0xF005
	movw	$9197, RunTimeSignatureAdjuster # imm = 0x23ED
	callq	LBM_showGridStatistics
	movw	$-4091, BasicBlockSignatureTracker # imm = 0xF005
	movw	$9197, RunTimeSignatureAdjuster # imm = 0x23ED
	movw	$-4091, BasicBlockSignatureTracker # imm = 0xF005
	movw	$5213, RunTimeSignatureAdjuster # imm = 0x145D
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_12:                              # %CFerrorHandler.MAIN_initialize
	callq	FAULT_DETECTED_CFC
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
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$8576, %ax              # imm = 0x2180
	xorw	%cx, %ax
	cmpw	$-2783, %ax             # imm = 0xF521
	jne	.LBB18_10
# %bb.1:                                # %MAIN_finalize.split
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%rbx)
	movq	srcGrid, %rdi
	movw	$-2783, BasicBlockSignatureTracker # imm = 0xF521
	movw	$9929, RunTimeSignatureAdjuster # imm = 0x26C9
	callq	LBM_showGridStatistics
	movw	$-2783, BasicBlockSignatureTracker # imm = 0xF521
	movw	$9929, RunTimeSignatureAdjuster # imm = 0x26C9
	movq	(%rbx), %rax
	movl	16(%rax), %eax
	movw	$-2783, BasicBlockSignatureTracker # imm = 0xF521
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %eax
	jne	.LBB18_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$787, %ax               # imm = 0x313
	cmpw	$-2510, %ax             # imm = 0xF632
	jne	.LBB18_10
# %bb.3:                                # %MAIN_finalize.split19
	movq	srcGrid, %rdi
	movq	(%rbx), %rax
	movq	8(%rax), %rsi
	movw	$-2510, BasicBlockSignatureTracker # imm = 0xF632
	movw	$0, RunTimeSignatureAdjuster
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	LBM_compareVelocityField
	movw	$-2510, BasicBlockSignatureTracker # imm = 0xF632
	movw	$787, RunTimeSignatureAdjuster # imm = 0x313
	movw	$-2510, BasicBlockSignatureTracker # imm = 0xF632
	movw	$787, RunTimeSignatureAdjuster # imm = 0x313
.LBB18_4:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3413, %ax              # imm = 0xD55
	xorw	%cx, %ax
	cmpw	$-1932, %ax             # imm = 0xF874
	jne	.LBB18_10
# %bb.5:                                # %MAIN_finalize.split21
	movq	(%rbx), %rax
	movl	16(%rax), %eax
	movw	$-1932, BasicBlockSignatureTracker # imm = 0xF874
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	jne	.LBB18_8
# %bb.6:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$149, %ax
	cmpw	$-1823, %ax             # imm = 0xF8E1
	jne	.LBB18_10
# %bb.7:                                # %MAIN_finalize.split23
	movq	srcGrid, %rdi
	movq	(%rbx), %rax
	movq	8(%rax), %rsi
	movw	$-1823, BasicBlockSignatureTracker # imm = 0xF8E1
	movw	$0, RunTimeSignatureAdjuster
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	LBM_storeVelocityField
	movw	$-1823, BasicBlockSignatureTracker # imm = 0xF8E1
	movw	$149, RunTimeSignatureAdjuster
	movw	$-1823, BasicBlockSignatureTracker # imm = 0xF8E1
	movw	$149, RunTimeSignatureAdjuster
.LBB18_8:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$374, %ax               # imm = 0x176
	xorw	%cx, %ax
	cmpw	$-1790, %ax             # imm = 0xF902
	jne	.LBB18_10
# %bb.9:                                # %MAIN_finalize.split25
	movabsq	$srcGrid, %rdi
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_freeGrid
	movabsq	$dstGrid, %rdi
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$13541, RunTimeSignatureAdjuster # imm = 0x34E5
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$0, RunTimeSignatureAdjuster
	callq	LBM_freeGrid
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$0, RunTimeSignatureAdjuster
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$13541, RunTimeSignatureAdjuster # imm = 0x34E5
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB18_10:                              # %CFerrorHandler.MAIN_finalize
	callq	FAULT_DETECTED_CFC
.Lfunc_end18:
	.size	MAIN_finalize, .Lfunc_end18-MAIN_finalize
	.cfi_endproc
                                        # -- End function
	.globl	FAULT_DETECTED_CFC      # -- Begin function FAULT_DETECTED_CFC
	.p2align	4, 0x90
	.type	FAULT_DETECTED_CFC,@function
FAULT_DETECTED_CFC:                     # @FAULT_DETECTED_CFC
	.cfi_startproc
# %bb.0:                                # %FAULT_DETECTED_CFC
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	abort
	movw	$-1178, BasicBlockSignatureTracker(%rip) # imm = 0xFB66
	movw	$0, RunTimeSignatureAdjuster(%rip)
.Lfunc_end19:
	.size	FAULT_DETECTED_CFC, .Lfunc_end19-FAULT_DETECTED_CFC
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

	.type	BasicBlockSignatureTracker,@object # @BasicBlockSignatureTracker
	.comm	BasicBlockSignatureTracker,2,4
	.type	RunTimeSignatureAdjuster,@object # @RunTimeSignatureAdjuster
	.comm	RunTimeSignatureAdjuster,2,4

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
