	.text
	.file	"llvm-link"
	.globl	resize_prob             # -- Begin function resize_prob
	.p2align	4, 0x90
	.type	resize_prob,@function
resize_prob:                            # @resize_prob
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$4494, %ax              # imm = 0x118E
	xorw	%cx, %ax
	cmpw	$124, %ax
	jne	.LBB0_21
# %bb.1:                                # %resize_prob.split52
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%r14)
	movq	(%r14), %rax
	movq	456(%rax), %rax
	movq	(%r14), %rcx
	addq	416(%rcx), %rax
	movq	%rax, 416(%rcx)
	movq	(%r14), %rax
	movq	456(%rax), %rax
	movq	(%r14), %rcx
	addq	448(%rcx), %rax
	movq	%rax, 448(%rcx)
	movq	(%r14), %rax
	movq	568(%rax), %rdi
	movq	(%r14), %rax
	movq	416(%rax), %rsi
	shlq	$6, %rsi
	callq	realloc
	movq	%rax, (%r15)
	movq	(%r15), %rax
	movw	$124, BasicBlockSignatureTracker
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$154, %ax
	cmpw	$230, %ax
	jne	.LBB0_21
# %bb.3:                                # %resize_prob.split36
	movabsq	$.L.str, %rdi
	movq	(%r14), %rsi
	movb	$0, %al
	callq	printf
	movq	stdout, %rdi
	callq	fflush
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$230, BasicBlockSignatureTracker
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB0_18
.LBB0_4:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movw	BasicBlockSignatureTracker, %ax
	xorw	$357, %ax               # imm = 0x165
	cmpw	$281, %ax               # imm = 0x119
	jne	.LBB0_21
# %bb.5:                                # %resize_prob.split
	movq	(%r15), %rax
	movq	(%r14), %rcx
	movq	568(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rbx, %rdi
	movq	%rax, (%rdi)
	movq	(%r15), %rax
	movq	(%r14), %rcx
	movq	%rax, 568(%rcx)
	movq	(%r15), %rax
	movq	(%r14), %rcx
	movq	424(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%r14), %rcx
	movq	%rax, 576(%rcx)
	movq	(%r14), %rax
	movq	552(%rax), %rax
	movq	%rdx, %rbx
	movq	%rax, (%rbx)
	movq	%rax, (%r13)
	movq	(%rbx), %rax
	addq	$104, %rax
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	movq	560(%rax), %rax
	movq	%rax, (%r12)
	movw	$281, BasicBlockSignatureTracker # imm = 0x119
	movw	$0, RunTimeSignatureAdjuster
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$5, %ax
	xorw	%cx, %ax
	cmpw	$284, %ax               # imm = 0x11C
	jne	.LBB0_20
# %bb.7:                                # %resize_prob.split40
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rax
	movq	(%r12), %rcx
	movw	$284, BasicBlockSignatureTracker # imm = 0x11C
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jae	.LBB0_16
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$64, %ax
	cmpw	$348, %ax               # imm = 0x15C
	jne	.LBB0_20
# %bb.9:                                # %resize_prob.split42
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movq	(%r13), %rcx
	movw	$348, BasicBlockSignatureTracker # imm = 0x15C
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$51, %ax
	cmpw	$367, %ax               # imm = 0x16F
	jne	.LBB0_20
# %bb.11:                               # %resize_prob.split46
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rax
	movq	48(%rax), %rax
	addq	(%rdi), %rax
	movq	(%rbx), %rcx
	movq	%rax, 48(%rcx)
	movw	$367, BasicBlockSignatureTracker # imm = 0x16F
	movw	$51, RunTimeSignatureAdjuster
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$795, %ax               # imm = 0x31B
	xorw	%cx, %ax
	cmpw	$583, %ax               # imm = 0x247
	jne	.LBB0_20
# %bb.13:                               # %resize_prob.split48
                                        #   in Loop: Header=BB0_6 Depth=1
	movw	$583, BasicBlockSignatureTracker # imm = 0x247
	movw	$0, RunTimeSignatureAdjuster
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$243, %ax
	cmpw	$692, %ax               # imm = 0x2B4
	jne	.LBB0_20
# %bb.15:                               # %resize_prob.split50
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rax
	addq	$104, %rax
	movq	%rax, (%rbx)
	movw	$692, BasicBlockSignatureTracker # imm = 0x2B4
	movw	$941, RunTimeSignatureAdjuster # imm = 0x3AD
	jmp	.LBB0_6
.LBB0_16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1309, %ax              # imm = 0x51D
	cmpw	$1025, %ax              # imm = 0x401
	jne	.LBB0_21
# %bb.17:                               # %resize_prob.split44
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movw	$1025, BasicBlockSignatureTracker # imm = 0x401
	movw	$1255, RunTimeSignatureAdjuster # imm = 0x4E7
.LBB0_18:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1730, %ax              # imm = 0x6C2
	xorw	%cx, %ax
	cmpw	$1572, %ax              # imm = 0x624
	jne	.LBB0_21
# %bb.19:                               # %resize_prob.split38
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movw	$1572, BasicBlockSignatureTracker # imm = 0x624
	movw	$6119, RunTimeSignatureAdjuster # imm = 0x17E7
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_20:                               # %CFerrorHandler.resize_prob.loopexit
	jmp	.LBB0_21
.LBB0_21:                               # %CFerrorHandler.resize_prob
	callq	FAULT_DETECTED_CFC
.Lfunc_end0:
	.size	resize_prob, .Lfunc_end0-resize_prob
	.cfi_endproc
                                        # -- End function
	.globl	insert_new_arc          # -- Begin function insert_new_arc
	.p2align	4, 0x90
	.type	insert_new_arc,@function
insert_new_arc:                         # @insert_new_arc
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
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$6936, %ax              # imm = 0x1B18
	xorw	%bx, %ax
	cmpw	$1690, %ax              # imm = 0x69A
	jne	.LBB1_13
# %bb.1:                                # %insert_new_arc.split30
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rdi, (%r10)
	movq	%rsi, (%rax)
	movq	%rdx, (%r11)
	movq	%rcx, (%r14)
	movq	%r8, (%rbx)
	movq	%r9, (%r15)
	movq	(%r11), %rcx
	movq	(%r10), %rdx
	movq	(%rax), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 8(%rdx)
	movq	(%r14), %rcx
	movq	(%r10), %rdx
	movq	(%rax), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 16(%rdx)
	movq	(%rbx), %rcx
	movq	(%r10), %rdx
	movq	(%rax), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 56(%rdx)
	movq	(%rbx), %rcx
	movq	(%r10), %rdx
	movq	(%rax), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, (%rdx)
	movq	(%r15), %rcx
	movq	(%r10), %rdx
	movq	(%rax), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 48(%rdx)
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, (%r12)
	movw	$1690, BasicBlockSignatureTracker # imm = 0x69A
	movw	$0, RunTimeSignatureAdjuster
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$78, %ax
	xorw	%cx, %ax
	cmpw	$1748, %ax              # imm = 0x6D4
	jne	.LBB1_12
# %bb.3:                                # %insert_new_arc.split
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	movq	(%r12), %rcx
	subq	$1, %rcx
	movw	$1748, BasicBlockSignatureTracker # imm = 0x6D4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$47, %ax
	cmpw	$1787, %ax              # imm = 0x6FB
	jne	.LBB1_12
# %bb.5:                                # %insert_new_arc.split22
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$2, %ecx
	movq	(%r15), %rsi
	movq	(%r10), %rdi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rdi
	cmpq	48(%rdi), %rsi
	setg	%al
	movw	$1787, BasicBlockSignatureTracker # imm = 0x6FB
	movw	$47, RunTimeSignatureAdjuster
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$499, %cx               # imm = 0x1F3
	xorw	%dx, %cx
	cmpw	$1831, %cx              # imm = 0x727
	jne	.LBB1_12
# %bb.7:                                # %insert_new_arc.split24
                                        #   in Loop: Header=BB1_2 Depth=1
	movw	$1831, BasicBlockSignatureTracker # imm = 0x727
	movw	$0, RunTimeSignatureAdjuster
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_10
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$189, %ax
	cmpw	$1946, %ax              # imm = 0x79A
	jne	.LBB1_12
# %bb.9:                                # %insert_new_arc.split26
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$2, %ecx
	movq	(%r10), %rsi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	8(%rsi), %rax
	movq	(%r10), %rdx
	movq	(%r12), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 8(%rdx)
	movq	(%r10), %rsi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	16(%rsi), %rax
	movq	(%r10), %rdx
	movq	(%r12), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 16(%rdx)
	movq	(%r10), %rsi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	(%r10), %rdx
	movq	(%r12), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, (%rdx)
	movq	(%r10), %rsi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	(%r10), %rdx
	movq	(%r12), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 56(%rdx)
	movq	(%r10), %rsi
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	48(%rsi), %rax
	movq	(%r10), %rdx
	movq	(%r12), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 48(%rdx)
	movq	(%r12), %rax
	cqto
	idivq	%rcx
	movq	%rax, (%r12)
	movq	(%r11), %rax
	movq	(%r10), %rcx
	movq	(%r12), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	(%r14), %rax
	movq	(%r10), %rcx
	movq	(%r12), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	(%rbx), %rax
	movq	(%r10), %rcx
	movq	(%r12), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rbx), %rax
	movq	(%r10), %rcx
	movq	(%r12), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movq	(%r15), %rax
	movq	(%r10), %rcx
	movq	(%r12), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movw	$1946, BasicBlockSignatureTracker # imm = 0x79A
	movw	$256, RunTimeSignatureAdjuster # imm = 0x100
	jmp	.LBB1_2
.LBB1_10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3955, %ax              # imm = 0xF73
	cmpw	$2132, %ax              # imm = 0x854
	jne	.LBB1_13
# %bb.11:                               # %insert_new_arc.split28
	movw	$2132, BasicBlockSignatureTracker # imm = 0x854
	movw	$5094, RunTimeSignatureAdjuster # imm = 0x13E6
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_12:                               # %CFerrorHandler.insert_new_arc.loopexit
	jmp	.LBB1_13
.LBB1_13:                               # %CFerrorHandler.insert_new_arc
	callq	FAULT_DETECTED_CFC
.Lfunc_end1:
	.size	insert_new_arc, .Lfunc_end1-insert_new_arc
	.cfi_endproc
                                        # -- End function
	.globl	replace_weaker_arc      # -- Begin function replace_weaker_arc
	.p2align	4, 0x90
	.type	replace_weaker_arc,@function
replace_weaker_arc:                     # @replace_weaker_arc
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
	movq	%rdi, %r13
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$5365, %ax              # imm = 0x14F5
	xorw	%bx, %ax
	cmpw	$2308, %ax              # imm = 0x904
	jne	.LBB2_21
# %bb.1:                                # %replace_weaker_arc.split54
	movl	$3, %ebx
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%r8, %r12
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%r13, (%rdi)
	movq	%rsi, (%rax)
	movq	%rdx, (%r9)
	movq	%rcx, (%r11)
	movq	%r12, (%r15)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%r14)
	movq	(%r9), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 8(%rdx)
	movq	(%r11), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 16(%rdx)
	movq	(%r15), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 56(%rdx)
	movq	(%r15), %rcx
	movq	(%rax), %rdx
	movq	%rcx, (%rdx)
	movq	(%r14), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 48(%rdx)
	movq	$1, (%r8)
	movq	(%rax), %rcx
	movq	112(%rcx), %rcx
	movq	(%rax), %rdx
	movq	176(%rdx), %rdx
	cmpq	%rdx, %rcx
	movl	$2, %ecx
	cmovgl	%ecx, %ebx
	movslq	%ebx, %rcx
	movq	%rcx, (%r10)
	movw	$2308, BasicBlockSignatureTracker # imm = 0x904
	movw	$0, RunTimeSignatureAdjuster
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$27, %cx
	xorw	%dx, %cx
	cmpw	$2335, %cx              # imm = 0x91F
	jne	.LBB2_20
# %bb.3:                                # %replace_weaker_arc.split
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	(%r10), %rdx
	movq	(%rdi), %rsi
	movq	448(%rsi), %rsi
	movw	$2335, BasicBlockSignatureTracker # imm = 0x91F
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rsi, %rdx
	jg	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$199, %cx
	cmpw	$2520, %cx              # imm = 0x9D8
	jne	.LBB2_20
# %bb.5:                                # %replace_weaker_arc.split38
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r14), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	cmpq	48(%rdx), %rcx
	setl	%cl
	movw	$2520, BasicBlockSignatureTracker # imm = 0x9D8
	movw	$199, RunTimeSignatureAdjuster
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$897, %dx               # imm = 0x381
	xorw	%si, %dx
	cmpw	$2718, %dx              # imm = 0xA9E
	jne	.LBB2_20
# %bb.7:                                # %replace_weaker_arc.split40
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$2718, BasicBlockSignatureTracker # imm = 0xA9E
	movw	$0, RunTimeSignatureAdjuster
	testb	$1, %cl
	jne	.LBB2_8
	jmp	.LBB2_18
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$123, %cx
	cmpw	$2789, %cx              # imm = 0xAE5
	jne	.LBB2_20
# %bb.9:                                # %replace_weaker_arc.split42
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	8(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 8(%rdx)
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 16(%rdx)
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, (%rdx)
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 56(%rdx)
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	48(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 48(%rdx)
	movq	(%r9), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 8(%rdx)
	movq	(%r11), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 16(%rdx)
	movq	(%r15), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, (%rdx)
	movq	(%r15), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 56(%rdx)
	movq	(%r14), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rcx, 48(%rdx)
	movq	(%r10), %rcx
	movq	%rcx, (%r8)
	movq	(%r10), %rcx
	shlq	$1, %rcx
	movq	%rcx, (%r10)
	movq	(%r10), %rcx
	addq	$1, %rcx
	movq	(%rdi), %rdx
	movq	448(%rdx), %rdx
	movw	$2789, BasicBlockSignatureTracker # imm = 0xAE5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jg	.LBB2_16
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$494, %cx               # imm = 0x1EE
	cmpw	$2827, %cx              # imm = 0xB0B
	jne	.LBB2_20
# %bb.11:                               # %replace_weaker_arc.split46
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%rax), %rcx
	movq	(%r10), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	48(%rcx), %rcx
	movq	(%rax), %rdx
	movq	(%r10), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	48(%rdx), %rdx
	movw	$2827, BasicBlockSignatureTracker # imm = 0xB0B
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jge	.LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$98, %cx
	cmpw	$2921, %cx              # imm = 0xB69
	jne	.LBB2_20
# %bb.13:                               # %replace_weaker_arc.split50
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	(%r10), %rcx
	addq	$1, %rcx
	movq	%rcx, (%r10)
	movw	$2921, BasicBlockSignatureTracker # imm = 0xB69
	movw	$98, RunTimeSignatureAdjuster
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$252, %cx
	xorw	%dx, %cx
	cmpw	$3063, %cx              # imm = 0xBF7
	jne	.LBB2_20
# %bb.15:                               # %replace_weaker_arc.split52
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$3063, BasicBlockSignatureTracker # imm = 0xBF7
	movw	$274, RunTimeSignatureAdjuster # imm = 0x112
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$1030, %cx              # imm = 0x406
	xorw	%dx, %cx
	cmpw	$3811, %cx              # imm = 0xEE3
	jne	.LBB2_20
# %bb.17:                               # %replace_weaker_arc.split48
                                        #   in Loop: Header=BB2_2 Depth=1
	movw	$3811, BasicBlockSignatureTracker # imm = 0xEE3
	movw	$2023, RunTimeSignatureAdjuster # imm = 0x7E7
	jmp	.LBB2_2
.LBB2_18:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1512, %ax              # imm = 0x5E8
	cmpw	$3958, %ax              # imm = 0xF76
	jne	.LBB2_21
# %bb.19:                               # %replace_weaker_arc.split44
	movw	$3958, BasicBlockSignatureTracker # imm = 0xF76
	movw	$4771, RunTimeSignatureAdjuster # imm = 0x12A3
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_20:                               # %CFerrorHandler.replace_weaker_arc.loopexit
	jmp	.LBB2_21
.LBB2_21:                               # %CFerrorHandler.replace_weaker_arc
	callq	FAULT_DETECTED_CFC
.Lfunc_end2:
	.size	replace_weaker_arc, .Lfunc_end2-replace_weaker_arc
	.cfi_endproc
                                        # -- End function
	.globl	price_out_impl          # -- Begin function price_out_impl
	.p2align	4, 0x90
	.type	price_out_impl,@function
price_out_impl:                         # @price_out_impl
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
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$9516, %ax              # imm = 0x252C
	xorw	%cx, %ax
	cmpw	$4295, %ax              # imm = 0x10C7
	jne	.LBB3_104
# %bb.1:                                # %price_out_impl.split273
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rdi, (%r12)
	movq	$0, (%r9)
	movq	$0, (%r14)
	movq	$15, (%rax)
	movq	(%r12), %rdx
	movq	528(%rdx), %rdx
	movq	%rdx, (%rcx)
	movq	$30, (%r15)
	movq	(%rcx), %rcx
	subq	(%rax), %rcx
	movq	%rcx, (%r13)
	movq	(%r12), %rax
	movq	408(%rax), %rax
	movw	$4295, BasicBlockSignatureTracker # imm = 0x10C7
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$15000, %rax            # imm = 0x3A98
	jg	.LBB3_16
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$462, %ax               # imm = 0x1CE
	cmpw	$4361, %ax              # imm = 0x1109
	jne	.LBB3_104
# %bb.3:                                # %price_out_impl.split
	movq	(%r12), %rax
	movq	424(%rax), %rax
	movq	(%r12), %rcx
	addq	456(%rcx), %rax
	movq	(%r12), %rcx
	movq	416(%rcx), %rcx
	movw	$4361, BasicBlockSignatureTracker # imm = 0x1109
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB3_14
# %bb.4:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$202, %ax
	cmpw	$4547, %ax              # imm = 0x11C3
	jne	.LBB3_104
# %bb.5:                                # %price_out_impl.split183
	movl	$2, %ecx
	movq	(%r12), %rax
	movq	408(%rax), %rax
	movq	(%r12), %rdx
	imulq	408(%rdx), %rax
	cqto
	idivq	%rcx
	movq	(%r12), %rcx
	addq	424(%rcx), %rax
	movq	(%r12), %rcx
	movq	416(%rcx), %rcx
	movw	$4547, BasicBlockSignatureTracker # imm = 0x11C3
	movw	$202, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB3_14
# %bb.6:                                # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-12387, %ax            # imm = 0xCF9D
	cmpw	$-8610, %ax             # imm = 0xDE5E
	jne	.LBB3_104
# %bb.7:                                # %price_out_impl.split187
	movw	$-8610, BasicBlockSignatureTracker # imm = 0xDE5E
	movw	$-12387, RunTimeSignatureAdjuster # imm = 0xCF9D
# %bb.8:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$49, %ax
	xorw	%cx, %ax
	cmpw	$4594, %ax              # imm = 0x11F2
	jne	.LBB3_104
# %bb.9:                                # %price_out_impl.split275
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r11, -104(%rbp)        # 8-byte Spill
	movq	%r10, -112(%rbp)        # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	$1, (%r14)
	movq	(%r12), %rdi
	movw	$4594, BasicBlockSignatureTracker # imm = 0x11F2
	movw	$0, RunTimeSignatureAdjuster
	callq	resize_prob
	movw	$4594, BasicBlockSignatureTracker # imm = 0x11F2
	movw	$0, RunTimeSignatureAdjuster
	movw	$4594, BasicBlockSignatureTracker # imm = 0x11F2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB3_12
# %bb.10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1005, %ax              # imm = 0x3ED
	cmpw	$4639, %ax              # imm = 0x121F
	movq	-72(%rbp), %r8          # 8-byte Reload
	jne	.LBB3_104
# %bb.11:                               # %price_out_impl.split189
	movq	$-1, (%r8)
	movw	$4639, BasicBlockSignatureTracker # imm = 0x121F
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB3_97
.LBB3_12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$874, %ax               # imm = 0x36A
	cmpw	$4760, %ax              # imm = 0x1298
	jne	.LBB3_104
# %bb.13:                               # %price_out_impl.split191
	movq	(%r12), %rdi
	movw	$4760, BasicBlockSignatureTracker # imm = 0x1298
	movw	$0, RunTimeSignatureAdjuster
	callq	refresh_neighbour_lists
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movw	$4760, BasicBlockSignatureTracker # imm = 0x1298
	movw	$913, RunTimeSignatureAdjuster # imm = 0x391
	movw	$4760, BasicBlockSignatureTracker # imm = 0x1298
	movw	$913, RunTimeSignatureAdjuster # imm = 0x391
.LBB3_14:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$954, %ax               # imm = 0x3BA
	xorw	%cx, %ax
	cmpw	$4787, %ax              # imm = 0x12B3
	jne	.LBB3_104
# %bb.15:                               # %price_out_impl.split185
	movw	$4787, BasicBlockSignatureTracker # imm = 0x12B3
	movw	$628, RunTimeSignatureAdjuster # imm = 0x274
.LBB3_16:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$639, %ax               # imm = 0x27F
	xorw	%cx, %ax
	cmpw	$4792, %ax              # imm = 0x12B8
	jne	.LBB3_104
# %bb.17:                               # %price_out_impl.split181
	movq	(%r12), %rax
	movq	576(%rax), %rax
	movq	%rax, (%rbx)
	movq	(%r12), %rax
	movq	408(%rax), %rax
	movq	%rax, (%rsi)
	movq	(%r12), %rax
	movq	568(%rax), %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, (%rdi)
	movq	$0, (%r11)
	movw	$4792, BasicBlockSignatureTracker # imm = 0x12B8
	movw	$0, RunTimeSignatureAdjuster
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$401, %ax               # imm = 0x191
	xorw	%cx, %ax
	cmpw	$4905, %ax              # imm = 0x1329
	jne	.LBB3_103
# %bb.19:                               # %price_out_impl.split195
                                        #   in Loop: Header=BB3_18 Depth=1
	xorl	%eax, %eax
	movq	(%r11), %rcx
	movq	(%rsi), %rdx
	movw	$4905, BasicBlockSignatureTracker # imm = 0x1329
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jge	.LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_18 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$97, %ax
	cmpw	$4936, %ax              # imm = 0x1348
	jne	.LBB3_103
# %bb.21:                               # %price_out_impl.split197
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	(%rdi), %rax
	cmpl	$-1, 88(%rax)
	sete	%al
	movw	$4936, BasicBlockSignatureTracker # imm = 0x1348
	movw	$97, RunTimeSignatureAdjuster
.LBB3_22:                               #   in Loop: Header=BB3_18 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$232, %cx
	xorw	%dx, %cx
	cmpw	$5057, %cx              # imm = 0x13C1
	jne	.LBB3_103
# %bb.23:                               # %price_out_impl.split199
                                        #   in Loop: Header=BB3_18 Depth=1
	movw	$5057, BasicBlockSignatureTracker # imm = 0x13C1
	movw	$0, RunTimeSignatureAdjuster
	testb	$1, %al
	jne	.LBB3_24
	jmp	.LBB3_28
.LBB3_24:                               #   in Loop: Header=BB3_18 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1663, %ax              # imm = 0x67F
	cmpw	$5566, %ax              # imm = 0x15BE
	jne	.LBB3_103
# %bb.25:                               # %price_out_impl.split201
                                        #   in Loop: Header=BB3_18 Depth=1
	movw	$5566, BasicBlockSignatureTracker # imm = 0x15BE
	movw	$0, RunTimeSignatureAdjuster
# %bb.26:                               #   in Loop: Header=BB3_18 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$814, %ax               # imm = 0x32E
	cmpw	$5776, %ax              # imm = 0x1690
	jne	.LBB3_103
# %bb.27:                               # %price_out_impl.split205
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	(%r11), %rax
	addq	$1, %rax
	movq	%rax, (%r11)
	movq	(%rdi), %rax
	addq	$192, %rax
	movq	%rax, (%rdi)
	movw	$5776, BasicBlockSignatureTracker # imm = 0x1690
	movw	$1064, RunTimeSignatureAdjuster # imm = 0x428
	jmp	.LBB3_18
.LBB3_28:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1262, %ax              # imm = 0x4EE
	cmpw	$5935, %ax              # imm = 0x172F
	jne	.LBB3_104
# %bb.29:                               # %price_out_impl.split203
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	$0, (%rdi)
	movw	$5935, BasicBlockSignatureTracker # imm = 0x172F
	movw	$0, RunTimeSignatureAdjuster
.LBB3_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$20, %ax
	xorw	%cx, %ax
	cmpw	$5947, %ax              # imm = 0x173B
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jne	.LBB3_102
# %bb.31:                               # %price_out_impl.split207
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	(%r11), %rax
	movq	(%rsi), %rcx
	movw	$5947, BasicBlockSignatureTracker # imm = 0x173B
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jge	.LBB3_69
# %bb.32:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4035, %ax              # imm = 0xFC3
	cmpw	$6392, %ax              # imm = 0x18F8
	jne	.LBB3_102
# %bb.33:                               # %price_out_impl.split209
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	(%rdx), %rax
	movl	88(%rax), %eax
	movw	$6392, BasicBlockSignatureTracker # imm = 0x18F8
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$-1, %eax
	je	.LBB3_36
# %bb.34:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$732, %ax               # imm = 0x2DC
	cmpw	$6692, %ax              # imm = 0x1A24
	jne	.LBB3_102
# %bb.35:                               # %price_out_impl.split213
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	(%rdi), %rax
	movq	(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	(%rdx), %rax
	addq	$64, %rax
	movq	%rax, (%rdi)
	movw	$6692, BasicBlockSignatureTracker # imm = 0x1A24
	movw	$732, RunTimeSignatureAdjuster # imm = 0x2DC
.LBB3_36:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$721, %ax               # imm = 0x2D1
	xorw	%cx, %ax
	cmpw	$6697, %ax              # imm = 0x1A29
	jne	.LBB3_102
# %bb.37:                               # %price_out_impl.split215
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	(%rdx), %rax
	movl	24(%rax), %eax
	movw	$6697, BasicBlockSignatureTracker # imm = 0x1A29
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$-1, %eax
	jne	.LBB3_40
# %bb.38:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$29, %ax
	cmpw	$6708, %ax              # imm = 0x1A34
	jne	.LBB3_102
# %bb.39:                               # %price_out_impl.split217
                                        #   in Loop: Header=BB3_30 Depth=1
	movw	$6708, BasicBlockSignatureTracker # imm = 0x1A34
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB3_67
.LBB3_40:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$89, %ax
	cmpw	$6768, %ax              # imm = 0x1A70
	jne	.LBB3_102
# %bb.41:                               # %price_out_impl.split219
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r11, -104(%rbp)        # 8-byte Spill
	movq	%r10, -112(%rbp)        # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	(%rdx), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movslq	100(%rax), %rax
	movq	(%rdx), %rcx
	subq	56(%rcx), %rax
	addq	(%r13), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$6768, BasicBlockSignatureTracker # imm = 0x1A70
	movw	$0, RunTimeSignatureAdjuster
.LBB3_42:                               #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$360, %ax               # imm = 0x168
	xorw	%cx, %ax
	cmpw	$6936, %ax              # imm = 0x1B18
	jne	.LBB3_101
# %bb.43:                               # %price_out_impl.split223
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movw	$6936, BasicBlockSignatureTracker # imm = 0x1B18
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB3_65
# %bb.44:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$86, %ax
	cmpw	$6990, %ax              # imm = 0x1B4E
	jne	.LBB3_101
# %bb.45:                               # %price_out_impl.split225
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	(%rdx), %rax
	movslq	100(%rax), %rax
	movq	(%rcx), %rcx
	addq	56(%rcx), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$6990, BasicBlockSignatureTracker # imm = 0x1B4E
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB3_49
# %bb.46:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$31, %ax
	cmpw	$6993, %ax              # imm = 0x1B51
	jne	.LBB3_101
# %bb.47:                               # %price_out_impl.split229
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$6993, BasicBlockSignatureTracker # imm = 0x1B51
	movw	$289, RunTimeSignatureAdjuster # imm = 0x121
.LBB3_48:                               # %.backedge
                                        #   in Loop: Header=BB3_42 Depth=2
	jmp	.LBB3_42
.LBB3_49:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$235, %ax
	cmpw	$7077, %ax              # imm = 0x1BA5
	jne	.LBB3_101
# %bb.50:                               # %price_out_impl.split231
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	(%r15), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	addq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movw	$7077, BasicBlockSignatureTracker # imm = 0x1BA5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jge	.LBB3_63
# %bb.51:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$23, %ax
	cmpw	$7090, %ax              # imm = 0x1BB2
	jne	.LBB3_101
# %bb.52:                               # %price_out_impl.split233
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rcx
	movq	448(%rcx), %rcx
	movw	$7090, BasicBlockSignatureTracker # imm = 0x1BB2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jge	.LBB3_55
# %bb.53:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1584, %ax              # imm = 0x630
	cmpw	$7554, %ax              # imm = 0x1D82
	jne	.LBB3_101
# %bb.54:                               # %price_out_impl.split237
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	(%rbx), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	(%r15), %r8
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movw	$7554, BasicBlockSignatureTracker # imm = 0x1D82
	movw	$0, RunTimeSignatureAdjuster
	callq	insert_new_arc
	movw	$7554, BasicBlockSignatureTracker # imm = 0x1D82
	movw	$0, RunTimeSignatureAdjuster
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$1, %rax
	movq	%rax, (%rcx)
	movw	$7554, BasicBlockSignatureTracker # imm = 0x1D82
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB3_61
.LBB3_55:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1639, %ax              # imm = 0x667
	cmpw	$7637, %ax              # imm = 0x1DD5
	jne	.LBB3_101
# %bb.56:                               # %price_out_impl.split239
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	(%rbx), %rax
	movq	48(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$7637, BasicBlockSignatureTracker # imm = 0x1DD5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB3_59
# %bb.57:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$36, %ax
	cmpw	$7665, %ax              # imm = 0x1DF1
	jne	.LBB3_101
# %bb.58:                               # %price_out_impl.split243
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	(%r12), %rdi
	movq	(%rbx), %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	(%r15), %r8
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movw	$7665, BasicBlockSignatureTracker # imm = 0x1DF1
	movw	$0, RunTimeSignatureAdjuster
	callq	replace_weaker_arc
	movw	$7665, BasicBlockSignatureTracker # imm = 0x1DF1
	movw	$36, RunTimeSignatureAdjuster
	movw	$7665, BasicBlockSignatureTracker # imm = 0x1DF1
	movw	$36, RunTimeSignatureAdjuster
.LBB3_59:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$820, %ax               # imm = 0x334
	xorw	%cx, %ax
	cmpw	$7905, %ax              # imm = 0x1EE1
	jne	.LBB3_101
# %bb.60:                               # %price_out_impl.split245
                                        #   in Loop: Header=BB3_42 Depth=2
	movw	$7905, BasicBlockSignatureTracker # imm = 0x1EE1
	movw	$867, RunTimeSignatureAdjuster # imm = 0x363
.LBB3_61:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$889, %ax               # imm = 0x379
	xorw	%cx, %ax
	cmpw	$7931, %ax              # imm = 0x1EFB
	jne	.LBB3_101
# %bb.62:                               # %price_out_impl.split241
                                        #   in Loop: Header=BB3_42 Depth=2
	movw	$7931, BasicBlockSignatureTracker # imm = 0x1EFB
	movw	$1374, RunTimeSignatureAdjuster # imm = 0x55E
.LBB3_63:                               #   in Loop: Header=BB3_42 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1164, %ax              # imm = 0x48C
	xorw	%cx, %ax
	cmpw	$7977, %ax              # imm = 0x1F29
	jne	.LBB3_101
# %bb.64:                               # %price_out_impl.split235
                                        #   in Loop: Header=BB3_42 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$7977, BasicBlockSignatureTracker # imm = 0x1F29
	movw	$1369, RunTimeSignatureAdjuster # imm = 0x559
	jmp	.LBB3_48
.LBB3_65:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1074, %ax              # imm = 0x432
	cmpw	$7978, %ax              # imm = 0x1F2A
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	jne	.LBB3_102
# %bb.66:                               # %price_out_impl.split227
                                        #   in Loop: Header=BB3_30 Depth=1
	movw	$7978, BasicBlockSignatureTracker # imm = 0x1F2A
	movw	$1310, RunTimeSignatureAdjuster # imm = 0x51E
.LBB3_67:                               #   in Loop: Header=BB3_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$15140, %ax             # imm = 0x3B24
	xorw	%cx, %ax
	cmpw	$8464, %ax              # imm = 0x2110
	jne	.LBB3_102
# %bb.68:                               # %price_out_impl.split221
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	(%r11), %rax
	addq	$1, %rax
	movq	%rax, (%r11)
	movq	(%rdx), %rax
	addq	$192, %rax
	movq	%rax, (%rdx)
	movw	$8464, BasicBlockSignatureTracker # imm = 0x2110
	movw	$13887, RunTimeSignatureAdjuster # imm = 0x363F
	jmp	.LBB3_30
.LBB3_69:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$13966, %ax             # imm = 0x368E
	cmpw	$8629, %ax              # imm = 0x21B5
	jne	.LBB3_104
# %bb.70:                               # %price_out_impl.split211
	movq	(%r9), %rax
	movw	$8629, BasicBlockSignatureTracker # imm = 0x21B5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB3_95
# %bb.71:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$902, %ax               # imm = 0x386
	cmpw	$8755, %ax              # imm = 0x2233
	jne	.LBB3_104
# %bb.72:                               # %price_out_impl.split247
	movq	(%r12), %rax
	movq	576(%rax), %rax
	movq	%rax, (%rbx)
	movq	(%r9), %rax
	movq	(%r12), %rcx
	shlq	$6, %rax
	addq	576(%rcx), %rax
	movq	%rax, 576(%rcx)
	movq	(%r12), %rax
	movq	576(%rax), %rax
	movq	%rax, (%r10)
	movq	(%r14), %rax
	movw	$8755, BasicBlockSignatureTracker # imm = 0x2233
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB3_83
# %bb.73:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$215, %ax
	cmpw	$8932, %ax              # imm = 0x22E4
	jne	.LBB3_104
# %bb.74:                               # %price_out_impl.split251
	movq	%r10, %rsi
	movq	%r9, %rdx
	movw	$8932, BasicBlockSignatureTracker # imm = 0x22E4
	movw	$0, RunTimeSignatureAdjuster
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$486, %ax               # imm = 0x1E6
	xorw	%cx, %ax
	cmpw	$8962, %ax              # imm = 0x2302
	jne	.LBB3_99
# %bb.76:                               # %price_out_impl.split255
                                        #   in Loop: Header=BB3_75 Depth=1
	movq	(%rbx), %rax
	movq	(%rsi), %rcx
	movw	$8962, BasicBlockSignatureTracker # imm = 0x2302
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB3_81
# %bb.77:                               #   in Loop: Header=BB3_75 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6, %ax
	cmpw	$8964, %ax              # imm = 0x2304
	jne	.LBB3_99
# %bb.78:                               # %price_out_impl.split257
                                        #   in Loop: Header=BB3_75 Depth=1
	movq	%rbx, %rcx
	movq	(%rcx), %rax
	movq	$0, 48(%rax)
	movq	(%rcx), %rax
	movl	$1, 24(%rax)
	movw	$8964, BasicBlockSignatureTracker # imm = 0x2304
	movw	$0, RunTimeSignatureAdjuster
# %bb.79:                               #   in Loop: Header=BB3_75 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$31, %ax
	cmpw	$8987, %ax              # imm = 0x231B
	jne	.LBB3_99
# %bb.80:                               # %price_out_impl.split261
                                        #   in Loop: Header=BB3_75 Depth=1
	movq	%rbx, %rcx
	movq	(%rcx), %rax
	addq	$64, %rax
	movq	%rax, (%rcx)
	movw	$8987, BasicBlockSignatureTracker # imm = 0x231B
	movw	$511, RunTimeSignatureAdjuster # imm = 0x1FF
	jmp	.LBB3_75
.LBB3_81:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$73, %ax
	cmpw	$9035, %ax              # imm = 0x234B
	jne	.LBB3_104
# %bb.82:                               # %price_out_impl.split259
	movw	$9035, BasicBlockSignatureTracker # imm = 0x234B
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB3_93
.LBB3_83:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$340, %ax               # imm = 0x154
	cmpw	$9063, %ax              # imm = 0x2367
	jne	.LBB3_104
# %bb.84:                               # %price_out_impl.split253
	movq	%r10, %rsi
	movq	%r9, %rdx
	movw	$9063, BasicBlockSignatureTracker # imm = 0x2367
	movw	$0, RunTimeSignatureAdjuster
.LBB3_85:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$161, %ax
	xorw	%cx, %ax
	cmpw	$9158, %ax              # imm = 0x23C6
	jne	.LBB3_100
# %bb.86:                               # %price_out_impl.split265
                                        #   in Loop: Header=BB3_85 Depth=1
	movq	(%rbx), %rax
	movq	(%rsi), %rcx
	movw	$9158, BasicBlockSignatureTracker # imm = 0x23C6
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB3_91
# %bb.87:                               #   in Loop: Header=BB3_85 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1938, %ax              # imm = 0x792
	cmpw	$9300, %ax              # imm = 0x2454
	jne	.LBB3_100
# %bb.88:                               # %price_out_impl.split267
                                        #   in Loop: Header=BB3_85 Depth=1
	movq	%rbx, %rdi
	movq	(%rdi), %rax
	movq	$0, 48(%rax)
	movq	(%rdi), %rax
	movl	$1, 24(%rax)
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rdi), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rdi), %rax
	movq	(%rdi), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rdi), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rdi), %rcx
	movq	%rax, 40(%rcx)
	movq	(%rdi), %rax
	movq	(%rdi), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movw	$9300, BasicBlockSignatureTracker # imm = 0x2454
	movw	$0, RunTimeSignatureAdjuster
# %bb.89:                               #   in Loop: Header=BB3_85 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$238, %ax
	cmpw	$9402, %ax              # imm = 0x24BA
	jne	.LBB3_100
# %bb.90:                               # %price_out_impl.split271
                                        #   in Loop: Header=BB3_85 Depth=1
	movq	%rbx, %rcx
	movq	(%rcx), %rax
	addq	$64, %rax
	movq	%rax, (%rcx)
	movw	$9402, BasicBlockSignatureTracker # imm = 0x24BA
	movw	$2013, RunTimeSignatureAdjuster # imm = 0x7DD
	jmp	.LBB3_85
.LBB3_91:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1667, %ax              # imm = 0x683
	cmpw	$9541, %ax              # imm = 0x2545
	jne	.LBB3_104
# %bb.92:                               # %price_out_impl.split269
	movw	$9541, BasicBlockSignatureTracker # imm = 0x2545
	movw	$1550, RunTimeSignatureAdjuster # imm = 0x60E
.LBB3_93:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1553, %ax              # imm = 0x611
	xorw	%cx, %ax
	cmpw	$9562, %ax              # imm = 0x255A
	movq	%rdx, %r9
	jne	.LBB3_104
# %bb.94:                               # %price_out_impl.split263
	movq	(%r9), %rax
	movq	(%r12), %rcx
	addq	424(%rcx), %rax
	movq	%rax, 424(%rcx)
	movq	(%r9), %rax
	movq	(%r12), %rcx
	addq	440(%rcx), %rax
	movq	%rax, 440(%rcx)
	movq	(%r9), %rax
	movq	(%r12), %rcx
	movq	448(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 448(%rcx)
	movw	$9562, BasicBlockSignatureTracker # imm = 0x255A
	movw	$1263, RunTimeSignatureAdjuster # imm = 0x4EF
.LBB3_95:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1235, %ax              # imm = 0x4D3
	xorw	%cx, %ax
	cmpw	$9574, %ax              # imm = 0x2566
	jne	.LBB3_104
# %bb.96:                               # %price_out_impl.split249
	movq	(%r9), %rax
	movq	%rax, (%r8)
	movw	$9574, BasicBlockSignatureTracker # imm = 0x2566
	movw	$14201, RunTimeSignatureAdjuster # imm = 0x3779
.LBB3_97:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$14197, %ax             # imm = 0x3775
	xorw	%cx, %ax
	cmpw	$9578, %ax              # imm = 0x256A
	jne	.LBB3_104
# %bb.98:                               # %price_out_impl.split193
	movq	(%r8), %rax
	movw	$9578, BasicBlockSignatureTracker # imm = 0x256A
	movw	$5154, RunTimeSignatureAdjuster # imm = 0x1422
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_99:                               # %CFerrorHandler.price_out_impl.loopexit
	jmp	.LBB3_104
.LBB3_100:                              # %CFerrorHandler.price_out_impl.loopexit1
	jmp	.LBB3_104
.LBB3_101:                              # %CFerrorHandler.price_out_impl.loopexit2
	jmp	.LBB3_104
.LBB3_102:                              # %CFerrorHandler.price_out_impl.loopexit3
	jmp	.LBB3_104
.LBB3_103:                              # %CFerrorHandler.price_out_impl.loopexit4
	jmp	.LBB3_104
.LBB3_104:                              # %CFerrorHandler.price_out_impl
	callq	FAULT_DETECTED_CFC
.Lfunc_end3:
	.size	price_out_impl, .Lfunc_end3-price_out_impl
	.cfi_endproc
                                        # -- End function
	.globl	suspend_impl            # -- Begin function suspend_impl
	.p2align	4, 0x90
	.type	suspend_impl,@function
suspend_impl:                           # @suspend_impl
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$6067, %ax              # imm = 0x17B3
	xorw	%cx, %ax
	cmpw	$9978, %ax              # imm = 0x26FA
	jne	.LBB4_43
# %bb.1:                                # %suspend_impl.split115
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rdi, (%rbx)
	movq	%rsi, (%r15)
	movq	%rdx, (%rax)
	movq	(%rax), %rax
	movw	$9978, BasicBlockSignatureTracker # imm = 0x26FA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB4_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$377, %ax               # imm = 0x179
	cmpw	$10115, %ax             # imm = 0x2783
	jne	.LBB4_43
# %bb.3:                                # %suspend_impl.split
	movq	(%rbx), %rax
	movq	440(%rax), %rax
	movq	%rax, (%r8)
	movw	$10115, BasicBlockSignatureTracker # imm = 0x2783
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB4_36
.LBB4_4:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$338, %ax               # imm = 0x152
	cmpw	$10152, %ax             # imm = 0x27A8
	jne	.LBB4_43
# %bb.5:                                # %suspend_impl.split77
	movq	(%rbx), %rax
	movq	576(%rax), %rax
	movq	%rax, (%r12)
	movq	(%rbx), %rax
	movq	568(%rax), %rax
	movq	(%rbx), %rcx
	movq	424(%rcx), %rcx
	movq	(%rbx), %rdx
	subq	440(%rdx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, (%r13)
	movq	$0, (%r8)
	movq	(%r13), %rax
	movq	%rax, (%r14)
	movw	$10152, BasicBlockSignatureTracker # imm = 0x27A8
	movw	$0, RunTimeSignatureAdjuster
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$80, %ax
	xorw	%cx, %ax
	cmpw	$10232, %ax             # imm = 0x27F8
	jne	.LBB4_42
# %bb.7:                                # %suspend_impl.split81
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r14), %rax
	movq	(%r12), %rcx
	movw	$10232, BasicBlockSignatureTracker # imm = 0x27F8
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jae	.LBB4_34
# %bb.8:                                #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3988, %ax              # imm = 0xF94
	cmpw	$10348, %ax             # imm = 0x286C
	jne	.LBB4_42
# %bb.9:                                # %suspend_impl.split83
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r14), %rax
	movl	24(%rax), %eax
	movw	$10348, BasicBlockSignatureTracker # imm = 0x286C
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %eax
	jne	.LBB4_12
# %bb.10:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$28, %ax
	cmpw	$10352, %ax             # imm = 0x2870
	jne	.LBB4_42
# %bb.11:                               # %suspend_impl.split87
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	(%r14), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%r9)
	movw	$10352, BasicBlockSignatureTracker # imm = 0x2870
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB4_24
.LBB4_12:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$230, %ax
	cmpw	$10378, %ax             # imm = 0x288A
	jne	.LBB4_42
# %bb.13:                               # %suspend_impl.split89
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	$-2, (%r9)
	movq	(%r14), %rax
	movl	24(%rax), %eax
	movw	$10378, BasicBlockSignatureTracker # imm = 0x288A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jne	.LBB4_22
# %bb.14:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$51, %ax
	cmpw	$10425, %ax             # imm = 0x28B9
	jne	.LBB4_42
# %bb.15:                               # %suspend_impl.split93
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	movq	(%r14), %rcx
	movw	$10425, BasicBlockSignatureTracker # imm = 0x28B9
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB4_18
# %bb.16:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$116, %ax
	cmpw	$10445, %ax             # imm = 0x28CD
	jne	.LBB4_42
# %bb.17:                               # %suspend_impl.split97
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r13), %rax
	movq	(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movw	$10445, BasicBlockSignatureTracker # imm = 0x28CD
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB4_20
.LBB4_18:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$370, %ax               # imm = 0x172
	cmpw	$10699, %ax             # imm = 0x29CB
	jne	.LBB4_42
# %bb.19:                               # %suspend_impl.split99
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r13), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movw	$10699, BasicBlockSignatureTracker # imm = 0x29CB
	movw	$262, RunTimeSignatureAdjuster # imm = 0x106
.LBB4_20:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$286, %ax               # imm = 0x11E
	xorw	%cx, %ax
	cmpw	$10707, %ax             # imm = 0x29D3
	jne	.LBB4_42
# %bb.21:                               # %suspend_impl.split101
                                        #   in Loop: Header=BB4_6 Depth=1
	movw	$10707, BasicBlockSignatureTracker # imm = 0x29D3
	movw	$345, RunTimeSignatureAdjuster # imm = 0x159
.LBB4_22:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$541, %ax               # imm = 0x21D
	xorw	%cx, %ax
	cmpw	$10903, %ax             # imm = 0x2A97
	jne	.LBB4_42
# %bb.23:                               # %suspend_impl.split95
                                        #   in Loop: Header=BB4_6 Depth=1
	movw	$10903, BasicBlockSignatureTracker # imm = 0x2A97
	movw	$743, RunTimeSignatureAdjuster # imm = 0x2E7
.LBB4_24:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$698, %ax               # imm = 0x2BA
	xorw	%cx, %ax
	cmpw	$10954, %ax             # imm = 0x2ACA
	jne	.LBB4_42
# %bb.25:                               # %suspend_impl.split91
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r9), %rax
	movq	(%r15), %rcx
	movw	$10954, BasicBlockSignatureTracker # imm = 0x2ACA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$478, %ax               # imm = 0x1DE
	cmpw	$11028, %ax             # imm = 0x2B14
	jne	.LBB4_42
# %bb.27:                               # %suspend_impl.split103
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r8), %rax
	addq	$1, %rax
	movq	%rax, (%r8)
	movw	$11028, BasicBlockSignatureTracker # imm = 0x2B14
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB4_30
.LBB4_28:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$326, %ax               # imm = 0x146
	cmpw	$11148, %ax             # imm = 0x2B8C
	jne	.LBB4_42
# %bb.29:                               # %suspend_impl.split105
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r13), %rdi
	movq	(%r14), %rsi
	movl	$64, %edx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	callq	memcpy
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rax
	addq	$64, %rax
	movq	%rax, (%r13)
	movw	$11148, BasicBlockSignatureTracker # imm = 0x2B8C
	movw	$152, RunTimeSignatureAdjuster
.LBB4_30:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1792, %ax              # imm = 0x700
	xorw	%cx, %ax
	cmpw	$11284, %ax             # imm = 0x2C14
	jne	.LBB4_42
# %bb.31:                               # %suspend_impl.split107
                                        #   in Loop: Header=BB4_6 Depth=1
	movw	$11284, BasicBlockSignatureTracker # imm = 0x2C14
	movw	$0, RunTimeSignatureAdjuster
# %bb.32:                               #   in Loop: Header=BB4_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$74, %ax
	cmpw	$11358, %ax             # imm = 0x2C5E
	jne	.LBB4_42
# %bb.33:                               # %suspend_impl.split109
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%r14), %rax
	addq	$64, %rax
	movq	%rax, (%r14)
	movw	$11358, BasicBlockSignatureTracker # imm = 0x2C5E
	movw	$3062, RunTimeSignatureAdjuster # imm = 0xBF6
	jmp	.LBB4_6
.LBB4_34:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2952, %ax              # imm = 0xB88
	cmpw	$11376, %ax             # imm = 0x2C70
	jne	.LBB4_43
# %bb.35:                               # %suspend_impl.split85
	movw	$11376, BasicBlockSignatureTracker # imm = 0x2C70
	movw	$3059, RunTimeSignatureAdjuster # imm = 0xBF3
.LBB4_36:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$2467, %ax              # imm = 0x9A3
	xorw	%cx, %ax
	cmpw	$11808, %ax             # imm = 0x2E20
	jne	.LBB4_43
# %bb.37:                               # %suspend_impl.split79
	movq	(%r8), %rax
	movw	$11808, BasicBlockSignatureTracker # imm = 0x2E20
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB4_40
# %bb.38:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$16, %ax
	cmpw	$11824, %ax             # imm = 0x2E30
	jne	.LBB4_43
# %bb.39:                               # %suspend_impl.split111
	xorl	%eax, %eax
	movq	(%r8), %rcx
	movq	(%rbx), %rdx
	movq	424(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 424(%rdx)
	movq	(%r8), %rcx
	movq	(%rbx), %rdx
	movq	440(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 440(%rdx)
	movq	(%r8), %rcx
	movq	(%rbx), %rdx
	movq	576(%rdx), %rsi
	subq	%rcx, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	%rsi, 576(%rdx)
	movq	(%r8), %rax
	movq	(%rbx), %rcx
	addq	448(%rcx), %rax
	movq	%rax, 448(%rcx)
	movq	(%rbx), %rdi
	movw	$11824, BasicBlockSignatureTracker # imm = 0x2E30
	movw	$15528, RunTimeSignatureAdjuster # imm = 0x3CA8
	movq	%r8, %rbx
	callq	refresh_neighbour_lists
	movq	%rbx, %r8
	movw	$11824, BasicBlockSignatureTracker # imm = 0x2E30
	movw	$15528, RunTimeSignatureAdjuster # imm = 0x3CA8
	movw	$11824, BasicBlockSignatureTracker # imm = 0x2E30
	movw	$16, RunTimeSignatureAdjuster
.LBB4_40:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$110, %ax
	xorw	%cx, %ax
	cmpw	$11854, %ax             # imm = 0x2E4E
	jne	.LBB4_43
# %bb.41:                               # %suspend_impl.split113
	movq	(%r8), %rax
	movw	$11854, BasicBlockSignatureTracker # imm = 0x2E4E
	movw	$7942, RunTimeSignatureAdjuster # imm = 0x1F06
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_42:                               # %CFerrorHandler.suspend_impl.loopexit
	jmp	.LBB4_43
.LBB4_43:                               # %CFerrorHandler.suspend_impl
	callq	FAULT_DETECTED_CFC
.Lfunc_end4:
	.size	suspend_impl, .Lfunc_end4-suspend_impl
	.cfi_endproc
                                        # -- End function
	.globl	global_opt              # -- Begin function global_opt
	.p2align	4, 0x90
	.type	global_opt,@function
global_opt:                             # @global_opt
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
	xorw	$4944, %ax              # imm = 0x1350
	xorw	%cx, %ax
	cmpw	$12233, %ax             # imm = 0x2FC9
	jne	.LBB5_30
# %bb.1:                                # %global_opt.split76
	movl	$5, %eax
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	$-1, (%rbx)
	movq	net+408, %rcx
	cmpq	$15000, %rcx            # imm = 0x3A98
	cmovlel	%eax, %eax
	cltq
	movq	%rax, (%r14)
	movw	$12233, BasicBlockSignatureTracker # imm = 0x2FC9
	movw	$0, RunTimeSignatureAdjuster
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$61, %ax
	xorw	%cx, %ax
	cmpw	$12276, %ax             # imm = 0x2FF4
	jne	.LBB5_29
# %bb.3:                                # %global_opt.split
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%rbx), %rax
	movw	$12276, BasicBlockSignatureTracker # imm = 0x2FF4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB5_26
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$8073, %ax              # imm = 0x1F89
	cmpw	$12413, %ax             # imm = 0x307D
	jne	.LBB5_29
# %bb.5:                                # %global_opt.split52
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	net+424, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$0, RunTimeSignatureAdjuster
	callq	primal_net_simplex
	movabsq	$.L.str.1.2, %rdi
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$0, RunTimeSignatureAdjuster
	movq	net+600, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$0, RunTimeSignatureAdjuster
	callq	flow_cost
	movabsq	$.L.str.2, %rdi
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$0, RunTimeSignatureAdjuster
	movb	$1, %al
	callq	printf
	movq	(%r14), %rax
	movw	$12413, BasicBlockSignatureTracker # imm = 0x307D
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB5_8
# %bb.6:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$222, %ax
	cmpw	$12451, %ax             # imm = 0x30A3
	jne	.LBB5_30
# %bb.7:                                # %global_opt.split58
	movw	$12451, BasicBlockSignatureTracker # imm = 0x30A3
	movw	$8023, RunTimeSignatureAdjuster # imm = 0x1F57
	jmp	.LBB5_27
.LBB5_8:                                #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$309, %ax               # imm = 0x135
	cmpw	$12616, %ax             # imm = 0x3148
	jne	.LBB5_29
# %bb.9:                                # %global_opt.split56
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	net+440, %rax
	movw	$12616, BasicBlockSignatureTracker # imm = 0x3148
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB5_16
# %bb.10:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1, %ax
	cmpw	$12617, %ax             # imm = 0x3149
	jne	.LBB5_29
# %bb.11:                               # %global_opt.split60
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$net, %rdi
	movw	$12617, BasicBlockSignatureTracker # imm = 0x3149
	movw	$0, RunTimeSignatureAdjuster
	movq	$-1, %rsi
	xorl	%edx, %edx
	callq	suspend_impl
	movw	$12617, BasicBlockSignatureTracker # imm = 0x3149
	movw	$0, RunTimeSignatureAdjuster
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movw	$12617, BasicBlockSignatureTracker # imm = 0x3149
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1010, %ax              # imm = 0x3F2
	cmpw	$12987, %ax             # imm = 0x32BB
	jne	.LBB5_29
# %bb.13:                               # %global_opt.split64
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$.L.str.3, %rdi
	movq	(%rbx), %rsi
	movb	$0, %al
	callq	printf
	movw	$12987, BasicBlockSignatureTracker # imm = 0x32BB
	movw	$1010, RunTimeSignatureAdjuster # imm = 0x3F2
.LBB5_14:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1517, %ax              # imm = 0x5ED
	xorw	%cx, %ax
	cmpw	$13476, %ax             # imm = 0x34A4
	jne	.LBB5_29
# %bb.15:                               # %global_opt.split66
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	$13476, BasicBlockSignatureTracker # imm = 0x34A4
	movw	$1516, RunTimeSignatureAdjuster # imm = 0x5EC
.LBB5_16:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1187, %ax              # imm = 0x4A3
	xorw	%cx, %ax
	cmpw	$13803, %ax             # imm = 0x35EB
	jne	.LBB5_29
# %bb.17:                               # %global_opt.split62
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$net, %rdi
	movw	$13803, BasicBlockSignatureTracker # imm = 0x35EB
	movw	$0, RunTimeSignatureAdjuster
	callq	price_out_impl
	movw	$13803, BasicBlockSignatureTracker # imm = 0x35EB
	movw	$0, RunTimeSignatureAdjuster
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	movw	$13803, BasicBlockSignatureTracker # imm = 0x35EB
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$974, %ax               # imm = 0x3CE
	cmpw	$13861, %ax             # imm = 0x3625
	jne	.LBB5_29
# %bb.19:                               # %global_opt.split68
                                        #   in Loop: Header=BB5_2 Depth=1
	movabsq	$.L.str.4, %rdi
	movq	(%rbx), %rsi
	movb	$0, %al
	callq	printf
	movw	$13861, BasicBlockSignatureTracker # imm = 0x3625
	movw	$974, RunTimeSignatureAdjuster # imm = 0x3CE
.LBB5_20:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$878, %ax               # imm = 0x36E
	xorw	%cx, %ax
	cmpw	$13957, %ax             # imm = 0x3685
	jne	.LBB5_29
# %bb.21:                               # %global_opt.split70
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%rbx), %rax
	movw	$13957, BasicBlockSignatureTracker # imm = 0x3685
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jge	.LBB5_24
# %bb.22:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$398, %ax               # imm = 0x18E
	cmpw	$14091, %ax             # imm = 0x370B
	jne	.LBB5_30
# %bb.23:                               # %global_opt.split72
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
	movw	$14091, BasicBlockSignatureTracker # imm = 0x370B
	movw	$0, RunTimeSignatureAdjuster
.LBB5_24:                               #   in Loop: Header=BB5_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$432, %ax               # imm = 0x1B0
	cmpw	$14133, %ax             # imm = 0x3735
	jne	.LBB5_29
# %bb.25:                               # %global_opt.split74
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%r14), %rax
	addq	$-1, %rax
	movq	%rax, (%r14)
	movw	$14133, BasicBlockSignatureTracker # imm = 0x3735
	movw	$6396, RunTimeSignatureAdjuster # imm = 0x18FC
	jmp	.LBB5_2
.LBB5_26:                               # %.loopexit
	jmp	.LBB5_27
.LBB5_27:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$5986, %ax              # imm = 0x1762
	xorw	%cx, %ax
	cmpw	$14486, %ax             # imm = 0x3896
	jne	.LBB5_30
# %bb.28:                               # %global_opt.split54
	movabsq	$.L.str.6, %rdi
	movq	net+616, %rsi
	movb	$0, %al
	callq	printf
	movw	$14486, BasicBlockSignatureTracker # imm = 0x3896
	movw	$896, RunTimeSignatureAdjuster # imm = 0x380
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_29:                               # %CFerrorHandler.global_opt.loopexit
	jmp	.LBB5_30
.LBB5_30:                               # %CFerrorHandler.global_opt
	callq	FAULT_DETECTED_CFC
.Lfunc_end5:
	.size	global_opt, .Lfunc_end5-global_opt
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
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-16(%rbp), %eax
	movw	$14897, BasicBlockSignatureTracker # imm = 0x3A31
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	jge	.LBB6_3
# %bb.1:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$254, %ax
	cmpw	$15055, %ax             # imm = 0x3ACF
	jne	.LBB6_15
# %bb.2:                                # %main.split
	movl	$-1, -12(%rbp)
	movw	$15055, BasicBlockSignatureTracker # imm = 0x3ACF
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB6_13
.LBB6_3:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$295, %ax               # imm = 0x127
	cmpw	$15126, %ax             # imm = 0x3B16
	jne	.LBB6_15
# %bb.4:                                # %main.split21
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$624, %edx              # imm = 0x270
	callq	memset
	movq	$10000000, net+528      # imm = 0x989680
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movl	$net, %edi
	callq	strcpy
	movw	$15126, BasicBlockSignatureTracker # imm = 0x3B16
	movw	$0, RunTimeSignatureAdjuster
	movq	%rbx, %rdi
	callq	read_min
	movw	$15126, BasicBlockSignatureTracker # imm = 0x3B16
	movw	$0, RunTimeSignatureAdjuster
	movw	$15126, BasicBlockSignatureTracker # imm = 0x3B16
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB6_7
# %bb.5:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$250, %ax
	cmpw	$15340, %ax             # imm = 0x3BEC
	jne	.LBB6_15
# %bb.6:                                # %main.split25
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	movw	$15340, BasicBlockSignatureTracker # imm = 0x3BEC
	movw	$0, RunTimeSignatureAdjuster
	callq	getfree
	movw	$15340, BasicBlockSignatureTracker # imm = 0x3BEC
	movw	$291, RunTimeSignatureAdjuster # imm = 0x123
	movl	$-1, -12(%rbp)
	movw	$15340, BasicBlockSignatureTracker # imm = 0x3BEC
	movw	$291, RunTimeSignatureAdjuster # imm = 0x123
	jmp	.LBB6_13
.LBB6_7:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1935, %ax              # imm = 0x78F
	cmpw	$15513, %ax             # imm = 0x3C99
	jne	.LBB6_15
# %bb.8:                                # %main.split27
	movabsq	$.L.str.13, %rdi
	movq	net+408, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	callq	primal_start_artificial
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	callq	global_opt
	movabsq	$.L.str.14, %rdi
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.15, %rdi
	movabsq	$net, %rsi
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	callq	write_circulations
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	movw	$15513, BasicBlockSignatureTracker # imm = 0x3C99
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB6_11
# %bb.9:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$373, %ax               # imm = 0x175
	cmpw	$15852, %ax             # imm = 0x3DEC
	jne	.LBB6_15
# %bb.10:                               # %main.split29
	movabsq	$net, %rdi
	movw	$15852, BasicBlockSignatureTracker # imm = 0x3DEC
	movw	$1536, RunTimeSignatureAdjuster # imm = 0x600
	callq	getfree
	movw	$15852, BasicBlockSignatureTracker # imm = 0x3DEC
	movw	$1536, RunTimeSignatureAdjuster # imm = 0x600
	movl	$-1, -12(%rbp)
	movw	$15852, BasicBlockSignatureTracker # imm = 0x3DEC
	movw	$1827, RunTimeSignatureAdjuster # imm = 0x723
	jmp	.LBB6_13
.LBB6_11:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$683, %ax               # imm = 0x2AB
	cmpw	$15922, %ax             # imm = 0x3E32
	jne	.LBB6_15
# %bb.12:                               # %main.split31
	movabsq	$net, %rdi
	movw	$15922, BasicBlockSignatureTracker # imm = 0x3E32
	movw	$1502, RunTimeSignatureAdjuster # imm = 0x5DE
	callq	getfree
	movw	$15922, BasicBlockSignatureTracker # imm = 0x3E32
	movw	$1502, RunTimeSignatureAdjuster # imm = 0x5DE
	movl	$0, -12(%rbp)
	movw	$15922, BasicBlockSignatureTracker # imm = 0x3E32
	movw	$1277, RunTimeSignatureAdjuster # imm = 0x4FD
.LBB6_13:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1173, %ax              # imm = 0x495
	xorw	%cx, %ax
	cmpw	$15962, %ax             # imm = 0x3E5A
	jne	.LBB6_15
# %bb.14:                               # %main.split23
	movl	-12(%rbp), %eax
	movw	$15962, BasicBlockSignatureTracker # imm = 0x3E5A
	movw	$0, RunTimeSignatureAdjuster
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_15:                               # %CFerrorHandler.main
	callq	FAULT_DETECTED_CFC
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
                                        # -- End function
	.globl	refresh_neighbour_lists # -- Begin function refresh_neighbour_lists
	.p2align	4, 0x90
	.type	refresh_neighbour_lists,@function
refresh_neighbour_lists:                # @refresh_neighbour_lists
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$11646, %ax             # imm = 0x2D7E
	xorw	%cx, %ax
	cmpw	$16358, %ax             # imm = 0x3FE6
	jne	.LBB7_22
# %bb.1:                                # %refresh_neighbour_lists.split59
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$11646, %ax             # imm = 0x2D7E
	xorw	%cx, %ax
	cmpw	$16358, %ax             # imm = 0x3FE6
	jne	.LBB7_22
# %bb.2:                                # %refresh_neighbour_lists.split41
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$11646, %ax             # imm = 0x2D7E
	xorw	%cx, %ax
	cmpw	$16358, %ax             # imm = 0x3FE6
	jne	.LBB7_22
# %bb.3:                                # %refresh_neighbour_lists.split
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	movq	552(%rdi), %rdi
	movq	%rdi, (%rsi)
	movq	(%rdx), %rdi
	movq	560(%rdi), %rdi
	movq	%rdi, (%rcx)
	movw	$16358, BasicBlockSignatureTracker # imm = 0x3FE6
	movw	$0, RunTimeSignatureAdjuster
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %ax
	xorw	$32627, %di             # imm = 0x7F73
	xorw	%ax, %di
	cmpw	$16533, %di             # imm = 0x4095
	jne	.LBB7_21
# %bb.5:                                # %refresh_neighbour_lists.split43
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	(%rsi), %rax
	movq	(%rcx), %rdi
	movw	$16533, BasicBlockSignatureTracker # imm = 0x4095
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %rax
	jae	.LBB7_10
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$110, %ax
	cmpw	$16635, %ax             # imm = 0x40FB
	jne	.LBB7_21
# %bb.7:                                # %refresh_neighbour_lists.split45
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	(%rsi), %rax
	movq	$0, 64(%rax)
	movq	(%rsi), %rax
	movq	$0, 56(%rax)
	movw	$16635, BasicBlockSignatureTracker # imm = 0x40FB
	movw	$0, RunTimeSignatureAdjuster
# %bb.8:                                #   in Loop: Header=BB7_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$449, %ax               # imm = 0x1C1
	cmpw	$16698, %ax             # imm = 0x413A
	jne	.LBB7_21
# %bb.9:                                # %refresh_neighbour_lists.split49
                                        #   in Loop: Header=BB7_4 Depth=1
	movq	(%rsi), %rax
	addq	$104, %rax
	movq	%rax, (%rsi)
	movw	$16698, BasicBlockSignatureTracker # imm = 0x413A
	movw	$32476, RunTimeSignatureAdjuster # imm = 0x7EDC
	jmp	.LBB7_4
.LBB7_10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$314, %ax               # imm = 0x13A
	cmpw	$16815, %ax             # imm = 0x41AF
	jne	.LBB7_22
# %bb.11:                               # %refresh_neighbour_lists.split47
	movq	(%rdx), %rax
	movq	568(%rax), %rax
	movq	%rax, (%r8)
	movq	(%rdx), %rax
	movq	576(%rax), %rax
	movq	%rax, (%rcx)
	movw	$16815, BasicBlockSignatureTracker # imm = 0x41AF
	movw	$0, RunTimeSignatureAdjuster
.LBB7_12:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$93, %ax
	xorw	%dx, %ax
	cmpw	$16882, %ax             # imm = 0x41F2
	jne	.LBB7_20
# %bb.13:                               # %refresh_neighbour_lists.split51
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	(%r8), %rax
	movq	(%rcx), %rdx
	movw	$16882, BasicBlockSignatureTracker # imm = 0x41F2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	jae	.LBB7_18
# %bb.14:                               #   in Loop: Header=BB7_12 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1018, %ax              # imm = 0x3FA
	cmpw	$16904, %ax             # imm = 0x4208
	jne	.LBB7_20
# %bb.15:                               # %refresh_neighbour_lists.split53
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	(%r8), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%r8), %rdx
	movq	%rax, 32(%rdx)
	movq	(%r8), %rax
	movq	(%r8), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, 56(%rdx)
	movq	(%r8), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%r8), %rdx
	movq	%rax, 40(%rdx)
	movq	(%r8), %rax
	movq	(%r8), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movw	$16904, BasicBlockSignatureTracker # imm = 0x4208
	movw	$0, RunTimeSignatureAdjuster
# %bb.16:                               #   in Loop: Header=BB7_12 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$228, %ax
	cmpw	$17132, %ax             # imm = 0x42EC
	jne	.LBB7_20
# %bb.17:                               # %refresh_neighbour_lists.split57
                                        #   in Loop: Header=BB7_12 Depth=1
	movq	(%r8), %rax
	addq	$64, %rax
	movq	%rax, (%r8)
	movw	$17132, BasicBlockSignatureTracker # imm = 0x42EC
	movw	$835, RunTimeSignatureAdjuster # imm = 0x343
	jmp	.LBB7_12
.LBB7_18:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$688, %ax               # imm = 0x2B0
	cmpw	$17218, %ax             # imm = 0x4342
	jne	.LBB7_22
# %bb.19:                               # %refresh_neighbour_lists.split55
	movw	$17218, BasicBlockSignatureTracker # imm = 0x4342
	movw	$21168, RunTimeSignatureAdjuster # imm = 0x52B0
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB7_20:                               # %CFerrorHandler.refresh_neighbour_lists.loopexit
	jmp	.LBB7_22
.LBB7_21:                               # %CFerrorHandler.refresh_neighbour_lists.loopexit1
	jmp	.LBB7_22
.LBB7_22:                               # %CFerrorHandler.refresh_neighbour_lists
	callq	FAULT_DETECTED_CFC
.Lfunc_end7:
	.size	refresh_neighbour_lists, .Lfunc_end7-refresh_neighbour_lists
	.cfi_endproc
                                        # -- End function
	.globl	refresh_potential       # -- Begin function refresh_potential
	.p2align	4, 0x90
	.type	refresh_potential,@function
refresh_potential:                      # @refresh_potential
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-32302, %ax            # imm = 0x81D2
	xorw	%cx, %ax
	cmpw	$17299, %ax             # imm = 0x4393
	jne	.LBB8_37
# %bb.1:                                # %refresh_potential.split93
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-32302, %ax            # imm = 0x81D2
	xorw	%cx, %ax
	cmpw	$17299, %ax             # imm = 0x4393
	jne	.LBB8_37
# %bb.2:                                # %refresh_potential.split91
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rdi, (%rcx)
	movq	(%rcx), %rcx
	movq	552(%rcx), %rcx
	movq	%rcx, (%rsi)
	movq	$0, (%rdx)
	movq	(%rsi), %rcx
	movq	$-100000000, (%rcx)     # imm = 0xFA0A1F00
	movq	(%rsi), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	%rcx, (%r8)
	movw	$17299, BasicBlockSignatureTracker # imm = 0x4393
	movw	$0, RunTimeSignatureAdjuster
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_19 Depth 2
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1780, %cx              # imm = 0x6F4
	xorw	%di, %cx
	cmpw	$17767, %cx             # imm = 0x4567
	jne	.LBB8_36
# %bb.4:                                # %refresh_potential.split
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%rax), %rcx
	movq	(%rsi), %rdi
	movw	$17767, BasicBlockSignatureTracker # imm = 0x4567
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %rcx
	je	.LBB8_32
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$131, %cx
	cmpw	$17892, %cx             # imm = 0x45E4
	jne	.LBB8_36
# %bb.6:                                # %refresh_potential.split63
                                        #   in Loop: Header=BB8_3 Depth=1
	movw	$17892, BasicBlockSignatureTracker # imm = 0x45E4
	movw	$0, RunTimeSignatureAdjuster
.LBB8_7:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1, %cx
	xorw	%di, %cx
	cmpw	$17893, %cx             # imm = 0x45E5
	jne	.LBB8_35
# %bb.8:                                # %refresh_potential.split67
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	(%rax), %rcx
	movw	$17893, BasicBlockSignatureTracker # imm = 0x45E5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB8_17
# %bb.9:                                #   in Loop: Header=BB8_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$921, %cx               # imm = 0x399
	cmpw	$18044, %cx             # imm = 0x467C
	jne	.LBB8_35
# %bb.10:                               # %refresh_potential.split69
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	(%rax), %rcx
	movl	8(%rcx), %ecx
	movw	$18044, BasicBlockSignatureTracker # imm = 0x467C
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$1, %ecx
	jne	.LBB8_13
# %bb.11:                               #   in Loop: Header=BB8_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$229, %cx
	cmpw	$18073, %cx             # imm = 0x4699
	jne	.LBB8_35
# %bb.12:                               # %refresh_potential.split73
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	(%rax), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdi
	movq	24(%rdi), %rdi
	addq	(%rdi), %rcx
	movq	(%rax), %rdi
	movq	%rcx, (%rdi)
	movw	$18073, BasicBlockSignatureTracker # imm = 0x4699
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB8_15
.LBB8_13:                               #   in Loop: Header=BB8_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$192, %cx
	cmpw	$18108, %cx             # imm = 0x46BC
	jne	.LBB8_35
# %bb.14:                               # %refresh_potential.split75
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdi
	movq	48(%rdi), %rdi
	subq	(%rdi), %rcx
	movq	(%rax), %rdi
	movq	%rcx, (%rdi)
	movq	(%rdx), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rdx)
	movw	$18108, BasicBlockSignatureTracker # imm = 0x46BC
	movw	$37, RunTimeSignatureAdjuster
.LBB8_15:                               #   in Loop: Header=BB8_7 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$389, %cx               # imm = 0x185
	xorw	%di, %cx
	cmpw	$18204, %cx             # imm = 0x471C
	jne	.LBB8_35
# %bb.16:                               # %refresh_potential.split77
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	(%rax), %rcx
	movq	%rcx, (%r8)
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, (%rax)
	movw	$18204, BasicBlockSignatureTracker # imm = 0x471C
	movw	$760, RunTimeSignatureAdjuster # imm = 0x2F8
	jmp	.LBB8_7
.LBB8_17:                               #   in Loop: Header=BB8_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$641, %cx               # imm = 0x281
	cmpw	$18276, %cx             # imm = 0x4764
	jne	.LBB8_36
# %bb.18:                               # %refresh_potential.split71
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%r8), %rcx
	movq	%rcx, (%rax)
	movw	$18276, BasicBlockSignatureTracker # imm = 0x4764
	movw	$0, RunTimeSignatureAdjuster
.LBB8_19:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$204, %cx
	xorw	%di, %cx
	cmpw	$18344, %cx             # imm = 0x47A8
	jne	.LBB8_34
# %bb.20:                               # %refresh_potential.split79
                                        #   in Loop: Header=BB8_19 Depth=2
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movw	$18344, BasicBlockSignatureTracker # imm = 0x47A8
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB8_29
# %bb.21:                               #   in Loop: Header=BB8_19 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$4015, %cx              # imm = 0xFAF
	cmpw	$18439, %cx             # imm = 0x4807
	jne	.LBB8_34
# %bb.22:                               # %refresh_potential.split81
                                        #   in Loop: Header=BB8_19 Depth=2
	movq	(%rax), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, (%r8)
	movq	(%r8), %rcx
	movw	$18439, BasicBlockSignatureTracker # imm = 0x4807
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$29, %cx
	cmpw	$18458, %cx             # imm = 0x481A
	jne	.LBB8_36
# %bb.24:                               # %refresh_potential.split85
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%r8), %rcx
	movq	%rcx, (%rax)
	movw	$18458, BasicBlockSignatureTracker # imm = 0x481A
	movw	$4018, RunTimeSignatureAdjuster # imm = 0xFB2
	jmp	.LBB8_30
.LBB8_25:                               #   in Loop: Header=BB8_19 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$116, %cx
	cmpw	$18547, %cx             # imm = 0x4873
	jne	.LBB8_34
# %bb.26:                               # %refresh_potential.split87
                                        #   in Loop: Header=BB8_19 Depth=2
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, (%rax)
	movw	$18547, BasicBlockSignatureTracker # imm = 0x4873
	movw	$0, RunTimeSignatureAdjuster
# %bb.27:                               #   in Loop: Header=BB8_19 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	xorw	$234, %cx
	cmpw	$18585, %cx             # imm = 0x4899
	jne	.LBB8_34
# %bb.28:                               # %refresh_potential.split89
                                        #   in Loop: Header=BB8_19 Depth=2
	movw	$18585, BasicBlockSignatureTracker # imm = 0x4899
	movw	$4093, RunTimeSignatureAdjuster # imm = 0xFFD
	jmp	.LBB8_19
.LBB8_29:                               # %.loopexit
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_30
.LBB8_30:                               #   in Loop: Header=BB8_3 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$3501, %cx              # imm = 0xDAD
	xorw	%di, %cx
	cmpw	$18949, %cx             # imm = 0x4A05
	jne	.LBB8_36
# %bb.31:                               # %refresh_potential.split83
                                        #   in Loop: Header=BB8_3 Depth=1
	movw	$18949, BasicBlockSignatureTracker # imm = 0x4A05
	movw	$2454, RunTimeSignatureAdjuster # imm = 0x996
	jmp	.LBB8_3
.LBB8_32:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3840, %ax              # imm = 0xF00
	cmpw	$19047, %ax             # imm = 0x4A67
	jne	.LBB8_37
# %bb.33:                               # %refresh_potential.split65
	movq	(%rdx), %rax
	movw	$19047, BasicBlockSignatureTracker # imm = 0x4A67
	movw	$-30636, RunTimeSignatureAdjuster # imm = 0x8854
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB8_34:                               # %CFerrorHandler.refresh_potential.loopexit
	jmp	.LBB8_37
.LBB8_35:                               # %CFerrorHandler.refresh_potential.loopexit1
	jmp	.LBB8_37
.LBB8_36:                               # %CFerrorHandler.refresh_potential.loopexit2
	jmp	.LBB8_37
.LBB8_37:                               # %CFerrorHandler.refresh_potential
	callq	FAULT_DETECTED_CFC
.Lfunc_end8:
	.size	refresh_potential, .Lfunc_end8-refresh_potential
	.cfi_endproc
                                        # -- End function
	.globl	flow_cost               # -- Begin function flow_cost
	.p2align	4, 0x90
	.type	flow_cost,@function
flow_cost:                              # @flow_cost
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$31414, %ax             # imm = 0x7AB6
	xorw	%cx, %ax
	cmpw	$19147, %ax             # imm = 0x4ACB
	jne	.LBB9_53
# %bb.1:                                # %flow_cost.split
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rdi, (%rax)
	movq	$0, (%r9)
	movq	$0, (%r8)
	movq	(%rax), %rdi
	movq	576(%rdi), %rdi
	movq	%rdi, (%rdx)
	movq	(%rax), %rdi
	movq	568(%rdi), %rdi
	movq	%rdi, (%r10)
	movw	$19147, BasicBlockSignatureTracker # imm = 0x4ACB
	movw	$0, RunTimeSignatureAdjuster
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$23, %di
	xorw	%cx, %di
	cmpw	$19164, %di             # imm = 0x4ADC
	jne	.LBB9_52
# %bb.3:                                # %flow_cost.split91
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%r10), %rcx
	movq	(%rdx), %rdi
	movw	$19164, BasicBlockSignatureTracker # imm = 0x4ADC
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %rcx
	je	.LBB9_14
# %bb.4:                                #   in Loop: Header=BB9_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$33, %cx
	cmpw	$19197, %cx             # imm = 0x4AFD
	jne	.LBB9_52
# %bb.5:                                # %flow_cost.split93
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%r10), %rcx
	movl	24(%rcx), %ecx
	movw	$19197, BasicBlockSignatureTracker # imm = 0x4AFD
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %ecx
	jne	.LBB9_8
# %bb.6:                                #   in Loop: Header=BB9_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$310, %cx               # imm = 0x136
	cmpw	$19403, %cx             # imm = 0x4BCB
	jne	.LBB9_52
# %bb.7:                                # %flow_cost.split97
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%r10), %rcx
	movq	$1, 48(%rcx)
	movw	$19403, BasicBlockSignatureTracker # imm = 0x4BCB
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB9_10
.LBB9_8:                                #   in Loop: Header=BB9_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1759, %cx              # imm = 0x6DF
	cmpw	$19490, %cx             # imm = 0x4C22
	jne	.LBB9_52
# %bb.9:                                # %flow_cost.split99
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%r10), %rcx
	movq	$0, 48(%rcx)
	movw	$19490, BasicBlockSignatureTracker # imm = 0x4C22
	movw	$2025, RunTimeSignatureAdjuster # imm = 0x7E9
.LBB9_10:                               #   in Loop: Header=BB9_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$1813, %cx              # imm = 0x715
	xorw	%di, %cx
	cmpw	$19678, %cx             # imm = 0x4CDE
	jne	.LBB9_52
# %bb.11:                               # %flow_cost.split101
                                        #   in Loop: Header=BB9_2 Depth=1
	movw	$19678, BasicBlockSignatureTracker # imm = 0x4CDE
	movw	$0, RunTimeSignatureAdjuster
# %bb.12:                               #   in Loop: Header=BB9_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$346, %cx               # imm = 0x15A
	cmpw	$19844, %cx             # imm = 0x4D84
	jne	.LBB9_52
# %bb.13:                               # %flow_cost.split103
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%r10), %rcx
	addq	$64, %rcx
	movq	%rcx, (%r10)
	movw	$19844, BasicBlockSignatureTracker # imm = 0x4D84
	movw	$1871, RunTimeSignatureAdjuster # imm = 0x74F
	jmp	.LBB9_2
.LBB9_14:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1888, %cx              # imm = 0x760
	cmpw	$19900, %cx             # imm = 0x4DBC
	jne	.LBB9_53
# %bb.15:                               # %flow_cost.split95
	movq	(%rax), %rcx
	movq	560(%rcx), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rcx
	movq	552(%rcx), %rcx
	movq	%rcx, (%rsi)
	movq	(%rsi), %rcx
	addq	$104, %rcx
	movq	%rcx, (%rsi)
	movw	$19900, BasicBlockSignatureTracker # imm = 0x4DBC
	movw	$0, RunTimeSignatureAdjuster
.LBB9_16:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$918, %cx               # imm = 0x396
	xorw	%di, %cx
	cmpw	$20010, %cx             # imm = 0x4E2A
	jne	.LBB9_51
# %bb.17:                               # %flow_cost.split105
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	(%rsi), %rcx
	movq	(%rdx), %rdi
	movw	$20010, BasicBlockSignatureTracker # imm = 0x4E2A
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %rcx
	je	.LBB9_22
# %bb.18:                               #   in Loop: Header=BB9_16 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$137, %cx
	cmpw	$20131, %cx             # imm = 0x4EA3
	jne	.LBB9_51
# %bb.19:                               # %flow_cost.split107
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	(%rsi), %rcx
	movq	80(%rcx), %rcx
	movq	(%rsi), %rdi
	movq	48(%rdi), %rdi
	movq	%rcx, 48(%rdi)
	movw	$20131, BasicBlockSignatureTracker # imm = 0x4EA3
	movw	$0, RunTimeSignatureAdjuster
# %bb.20:                               #   in Loop: Header=BB9_16 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$9, %cx
	cmpw	$20138, %cx             # imm = 0x4EAA
	jne	.LBB9_51
# %bb.21:                               # %flow_cost.split111
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	(%rsi), %rcx
	addq	$104, %rcx
	movq	%rcx, (%rsi)
	movw	$20138, BasicBlockSignatureTracker # imm = 0x4EAA
	movw	$790, RunTimeSignatureAdjuster # imm = 0x316
	jmp	.LBB9_16
.LBB9_22:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$401, %cx               # imm = 0x191
	cmpw	$20411, %cx             # imm = 0x4FBB
	jne	.LBB9_53
# %bb.23:                               # %flow_cost.split109
	movq	(%rax), %rcx
	movq	576(%rcx), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rcx
	movq	568(%rcx), %rcx
	movq	%rcx, (%r10)
	movw	$20411, BasicBlockSignatureTracker # imm = 0x4FBB
	movw	$0, RunTimeSignatureAdjuster
.LBB9_24:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$76, %cx
	xorw	%si, %cx
	cmpw	$20471, %cx             # imm = 0x4FF7
	jne	.LBB9_50
# %bb.25:                               # %flow_cost.split113
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	(%rdx), %rsi
	movw	$20471, BasicBlockSignatureTracker # imm = 0x4FF7
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rsi, %rcx
	je	.LBB9_48
# %bb.26:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$8186, %cx              # imm = 0x1FFA
	cmpw	$20493, %cx             # imm = 0x500D
	jne	.LBB9_50
# %bb.27:                               # %flow_cost.split115
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	48(%rcx), %rcx
	movw	$20493, BasicBlockSignatureTracker # imm = 0x500D
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB9_44
# %bb.28:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$153, %cx
	cmpw	$20628, %cx             # imm = 0x5094
	jne	.LBB9_50
# %bb.29:                               # %flow_cost.split119
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	8(%rcx), %rcx
	movl	96(%rcx), %ecx
	movw	$20628, BasicBlockSignatureTracker # imm = 0x5094
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	jge	.LBB9_32
# %bb.30:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$39, %cx
	cmpw	$20659, %cx             # imm = 0x50B3
	jne	.LBB9_50
# %bb.31:                               # %flow_cost.split123
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	16(%rcx), %rcx
	movl	96(%rcx), %ecx
	movw	$20659, BasicBlockSignatureTracker # imm = 0x50B3
	movw	$39, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	jg	.LBB9_40
.LBB9_32:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$490, %cx               # imm = 0x1EA
	xorw	%si, %cx
	cmpw	$20862, %cx             # imm = 0x517E
	jne	.LBB9_50
# %bb.33:                               # %flow_cost.split125
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	8(%rcx), %rcx
	movl	96(%rcx), %ecx
	movw	$20862, BasicBlockSignatureTracker # imm = 0x517E
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	jne	.LBB9_36
# %bb.34:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$626, %cx               # imm = 0x272
	cmpw	$21260, %cx             # imm = 0x530C
	jne	.LBB9_50
# %bb.35:                               # %flow_cost.split131
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rsi
	subq	528(%rsi), %rcx
	addq	(%r8), %rcx
	movq	%rcx, (%r8)
	movq	(%r9), %rcx
	addq	$1, %rcx
	movq	%rcx, (%r9)
	movw	$21260, BasicBlockSignatureTracker # imm = 0x530C
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB9_38
.LBB9_36:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1227, %cx              # imm = 0x4CB
	cmpw	$21941, %cx             # imm = 0x55B5
	jne	.LBB9_50
# %bb.37:                               # %flow_cost.split129
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	movq	(%rcx), %rcx
	addq	(%r8), %rcx
	movq	%rcx, (%r8)
	movw	$21941, BasicBlockSignatureTracker # imm = 0x55B5
	movw	$1721, RunTimeSignatureAdjuster # imm = 0x6B9
.LBB9_38:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$1088, %cx              # imm = 0x440
	xorw	%si, %cx
	cmpw	$22348, %cx             # imm = 0x574C
	jne	.LBB9_50
# %bb.39:                               # %flow_cost.split133
                                        #   in Loop: Header=BB9_24 Depth=1
	movw	$22348, BasicBlockSignatureTracker # imm = 0x574C
	movw	$2047, RunTimeSignatureAdjuster # imm = 0x7FF
	jmp	.LBB9_42
.LBB9_40:                               # %Buffer__
                                        #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$12509, %cx             # imm = 0x30DD
	cmpw	$24686, %cx             # imm = 0x606E
	jne	.LBB9_50
# %bb.41:                               # %flow_cost.split127
                                        #   in Loop: Header=BB9_24 Depth=1
	movw	$24686, BasicBlockSignatureTracker # imm = 0x606E
	movw	$12509, RunTimeSignatureAdjuster # imm = 0x30DD
.LBB9_42:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$1832, %cx              # imm = 0x728
	xorw	%si, %cx
	cmpw	$22427, %cx             # imm = 0x579B
	jne	.LBB9_50
# %bb.43:                               # %flow_cost.split135
                                        #   in Loop: Header=BB9_24 Depth=1
	movw	$22427, BasicBlockSignatureTracker # imm = 0x579B
	movw	$1942, RunTimeSignatureAdjuster # imm = 0x796
.LBB9_44:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$1980, %cx              # imm = 0x7BC
	xorw	%si, %cx
	cmpw	$22449, %cx             # imm = 0x57B1
	jne	.LBB9_50
# %bb.45:                               # %flow_cost.split121
                                        #   in Loop: Header=BB9_24 Depth=1
	movw	$22449, BasicBlockSignatureTracker # imm = 0x57B1
	movw	$0, RunTimeSignatureAdjuster
# %bb.46:                               #   in Loop: Header=BB9_24 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$97, %cx
	cmpw	$22480, %cx             # imm = 0x57D0
	jne	.LBB9_50
# %bb.47:                               # %flow_cost.split137
                                        #   in Loop: Header=BB9_24 Depth=1
	movq	(%r10), %rcx
	addq	$64, %rcx
	movq	%rcx, (%r10)
	movw	$22480, BasicBlockSignatureTracker # imm = 0x57D0
	movw	$6251, RunTimeSignatureAdjuster # imm = 0x186B
	jmp	.LBB9_24
.LBB9_48:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$6055, %cx              # imm = 0x17A7
	cmpw	$22608, %cx             # imm = 0x5850
	jne	.LBB9_53
# %bb.49:                               # %flow_cost.split117
	movq	(%r9), %rcx
	cvtsi2sdq	%rcx, %xmm0
	movq	(%rax), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	(%r8), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	movw	$22608, BasicBlockSignatureTracker # imm = 0x5850
	movw	$30628, RunTimeSignatureAdjuster # imm = 0x77A4
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB9_50:                               # %CFerrorHandler.flow_cost.loopexit
	jmp	.LBB9_53
.LBB9_51:                               # %CFerrorHandler.flow_cost.loopexit1
	jmp	.LBB9_53
.LBB9_52:                               # %CFerrorHandler.flow_cost.loopexit2
	jmp	.LBB9_53
.LBB9_53:                               # %CFerrorHandler.flow_cost
	callq	FAULT_DETECTED_CFC
.Lfunc_end9:
	.size	flow_cost, .Lfunc_end9-flow_cost
	.cfi_endproc
                                        # -- End function
	.globl	flow_org_cost           # -- Begin function flow_org_cost
	.p2align	4, 0x90
	.type	flow_org_cost,@function
flow_org_cost:                          # @flow_org_cost
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
	movw	$22685, BasicBlockSignatureTracker # imm = 0x589D
	movw	$0, RunTimeSignatureAdjuster
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$39, %ax
	xorw	%cx, %ax
	cmpw	$22714, %ax             # imm = 0x58BA
	jne	.LBB10_51
# %bb.2:                                # %flow_org_cost.split
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movw	$22714, BasicBlockSignatureTracker # imm = 0x58BA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB10_13
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$86, %ax
	cmpw	$22764, %ax             # imm = 0x58EC
	jne	.LBB10_51
# %bb.4:                                # %flow_org_cost.split86
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movw	$22764, BasicBlockSignatureTracker # imm = 0x58EC
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	jne	.LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$502, %ax               # imm = 0x1F6
	cmpw	$22810, %ax             # imm = 0x591A
	jne	.LBB10_51
# %bb.6:                                # %flow_org_cost.split90
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$1, 48(%rax)
	movw	$22810, BasicBlockSignatureTracker # imm = 0x591A
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB10_9
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$304, %ax               # imm = 0x130
	cmpw	$23004, %ax             # imm = 0x59DC
	jne	.LBB10_51
# %bb.8:                                # %flow_org_cost.split92
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movw	$23004, BasicBlockSignatureTracker # imm = 0x59DC
	movw	$198, RunTimeSignatureAdjuster
.LBB10_9:                               #   in Loop: Header=BB10_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$814, %ax               # imm = 0x32E
	xorw	%cx, %ax
	cmpw	$23092, %ax             # imm = 0x5A34
	jne	.LBB10_51
# %bb.10:                               # %flow_org_cost.split94
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	$23092, BasicBlockSignatureTracker # imm = 0x5A34
	movw	$0, RunTimeSignatureAdjuster
# %bb.11:                               #   in Loop: Header=BB10_1 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$111, %ax
	cmpw	$23131, %ax             # imm = 0x5A5B
	jne	.LBB10_51
# %bb.12:                               # %flow_org_cost.split96
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	movw	$23131, BasicBlockSignatureTracker # imm = 0x5A5B
	movw	$710, RunTimeSignatureAdjuster # imm = 0x2C6
	jmp	.LBB10_1
.LBB10_13:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$595, %ax               # imm = 0x253
	cmpw	$23273, %ax             # imm = 0x5AE9
	jne	.LBB10_52
# %bb.14:                               # %flow_org_cost.split88
	movq	-16(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
	movw	$23273, BasicBlockSignatureTracker # imm = 0x5AE9
	movw	$0, RunTimeSignatureAdjuster
.LBB10_15:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$17, %ax
	xorw	%cx, %ax
	cmpw	$23288, %ax             # imm = 0x5AF8
	jne	.LBB10_50
# %bb.16:                               # %flow_org_cost.split98
                                        #   in Loop: Header=BB10_15 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movw	$23288, BasicBlockSignatureTracker # imm = 0x5AF8
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB10_21
# %bb.17:                               #   in Loop: Header=BB10_15 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$300, %ax               # imm = 0x12C
	cmpw	$23508, %ax             # imm = 0x5BD4
	jne	.LBB10_50
# %bb.18:                               # %flow_org_cost.split100
                                        #   in Loop: Header=BB10_15 Depth=1
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movw	$23508, BasicBlockSignatureTracker # imm = 0x5BD4
	movw	$0, RunTimeSignatureAdjuster
# %bb.19:                               #   in Loop: Header=BB10_15 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$61, %ax
	cmpw	$23529, %ax             # imm = 0x5BE9
	jne	.LBB10_50
# %bb.20:                               # %flow_org_cost.split104
                                        #   in Loop: Header=BB10_15 Depth=1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
	movw	$23529, BasicBlockSignatureTracker # imm = 0x5BE9
	movw	$256, RunTimeSignatureAdjuster # imm = 0x100
	jmp	.LBB10_15
.LBB10_21:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1717, %ax              # imm = 0x6B5
	cmpw	$23629, %ax             # imm = 0x5C4D
	jne	.LBB10_52
# %bb.22:                               # %flow_org_cost.split102
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
	movw	$23629, BasicBlockSignatureTracker # imm = 0x5C4D
	movw	$0, RunTimeSignatureAdjuster
.LBB10_23:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$178, %ax
	xorw	%cx, %ax
	cmpw	$23807, %ax             # imm = 0x5CFF
	jne	.LBB10_49
# %bb.24:                               # %flow_org_cost.split106
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movw	$23807, BasicBlockSignatureTracker # imm = 0x5CFF
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB10_47
# %bb.25:                               #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$476, %ax               # imm = 0x1DC
	cmpw	$23843, %ax             # imm = 0x5D23
	jne	.LBB10_49
# %bb.26:                               # %flow_org_cost.split108
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movw	$23843, BasicBlockSignatureTracker # imm = 0x5D23
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB10_43
# %bb.27:                               #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$17, %ax
	cmpw	$23858, %ax             # imm = 0x5D32
	jne	.LBB10_49
# %bb.28:                               # %flow_org_cost.split112
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	movw	$23858, BasicBlockSignatureTracker # imm = 0x5D32
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jge	.LBB10_31
# %bb.29:                               #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$142, %ax
	cmpw	$23996, %ax             # imm = 0x5DBC
	jne	.LBB10_49
# %bb.30:                               # %flow_org_cost.split116
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	movw	$23996, BasicBlockSignatureTracker # imm = 0x5DBC
	movw	$142, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jg	.LBB10_39
.LBB10_31:                              #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$235, %ax
	xorw	%cx, %ax
	cmpw	$24025, %ax             # imm = 0x5DD9
	jne	.LBB10_49
# %bb.32:                               # %flow_org_cost.split118
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	movw	$24025, BasicBlockSignatureTracker # imm = 0x5DD9
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jne	.LBB10_35
# %bb.33:                               #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$53, %ax
	cmpw	$24044, %ax             # imm = 0x5DEC
	jne	.LBB10_49
# %bb.34:                               # %flow_org_cost.split124
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	528(%rcx), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movw	$24044, BasicBlockSignatureTracker # imm = 0x5DEC
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB10_37
.LBB10_35:                              #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$54, %ax
	cmpw	$24047, %ax             # imm = 0x5DEF
	jne	.LBB10_49
# %bb.36:                               # %flow_org_cost.split122
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movw	$24047, BasicBlockSignatureTracker # imm = 0x5DEF
	movw	$3, RunTimeSignatureAdjuster
.LBB10_37:                              #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1015, %ax              # imm = 0x3F7
	xorw	%cx, %ax
	cmpw	$24091, %ax             # imm = 0x5E1B
	jne	.LBB10_49
# %bb.38:                               # %flow_org_cost.split126
                                        #   in Loop: Header=BB10_23 Depth=1
	movw	$24091, BasicBlockSignatureTracker # imm = 0x5E1B
	movw	$935, RunTimeSignatureAdjuster # imm = 0x3A7
	jmp	.LBB10_41
.LBB10_39:                              # %Buffer__
                                        #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$30911, %ax             # imm = 0x78BF
	cmpw	$9475, %ax              # imm = 0x2503
	jne	.LBB10_49
# %bb.40:                               # %flow_org_cost.split120
                                        #   in Loop: Header=BB10_23 Depth=1
	movw	$9475, BasicBlockSignatureTracker # imm = 0x2503
	movw	$30911, RunTimeSignatureAdjuster # imm = 0x78BF
.LBB10_41:                              #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$924, %ax               # imm = 0x39C
	xorw	%cx, %ax
	cmpw	$24096, %ax             # imm = 0x5E20
	jne	.LBB10_49
# %bb.42:                               # %flow_org_cost.split128
                                        #   in Loop: Header=BB10_23 Depth=1
	movw	$24096, BasicBlockSignatureTracker # imm = 0x5E20
	movw	$771, RunTimeSignatureAdjuster # imm = 0x303
.LBB10_43:                              #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$928, %ax               # imm = 0x3A0
	xorw	%cx, %ax
	cmpw	$24195, %ax             # imm = 0x5E83
	jne	.LBB10_49
# %bb.44:                               # %flow_org_cost.split114
                                        #   in Loop: Header=BB10_23 Depth=1
	movw	$24195, BasicBlockSignatureTracker # imm = 0x5E83
	movw	$0, RunTimeSignatureAdjuster
# %bb.45:                               #   in Loop: Header=BB10_23 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$47, %ax
	cmpw	$24236, %ax             # imm = 0x5EAC
	jne	.LBB10_49
# %bb.46:                               # %flow_org_cost.split130
                                        #   in Loop: Header=BB10_23 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	movw	$24236, BasicBlockSignatureTracker # imm = 0x5EAC
	movw	$737, RunTimeSignatureAdjuster # imm = 0x2E1
	jmp	.LBB10_23
.LBB10_47:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1022, %ax              # imm = 0x3FE
	cmpw	$24321, %ax             # imm = 0x5F01
	jne	.LBB10_52
# %bb.48:                               # %flow_org_cost.split110
	movq	-48(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	movw	$24321, BasicBlockSignatureTracker # imm = 0x5F01
	movw	$0, RunTimeSignatureAdjuster
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB10_49:                              # %CFerrorHandler.flow_org_cost.loopexit
	jmp	.LBB10_52
.LBB10_50:                              # %CFerrorHandler.flow_org_cost.loopexit1
	jmp	.LBB10_52
.LBB10_51:                              # %CFerrorHandler.flow_org_cost.loopexit2
	jmp	.LBB10_52
.LBB10_52:                              # %CFerrorHandler.flow_org_cost
	callq	FAULT_DETECTED_CFC
.Lfunc_end10:
	.size	flow_org_cost, .Lfunc_end10-flow_org_cost
	.cfi_endproc
                                        # -- End function
	.globl	primal_feasible         # -- Begin function primal_feasible
	.p2align	4, 0x90
	.type	primal_feasible,@function
primal_feasible:                        # @primal_feasible
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-23674, %ax            # imm = 0xA386
	xorw	%cx, %ax
	cmpw	$24675, %ax             # imm = 0x6063
	jne	.LBB11_41
# %bb.1:                                # %primal_feasible.split111
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rdi, (%rbx)
	movq	(%rbx), %rax
	movq	584(%rax), %rax
	movq	%rax, (%r14)
	movq	(%rbx), %rax
	movq	592(%rax), %rax
	movq	%rax, (%r13)
	movq	(%rbx), %rax
	movq	552(%rax), %rax
	movq	%rax, (%r12)
	movq	(%rbx), %rax
	movq	560(%rax), %rax
	movq	%rax, (%r15)
	movq	(%r12), %rax
	addq	$104, %rax
	movq	%rax, (%r12)
	movw	$24675, BasicBlockSignatureTracker # imm = 0x6063
	movw	$0, RunTimeSignatureAdjuster
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$326, %ax               # imm = 0x146
	xorw	%cx, %ax
	cmpw	$24869, %ax             # imm = 0x6125
	jne	.LBB11_40
# %bb.3:                                # %primal_feasible.split
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r12), %rax
	movq	(%r15), %rcx
	movw	$24869, BasicBlockSignatureTracker # imm = 0x6125
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jae	.LBB11_36
# %bb.4:                                #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$179, %ax
	cmpw	$24982, %ax             # imm = 0x6196
	jne	.LBB11_40
# %bb.5:                                # %primal_feasible.split79
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r12), %rax
	movq	48(%rax), %rax
	movq	%rax, (%rsi)
	movq	(%r12), %rax
	movq	80(%rax), %rax
	movq	%rax, (%r9)
	movq	(%rsi), %rax
	movq	(%r14), %rcx
	movw	$24982, BasicBlockSignatureTracker # imm = 0x6196
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jb	.LBB11_22
# %bb.6:                                #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1015, %ax              # imm = 0x3F7
	cmpw	$25185, %ax             # imm = 0x6261
	jne	.LBB11_40
# %bb.7:                                # %primal_feasible.split83
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%rsi), %rax
	movq	(%r13), %rcx
	movw	$25185, BasicBlockSignatureTracker # imm = 0x6261
	movw	$1015, RunTimeSignatureAdjuster # imm = 0x3F7
	cmpq	%rcx, %rax
	jae	.LBB11_22
# %bb.8:                                # %Buffer__
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3145, %ax              # imm = 0xC49
	cmpw	$28200, %ax             # imm = 0x6E28
	jne	.LBB11_40
# %bb.9:                                # %primal_feasible.split87
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$28200, BasicBlockSignatureTracker # imm = 0x6E28
	movw	$3145, RunTimeSignatureAdjuster # imm = 0xC49
# %bb.10:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$13, %ax
	xorw	%cx, %ax
	cmpw	$25196, %ax             # imm = 0x626C
	jne	.LBB11_40
# %bb.11:                               # %primal_feasible.split113
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r9), %rax
	movw	$25196, BasicBlockSignatureTracker # imm = 0x626C
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB11_14
# %bb.12:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$174, %ax
	cmpw	$25282, %ax             # imm = 0x62C2
	jne	.LBB11_40
# %bb.13:                               # %primal_feasible.split89
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r9), %rax
	movw	$25282, BasicBlockSignatureTracker # imm = 0x62C2
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB11_16
.LBB11_14:                              #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$488, %ax               # imm = 0x1E8
	cmpw	$25476, %ax             # imm = 0x6384
	jne	.LBB11_40
# %bb.15:                               # %primal_feasible.split91
                                        #   in Loop: Header=BB11_2 Depth=1
	xorl	%eax, %eax
	subq	(%r9), %rax
	movw	$25476, BasicBlockSignatureTracker # imm = 0x6384
	movw	$326, RunTimeSignatureAdjuster # imm = 0x146
.LBB11_16:                              #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$342, %cx               # imm = 0x156
	xorw	%dx, %cx
	cmpw	$25492, %cx             # imm = 0x6394
	jne	.LBB11_40
# %bb.17:                               # %primal_feasible.split93
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%rbx), %rcx
	movq	512(%rcx), %rcx
	movw	$25492, BasicBlockSignatureTracker # imm = 0x6394
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB11_20
# %bb.18:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1856, %ax              # imm = 0x740
	cmpw	$25812, %ax             # imm = 0x64D4
	jne	.LBB11_40
# %bb.19:                               # %primal_feasible.split95
                                        #   in Loop: Header=BB11_2 Depth=1
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	printf
	movabsq	$.L.str.1.17, %rdi
	movq	(%r12), %rax
	movl	96(%rax), %esi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movw	$25812, BasicBlockSignatureTracker # imm = 0x64D4
	movw	$1856, RunTimeSignatureAdjuster # imm = 0x740
.LBB11_20:                              #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1693, %ax              # imm = 0x69D
	xorw	%cx, %ax
	cmpw	$25865, %ax             # imm = 0x6509
	jne	.LBB11_40
# %bb.21:                               # %primal_feasible.split97
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$25865, BasicBlockSignatureTracker # imm = 0x6509
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB11_32
.LBB11_22:                              #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1251, %ax              # imm = 0x4E3
	xorw	%cx, %ax
	cmpw	$25973, %ax             # imm = 0x6575
	jne	.LBB11_40
# %bb.23:                               # %primal_feasible.split85
                                        #   in Loop: Header=BB11_2 Depth=1
	xorl	%eax, %eax
	movq	(%r9), %rcx
	movq	(%rbx), %rdx
	subq	512(%rdx), %rax
	movw	$25973, BasicBlockSignatureTracker # imm = 0x6575
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rax, %rcx
	jl	.LBB11_26
# %bb.24:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$961, %ax               # imm = 0x3C1
	cmpw	$26292, %ax             # imm = 0x66B4
	jne	.LBB11_40
# %bb.25:                               # %primal_feasible.split103
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r9), %rax
	subq	$1, %rax
	movq	(%rbx), %rcx
	movq	512(%rcx), %rcx
	movw	$26292, BasicBlockSignatureTracker # imm = 0x66B4
	movw	$961, RunTimeSignatureAdjuster # imm = 0x3C1
	cmpq	%rcx, %rax
	jle	.LBB11_28
.LBB11_26:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$571, %ax               # imm = 0x23B
	xorw	%cx, %ax
	cmpw	$26446, %ax             # imm = 0x674E
	jne	.LBB11_41
# %bb.27:                               # %primal_feasible.split101
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	movq	%r8, %r14
	movq	%r9, %r15
	callq	printf
	movabsq	$.L.str.2.18, %rdi
	movq	(%r15), %rsi
	movb	$0, %al
	callq	printf
	movq	%r14, %r8
	movq	(%rbx), %rax
	movq	$0, 488(%rax)
	movq	$1, (%r8)
	movw	$26446, BasicBlockSignatureTracker # imm = 0x674E
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB11_38
.LBB11_28:                              # %Buffer__1
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-23442, %ax            # imm = 0xA46E
	cmpw	$-15654, %ax            # imm = 0xC2DA
	jne	.LBB11_40
# %bb.29:                               # %primal_feasible.split105
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$-15654, BasicBlockSignatureTracker # imm = 0xC2DA
	movw	$-23442, RunTimeSignatureAdjuster # imm = 0xA46E
# %bb.30:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$281, %ax               # imm = 0x119
	xorw	%cx, %ax
	cmpw	$26541, %ax             # imm = 0x67AD
	jne	.LBB11_40
# %bb.31:                               # %primal_feasible.split115
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$26541, BasicBlockSignatureTracker # imm = 0x67AD
	movw	$676, RunTimeSignatureAdjuster # imm = 0x2A4
.LBB11_32:                              #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$730, %ax               # imm = 0x2DA
	xorw	%cx, %ax
	cmpw	$26579, %ax             # imm = 0x67D3
	jne	.LBB11_40
# %bb.33:                               # %primal_feasible.split99
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$26579, BasicBlockSignatureTracker # imm = 0x67D3
	movw	$0, RunTimeSignatureAdjuster
# %bb.34:                               #   in Loop: Header=BB11_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4020, %ax              # imm = 0xFB4
	cmpw	$26727, %ax             # imm = 0x6867
	jne	.LBB11_40
# %bb.35:                               # %primal_feasible.split109
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	(%r12), %rax
	addq	$104, %rax
	movq	%rax, (%r12)
	movw	$26727, BasicBlockSignatureTracker # imm = 0x6867
	movw	$2052, RunTimeSignatureAdjuster # imm = 0x804
	jmp	.LBB11_2
.LBB11_36:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2557, %ax              # imm = 0x9FD
	cmpw	$26840, %ax             # imm = 0x68D8
	jne	.LBB11_41
# %bb.37:                               # %primal_feasible.split81
	movq	(%rbx), %rax
	movq	$1, 488(%rax)
	movq	$0, (%r8)
	movw	$26840, BasicBlockSignatureTracker # imm = 0x68D8
	movw	$3990, RunTimeSignatureAdjuster # imm = 0xF96
.LBB11_38:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3747, %ax              # imm = 0xEA3
	xorw	%cx, %ax
	cmpw	$27117, %ax             # imm = 0x69ED
	jne	.LBB11_41
# %bb.39:                               # %primal_feasible.split107
	movq	(%r8), %rax
	movw	$27117, BasicBlockSignatureTracker # imm = 0x69ED
	movw	$-8527, RunTimeSignatureAdjuster # imm = 0xDEB1
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_40:                              # %CFerrorHandler.primal_feasible.loopexit
	jmp	.LBB11_41
.LBB11_41:                              # %CFerrorHandler.primal_feasible
	callq	FAULT_DETECTED_CFC
.Lfunc_end11:
	.size	primal_feasible, .Lfunc_end11-primal_feasible
	.cfi_endproc
                                        # -- End function
	.globl	dual_feasible           # -- Begin function dual_feasible
	.p2align	4, 0x90
	.type	dual_feasible,@function
dual_feasible:                          # @dual_feasible
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
	xorw	$-22094, %ax            # imm = 0xA9B2
	xorw	%cx, %ax
	cmpw	$27223, %ax             # imm = 0x6A57
	jne	.LBB12_35
# %bb.1:                                # %dual_feasible.split88
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rdi, (%rax)
	movq	(%rax), %rdi
	movq	576(%rdi), %rdi
	movq	%rdi, (%rdx)
	movq	(%rax), %rdi
	movq	568(%rdi), %rdi
	movq	%rdi, (%rcx)
	movw	$27223, BasicBlockSignatureTracker # imm = 0x6A57
	movw	$0, RunTimeSignatureAdjuster
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$251, %di
	xorw	%bx, %di
	cmpw	$27308, %di             # imm = 0x6AAC
	jne	.LBB12_34
# %bb.3:                                # %dual_feasible.split
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rcx), %rdi
	movq	(%rdx), %rbx
	movw	$27308, BasicBlockSignatureTracker # imm = 0x6AAC
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rbx, %rdi
	jae	.LBB12_28
# %bb.4:                                #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$484, %di               # imm = 0x1E4
	cmpw	$27464, %di             # imm = 0x6B48
	jne	.LBB12_34
# %bb.5:                                # %dual_feasible.split60
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rcx), %r8
	movq	(%r8), %rbx
	movq	8(%r8), %rdi
	movq	(%rdi), %rdi
	subq	%rdi, %rbx
	movq	16(%r8), %rdi
	movq	(%rdi), %rdi
	addq	%rdi, %rbx
	movq	%rbx, (%rsi)
	movq	(%rcx), %rdi
	movl	24(%rdi), %ebx
	movw	$27464, BasicBlockSignatureTracker(%rip) # imm = 0x6B48
	movw	$0, RunTimeSignatureAdjuster(%rip)
	movl	%ebx, %edi
	subl	$-1, %edi
	je	.LBB12_20
	jmp	.LBB12_6
.LBB12_6:                               # %dual_feasible.split60
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	%ebx, %edi
	subl	$2, %edi
	jb	.LBB12_8
	jmp	.LBB12_7
.LBB12_7:                               # %dual_feasible.split60
                                        #   in Loop: Header=BB12_2 Depth=1
	subl	$2, %ebx
	je	.LBB12_14
	jmp	.LBB12_22
.LBB12_8:                               #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$7, %di
	xorw	%bx, %di
	cmpw	$27471, %di             # imm = 0x6B4F
	jne	.LBB12_34
# %bb.9:                                # %dual_feasible.split66
                                        #   in Loop: Header=BB12_2 Depth=1
	xorl	%edi, %edi
	movq	(%rsi), %r8
	movq	(%rax), %rbx
	subq	512(%rbx), %rdi
	movw	$27471, BasicBlockSignatureTracker # imm = 0x6B4F
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %r8
	jge	.LBB12_12
# %bb.10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$207, %ax
	cmpw	$27520, %ax             # imm = 0x6B80
	jne	.LBB12_35
# %bb.11:                               # %dual_feasible.split72
	movw	$27520, BasicBlockSignatureTracker # imm = 0x6B80
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB12_30
.LBB12_12:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$1951, %di              # imm = 0x79F
	cmpw	$27856, %di             # imm = 0x6CD0
	jne	.LBB12_34
# %bb.13:                               # %dual_feasible.split74
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$27856, BasicBlockSignatureTracker # imm = 0x6CD0
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB12_24
.LBB12_14:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$1295, %di              # imm = 0x50F
	cmpw	$28231, %di             # imm = 0x6E47
	jne	.LBB12_34
# %bb.15:                               # %dual_feasible.split68
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rsi), %rdi
	movq	(%rax), %rbx
	movq	512(%rbx), %rbx
	movw	$28231, BasicBlockSignatureTracker # imm = 0x6E47
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rbx, %rdi
	jle	.LBB12_18
# %bb.16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$24, %ax
	cmpw	$28255, %ax             # imm = 0x6E5F
	jne	.LBB12_35
# %bb.17:                               # %dual_feasible.split80
	movw	$28255, BasicBlockSignatureTracker # imm = 0x6E5F
	movw	$1503, RunTimeSignatureAdjuster # imm = 0x5DF
	jmp	.LBB12_30
.LBB12_18:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$63, %di
	cmpw	$28280, %di             # imm = 0x6E78
	jne	.LBB12_34
# %bb.19:                               # %dual_feasible.split82
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$28280, BasicBlockSignatureTracker # imm = 0x6E78
	movw	$680, RunTimeSignatureAdjuster # imm = 0x2A8
	jmp	.LBB12_24
.LBB12_20:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$1111, %di              # imm = 0x457
	cmpw	$28447, %di             # imm = 0x6F1F
	jne	.LBB12_34
# %bb.21:                               # %dual_feasible.split70
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$28447, BasicBlockSignatureTracker # imm = 0x6F1F
	movw	$1111, RunTimeSignatureAdjuster # imm = 0x457
.LBB12_22:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$1125, %di              # imm = 0x465
	xorw	%bx, %di
	cmpw	$28461, %di             # imm = 0x6F2D
	jne	.LBB12_34
# %bb.23:                               # %dual_feasible.split64
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$28461, BasicBlockSignatureTracker # imm = 0x6F2D
	movw	$1021, RunTimeSignatureAdjuster # imm = 0x3FD
.LBB12_24:                              #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$903, %di               # imm = 0x387
	xorw	%bx, %di
	cmpw	$28503, %di             # imm = 0x6F57
	jne	.LBB12_34
# %bb.25:                               # %dual_feasible.split78
                                        #   in Loop: Header=BB12_2 Depth=1
	movw	$28503, BasicBlockSignatureTracker # imm = 0x6F57
	movw	$0, RunTimeSignatureAdjuster
# %bb.26:                               #   in Loop: Header=BB12_2 Depth=1
	movw	BasicBlockSignatureTracker, %di
	xorw	$55, %di
	cmpw	$28512, %di             # imm = 0x6F60
	jne	.LBB12_34
# %bb.27:                               # %dual_feasible.split84
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rcx), %rdi
	addq	$64, %rdi
	movq	%rdi, (%rcx)
	movw	$28512, BasicBlockSignatureTracker # imm = 0x6F60
	movw	$1335, RunTimeSignatureAdjuster # imm = 0x537
	jmp	.LBB12_2
.LBB12_28:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6823, %ax              # imm = 0x1AA7
	cmpw	$28683, %ax             # imm = 0x700B
	jne	.LBB12_35
# %bb.29:                               # %dual_feasible.split62
	movq	$0, (%r14)
	movw	$28683, BasicBlockSignatureTracker # imm = 0x700B
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB12_32
.LBB12_30:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7081, %ax              # imm = 0x1BA9
	xorw	%cx, %ax
	cmpw	$28713, %ax             # imm = 0x7029
	jne	.LBB12_35
# %bb.31:                               # %dual_feasible.split76
	movabsq	$.L.str.3.19, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.4.20, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movq	$1, (%r14)
	movw	$28713, BasicBlockSignatureTracker # imm = 0x7029
	movw	$34, RunTimeSignatureAdjuster
.LBB12_32:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$48, %ax
	xorw	%cx, %ax
	cmpw	$28731, %ax             # imm = 0x703B
	jne	.LBB12_35
# %bb.33:                               # %dual_feasible.split86
	movq	(%r14), %rax
	movw	$28731, BasicBlockSignatureTracker # imm = 0x703B
	movw	$-14489, RunTimeSignatureAdjuster # imm = 0xC767
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB12_34:                              # %CFerrorHandler.dual_feasible.loopexit
	jmp	.LBB12_35
.LBB12_35:                              # %CFerrorHandler.dual_feasible
	callq	FAULT_DETECTED_CFC
.Lfunc_end12:
	.size	dual_feasible, .Lfunc_end12-dual_feasible
	.cfi_endproc
                                        # -- End function
	.globl	getfree                 # -- Begin function getfree
	.p2align	4, 0x90
	.type	getfree,@function
getfree:                                # @getfree
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
	xorw	$19314, %ax             # imm = 0x4B72
	xorw	%cx, %ax
	cmpw	$28830, %ax             # imm = 0x709E
	jne	.LBB13_17
# %bb.1:                                # %getfree.split58
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$19314, %ax             # imm = 0x4B72
	xorw	%cx, %ax
	cmpw	$28830, %ax             # imm = 0x709E
	jne	.LBB13_17
# %bb.2:                                # %getfree.split44
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$19314, %ax             # imm = 0x4B72
	xorw	%cx, %ax
	cmpw	$28830, %ax             # imm = 0x709E
	jne	.LBB13_17
# %bb.3:                                # %getfree.split42
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$19314, %ax             # imm = 0x4B72
	xorw	%cx, %ax
	cmpw	$28830, %ax             # imm = 0x709E
	jne	.LBB13_17
# %bb.4:                                # %getfree.split
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rdi, (%rbx)
	movq	(%rbx), %rax
	movq	552(%rax), %rax
	movw	$28830, BasicBlockSignatureTracker # imm = 0x709E
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB13_7
# %bb.5:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$466, %ax               # imm = 0x1D2
	cmpw	$29004, %ax             # imm = 0x714C
	jne	.LBB13_17
# %bb.6:                                # %getfree.split46
	movq	(%rbx), %rax
	movq	552(%rax), %rdi
	callq	free
	movw	$29004, BasicBlockSignatureTracker # imm = 0x714C
	movw	$466, RunTimeSignatureAdjuster # imm = 0x1D2
.LBB13_7:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$504, %ax               # imm = 0x1F8
	xorw	%cx, %ax
	cmpw	$29030, %ax             # imm = 0x7166
	jne	.LBB13_17
# %bb.8:                                # %getfree.split48
	movq	(%rbx), %rax
	movq	568(%rax), %rax
	movw	$29030, BasicBlockSignatureTracker # imm = 0x7166
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB13_11
# %bb.9:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$828, %ax               # imm = 0x33C
	cmpw	$29274, %ax             # imm = 0x725A
	jne	.LBB13_17
# %bb.10:                               # %getfree.split50
	movq	(%rbx), %rax
	movq	568(%rax), %rdi
	callq	free
	movw	$29274, BasicBlockSignatureTracker # imm = 0x725A
	movw	$828, RunTimeSignatureAdjuster # imm = 0x33C
.LBB13_11:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$773, %ax               # imm = 0x305
	xorw	%cx, %ax
	cmpw	$29283, %ax             # imm = 0x7263
	jne	.LBB13_17
# %bb.12:                               # %getfree.split52
	movq	(%rbx), %rax
	movq	584(%rax), %rax
	movw	$29283, BasicBlockSignatureTracker # imm = 0x7263
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB13_15
# %bb.13:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$246, %ax
	cmpw	$29333, %ax             # imm = 0x7295
	jne	.LBB13_17
# %bb.14:                               # %getfree.split54
	movq	(%rbx), %rax
	movq	584(%rax), %rdi
	callq	free
	movw	$29333, BasicBlockSignatureTracker # imm = 0x7295
	movw	$246, RunTimeSignatureAdjuster
.LBB13_15:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$209, %ax
	xorw	%cx, %ax
	cmpw	$29362, %ax             # imm = 0x72B2
	jne	.LBB13_17
# %bb.16:                               # %getfree.split56
	movq	(%rbx), %rax
	movq	$0, 560(%rax)
	movq	(%rbx), %rax
	movq	$0, 552(%rax)
	movq	(%rbx), %rax
	movq	$0, 576(%rax)
	movq	(%rbx), %rax
	movq	$0, 568(%rax)
	movq	(%rbx), %rax
	movq	$0, 592(%rax)
	movq	(%rbx), %rax
	movq	$0, 584(%rax)
	movw	$29362, BasicBlockSignatureTracker # imm = 0x72B2
	movw	$18852, RunTimeSignatureAdjuster # imm = 0x49A4
	xorl	%eax, %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB13_17:                              # %CFerrorHandler.getfree
	callq	FAULT_DETECTED_CFC
.Lfunc_end13:
	.size	getfree, .Lfunc_end13-getfree
	.cfi_endproc
                                        # -- End function
	.globl	write_circulations      # -- Begin function write_circulations
	.p2align	4, 0x90
	.type	write_circulations,@function
write_circulations:                     # @write_circulations
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rax
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$19048, %cx             # imm = 0x4A68
	xorw	%dx, %cx
	cmpw	$30449, %cx             # imm = 0x76F1
	jne	.LBB14_56
# %bb.1:                                # %write_circulations.split
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rdi, (%rdx)
	movq	%rax, (%r14)
	movq	$0, (%r15)
	movq	(%r14), %rax
	movq	576(%rax), %rax
	movq	(%r14), %rdi
	subq	440(%rdi), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, (%r13)
	movq	(%rdx), %rdi
	callq	fopen
	movq	%rax, (%r15)
	movw	$30449, BasicBlockSignatureTracker # imm = 0x76F1
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB14_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$482, %ax               # imm = 0x1E2
	cmpw	$30483, %ax             # imm = 0x7713
	jne	.LBB14_56
# %bb.3:                                # %write_circulations.split94
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$30483, BasicBlockSignatureTracker # imm = 0x7713
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB14_51
.LBB14_4:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$359, %ax               # imm = 0x167
	cmpw	$30614, %ax             # imm = 0x7796
	jne	.LBB14_56
# %bb.5:                                # %write_circulations.split96
	movq	(%r14), %rdi
	movw	$30614, BasicBlockSignatureTracker # imm = 0x7796
	movw	$25870, RunTimeSignatureAdjuster # imm = 0x650E
	callq	refresh_neighbour_lists
	movw	$30614, BasicBlockSignatureTracker # imm = 0x7796
	movw	$25870, RunTimeSignatureAdjuster # imm = 0x650E
	movq	(%r14), %rax
	movq	552(%rax), %rax
	movq	(%r14), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, (%r12)
	movw	$30614, BasicBlockSignatureTracker # imm = 0x7796
	movw	$0, RunTimeSignatureAdjuster
.LBB14_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
                                        #       Child Loop BB14_20 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32, %ax
	xorw	%cx, %ax
	cmpw	$30646, %ax             # imm = 0x77B6
	jne	.LBB14_55
# %bb.7:                                # %write_circulations.split100
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	(%r12), %rax
	movw	$30646, BasicBlockSignatureTracker # imm = 0x77B6
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB14_49
# %bb.8:                                #   in Loop: Header=BB14_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3912, %ax              # imm = 0xF48
	cmpw	$30974, %ax             # imm = 0x78FE
	jne	.LBB14_55
# %bb.9:                                # %write_circulations.split102
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	(%r12), %rax
	movq	48(%rax), %rax
	movw	$30974, BasicBlockSignatureTracker # imm = 0x78FE
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB14_45
# %bb.10:                               #   in Loop: Header=BB14_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$292, %ax               # imm = 0x124
	cmpw	$31194, %ax             # imm = 0x79DA
	jne	.LBB14_55
# %bb.11:                               # %write_circulations.split106
                                        #   in Loop: Header=BB14_6 Depth=1
	movabsq	$.L.str.1.26, %rsi
	movq	(%r15), %rdi
	movb	$0, %al
	callq	fprintf
	movq	(%r12), %rax
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%r8)
	movw	$31194, BasicBlockSignatureTracker # imm = 0x79DA
	movw	$0, RunTimeSignatureAdjuster
.LBB14_12:                              #   Parent Loop BB14_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_20 Depth 3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$892, %ax               # imm = 0x37C
	xorw	%cx, %ax
	cmpw	$31398, %ax             # imm = 0x7AA6
	jne	.LBB14_54
# %bb.13:                               # %write_circulations.split110
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	(%r8), %rax
	movw	$31398, BasicBlockSignatureTracker # imm = 0x7AA6
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB14_43
# %bb.14:                               #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$469, %ax               # imm = 0x1D5
	cmpw	$31603, %ax             # imm = 0x7B73
	jne	.LBB14_54
# %bb.15:                               # %write_circulations.split112
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	(%r8), %rax
	movq	(%r13), %rcx
	movw	$31603, BasicBlockSignatureTracker # imm = 0x7B73
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jb	.LBB14_18
# %bb.16:                               #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$15, %ax
	cmpw	$31612, %ax             # imm = 0x7B7C
	jne	.LBB14_54
# %bb.17:                               # %write_circulations.split116
                                        #   in Loop: Header=BB14_12 Depth=2
	movabsq	$.L.str.2.27, %rsi
	movq	(%r15), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-48(%rbp), %r8          # 8-byte Reload
	movw	$31612, BasicBlockSignatureTracker # imm = 0x7B7C
	movw	$15, RunTimeSignatureAdjuster
.LBB14_18:                              #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1801, %ax              # imm = 0x709
	xorw	%cx, %ax
	cmpw	$31866, %ax             # imm = 0x7C7A
	jne	.LBB14_54
# %bb.19:                               # %write_circulations.split118
                                        #   in Loop: Header=BB14_12 Depth=2
	movabsq	$.L.str.3.28, %rsi
	xorl	%edx, %edx
	movq	(%r15), %rdi
	movq	(%r8), %rax
	movq	16(%rax), %rax
	subl	96(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%r14), %rcx
	imulq	$104, 408(%rcx), %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, (%rbx)
	movw	$31866, BasicBlockSignatureTracker # imm = 0x7C7A
	movw	$0, RunTimeSignatureAdjuster
.LBB14_20:                              #   Parent Loop BB14_6 Depth=1
                                        #     Parent Loop BB14_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$234, %ax
	xorw	%cx, %ax
	cmpw	$31888, %ax             # imm = 0x7C90
	jne	.LBB14_53
# %bb.21:                               # %write_circulations.split120
                                        #   in Loop: Header=BB14_20 Depth=3
	movq	(%rbx), %rax
	movw	$31888, BasicBlockSignatureTracker # imm = 0x7C90
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB14_30
# %bb.22:                               #   in Loop: Header=BB14_20 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$32, %ax
	cmpw	$31920, %ax             # imm = 0x7CB0
	jne	.LBB14_53
# %bb.23:                               # %write_circulations.split122
                                        #   in Loop: Header=BB14_20 Depth=3
	movq	(%rbx), %rax
	movq	48(%rax), %rax
	movw	$31920, BasicBlockSignatureTracker # imm = 0x7CB0
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB14_26
# %bb.24:                               #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$125, %ax
	cmpw	$31949, %ax             # imm = 0x7CCD
	jne	.LBB14_54
# %bb.25:                               # %write_circulations.split126
                                        #   in Loop: Header=BB14_12 Depth=2
	movw	$31949, BasicBlockSignatureTracker # imm = 0x7CCD
	movw	$93, RunTimeSignatureAdjuster
	jmp	.LBB14_31
.LBB14_26:                              #   in Loop: Header=BB14_20 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$335, %ax               # imm = 0x14F
	cmpw	$32255, %ax             # imm = 0x7DFF
	jne	.LBB14_53
# %bb.27:                               # %write_circulations.split128
                                        #   in Loop: Header=BB14_20 Depth=3
	movw	$32255, BasicBlockSignatureTracker # imm = 0x7DFF
	movw	$0, RunTimeSignatureAdjuster
# %bb.28:                               #   in Loop: Header=BB14_20 Depth=3
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1018, %ax              # imm = 0x3FA
	cmpw	$32261, %ax             # imm = 0x7E05
	jne	.LBB14_53
# %bb.29:                               # %write_circulations.split130
                                        #   in Loop: Header=BB14_20 Depth=3
	movq	(%rbx), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rbx)
	movw	$32261, BasicBlockSignatureTracker # imm = 0x7E05
	movw	$639, RunTimeSignatureAdjuster # imm = 0x27F
	jmp	.LBB14_20
.LBB14_30:                              # %.loopexit
                                        #   in Loop: Header=BB14_12 Depth=2
	jmp	.LBB14_31
.LBB14_31:                              #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$691, %ax               # imm = 0x2B3
	xorw	%cx, %ax
	cmpw	$32291, %ax             # imm = 0x7E23
	jne	.LBB14_54
# %bb.32:                               # %write_circulations.split124
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	(%rbx), %rax
	movw	$32291, BasicBlockSignatureTracker # imm = 0x7E23
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB14_35
# %bb.33:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$16, %ax
	cmpw	$32307, %ax             # imm = 0x7E33
	jne	.LBB14_56
# %bb.34:                               # %write_circulations.split134
	movq	(%r15), %rdi
	callq	fclose
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$32307, BasicBlockSignatureTracker # imm = 0x7E33
	movw	$2336, RunTimeSignatureAdjuster # imm = 0x920
	jmp	.LBB14_51
.LBB14_35:                              #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$166, %ax
	cmpw	$32389, %ax             # imm = 0x7E85
	jne	.LBB14_54
# %bb.36:                               # %write_circulations.split132
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	movw	$32389, BasicBlockSignatureTracker # imm = 0x7E85
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB14_39
# %bb.37:                               #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$407, %ax               # imm = 0x197
	cmpw	$32530, %ax             # imm = 0x7F12
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jne	.LBB14_54
# %bb.38:                               # %write_circulations.split136
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	(%rbx), %rax
	movq	%rax, (%rcx)
	movw	$32530, BasicBlockSignatureTracker # imm = 0x7F12
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB14_41
.LBB14_39:                              #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$341, %ax               # imm = 0x155
	cmpw	$32720, %ax             # imm = 0x7FD0
	movq	-48(%rbp), %rax         # 8-byte Reload
	jne	.LBB14_54
# %bb.40:                               # %write_circulations.split138
                                        #   in Loop: Header=BB14_12 Depth=2
	movq	$0, (%rax)
	movw	$32720, BasicBlockSignatureTracker # imm = 0x7FD0
	movw	$194, RunTimeSignatureAdjuster
.LBB14_41:                              #   in Loop: Header=BB14_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$201, %ax
	xorw	%cx, %ax
	cmpw	$32731, %ax             # imm = 0x7FDB
	movq	-48(%rbp), %r8          # 8-byte Reload
	jne	.LBB14_54
# %bb.42:                               # %write_circulations.split140
                                        #   in Loop: Header=BB14_12 Depth=2
	movw	$32731, BasicBlockSignatureTracker # imm = 0x7FDB
	movw	$1537, RunTimeSignatureAdjuster # imm = 0x601
	jmp	.LBB14_12
.LBB14_43:                              #   in Loop: Header=BB14_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1346, %ax              # imm = 0x542
	cmpw	$32740, %ax             # imm = 0x7FE4
	jne	.LBB14_55
# %bb.44:                               # %write_circulations.split114
                                        #   in Loop: Header=BB14_6 Depth=1
	movw	$32740, BasicBlockSignatureTracker # imm = 0x7FE4
	movw	$1818, RunTimeSignatureAdjuster # imm = 0x71A
.LBB14_45:                              #   in Loop: Header=BB14_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-1929, %ax             # imm = 0xF877
	xorw	%cx, %ax
	cmpw	$-32631, %ax            # imm = 0x8089
	jne	.LBB14_55
# %bb.46:                               # %write_circulations.split108
                                        #   in Loop: Header=BB14_6 Depth=1
	movw	$-32631, BasicBlockSignatureTracker # imm = 0x8089
	movw	$0, RunTimeSignatureAdjuster
# %bb.47:                               #   in Loop: Header=BB14_6 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$81, %ax
	cmpw	$-32552, %ax            # imm = 0x80D8
	jne	.LBB14_55
# %bb.48:                               # %write_circulations.split142
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	(%r12), %rax
	movq	32(%rax), %rax
	movq	%rax, (%r12)
	movw	$-32552, BasicBlockSignatureTracker # imm = 0x80D8
	movw	$-2226, RunTimeSignatureAdjuster # imm = 0xF74E
	jmp	.LBB14_6
.LBB14_49:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-2233, %ax             # imm = 0xF747
	cmpw	$-32527, %ax            # imm = 0x80F1
	jne	.LBB14_56
# %bb.50:                               # %write_circulations.split104
	movq	(%r15), %rdi
	callq	fclose
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movw	$-32527, BasicBlockSignatureTracker # imm = 0x80F1
	movw	$-2078, RunTimeSignatureAdjuster # imm = 0xF7E2
.LBB14_51:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-2557, %ax             # imm = 0xF603
	xorw	%cx, %ax
	cmpw	$-32496, %ax            # imm = 0x8110
	jne	.LBB14_56
# %bb.52:                               # %write_circulations.split98
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movw	$-32496, BasicBlockSignatureTracker # imm = 0x8110
	movw	$-17914, RunTimeSignatureAdjuster # imm = 0xBA06
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_53:                              # %CFerrorHandler.write_circulations.loopexit
	jmp	.LBB14_56
.LBB14_54:                              # %CFerrorHandler.write_circulations.loopexit1
	jmp	.LBB14_56
.LBB14_55:                              # %CFerrorHandler.write_circulations.loopexit2
	jmp	.LBB14_56
.LBB14_56:                              # %CFerrorHandler.write_circulations
	callq	FAULT_DETECTED_CFC
.Lfunc_end14:
	.size	write_circulations, .Lfunc_end14-write_circulations
	.cfi_endproc
                                        # -- End function
	.globl	bea_is_dual_infeasible  # -- Begin function bea_is_dual_infeasible
	.p2align	4, 0x90
	.type	bea_is_dual_infeasible,@function
bea_is_dual_infeasible:                 # @bea_is_dual_infeasible
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7009, %ax              # imm = 0x1B61
	xorw	%cx, %ax
	cmpw	$-32429, %ax            # imm = 0x8153
	jne	.LBB15_14
# %bb.1:                                # %bea_is_dual_infeasible.split37
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%rdx)
	movq	(%rdx), %rcx
	movw	$-32429, BasicBlockSignatureTracker # imm = 0x8153
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	jge	.LBB15_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$840, %cx               # imm = 0x348
	cmpw	$-32229, %cx            # imm = 0x821B
	jne	.LBB15_14
# %bb.3:                                # %bea_is_dual_infeasible.split
	movq	(%rax), %rcx
	movl	24(%rcx), %ecx
	movw	$-32229, BasicBlockSignatureTracker # imm = 0x821B
	movw	$840, RunTimeSignatureAdjuster # imm = 0x348
	cmpl	$1, %ecx
	je	.LBB15_10
.LBB15_4:
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$873, %cx               # imm = 0x369
	xorw	%si, %cx
	cmpw	$-32198, %cx            # imm = 0x823A
	jne	.LBB15_14
# %bb.5:                                # %bea_is_dual_infeasible.split27
	xorl	%ecx, %ecx
	movq	(%rdx), %rdx
	movw	$-32198, BasicBlockSignatureTracker # imm = 0x823A
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rdx
	jle	.LBB15_8
# %bb.6:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$4, %cx
	cmpw	$-32194, %cx            # imm = 0x823E
	jne	.LBB15_14
# %bb.7:                                # %bea_is_dual_infeasible.split31
	movq	(%rax), %rax
	cmpl	$2, 24(%rax)
	sete	%cl
	movw	$-32194, BasicBlockSignatureTracker # imm = 0x823E
	movw	$4, RunTimeSignatureAdjuster
.LBB15_8:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$77, %ax
	xorw	%dx, %ax
	cmpw	$-32137, %ax            # imm = 0x8277
	jne	.LBB15_14
# %bb.9:                                # %bea_is_dual_infeasible.split33
	movw	$-32137, BasicBlockSignatureTracker # imm = 0x8277
	movw	$108, RunTimeSignatureAdjuster
	jmp	.LBB15_12
.LBB15_10:                              # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$27991, %ax             # imm = 0x6D57
	cmpw	$-4276, %ax             # imm = 0xEF4C
	jne	.LBB15_14
# %bb.11:                               # %bea_is_dual_infeasible.split29
	movb	$1, %cl
	movw	$-4276, BasicBlockSignatureTracker # imm = 0xEF4C
	movw	$27991, RunTimeSignatureAdjuster # imm = 0x6D57
.LBB15_12:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$222, %ax
	xorw	%dx, %ax
	cmpw	$-32059, %ax            # imm = 0x82C5
	jne	.LBB15_14
# %bb.13:                               # %bea_is_dual_infeasible.split35
	andb	$1, %cl
	movzbl	%cl, %eax
	movw	$-32059, BasicBlockSignatureTracker # imm = 0x82C5
	movw	$7165, RunTimeSignatureAdjuster # imm = 0x1BFD
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB15_14:                              # %CFerrorHandler.bea_is_dual_infeasible
	callq	FAULT_DETECTED_CFC
.Lfunc_end15:
	.size	bea_is_dual_infeasible, .Lfunc_end15-bea_is_dual_infeasible
	.cfi_endproc
                                        # -- End function
	.globl	sort_basket             # -- Begin function sort_basket
	.p2align	4, 0x90
	.type	sort_basket,@function
sort_basket:                            # @sort_basket
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
	xorw	$2554, %ax              # imm = 0x9FA
	xorw	%cx, %ax
	cmpw	$-31758, %ax            # imm = 0x83F2
	jne	.LBB16_47
# %bb.1:                                # %sort_basket.split130
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$2554, %ax              # imm = 0x9FA
	xorw	%cx, %ax
	cmpw	$-31758, %ax            # imm = 0x83F2
	jne	.LBB16_47
# %bb.2:                                # %sort_basket.split128
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$2554, %ax              # imm = 0x9FA
	xorw	%cx, %ax
	cmpw	$-31758, %ax            # imm = 0x83F2
	jne	.LBB16_47
# %bb.3:                                # %sort_basket.split120
	movl	$2, %r10d
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rdi, (%r8)
	movq	%rsi, (%r14)
	movq	(%r8), %rax
	movq	%rax, (%r15)
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	movq	(%r15), %rax
	addq	(%rbx), %rax
	cqto
	idivq	%r10
	movq	perm(,%rax,8), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-31758, BasicBlockSignatureTracker # imm = 0x83F2
	movw	$0, RunTimeSignatureAdjuster
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_12 Depth 2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$2000, %ax              # imm = 0x7D0
	xorw	%dx, %ax
	cmpw	$-31710, %ax            # imm = 0x8422
	jne	.LBB16_46
# %bb.5:                                # %sort_basket.split
                                        #   in Loop: Header=BB16_4 Depth=1
	movw	$-31710, BasicBlockSignatureTracker # imm = 0x8422
	movw	$0, RunTimeSignatureAdjuster
.LBB16_6:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$124, %ax
	xorw	%dx, %ax
	cmpw	$-31650, %ax            # imm = 0x845E
	jne	.LBB16_45
# %bb.7:                                # %sort_basket.split92
                                        #   in Loop: Header=BB16_6 Depth=2
	movq	(%r15), %rax
	movq	perm(,%rax,8), %rax
	movq	16(%rax), %rax
	movq	(%rcx), %rdx
	movw	$-31650, BasicBlockSignatureTracker # imm = 0x845E
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	jle	.LBB16_10
# %bb.8:                                #   in Loop: Header=BB16_6 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$183, %ax
	cmpw	$-31511, %ax            # imm = 0x84E9
	jne	.LBB16_45
# %bb.9:                                # %sort_basket.split94
                                        #   in Loop: Header=BB16_6 Depth=2
	movq	(%r15), %rax
	addq	$1, %rax
	movq	%rax, (%r15)
	movw	$-31511, BasicBlockSignatureTracker # imm = 0x84E9
	movw	$203, RunTimeSignatureAdjuster
	jmp	.LBB16_6
.LBB16_10:                              #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$282, %ax               # imm = 0x11A
	cmpw	$-31420, %ax            # imm = 0x8544
	jne	.LBB16_46
# %bb.11:                               # %sort_basket.split96
                                        #   in Loop: Header=BB16_4 Depth=1
	movw	$-31420, BasicBlockSignatureTracker # imm = 0x8544
	movw	$0, RunTimeSignatureAdjuster
.LBB16_12:                              #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$40, %ax
	xorw	%dx, %ax
	cmpw	$-31380, %ax            # imm = 0x856C
	jne	.LBB16_44
# %bb.13:                               # %sort_basket.split98
                                        #   in Loop: Header=BB16_12 Depth=2
	movq	(%rcx), %rax
	movq	(%rbx), %rdx
	movq	perm(,%rdx,8), %rdx
	movq	16(%rdx), %rdx
	movw	$-31380, BasicBlockSignatureTracker # imm = 0x856C
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	jle	.LBB16_16
# %bb.14:                               #   in Loop: Header=BB16_12 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$230, %ax
	cmpw	$-31350, %ax            # imm = 0x858A
	jne	.LBB16_44
# %bb.15:                               # %sort_basket.split100
                                        #   in Loop: Header=BB16_12 Depth=2
	movq	(%rbx), %rax
	addq	$-1, %rax
	movq	%rax, (%rbx)
	movw	$-31350, BasicBlockSignatureTracker # imm = 0x858A
	movw	$206, RunTimeSignatureAdjuster
	jmp	.LBB16_12
.LBB16_16:                              #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$151, %ax
	cmpw	$-31237, %ax            # imm = 0x85FB
	jne	.LBB16_46
# %bb.17:                               # %sort_basket.split102
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	(%r15), %rax
	movq	(%rbx), %rdx
	movw	$-31237, BasicBlockSignatureTracker # imm = 0x85FB
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	jge	.LBB16_20
# %bb.18:                               #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1002, %ax              # imm = 0x3EA
	cmpw	$-31215, %ax            # imm = 0x8611
	jne	.LBB16_46
# %bb.19:                               # %sort_basket.split104
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	(%r15), %rax
	movq	perm(,%rax,8), %rax
	movq	%rax, (%r9)
	movq	(%rbx), %rax
	movq	perm(,%rax,8), %rax
	movq	(%r15), %rdx
	movq	%rax, perm(,%rdx,8)
	movq	(%r9), %rax
	movq	(%rbx), %rdx
	movq	%rax, perm(,%rdx,8)
	movw	$-31215, BasicBlockSignatureTracker # imm = 0x8611
	movw	$1002, RunTimeSignatureAdjuster # imm = 0x3EA
.LBB16_20:                              #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$962, %ax               # imm = 0x3C2
	xorw	%dx, %ax
	cmpw	$-31175, %ax            # imm = 0x8639
	jne	.LBB16_46
# %bb.21:                               # %sort_basket.split106
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	(%r15), %rax
	movq	(%rbx), %rdx
	movw	$-31175, BasicBlockSignatureTracker # imm = 0x8639
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	jg	.LBB16_24
# %bb.22:                               #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$120, %ax
	cmpw	$-31167, %ax            # imm = 0x8641
	jne	.LBB16_46
# %bb.23:                               # %sort_basket.split108
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	(%r15), %rax
	addq	$1, %rax
	movq	%rax, (%r15)
	movq	(%rbx), %rax
	addq	$-1, %rax
	movq	%rax, (%rbx)
	movw	$-31167, BasicBlockSignatureTracker # imm = 0x8641
	movw	$120, RunTimeSignatureAdjuster
.LBB16_24:                              #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$3633, %ax              # imm = 0xE31
	xorw	%dx, %ax
	cmpw	$-30712, %ax            # imm = 0x8808
	jne	.LBB16_46
# %bb.25:                               # %sort_basket.split110
                                        #   in Loop: Header=BB16_4 Depth=1
	movw	$-30712, BasicBlockSignatureTracker # imm = 0x8808
	movw	$0, RunTimeSignatureAdjuster
# %bb.26:                               #   in Loop: Header=BB16_4 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$341, %ax               # imm = 0x155
	cmpw	$-30371, %ax            # imm = 0x895D
	jne	.LBB16_46
# %bb.27:                               # %sort_basket.split112
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	(%r15), %rax
	movq	(%rbx), %rdx
	movw	$-30371, BasicBlockSignatureTracker # imm = 0x895D
	movw	$2735, RunTimeSignatureAdjuster # imm = 0xAAF
	cmpq	%rdx, %rax
	jle	.LBB16_4
# %bb.28:                               # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-22134, %ax            # imm = 0xA98A
	cmpw	$8407, %ax              # imm = 0x20D7
	jne	.LBB16_47
# %bb.29:                               # %sort_basket.split114
	movw	$8407, BasicBlockSignatureTracker # imm = 0x20D7
	movw	$-22134, RunTimeSignatureAdjuster # imm = 0xA98A
# %bb.30:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$177, %ax
	xorw	%cx, %ax
	cmpw	$-30228, %ax            # imm = 0x89EC
	jne	.LBB16_47
# %bb.31:                               # %sort_basket.split132
	movq	(%r8), %rax
	movq	(%rbx), %rcx
	movw	$-30228, BasicBlockSignatureTracker # imm = 0x89EC
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jge	.LBB16_34
# %bb.32:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$996, %ax               # imm = 0x3E4
	cmpw	$-30200, %ax            # imm = 0x8A08
	jne	.LBB16_47
# %bb.33:                               # %sort_basket.split116
	movq	(%r8), %rdi
	movq	(%rbx), %rsi
	movw	$-30200, BasicBlockSignatureTracker # imm = 0x8A08
	movw	$0, RunTimeSignatureAdjuster
	callq	sort_basket
	movw	$-30200, BasicBlockSignatureTracker # imm = 0x8A08
	movw	$996, RunTimeSignatureAdjuster # imm = 0x3E4
	movw	$-30200, BasicBlockSignatureTracker # imm = 0x8A08
	movw	$996, RunTimeSignatureAdjuster # imm = 0x3E4
.LBB16_34:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$862, %ax               # imm = 0x35E
	xorw	%cx, %ax
	cmpw	$-30030, %ax            # imm = 0x8AB2
	jne	.LBB16_47
# %bb.35:                               # %sort_basket.split118
	movq	(%r15), %rax
	movq	(%r14), %rcx
	movw	$-30030, BasicBlockSignatureTracker # imm = 0x8AB2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jge	.LBB16_42
# %bb.36:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$68, %ax
	cmpw	$-29962, %ax            # imm = 0x8AF6
	jne	.LBB16_47
# %bb.37:                               # %sort_basket.split122
	movq	(%r15), %rax
	movw	$-29962, BasicBlockSignatureTracker # imm = 0x8AF6
	movw	$68, RunTimeSignatureAdjuster
	cmpq	$50, %rax
	jg	.LBB16_42
# %bb.38:                               # %Buffer__1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-19044, %ax            # imm = 0xB59C
	cmpw	$16234, %ax             # imm = 0x3F6A
	jne	.LBB16_47
# %bb.39:                               # %sort_basket.split126
	movw	$16234, BasicBlockSignatureTracker # imm = 0x3F6A
	movw	$-19044, RunTimeSignatureAdjuster # imm = 0xB59C
# %bb.40:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$421, %ax               # imm = 0x1A5
	xorw	%cx, %ax
	cmpw	$-29869, %ax            # imm = 0x8B53
	jne	.LBB16_47
# %bb.41:                               # %sort_basket.split134
	movq	(%r15), %rdi
	movq	(%r14), %rsi
	movw	$-29869, BasicBlockSignatureTracker # imm = 0x8B53
	movw	$347, RunTimeSignatureAdjuster # imm = 0x15B
	callq	sort_basket
	movw	$-29869, BasicBlockSignatureTracker # imm = 0x8B53
	movw	$347, RunTimeSignatureAdjuster # imm = 0x15B
	movw	$-29869, BasicBlockSignatureTracker # imm = 0x8B53
	movw	$481, RunTimeSignatureAdjuster # imm = 0x1E1
.LBB16_42:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1710, %ax              # imm = 0x6AE
	xorw	%cx, %ax
	cmpw	$-29668, %ax            # imm = 0x8C1C
	jne	.LBB16_47
# %bb.43:                               # %sort_basket.split124
	movw	$-29668, BasicBlockSignatureTracker # imm = 0x8C1C
	movw	$1520, RunTimeSignatureAdjuster # imm = 0x5F0
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_44:                              # %CFerrorHandler.sort_basket.loopexit
	jmp	.LBB16_47
.LBB16_45:                              # %CFerrorHandler.sort_basket.loopexit1
	jmp	.LBB16_47
.LBB16_46:                              # %CFerrorHandler.sort_basket.loopexit2
	jmp	.LBB16_47
.LBB16_47:                              # %CFerrorHandler.sort_basket
	callq	FAULT_DETECTED_CFC
.Lfunc_end16:
	.size	sort_basket, .Lfunc_end16-sort_basket
	.cfi_endproc
                                        # -- End function
	.globl	primal_bea_mpp          # -- Begin function primal_bea_mpp
	.p2align	4, 0x90
	.type	primal_bea_mpp,@function
primal_bea_mpp:                         # @primal_bea_mpp
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$15349, %ax             # imm = 0x3BF5
	xorw	%bx, %ax
	cmpw	$-29559, %ax            # imm = 0x8C89
	jne	.LBB17_94
# %bb.1:                                # %primal_bea_mpp.split253
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%r12)
	movq	%rdx, (%r13)
	movq	%rcx, (%r15)
	movq	initialize, %rcx
	movw	$-29559, BasicBlockSignatureTracker # imm = 0x8C89
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB17_12
# %bb.2:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$59, %cx
	cmpw	$-29518, %cx            # imm = 0x8CB2
	jne	.LBB17_94
# %bb.3:                                # %primal_bea_mpp.split
	movq	$1, (%r8)
	movw	$-29518, BasicBlockSignatureTracker # imm = 0x8CB2
	movw	$0, RunTimeSignatureAdjuster
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$419, %cx               # imm = 0x1A3
	xorw	%dx, %cx
	cmpw	$-29423, %cx            # imm = 0x8D11
	jne	.LBB17_92
# %bb.5:                                # %primal_bea_mpp.split173
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	(%r8), %rcx
	movw	$-29423, BasicBlockSignatureTracker # imm = 0x8D11
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$351, %rcx              # imm = 0x15F
	jge	.LBB17_10
# %bb.6:                                #   in Loop: Header=BB17_4 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$4, %cx
	cmpw	$-29419, %cx            # imm = 0x8D15
	jne	.LBB17_92
# %bb.7:                                # %primal_bea_mpp.split175
                                        #   in Loop: Header=BB17_4 Depth=1
	movabsq	$basket, %rcx
	imulq	$24, (%r8), %rdx
	addq	%rdx, %rcx
	movq	(%r8), %rdx
	movq	%rcx, perm(,%rdx,8)
	movw	$-29419, BasicBlockSignatureTracker # imm = 0x8D15
	movw	$0, RunTimeSignatureAdjuster
# %bb.8:                                #   in Loop: Header=BB17_4 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$41, %cx
	cmpw	$-29380, %cx            # imm = 0x8D3C
	jne	.LBB17_92
# %bb.9:                                # %primal_bea_mpp.split179
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	(%r8), %rcx
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movw	$-29380, BasicBlockSignatureTracker # imm = 0x8D3C
	movw	$398, RunTimeSignatureAdjuster # imm = 0x18E
	jmp	.LBB17_4
.LBB17_10:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$175, %cx
	cmpw	$-29250, %cx            # imm = 0x8DBE
	jne	.LBB17_94
# %bb.11:                               # %primal_bea_mpp.split177
	movl	$300, %ecx              # imm = 0x12C
	movq	(%rax), %rax
	subq	$1, %rax
	cqto
	idivq	%rcx
	addq	$1, %rax
	movq	%rax, nr_group
	movq	$0, group_pos
	movq	$0, basket_size
	movq	$0, initialize
	movw	$-29250, BasicBlockSignatureTracker # imm = 0x8DBE
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB17_46
.LBB17_12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$341, %ax               # imm = 0x155
	cmpw	$-29220, %ax            # imm = 0x8DDC
	jne	.LBB17_94
# %bb.13:                               # %primal_bea_mpp.split171
	movq	$2, (%r8)
	movq	$0, (%rbx)
	movw	$-29220, BasicBlockSignatureTracker # imm = 0x8DDC
	movw	$0, RunTimeSignatureAdjuster
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$53, %ax
	xorw	%cx, %ax
	cmpw	$-29207, %ax            # imm = 0x8DE9
	jne	.LBB17_93
# %bb.15:                               # %primal_bea_mpp.split183
                                        #   in Loop: Header=BB17_14 Depth=1
	xorl	%eax, %eax
	movq	(%r8), %rcx
	movw	$-29207, BasicBlockSignatureTracker # imm = 0x8DE9
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$50, %rcx
	jg	.LBB17_18
# %bb.16:                               #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$28, %ax
	cmpw	$-29195, %ax            # imm = 0x8DF5
	jne	.LBB17_93
# %bb.17:                               # %primal_bea_mpp.split185
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r8), %rax
	cmpq	basket_size, %rax
	setle	%al
	movw	$-29195, BasicBlockSignatureTracker # imm = 0x8DF5
	movw	$28, RunTimeSignatureAdjuster
.LBB17_18:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$989, %cx               # imm = 0x3DD
	xorw	%dx, %cx
	cmpw	$-29132, %cx            # imm = 0x8E34
	jne	.LBB17_93
# %bb.19:                               # %primal_bea_mpp.split187
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	$-29132, BasicBlockSignatureTracker # imm = 0x8E34
	movw	$0, RunTimeSignatureAdjuster
	testb	$1, %al
	jne	.LBB17_20
	jmp	.LBB17_44
.LBB17_20:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$251, %ax
	cmpw	$-28977, %ax            # imm = 0x8ECF
	jne	.LBB17_93
# %bb.21:                               # %primal_bea_mpp.split189
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r8), %rax
	movq	perm(,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	(%r14), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%r11)
	movq	(%r11), %rax
	movw	$-28977, BasicBlockSignatureTracker # imm = 0x8ECF
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jge	.LBB17_24
# %bb.22:                               #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$411, %ax               # imm = 0x19B
	cmpw	$-28844, %ax            # imm = 0x8F54
	jne	.LBB17_93
# %bb.23:                               # %primal_bea_mpp.split193
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r14), %rax
	movl	24(%rax), %eax
	movw	$-28844, BasicBlockSignatureTracker # imm = 0x8F54
	movw	$411, RunTimeSignatureAdjuster # imm = 0x19B
	cmpl	$1, %eax
	je	.LBB17_28
.LBB17_24:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$432, %ax               # imm = 0x1B0
	xorw	%cx, %ax
	cmpw	$-28801, %ax            # imm = 0x8F7F
	jne	.LBB17_93
# %bb.25:                               # %primal_bea_mpp.split195
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r11), %rax
	movw	$-28801, BasicBlockSignatureTracker # imm = 0x8F7F
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jle	.LBB17_40
# %bb.26:                               #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$181, %ax
	cmpw	$-28726, %ax            # imm = 0x8FCA
	jne	.LBB17_93
# %bb.27:                               # %primal_bea_mpp.split199
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r14), %rax
	movl	24(%rax), %eax
	movw	$-28726, BasicBlockSignatureTracker # imm = 0x8FCA
	movw	$181, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	je	.LBB17_30
	jmp	.LBB17_40
.LBB17_28:                              # %Buffer__
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-26803, %ax            # imm = 0x974D
	cmpw	$6169, %ax              # imm = 0x1819
	jne	.LBB17_93
# %bb.29:                               # %primal_bea_mpp.split197
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	$6169, BasicBlockSignatureTracker # imm = 0x1819
	movw	$-26803, RunTimeSignatureAdjuster # imm = 0x974D
	jmp	.LBB17_32
.LBB17_30:                              # %Buffer__1
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-28121, %ax            # imm = 0x9227
	cmpw	$7661, %ax              # imm = 0x1DED
	jne	.LBB17_93
# %bb.31:                               # %primal_bea_mpp.split203
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	$7661, BasicBlockSignatureTracker # imm = 0x1DED
	movw	$-27975, RunTimeSignatureAdjuster # imm = 0x92B9
.LBB17_32:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$7934, %ax              # imm = 0x1EFE
	xorw	%cx, %ax
	cmpw	$-28246, %ax            # imm = 0x91AA
	jne	.LBB17_93
# %bb.33:                               # %primal_bea_mpp.split255
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%rbx), %rax
	addq	$1, %rax
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	movq	(%rbx), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	(%r11), %rax
	movq	(%rbx), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	movq	(%r11), %rax
	movw	$-28246, BasicBlockSignatureTracker # imm = 0x91AA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB17_36
# %bb.34:                               #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$784, %ax               # imm = 0x310
	cmpw	$-27974, %ax            # imm = 0x92BA
	jne	.LBB17_93
# %bb.35:                               # %primal_bea_mpp.split205
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r11), %rax
	movw	$-27974, BasicBlockSignatureTracker # imm = 0x92BA
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB17_38
.LBB17_36:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1504, %ax              # imm = 0x5E0
	cmpw	$-27574, %ax            # imm = 0x944A
	jne	.LBB17_93
# %bb.37:                               # %primal_bea_mpp.split207
                                        #   in Loop: Header=BB17_14 Depth=1
	xorl	%eax, %eax
	subq	(%r11), %rax
	movw	$-27574, BasicBlockSignatureTracker # imm = 0x944A
	movw	$1776, RunTimeSignatureAdjuster # imm = 0x6F0
.LBB17_38:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$1764, %cx              # imm = 0x6E4
	xorw	%dx, %cx
	cmpw	$-27554, %cx            # imm = 0x945E
	jne	.LBB17_93
# %bb.39:                               # %primal_bea_mpp.split209
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%rbx), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 16(%rcx)
	movw	$-27554, BasicBlockSignatureTracker # imm = 0x945E
	movw	$6945, RunTimeSignatureAdjuster # imm = 0x1B21
.LBB17_40:                              #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$6915, %ax              # imm = 0x1B03
	xorw	%cx, %ax
	cmpw	$-27524, %ax            # imm = 0x947C
	jne	.LBB17_93
# %bb.41:                               # %primal_bea_mpp.split201
                                        #   in Loop: Header=BB17_14 Depth=1
	movw	$-27524, BasicBlockSignatureTracker # imm = 0x947C
	movw	$0, RunTimeSignatureAdjuster
# %bb.42:                               #   in Loop: Header=BB17_14 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$485, %ax               # imm = 0x1E5
	cmpw	$-27239, %ax            # imm = 0x9599
	jne	.LBB17_93
# %bb.43:                               # %primal_bea_mpp.split211
                                        #   in Loop: Header=BB17_14 Depth=1
	movq	(%r8), %rax
	addq	$1, %rax
	movq	%rax, (%r8)
	movw	$-27239, BasicBlockSignatureTracker # imm = 0x9599
	movw	$6213, RunTimeSignatureAdjuster # imm = 0x1845
	jmp	.LBB17_14
.LBB17_44:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$6281, %ax              # imm = 0x1889
	cmpw	$-26947, %ax            # imm = 0x96BD
	jne	.LBB17_94
# %bb.45:                               # %primal_bea_mpp.split191
	movq	(%rbx), %rax
	movq	%rax, basket_size
	movw	$-26947, BasicBlockSignatureTracker # imm = 0x96BD
	movw	$6915, RunTimeSignatureAdjuster # imm = 0x1B03
.LBB17_46:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$6712, %ax              # imm = 0x1A38
	xorw	%cx, %ax
	cmpw	$-26746, %ax            # imm = 0x9786
	jne	.LBB17_94
# %bb.47:                               # %primal_bea_mpp.split181
	movq	group_pos, %rax
	movq	%rax, (%r10)
	movw	$-26746, BasicBlockSignatureTracker # imm = 0x9786
	movw	$0, RunTimeSignatureAdjuster
.LBB17_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_50 Depth 2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$70, %ax
	xorw	%cx, %ax
	cmpw	$-26688, %ax            # imm = 0x97C0
	jne	.LBB17_91
# %bb.49:                               # %primal_bea_mpp.split213
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	(%r12), %rax
	movq	group_pos, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, (%r14)
	movw	$-26688, BasicBlockSignatureTracker # imm = 0x97C0
	movw	$0, RunTimeSignatureAdjuster
.LBB17_50:                              #   Parent Loop BB17_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$4009, %ax              # imm = 0xFA9
	xorw	%cx, %ax
	cmpw	$-26519, %ax            # imm = 0x9869
	jne	.LBB17_90
# %bb.51:                               # %primal_bea_mpp.split215
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	(%r14), %rax
	movq	(%r13), %rcx
	movw	$-26519, BasicBlockSignatureTracker # imm = 0x9869
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jae	.LBB17_70
# %bb.52:                               #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$337, %ax               # imm = 0x151
	cmpw	$-26312, %ax            # imm = 0x9938
	jne	.LBB17_90
# %bb.53:                               # %primal_bea_mpp.split217
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	(%r14), %rax
	movl	24(%rax), %eax
	movw	$-26312, BasicBlockSignatureTracker # imm = 0x9938
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	jle	.LBB17_66
# %bb.54:                               #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$778, %ax               # imm = 0x30A
	cmpw	$-26062, %ax            # imm = 0x9A32
	jne	.LBB17_90
# %bb.55:                               # %primal_bea_mpp.split221
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	%r10, -56(%rbp)         # 8-byte Spill
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	(%r14), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%r11)
	movq	(%r14), %rdi
	movq	%r11, %rbx
	movq	(%r11), %rsi
	movw	$-26062, BasicBlockSignatureTracker # imm = 0x9A32
	movw	$0, RunTimeSignatureAdjuster
	callq	bea_is_dual_infeasible
	movw	$-26062, BasicBlockSignatureTracker # imm = 0x9A32
	movw	$0, RunTimeSignatureAdjuster
	movw	$-26062, BasicBlockSignatureTracker # imm = 0x9A32
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB17_64
# %bb.56:                               #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$181, %ax
	cmpw	$-25977, %ax            # imm = 0x9A87
	movq	%rbx, %rdx
	jne	.LBB17_90
# %bb.57:                               # %primal_bea_mpp.split225
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	basket_size, %rax
	addq	$1, %rax
	movq	%rax, basket_size
	movq	(%r14), %rax
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rax
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rdx), %rax
	movw	$-25977, BasicBlockSignatureTracker # imm = 0x9A87
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB17_60
# %bb.58:                               #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1676, %ax              # imm = 0x68C
	cmpw	$-25589, %ax            # imm = 0x9C0B
	movq	%rbx, %rax
	jne	.LBB17_90
# %bb.59:                               # %primal_bea_mpp.split229
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	(%rax), %rax
	movw	$-25589, BasicBlockSignatureTracker # imm = 0x9C0B
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB17_62
.LBB17_60:                              #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1934, %ax              # imm = 0x78E
	cmpw	$-25335, %ax            # imm = 0x9D09
	movq	%rbx, %rcx
	jne	.LBB17_90
# %bb.61:                               # %primal_bea_mpp.split231
                                        #   in Loop: Header=BB17_50 Depth=2
	xorl	%eax, %eax
	subq	(%rcx), %rax
	movw	$-25335, BasicBlockSignatureTracker # imm = 0x9D09
	movw	$258, RunTimeSignatureAdjuster # imm = 0x102
.LBB17_62:                              #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$419, %cx               # imm = 0x1A3
	xorw	%dx, %cx
	cmpw	$-25176, %cx            # imm = 0x9DA8
	jne	.LBB17_90
# %bb.63:                               # %primal_bea_mpp.split233
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 16(%rcx)
	movw	$-25176, BasicBlockSignatureTracker # imm = 0x9DA8
	movw	$1946, RunTimeSignatureAdjuster # imm = 0x79A
.LBB17_64:                              #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1944, %ax              # imm = 0x798
	xorw	%cx, %ax
	cmpw	$-25174, %ax            # imm = 0x9DAA
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%rbx, %r11
	jne	.LBB17_90
# %bb.65:                               # %primal_bea_mpp.split227
                                        #   in Loop: Header=BB17_50 Depth=2
	movw	$-25174, BasicBlockSignatureTracker # imm = 0x9DAA
	movw	$1170, RunTimeSignatureAdjuster # imm = 0x492
.LBB17_66:                              #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1175, %ax              # imm = 0x497
	xorw	%cx, %ax
	cmpw	$-25169, %ax            # imm = 0x9DAF
	jne	.LBB17_90
# %bb.67:                               # %primal_bea_mpp.split223
                                        #   in Loop: Header=BB17_50 Depth=2
	movw	$-25169, BasicBlockSignatureTracker # imm = 0x9DAF
	movw	$0, RunTimeSignatureAdjuster
# %bb.68:                               #   in Loop: Header=BB17_50 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$120, %ax
	cmpw	$-25129, %ax            # imm = 0x9DD7
	jne	.LBB17_90
# %bb.69:                               # %primal_bea_mpp.split235
                                        #   in Loop: Header=BB17_50 Depth=2
	movq	nr_group, %rax
	shlq	$6, %rax
	addq	(%r14), %rax
	movq	%rax, (%r14)
	movw	$-25129, BasicBlockSignatureTracker # imm = 0x9DD7
	movw	$2583, RunTimeSignatureAdjuster # imm = 0xA17
	jmp	.LBB17_50
.LBB17_70:                              #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1536, %ax              # imm = 0x600
	cmpw	$-24983, %ax            # imm = 0x9E69
	jne	.LBB17_91
# %bb.71:                               # %primal_bea_mpp.split219
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	group_pos, %rax
	addq	$1, %rax
	movq	%rax, group_pos
	movq	nr_group, %rcx
	movw	$-24983, BasicBlockSignatureTracker # imm = 0x9E69
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB17_74
# %bb.72:                               #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$22, %ax
	cmpw	$-24961, %ax            # imm = 0x9E7F
	jne	.LBB17_91
# %bb.73:                               # %primal_bea_mpp.split237
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	$0, group_pos
	movw	$-24961, BasicBlockSignatureTracker # imm = 0x9E7F
	movw	$22, RunTimeSignatureAdjuster
.LBB17_74:                              #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$193, %ax
	xorw	%cx, %ax
	cmpw	$-24920, %ax            # imm = 0x9EA8
	jne	.LBB17_91
# %bb.75:                               # %primal_bea_mpp.split239
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	basket_size, %rax
	movw	$-24920, BasicBlockSignatureTracker # imm = 0x9EA8
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$50, %rax
	jge	.LBB17_82
# %bb.76:                               #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$28, %ax
	cmpw	$-24908, %ax            # imm = 0x9EB4
	jne	.LBB17_91
# %bb.77:                               # %primal_bea_mpp.split241
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	group_pos, %rax
	movq	(%r10), %rcx
	movw	$-24908, BasicBlockSignatureTracker # imm = 0x9EB4
	movw	$28, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB17_82
# %bb.78:                               # %Buffer__2
                                        #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-23962, %ax            # imm = 0xA266
	cmpw	$15570, %ax             # imm = 0x3CD2
	jne	.LBB17_91
# %bb.79:                               # %primal_bea_mpp.split245
                                        #   in Loop: Header=BB17_48 Depth=1
	movw	$15570, BasicBlockSignatureTracker # imm = 0x3CD2
	movw	$-23962, RunTimeSignatureAdjuster # imm = 0xA266
# %bb.80:                               #   in Loop: Header=BB17_48 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$16259, %ax             # imm = 0x3F83
	xorw	%cx, %ax
	cmpw	$-24265, %ax            # imm = 0xA137
	jne	.LBB17_91
# %bb.81:                               # %primal_bea_mpp.split257
                                        #   in Loop: Header=BB17_48 Depth=1
	movw	$-24265, BasicBlockSignatureTracker # imm = 0xA137
	movw	$14001, RunTimeSignatureAdjuster # imm = 0x36B1
	jmp	.LBB17_48
.LBB17_82:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$15442, %ax             # imm = 0x3C52
	xorw	%cx, %ax
	cmpw	$-23814, %ax            # imm = 0xA2FA
	jne	.LBB17_94
# %bb.83:                               # %primal_bea_mpp.split243
	movq	basket_size, %rax
	movw	$-23814, BasicBlockSignatureTracker # imm = 0xA2FA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB17_86
# %bb.84:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$493, %ax               # imm = 0x1ED
	cmpw	$-23785, %ax            # imm = 0xA317
	jne	.LBB17_94
# %bb.85:                               # %primal_bea_mpp.split247
	movq	$1, initialize
	movq	(%r15), %rax
	movq	$0, (%rax)
	movq	%r9, %rdx
	movq	$0, (%r9)
	movw	$-23785, BasicBlockSignatureTracker # imm = 0xA317
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB17_88
.LBB17_86:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1730, %ax              # imm = 0x6C2
	cmpw	$-23496, %ax            # imm = 0xA438
	jne	.LBB17_94
# %bb.87:                               # %primal_bea_mpp.split249
	movq	basket_size, %rsi
	movw	$-23496, BasicBlockSignatureTracker # imm = 0xA438
	movw	$11824, RunTimeSignatureAdjuster # imm = 0x2E30
	movl	$1, %edi
	movq	%r9, %rbx
	callq	sort_basket
	movw	$-23496, BasicBlockSignatureTracker # imm = 0xA438
	movw	$11824, RunTimeSignatureAdjuster # imm = 0x2E30
	movq	perm+8, %rax
	movq	8(%rax), %rax
	movq	(%r15), %rcx
	movq	%rax, (%rcx)
	movq	perm+8, %rax
	movq	(%rax), %rax
	movq	%rbx, %rdx
	movq	%rax, (%rbx)
	movw	$-23496, BasicBlockSignatureTracker # imm = 0xA438
	movw	$1839, RunTimeSignatureAdjuster # imm = 0x72F
.LBB17_88:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1867, %ax              # imm = 0x74B
	xorw	%cx, %ax
	cmpw	$-23460, %ax            # imm = 0xA45C
	jne	.LBB17_94
# %bb.89:                               # %primal_bea_mpp.split251
	movq	(%rdx), %rax
	movw	$-23460, BasicBlockSignatureTracker # imm = 0xA45C
	movw	$4864, RunTimeSignatureAdjuster # imm = 0x1300
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_90:                              # %CFerrorHandler.primal_bea_mpp.loopexit
	jmp	.LBB17_94
.LBB17_91:                              # %CFerrorHandler.primal_bea_mpp.loopexit1
	jmp	.LBB17_94
.LBB17_92:                              # %CFerrorHandler.primal_bea_mpp.loopexit2
	jmp	.LBB17_94
.LBB17_93:                              # %CFerrorHandler.primal_bea_mpp.loopexit3
	jmp	.LBB17_94
.LBB17_94:                              # %CFerrorHandler.primal_bea_mpp
	callq	FAULT_DETECTED_CFC
.Lfunc_end17:
	.size	primal_bea_mpp, .Lfunc_end17-primal_bea_mpp
	.cfi_endproc
                                        # -- End function
	.globl	primal_iminus           # -- Begin function primal_iminus
	.p2align	4, 0x90
	.type	primal_iminus,@function
primal_iminus:                          # @primal_iminus
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
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$7199, %ax              # imm = 0x1C1F
	xorw	%bx, %ax
	cmpw	$-23051, %ax            # imm = 0xA5F5
	jne	.LBB18_51
# %bb.1:                                # %primal_iminus.split141
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rdi, (%r9)
	movq	%rsi, (%r10)
	movq	%rdx, (%rax)
	movq	%rcx, (%rbx)
	movq	%r8, (%r11)
	movq	$0, (%r14)
	movw	$-23051, BasicBlockSignatureTracker # imm = 0xA5F5
	movw	$0, RunTimeSignatureAdjuster
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$564, %cx               # imm = 0x234
	xorw	%dx, %cx
	cmpw	$-22591, %cx            # imm = 0xA7C1
	jne	.LBB18_50
# %bb.3:                                # %primal_iminus.split
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movq	(%rbx), %rdx
	movw	$-22591, BasicBlockSignatureTracker # imm = 0xA7C1
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	je	.LBB18_48
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$3993, %cx              # imm = 0xF99
	cmpw	$-22440, %cx            # imm = 0xA858
	jne	.LBB18_50
# %bb.5:                                # %primal_iminus.split95
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	(%rbx), %rdx
	movq	88(%rdx), %rdx
	movw	$-22440, BasicBlockSignatureTracker # imm = 0xA858
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jge	.LBB18_26
# %bb.6:                                #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$57, %cx
	cmpw	$-22431, %cx            # imm = 0xA861
	jne	.LBB18_50
# %bb.7:                                # %primal_iminus.split99
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movl	8(%rcx), %ecx
	movw	$-22431, BasicBlockSignatureTracker # imm = 0xA861
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	je	.LBB18_14
# %bb.8:                                #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$206, %cx
	cmpw	$-22353, %cx            # imm = 0xA8AF
	jne	.LBB18_50
# %bb.9:                                # %primal_iminus.split103
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%r9), %rcx
	movq	(%rcx), %rcx
	movq	(%rax), %rdx
	movq	80(%rdx), %rdx
	movw	$-22353, BasicBlockSignatureTracker # imm = 0xA8AF
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jle	.LBB18_12
# %bb.10:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$21, %cx
	cmpw	$-22342, %cx            # imm = 0xA8BA
	jne	.LBB18_50
# %bb.11:                               # %primal_iminus.split107
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	movq	(%rax), %rcx
	movq	80(%rcx), %rcx
	movq	(%r9), %rdx
	movq	%rcx, (%rdx)
	movq	(%r10), %rcx
	movq	$0, (%rcx)
	movw	$-22342, BasicBlockSignatureTracker # imm = 0xA8BA
	movw	$21, RunTimeSignatureAdjuster
.LBB18_12:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$123, %cx
	xorw	%dx, %cx
	cmpw	$-22316, %cx            # imm = 0xA8D4
	jne	.LBB18_50
# %bb.13:                               # %primal_iminus.split109
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-22316, BasicBlockSignatureTracker # imm = 0xA8D4
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB18_24
.LBB18_14:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$386, %cx               # imm = 0x182
	cmpw	$-22045, %cx            # imm = 0xA9E3
	jne	.LBB18_50
# %bb.15:                               # %primal_iminus.split105
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	$-22045, BasicBlockSignatureTracker # imm = 0xA9E3
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB18_22
# %bb.16:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$833, %cx               # imm = 0x341
	cmpw	$-21854, %cx            # imm = 0xAAA2
	jne	.LBB18_50
# %bb.17:                               # %primal_iminus.split113
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %ecx
	movq	(%r9), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rsi
	subq	80(%rsi), %rcx
	movw	$-21854, BasicBlockSignatureTracker # imm = 0xAAA2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rdx
	jle	.LBB18_20
# %bb.18:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$292, %cx               # imm = 0x124
	cmpw	$-21626, %cx            # imm = 0xAB86
	jne	.LBB18_50
# %bb.19:                               # %primal_iminus.split117
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %ecx
	movq	(%rax), %rdx
	movq	%rdx, (%r14)
	movq	(%rax), %rdx
	subq	80(%rdx), %rcx
	movq	(%r9), %rdx
	movq	%rcx, (%rdx)
	movq	(%r10), %rcx
	movq	$0, (%rcx)
	movw	$-21626, BasicBlockSignatureTracker # imm = 0xAB86
	movw	$292, RunTimeSignatureAdjuster # imm = 0x124
.LBB18_20:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$300, %cx               # imm = 0x12C
	xorw	%dx, %cx
	cmpw	$-21618, %cx            # imm = 0xAB8E
	jne	.LBB18_50
# %bb.21:                               # %primal_iminus.split119
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-21618, BasicBlockSignatureTracker # imm = 0xAB8E
	movw	$621, RunTimeSignatureAdjuster # imm = 0x26D
.LBB18_22:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$587, %cx               # imm = 0x24B
	xorw	%dx, %cx
	cmpw	$-21592, %cx            # imm = 0xABA8
	jne	.LBB18_50
# %bb.23:                               # %primal_iminus.split115
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-21592, BasicBlockSignatureTracker # imm = 0xABA8
	movw	$892, RunTimeSignatureAdjuster # imm = 0x37C
.LBB18_24:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$871, %cx               # imm = 0x367
	xorw	%dx, %cx
	cmpw	$-21581, %cx            # imm = 0xABB3
	jne	.LBB18_50
# %bb.25:                               # %primal_iminus.split111
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, (%rax)
	movw	$-21581, BasicBlockSignatureTracker # imm = 0xABB3
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB18_46
.LBB18_26:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$1090, %cx              # imm = 0x442
	cmpw	$-21478, %cx            # imm = 0xAC1A
	jne	.LBB18_50
# %bb.27:                               # %primal_iminus.split101
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rbx), %rcx
	movl	8(%rcx), %ecx
	movw	$-21478, BasicBlockSignatureTracker # imm = 0xAC1A
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %ecx
	jne	.LBB18_34
# %bb.28:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$109, %cx
	cmpw	$-21385, %cx            # imm = 0xAC77
	jne	.LBB18_50
# %bb.29:                               # %primal_iminus.split125
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%r9), %rcx
	movq	(%rcx), %rcx
	movq	(%rbx), %rdx
	movq	80(%rdx), %rdx
	movw	$-21385, BasicBlockSignatureTracker # imm = 0xAC77
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rcx
	jl	.LBB18_32
# %bb.30:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$247, %cx
	cmpw	$-21376, %cx            # imm = 0xAC80
	jne	.LBB18_50
# %bb.31:                               # %primal_iminus.split127
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rbx), %rcx
	movq	%rcx, (%r14)
	movq	(%rbx), %rcx
	movq	80(%rcx), %rcx
	movq	(%r9), %rdx
	movq	%rcx, (%rdx)
	movq	(%r10), %rcx
	movq	$1, (%rcx)
	movw	$-21376, BasicBlockSignatureTracker # imm = 0xAC80
	movw	$247, RunTimeSignatureAdjuster
.LBB18_32:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$203, %cx
	xorw	%dx, %cx
	cmpw	$-21316, %cx            # imm = 0xACBC
	jne	.LBB18_50
# %bb.33:                               # %primal_iminus.split129
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-21316, BasicBlockSignatureTracker # imm = 0xACBC
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB18_44
.LBB18_34:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$217, %cx
	cmpw	$-21309, %cx            # imm = 0xACC3
	jne	.LBB18_50
# %bb.35:                               # %primal_iminus.split123
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	$-21309, BasicBlockSignatureTracker # imm = 0xACC3
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rcx
	je	.LBB18_42
# %bb.36:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$33, %cx
	cmpw	$-21278, %cx            # imm = 0xACE2
	jne	.LBB18_50
# %bb.37:                               # %primal_iminus.split133
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %ecx
	movq	(%r9), %rdx
	movq	(%rdx), %rdx
	movq	(%rbx), %rsi
	subq	80(%rsi), %rcx
	movw	$-21278, BasicBlockSignatureTracker # imm = 0xACE2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rdx
	jl	.LBB18_40
# %bb.38:                               #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	xorw	$286, %cx               # imm = 0x11E
	cmpw	$-20996, %cx            # imm = 0xADFC
	jne	.LBB18_50
# %bb.39:                               # %primal_iminus.split137
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1, %ecx
	movq	(%rbx), %rdx
	movq	%rdx, (%r14)
	movq	(%rbx), %rdx
	subq	80(%rdx), %rcx
	movq	(%r9), %rdx
	movq	%rcx, (%rdx)
	movq	(%r10), %rcx
	movq	$1, (%rcx)
	movw	$-20996, BasicBlockSignatureTracker # imm = 0xADFC
	movw	$286, RunTimeSignatureAdjuster # imm = 0x11E
.LBB18_40:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$762, %cx               # imm = 0x2FA
	xorw	%dx, %cx
	cmpw	$-20968, %cx            # imm = 0xAE18
	jne	.LBB18_50
# %bb.41:                               # %primal_iminus.split139
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-20968, BasicBlockSignatureTracker # imm = 0xAE18
	movw	$731, RunTimeSignatureAdjuster # imm = 0x2DB
.LBB18_42:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$694, %cx               # imm = 0x2B6
	xorw	%dx, %cx
	cmpw	$-20875, %cx            # imm = 0xAE75
	jne	.LBB18_50
# %bb.43:                               # %primal_iminus.split135
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-20875, BasicBlockSignatureTracker # imm = 0xAE75
	movw	$713, RunTimeSignatureAdjuster # imm = 0x2C9
.LBB18_44:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$553, %cx               # imm = 0x229
	xorw	%dx, %cx
	cmpw	$-20843, %cx            # imm = 0xAE95
	jne	.LBB18_50
# %bb.45:                               # %primal_iminus.split131
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	(%rbx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, (%rbx)
	movw	$-20843, BasicBlockSignatureTracker # imm = 0xAE95
	movw	$1318, RunTimeSignatureAdjuster # imm = 0x526
.LBB18_46:                              #   in Loop: Header=BB18_2 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$1386, %cx              # imm = 0x56A
	xorw	%dx, %cx
	cmpw	$-20775, %cx            # imm = 0xAED9
	jne	.LBB18_50
# %bb.47:                               # %primal_iminus.split121
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$-20775, BasicBlockSignatureTracker # imm = 0xAED9
	movw	$2860, RunTimeSignatureAdjuster # imm = 0xB2C
	jmp	.LBB18_2
.LBB18_48:
	movw	BasicBlockSignatureTracker, %cx
	xorw	$2205, %cx              # imm = 0x89D
	cmpw	$-20644, %cx            # imm = 0xAF5C
	jne	.LBB18_51
# %bb.49:                               # %primal_iminus.split97
	movq	(%rax), %rax
	movq	(%r11), %rcx
	movq	%rax, (%rcx)
	movq	(%r14), %rax
	movw	$-20644, BasicBlockSignatureTracker # imm = 0xAF5C
	movw	$5854, RunTimeSignatureAdjuster # imm = 0x16DE
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_50:                              # %CFerrorHandler.primal_iminus.loopexit
	jmp	.LBB18_51
.LBB18_51:                              # %CFerrorHandler.primal_iminus
	callq	FAULT_DETECTED_CFC
.Lfunc_end18:
	.size	primal_iminus, .Lfunc_end18-primal_iminus
	.cfi_endproc
                                        # -- End function
	.globl	primal_update_flow      # -- Begin function primal_update_flow
	.p2align	4, 0x90
	.type	primal_update_flow,@function
primal_update_flow:                     # @primal_update_flow
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$5174, %ax              # imm = 0x1436
	xorw	%cx, %ax
	cmpw	$-20524, %ax            # imm = 0xAFD4
	jne	.LBB19_32
# %bb.1:                                # %primal_update_flow.split79
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rdi, (%rax)
	movq	%rsi, (%r8)
	movq	%rdx, (%rcx)
	movw	$-20524, BasicBlockSignatureTracker # imm = 0xAFD4
	movw	$0, RunTimeSignatureAdjuster
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$8119, %dx              # imm = 0x1FB7
	xorw	%si, %dx
	cmpw	$-20381, %dx            # imm = 0xB063
	jne	.LBB19_31
# %bb.3:                                # %primal_update_flow.split
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	(%rax), %rdx
	movq	(%rcx), %rsi
	movw	$-20381, BasicBlockSignatureTracker # imm = 0xB063
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rsi, %rdx
	je	.LBB19_14
# %bb.4:                                #   in Loop: Header=BB19_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$358, %dx               # imm = 0x166
	cmpw	$-20219, %dx            # imm = 0xB105
	jne	.LBB19_31
# %bb.5:                                # %primal_update_flow.split53
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	(%rax), %rdx
	movl	8(%rdx), %edx
	movw	$-20219, BasicBlockSignatureTracker # imm = 0xB105
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %edx
	je	.LBB19_8
# %bb.6:                                #   in Loop: Header=BB19_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$91, %dx
	cmpw	$-20130, %dx            # imm = 0xB15E
	jne	.LBB19_31
# %bb.7:                                # %primal_update_flow.split57
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	(%rax), %rdx
	movq	$0, 80(%rdx)
	movw	$-20130, BasicBlockSignatureTracker # imm = 0xB15E
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB19_10
.LBB19_8:                               #   in Loop: Header=BB19_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$770, %dx               # imm = 0x302
	cmpw	$-19961, %dx            # imm = 0xB207
	jne	.LBB19_31
# %bb.9:                                # %primal_update_flow.split59
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	(%rax), %rdx
	movq	$1, 80(%rdx)
	movw	$-19961, BasicBlockSignatureTracker # imm = 0xB207
	movw	$857, RunTimeSignatureAdjuster # imm = 0x359
.LBB19_10:                              #   in Loop: Header=BB19_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$1008, %dx              # imm = 0x3F0
	xorw	%si, %dx
	cmpw	$-19794, %dx            # imm = 0xB2AE
	jne	.LBB19_31
# %bb.11:                               # %primal_update_flow.split61
                                        #   in Loop: Header=BB19_2 Depth=1
	movw	$-19794, BasicBlockSignatureTracker # imm = 0xB2AE
	movw	$0, RunTimeSignatureAdjuster
# %bb.12:                               #   in Loop: Header=BB19_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$85, %dx
	cmpw	$-19717, %dx            # imm = 0xB2FB
	jne	.LBB19_31
# %bb.13:                               # %primal_update_flow.split63
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	(%rax), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, (%rax)
	movw	$-19717, BasicBlockSignatureTracker # imm = 0xB2FB
	movw	$7471, RunTimeSignatureAdjuster # imm = 0x1D2F
	jmp	.LBB19_2
.LBB19_14:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$797, %ax               # imm = 0x31D
	cmpw	$-19586, %ax            # imm = 0xB37E
	jne	.LBB19_32
# %bb.15:                               # %primal_update_flow.split55
	movw	$-19586, BasicBlockSignatureTracker # imm = 0xB37E
	movw	$0, RunTimeSignatureAdjuster
.LBB19_16:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$1820, %ax              # imm = 0x71C
	xorw	%dx, %ax
	cmpw	$-19358, %ax            # imm = 0xB462
	jne	.LBB19_30
# %bb.17:                               # %primal_update_flow.split65
                                        #   in Loop: Header=BB19_16 Depth=1
	movq	(%r8), %rax
	movq	(%rcx), %rdx
	movw	$-19358, BasicBlockSignatureTracker # imm = 0xB462
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdx, %rax
	je	.LBB19_28
# %bb.18:                               #   in Loop: Header=BB19_16 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$138, %ax
	cmpw	$-19224, %ax            # imm = 0xB4E8
	jne	.LBB19_30
# %bb.19:                               # %primal_update_flow.split67
                                        #   in Loop: Header=BB19_16 Depth=1
	movq	(%r8), %rax
	movl	8(%rax), %eax
	movw	$-19224, BasicBlockSignatureTracker # imm = 0xB4E8
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$0, %eax
	je	.LBB19_22
# %bb.20:                               #   in Loop: Header=BB19_16 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$362, %ax               # imm = 0x16A
	cmpw	$-19070, %ax            # imm = 0xB582
	jne	.LBB19_30
# %bb.21:                               # %primal_update_flow.split71
                                        #   in Loop: Header=BB19_16 Depth=1
	movq	(%r8), %rax
	movq	$1, 80(%rax)
	movw	$-19070, BasicBlockSignatureTracker # imm = 0xB582
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB19_24
.LBB19_22:                              #   in Loop: Header=BB19_16 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$321, %ax               # imm = 0x141
	cmpw	$-19031, %ax            # imm = 0xB5A9
	jne	.LBB19_30
# %bb.23:                               # %primal_update_flow.split73
                                        #   in Loop: Header=BB19_16 Depth=1
	movq	(%r8), %rax
	movq	$0, 80(%rax)
	movw	$-19031, BasicBlockSignatureTracker # imm = 0xB5A9
	movw	$43, RunTimeSignatureAdjuster
.LBB19_24:                              #   in Loop: Header=BB19_16 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$909, %ax               # imm = 0x38D
	xorw	%dx, %ax
	cmpw	$-18929, %ax            # imm = 0xB60F
	jne	.LBB19_30
# %bb.25:                               # %primal_update_flow.split75
                                        #   in Loop: Header=BB19_16 Depth=1
	movw	$-18929, BasicBlockSignatureTracker # imm = 0xB60F
	movw	$0, RunTimeSignatureAdjuster
# %bb.26:                               #   in Loop: Header=BB19_16 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$34, %ax
	cmpw	$-18899, %ax            # imm = 0xB62D
	jne	.LBB19_30
# %bb.27:                               # %primal_update_flow.split77
                                        #   in Loop: Header=BB19_16 Depth=1
	movq	(%r8), %rax
	movq	24(%rax), %rax
	movq	%rax, (%r8)
	movw	$-18899, BasicBlockSignatureTracker # imm = 0xB62D
	movw	$1363, RunTimeSignatureAdjuster # imm = 0x553
	jmp	.LBB19_16
.LBB19_28:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$738, %ax               # imm = 0x2E2
	cmpw	$-18816, %ax            # imm = 0xB680
	jne	.LBB19_32
# %bb.29:                               # %primal_update_flow.split69
	movw	$-18816, BasicBlockSignatureTracker # imm = 0xB680
	movw	$3535, RunTimeSignatureAdjuster # imm = 0xDCF
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB19_30:                              # %CFerrorHandler.primal_update_flow.loopexit
	jmp	.LBB19_32
.LBB19_31:                              # %CFerrorHandler.primal_update_flow.loopexit1
	jmp	.LBB19_32
.LBB19_32:                              # %CFerrorHandler.primal_update_flow
	callq	FAULT_DETECTED_CFC
.Lfunc_end19:
	.size	primal_update_flow, .Lfunc_end19-primal_update_flow
	.cfi_endproc
                                        # -- End function
	.globl	primal_net_simplex      # -- Begin function primal_net_simplex
	.p2align	4, 0x90
	.type	primal_net_simplex,@function
primal_net_simplex:                     # @primal_net_simplex
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
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-30910, %ax            # imm = 0x8742
	xorw	%cx, %ax
	cmpw	$-18625, %ax            # imm = 0xB73F
	jne	.LBB20_63
# %bb.1:                                # %primal_net_simplex.split
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rdi, (%r13)
	movq	$0, (%rdx)
	movq	(%r13), %rax
	movq	568(%rax), %rax
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, (%rcx)
	movq	(%r13), %rax
	movq	576(%rax), %rax
	movq	%r12, -216(%rbp)        # 8-byte Spill
	movq	%rax, (%r12)
	movq	%r8, %r12
	movq	(%r13), %rax
	movq	424(%rax), %rax
	movq	%rax, (%r12)
	movq	(%r13), %rax
	addq	$600, %rax              # imm = 0x258
	movq	%rax, (%r15)
	movq	(%r13), %rax
	addq	$608, %rax              # imm = 0x260
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%rax, (%r9)
	movq	(%r13), %rax
	addq	$616, %rax              # imm = 0x268
	movq	%rax, (%r14)
	movw	$-18625, BasicBlockSignatureTracker # imm = 0xB73F
	movw	$0, RunTimeSignatureAdjuster
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$99, %ax
	xorw	%cx, %ax
	cmpw	$-18596, %ax            # imm = 0xB75C
	jne	.LBB20_62
# %bb.3:                                # %primal_net_simplex.split115
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpq	$0, (%rdx)
	setne	%al
	xorb	$-1, %al
	movw	$-18596, BasicBlockSignatureTracker # imm = 0xB75C
	movw	$0, RunTimeSignatureAdjuster
	testb	$1, %al
	jne	.LBB20_4
	jmp	.LBB20_60
.LBB20_4:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$32, %ax
	cmpw	$-18564, %ax            # imm = 0xB77C
	jne	.LBB20_62
# %bb.5:                                # %primal_net_simplex.split117
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	(%r12), %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rsi
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdx
	movw	$-18564, BasicBlockSignatureTracker # imm = 0xB77C
	movw	$0, RunTimeSignatureAdjuster
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	primal_bea_mpp
	movw	$-18564, BasicBlockSignatureTracker # imm = 0xB77C
	movw	$0, RunTimeSignatureAdjuster
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-18564, BasicBlockSignatureTracker # imm = 0xB77C
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB20_56
# %bb.6:                                #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4089, %ax              # imm = 0xFF9
	cmpw	$-18299, %ax            # imm = 0xB885
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB20_62
# %bb.7:                                # %primal_net_simplex.split121
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movw	$-18299, BasicBlockSignatureTracker # imm = 0xB885
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jle	.LBB20_10
# %bb.8:                                #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$263, %ax               # imm = 0x107
	cmpw	$-18046, %ax            # imm = 0xB982
	jne	.LBB20_62
# %bb.9:                                # %primal_net_simplex.split125
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	movq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rbx)
	movw	$-18046, BasicBlockSignatureTracker # imm = 0xB982
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_12
.LBB20_10:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$348, %ax               # imm = 0x15C
	cmpw	$-17959, %ax            # imm = 0xB9D9
	jne	.LBB20_62
# %bb.11:                               # %primal_net_simplex.split127
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rbx)
	movw	$-17959, BasicBlockSignatureTracker # imm = 0xB9D9
	movw	$91, RunTimeSignatureAdjuster
.LBB20_12:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$104, %ax
	xorw	%cx, %ax
	cmpw	$-17942, %ax            # imm = 0xB9EA
	jne	.LBB20_62
# %bb.13:                               # %primal_net_simplex.split129
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	$1, (%rdi)
	movq	(%rdx), %rdx
	movq	(%rbx), %rcx
	movw	$-17942, BasicBlockSignatureTracker # imm = 0xB9EA
	movw	$0, RunTimeSignatureAdjuster
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	primal_iminus
	movw	$-17942, BasicBlockSignatureTracker # imm = 0xB9EA
	movw	$0, RunTimeSignatureAdjuster
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movw	$-17942, BasicBlockSignatureTracker # imm = 0xB9EA
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB20_26
# %bb.14:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$25, %ax
	cmpw	$-17933, %ax            # imm = 0xB9F3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB20_62
# %bb.15:                               # %primal_net_simplex.split133
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	24(%rax), %eax
	movw	$-17933, BasicBlockSignatureTracker # imm = 0xB9F3
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	jne	.LBB20_18
# %bb.16:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$962, %ax               # imm = 0x3C2
	cmpw	$-17871, %ax            # imm = 0xBA31
	jne	.LBB20_62
# %bb.17:                               # %primal_net_simplex.split135
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$1, 24(%rax)
	movw	$-17871, BasicBlockSignatureTracker # imm = 0xBA31
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_20
.LBB20_18:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$688, %ax               # imm = 0x2B0
	cmpw	$-17597, %ax            # imm = 0xBB43
	jne	.LBB20_62
# %bb.19:                               # %primal_net_simplex.split137
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$2, 24(%rax)
	movw	$-17597, BasicBlockSignatureTracker # imm = 0xBB43
	movw	$370, RunTimeSignatureAdjuster # imm = 0x172
.LBB20_20:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$382, %ax               # imm = 0x17E
	xorw	%cx, %ax
	cmpw	$-17585, %ax            # imm = 0xBB4F
	jne	.LBB20_62
# %bb.21:                               # %primal_net_simplex.split139
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movw	$-17585, BasicBlockSignatureTracker # imm = 0xBB4F
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB20_24
# %bb.22:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$173, %ax
	cmpw	$-17438, %ax            # imm = 0xBBE2
	jne	.LBB20_62
# %bb.23:                               # %primal_net_simplex.split141
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%r11), %rdi
	movq	(%rbx), %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdx
	movw	$-17438, BasicBlockSignatureTracker # imm = 0xBBE2
	movw	$0, RunTimeSignatureAdjuster
	callq	primal_update_flow
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movw	$-17438, BasicBlockSignatureTracker # imm = 0xBBE2
	movw	$173, RunTimeSignatureAdjuster
	movw	$-17438, BasicBlockSignatureTracker # imm = 0xBBE2
	movw	$173, RunTimeSignatureAdjuster
.LBB20_24:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1833, %ax              # imm = 0x729
	xorw	%cx, %ax
	cmpw	$-17306, %ax            # imm = 0xBC66
	jne	.LBB20_62
# %bb.25:                               # %primal_net_simplex.split143
                                        #   in Loop: Header=BB20_2 Depth=1
	movw	$-17306, BasicBlockSignatureTracker # imm = 0xBC66
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_54
.LBB20_26:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1342, %ax              # imm = 0x53E
	cmpw	$-17196, %ax            # imm = 0xBCD4
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB20_62
# %bb.27:                               # %primal_net_simplex.split131
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%rdi), %rax
	movw	$-17196, BasicBlockSignatureTracker # imm = 0xBCD4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB20_30
# %bb.28:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$451, %ax               # imm = 0x1C3
	cmpw	$-17129, %ax            # imm = 0xBD17
	jne	.LBB20_62
# %bb.29:                               # %primal_net_simplex.split147
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%rbx), %rax
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%r8)
	movq	(%rcx), %rax
	movq	%rax, (%rbx)
	movq	(%r8), %rax
	movq	%rax, (%rcx)
	movw	$-17129, BasicBlockSignatureTracker # imm = 0xBD17
	movw	$451, RunTimeSignatureAdjuster # imm = 0x1C3
.LBB20_30:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$503, %ax               # imm = 0x1F7
	xorw	%cx, %ax
	cmpw	$-17117, %ax            # imm = 0xBD23
	jne	.LBB20_62
# %bb.31:                               # %primal_net_simplex.split149
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rax, (%rbx)
	movq	(%rcx), %rax
	movq	48(%rax), %rax
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rax, (%rbx)
	movq	(%rdi), %rax
	movq	(%rcx), %rcx
	movslq	8(%rcx), %rcx
	movw	$-17117, BasicBlockSignatureTracker # imm = 0xBD23
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB20_34
# %bb.32:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$30, %ax
	cmpw	$-17091, %ax            # imm = 0xBD3D
	jne	.LBB20_62
# %bb.33:                               # %primal_net_simplex.split151
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	$1, (%rax)
	movw	$-17091, BasicBlockSignatureTracker # imm = 0xBD3D
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_36
.LBB20_34:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$136, %ax
	cmpw	$-16981, %ax            # imm = 0xBDAB
	jne	.LBB20_62
# %bb.35:                               # %primal_net_simplex.split153
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	$2, (%rax)
	movw	$-16981, BasicBlockSignatureTracker # imm = 0xBDAB
	movw	$150, RunTimeSignatureAdjuster
.LBB20_36:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$144, %ax
	xorw	%cx, %ax
	cmpw	$-16979, %ax            # imm = 0xBDAD
	jne	.LBB20_62
# %bb.37:                               # %primal_net_simplex.split155
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movw	$-16979, BasicBlockSignatureTracker # imm = 0xBDAD
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jle	.LBB20_40
# %bb.38:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$685, %ax               # imm = 0x2AD
	cmpw	$-16640, %ax            # imm = 0xBF00
	jne	.LBB20_62
# %bb.39:                               # %primal_net_simplex.split157
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r14, %r8
	movq	%r15, %rbx
	movq	%r12, %rdi
	movl	$1, %eax
	subq	(%rdx), %rax
	movq	%rax, (%rsi)
	movw	$-16640, BasicBlockSignatureTracker # imm = 0xBF00
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_42
.LBB20_40:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$513, %ax               # imm = 0x201
	cmpw	$-16468, %ax            # imm = 0xBFAC
	jne	.LBB20_62
# %bb.41:                               # %primal_net_simplex.split159
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r14, %r8
	movq	%r15, %rbx
	movq	%r12, %rdi
	movq	(%rdx), %rax
	movq	%rax, (%rsi)
	movw	$-16468, BasicBlockSignatureTracker # imm = 0xBFAC
	movw	$172, RunTimeSignatureAdjuster
.LBB20_42:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32751, %ax             # imm = 0x7FEF
	xorw	%cx, %ax
	cmpw	$-16145, %ax            # imm = 0xC0EF
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jne	.LBB20_62
# %bb.43:                               # %primal_net_simplex.split161
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r8, %r14
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rcx), %rcx
	movw	$-16145, BasicBlockSignatureTracker # imm = 0xC0EF
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB20_46
# %bb.44:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$467, %ax               # imm = 0x1D3
	cmpw	$-16068, %ax            # imm = 0xC13C
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB20_62
# %bb.45:                               # %primal_net_simplex.split163
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	$1, (%rax)
	movw	$-16068, BasicBlockSignatureTracker # imm = 0xC13C
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_48
.LBB20_46:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$347, %ax               # imm = 0x15B
	cmpw	$-15948, %ax            # imm = 0xC1B4
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB20_62
# %bb.47:                               # %primal_net_simplex.split165
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	$0, (%rax)
	movw	$-15948, BasicBlockSignatureTracker # imm = 0xC1B4
	movw	$136, RunTimeSignatureAdjuster
.LBB20_48:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$783, %ax               # imm = 0x30F
	xorw	%cx, %ax
	cmpw	$-15821, %ax            # imm = 0xC233
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-136(%rbp), %r15        # 8-byte Reload
	jne	.LBB20_62
# %bb.49:                               # %primal_net_simplex.split167
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpq	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movslq	%eax, %rdi
	movq	(%rdx), %rsi
	movq	(%rcx), %rdx
	movq	(%r8), %rcx
	movq	(%rbx), %r8
	movq	(%r9), %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r10
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r11
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	(%r13), %rax
	movq	512(%rax), %r12
	movw	$-15821, BasicBlockSignatureTracker # imm = 0xC233
	movw	$0, RunTimeSignatureAdjuster
	subq	$48, %rsp
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r12, 40(%rsp)
	callq	update_tree
	addq	$48, %rsp
	movl	$200, %ecx
	movw	$-15821, BasicBlockSignatureTracker # imm = 0xC233
	movw	$0, RunTimeSignatureAdjuster
	movq	(%rbx), %rax
	movl	$0, 24(%rax)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rdx
	movl	%eax, 24(%rdx)
	movq	(%r15), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cqto
	idivq	%rcx
	movw	$-15821, BasicBlockSignatureTracker # imm = 0xC233
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rdx
	jne	.LBB20_52
# %bb.50:                               #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$114, %ax
	cmpw	$-15807, %ax            # imm = 0xC241
	movq	%r14, %rbx
	jne	.LBB20_62
# %bb.51:                               # %primal_net_simplex.split171
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	(%r13), %rdi
	movw	$-15807, BasicBlockSignatureTracker # imm = 0xC241
	movw	$0, RunTimeSignatureAdjuster
	callq	refresh_potential
	movw	$-15807, BasicBlockSignatureTracker # imm = 0xC241
	movw	$114, RunTimeSignatureAdjuster
	movq	(%rbx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movw	$-15807, BasicBlockSignatureTracker # imm = 0xC241
	movw	$114, RunTimeSignatureAdjuster
.LBB20_52:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$168, %ax
	xorw	%cx, %ax
	cmpw	$-15717, %ax            # imm = 0xC29B
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-192(%rbp), %r12        # 8-byte Reload
	movq	-136(%rbp), %r15        # 8-byte Reload
	jne	.LBB20_62
# %bb.53:                               # %primal_net_simplex.split169
                                        #   in Loop: Header=BB20_2 Depth=1
	movw	$-15717, BasicBlockSignatureTracker # imm = 0xC29B
	movw	$32509, RunTimeSignatureAdjuster # imm = 0x7EFD
.LBB20_54:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$32627, %ax             # imm = 0x7F73
	xorw	%cx, %ax
	cmpw	$-15595, %ax            # imm = 0xC315
	jne	.LBB20_62
# %bb.55:                               # %primal_net_simplex.split145
                                        #   in Loop: Header=BB20_2 Depth=1
	movw	$-15595, BasicBlockSignatureTracker # imm = 0xC315
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB20_58
.LBB20_56:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$29766, %ax             # imm = 0x7446
	cmpw	$-15558, %ax            # imm = 0xC33A
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB20_62
# %bb.57:                               # %primal_net_simplex.split123
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	$1, (%rdx)
	movw	$-15558, BasicBlockSignatureTracker # imm = 0xC33A
	movw	$47, RunTimeSignatureAdjuster
.LBB20_58:                              #   in Loop: Header=BB20_2 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$186, %ax
	xorw	%cx, %ax
	cmpw	$-15441, %ax            # imm = 0xC3AF
	jne	.LBB20_62
# %bb.59:                               # %primal_net_simplex.split173
                                        #   in Loop: Header=BB20_2 Depth=1
	movw	$-15441, BasicBlockSignatureTracker # imm = 0xC3AF
	movw	$29840, RunTimeSignatureAdjuster # imm = 0x7490
	jmp	.LBB20_2
.LBB20_60:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$29881, %ax             # imm = 0x74B9
	cmpw	$-15387, %ax            # imm = 0xC3E5
	jne	.LBB20_63
# %bb.61:                               # %primal_net_simplex.split119
	movq	(%r13), %rdi
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$420, RunTimeSignatureAdjuster # imm = 0x1A4
	callq	refresh_potential
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$420, RunTimeSignatureAdjuster # imm = 0x1A4
	movq	(%r14), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	(%r13), %rdi
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$0, RunTimeSignatureAdjuster
	callq	primal_feasible
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$420, RunTimeSignatureAdjuster # imm = 0x1A4
	movq	(%r13), %rdi
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$0, RunTimeSignatureAdjuster
	callq	dual_feasible
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$420, RunTimeSignatureAdjuster # imm = 0x1A4
	movw	$-15387, BasicBlockSignatureTracker # imm = 0xC3E5
	movw	$-5103, RunTimeSignatureAdjuster # imm = 0xEC11
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_62:                              # %CFerrorHandler.primal_net_simplex.loopexit
	jmp	.LBB20_63
.LBB20_63:                              # %CFerrorHandler.primal_net_simplex
	callq	FAULT_DETECTED_CFC
.Lfunc_end20:
	.size	primal_net_simplex, .Lfunc_end20-primal_net_simplex
	.cfi_endproc
                                        # -- End function
	.globl	primal_start_artificial # -- Begin function primal_start_artificial
	.p2align	4, 0x90
	.type	primal_start_artificial,@function
primal_start_artificial:                # @primal_start_artificial
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-1957, %ax             # imm = 0xF85B
	xorw	%cx, %ax
	cmpw	$-15166, %ax            # imm = 0xC4C2
	jne	.LBB21_24
# %bb.1:                                # %primal_start_artificial.split
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdi
	movq	552(%rdi), %rdi
	movq	%rdi, (%rax)
	movq	%rdi, (%rcx)
	movq	(%rax), %rdi
	addq	$104, %rdi
	movq	%rdi, (%rax)
	movq	(%rcx), %rdi
	movq	$0, 48(%rdi)
	movq	(%rcx), %rdi
	movq	$0, 24(%rdi)
	movq	(%rax), %rdi
	movq	(%rcx), %rdx
	movq	%rdi, 16(%rdx)
	movq	(%rcx), %rdx
	movq	$0, 32(%rdx)
	movq	(%rcx), %rdx
	movq	$0, 40(%rdx)
	movq	(%rsi), %rdx
	movq	400(%rdx), %rdx
	addq	$1, %rdx
	movq	(%rcx), %rdi
	movq	%rdx, 88(%rdi)
	movq	(%rcx), %rdx
	movl	$0, 8(%rdx)
	movq	(%rcx), %rdx
	movq	$-100000000, (%rdx)     # imm = 0xFA0A1F00
	movq	(%rcx), %rdx
	movq	$0, 80(%rdx)
	movq	(%rsi), %rdx
	movq	576(%rdx), %rdx
	movq	%rdx, (%r8)
	movq	(%rsi), %rdx
	movq	568(%rdx), %rdx
	movq	%rdx, (%r9)
	movw	$-15166, BasicBlockSignatureTracker # imm = 0xC4C2
	movw	$0, RunTimeSignatureAdjuster
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$11, %dx
	xorw	%di, %dx
	cmpw	$-15159, %dx            # imm = 0xC4C9
	jne	.LBB21_23
# %bb.3:                                # %primal_start_artificial.split39
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	(%r9), %rdx
	movq	(%r8), %rdi
	movw	$-15159, BasicBlockSignatureTracker # imm = 0xC4C9
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rdi, %rdx
	je	.LBB21_12
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$409, %dx               # imm = 0x199
	cmpw	$-15024, %dx            # imm = 0xC550
	jne	.LBB21_23
# %bb.5:                                # %primal_start_artificial.split41
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	(%r9), %rdx
	movl	24(%rdx), %edx
	movw	$-15024, BasicBlockSignatureTracker # imm = 0xC550
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$-1, %edx
	je	.LBB21_8
# %bb.6:                                #   in Loop: Header=BB21_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$52, %dx
	cmpw	$-15004, %dx            # imm = 0xC564
	jne	.LBB21_23
# %bb.7:                                # %primal_start_artificial.split45
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	(%r9), %rdx
	movl	$1, 24(%rdx)
	movw	$-15004, BasicBlockSignatureTracker # imm = 0xC564
	movw	$52, RunTimeSignatureAdjuster
.LBB21_8:                               #   in Loop: Header=BB21_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %di
	xorw	$170, %dx
	xorw	%di, %dx
	cmpw	$-14854, %dx            # imm = 0xC5FA
	jne	.LBB21_23
# %bb.9:                                # %primal_start_artificial.split47
                                        #   in Loop: Header=BB21_2 Depth=1
	movw	$-14854, BasicBlockSignatureTracker # imm = 0xC5FA
	movw	$0, RunTimeSignatureAdjuster
# %bb.10:                               #   in Loop: Header=BB21_2 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$942, %dx               # imm = 0x3AE
	cmpw	$-14764, %dx            # imm = 0xC654
	jne	.LBB21_23
# %bb.11:                               # %primal_start_artificial.split49
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	(%r9), %rdx
	addq	$64, %rdx
	movq	%rdx, (%r9)
	movw	$-14764, BasicBlockSignatureTracker # imm = 0xC654
	movw	$662, RunTimeSignatureAdjuster # imm = 0x296
	jmp	.LBB21_2
.LBB21_12:
	movw	BasicBlockSignatureTracker, %dx
	xorw	$695, %dx               # imm = 0x2B7
	cmpw	$-14722, %dx            # imm = 0xC67E
	jne	.LBB21_24
# %bb.13:                               # %primal_start_artificial.split43
	movq	(%rsi), %rdx
	movq	584(%rdx), %rdx
	movq	%rdx, (%r9)
	movq	(%rsi), %rdx
	movq	560(%rdx), %rdx
	movq	%rdx, (%r8)
	movw	$-14722, BasicBlockSignatureTracker # imm = 0xC67E
	movw	$0, RunTimeSignatureAdjuster
.LBB21_14:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %dx
	movw	RunTimeSignatureAdjuster, %si
	xorw	$490, %dx               # imm = 0x1EA
	xorw	%si, %dx
	cmpw	$-14444, %dx            # imm = 0xC794
	jne	.LBB21_22
# %bb.15:                               # %primal_start_artificial.split51
                                        #   in Loop: Header=BB21_14 Depth=1
	movq	(%rax), %rdx
	movq	(%r8), %rsi
	movw	$-14444, BasicBlockSignatureTracker # imm = 0xC794
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rsi, %rdx
	je	.LBB21_20
# %bb.16:                               #   in Loop: Header=BB21_14 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$4010, %dx              # imm = 0xFAA
	cmpw	$-14274, %dx            # imm = 0xC83E
	jne	.LBB21_22
# %bb.17:                               # %primal_start_artificial.split53
                                        #   in Loop: Header=BB21_14 Depth=1
	movq	(%r9), %rdx
	movq	(%rax), %rsi
	movq	%rdx, 48(%rsi)
	movq	(%rcx), %rdx
	movq	(%rax), %rsi
	movq	%rdx, 24(%rsi)
	movq	(%rax), %rdx
	movq	$0, 16(%rdx)
	movq	(%rax), %rdx
	addq	$104, %rdx
	movq	(%rax), %rsi
	movq	%rdx, 32(%rsi)
	movq	(%rax), %rdx
	addq	$-104, %rdx
	movq	(%rax), %rsi
	movq	%rdx, 40(%rsi)
	movq	(%rax), %rdx
	movq	$1, 88(%rdx)
	movq	(%r9), %rdx
	movq	$100000000, (%rdx)      # imm = 0x5F5E100
	movq	(%r9), %rdx
	movl	$0, 24(%rdx)
	movq	(%rax), %rdx
	movl	$1, 8(%rdx)
	movq	(%rax), %rdx
	movq	$0, (%rdx)
	movq	(%rax), %rdx
	movq	(%r9), %rsi
	movq	%rdx, 8(%rsi)
	movq	(%rcx), %rdx
	movq	(%r9), %rsi
	movq	%rdx, 16(%rsi)
	movq	(%rax), %rdx
	movq	$0, 80(%rdx)
	movw	$-14274, BasicBlockSignatureTracker # imm = 0xC83E
	movw	$0, RunTimeSignatureAdjuster
# %bb.18:                               #   in Loop: Header=BB21_14 Depth=1
	movw	BasicBlockSignatureTracker, %dx
	xorw	$401, %dx               # imm = 0x191
	cmpw	$-13905, %dx            # imm = 0xC9AF
	jne	.LBB21_22
# %bb.19:                               # %primal_start_artificial.split57
                                        #   in Loop: Header=BB21_14 Depth=1
	movq	(%r9), %rdx
	addq	$64, %rdx
	movq	%rdx, (%r9)
	movq	(%rax), %rdx
	addq	$104, %rdx
	movq	%rdx, (%rax)
	movw	$-13905, BasicBlockSignatureTracker # imm = 0xC9AF
	movw	$4049, RunTimeSignatureAdjuster # imm = 0xFD1
	jmp	.LBB21_14
.LBB21_20:
	movw	BasicBlockSignatureTracker, %dx
	xorw	$3461, %dx              # imm = 0xD85
	cmpw	$-13807, %dx            # imm = 0xCA11
	jne	.LBB21_24
# %bb.21:                               # %primal_start_artificial.split55
	movq	(%rax), %rdx
	addq	$-104, %rdx
	movq	%rdx, (%rax)
	movq	(%rcx), %rdx
	addq	$104, %rdx
	movq	%rdx, (%rcx)
	movq	(%rax), %rax
	movq	$0, 32(%rax)
	movq	(%rcx), %rax
	movq	$0, 40(%rax)
	movw	$-13807, BasicBlockSignatureTracker # imm = 0xCA11
	movw	$-3833, RunTimeSignatureAdjuster # imm = 0xF107
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB21_22:                              # %CFerrorHandler.primal_start_artificial.loopexit
	jmp	.LBB21_24
.LBB21_23:                              # %CFerrorHandler.primal_start_artificial.loopexit1
	jmp	.LBB21_24
.LBB21_24:                              # %CFerrorHandler.primal_start_artificial
	callq	FAULT_DETECTED_CFC
.Lfunc_end21:
	.size	primal_start_artificial, .Lfunc_end21-primal_start_artificial
	.cfi_endproc
                                        # -- End function
	.globl	read_min                # -- Begin function read_min
	.p2align	4, 0x90
	.type	read_min,@function
read_min:                               # @read_min
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$-3729, %ax             # imm = 0xF16F
	xorw	%cx, %ax
	cmpw	$-13703, %ax            # imm = 0xCA79
	jne	.LBB22_104
# %bb.1:                                # %read_min.split
	movabsq	$.L.str.35, %rsi
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %r14
	addq	$-208, %r14
	movq	%r14, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, (%r13)
	movq	$0, (%r12)
	movq	(%r13), %rdi
	callq	fopen
	movq	%rax, (%r12)
	movw	$-13703, BasicBlockSignatureTracker # imm = 0xCA79
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB22_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1610, %ax              # imm = 0x64A
	cmpw	$-13261, %ax            # imm = 0xCC33
	jne	.LBB22_104
# %bb.3:                                # %read_min.split182
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-13261, BasicBlockSignatureTracker # imm = 0xCC33
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB22_98
.LBB22_4:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1750, %ax              # imm = 0x6D6
	cmpw	$-13137, %ax            # imm = 0xCCAF
	jne	.LBB22_104
# %bb.5:                                # %read_min.split184
	movq	(%r12), %rdx
	movq	%r14, %rdi
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.1.36, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movb	$0, %al
	callq	__isoc99_sscanf
	movw	$-13137, BasicBlockSignatureTracker # imm = 0xCCAF
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	je	.LBB22_8
# %bb.6:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$437, %ax               # imm = 0x1B5
	cmpw	$-13030, %ax            # imm = 0xCD1A
	jne	.LBB22_104
# %bb.7:                                # %read_min.split188
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-13030, BasicBlockSignatureTracker # imm = 0xCD1A
	movw	$297, RunTimeSignatureAdjuster # imm = 0x129
	jmp	.LBB22_98
.LBB22_8:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$328, %ax               # imm = 0x148
	cmpw	$-12825, %ax            # imm = 0xCDE7
	jne	.LBB22_104
# %bb.9:                                # %read_min.split190
	movq	(%rbx), %rax
	movq	(%r13), %rcx
	movq	%rax, 408(%rcx)
	movq	(%r15), %rax
	movq	(%r13), %rcx
	movq	%rax, 432(%rcx)
	movq	(%rbx), %rax
	addq	(%rbx), %rax
	addq	$1, %rax
	movq	(%r13), %rcx
	movq	%rax, 400(%rcx)
	movq	(%rbx), %rax
	addq	(%rbx), %rax
	addq	(%rbx), %rax
	addq	(%r15), %rax
	movq	(%r13), %rcx
	movq	%rax, 424(%rcx)
	movq	(%r13), %rax
	movq	408(%rax), %rax
	movw	$-12825, BasicBlockSignatureTracker # imm = 0xCDE7
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$15000, %rax            # imm = 0x3A98
	jg	.LBB22_12
# %bb.10:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$706, %ax               # imm = 0x2C2
	cmpw	$-12507, %ax            # imm = 0xCF25
	jne	.LBB22_104
# %bb.11:                               # %read_min.split192
	movq	(%r13), %rax
	movq	424(%rax), %rax
	movq	(%r13), %rcx
	movq	%rax, 416(%rcx)
	movq	(%r13), %rax
	movq	$3000000, 456(%rax)     # imm = 0x2DC6C0
	movw	$-12507, BasicBlockSignatureTracker # imm = 0xCF25
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB22_14
.LBB22_12:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$686, %ax               # imm = 0x2AE
	cmpw	$-12471, %ax            # imm = 0xCF49
	jne	.LBB22_104
# %bb.13:                               # %read_min.split194
	movq	(%r13), %rax
	movq	$27328512, 416(%rax)    # imm = 0x1A10000
	movq	(%r13), %rax
	movq	$28900000, 456(%rax)    # imm = 0x1B8FAA0
	movw	$-12471, BasicBlockSignatureTracker # imm = 0xCF49
	movw	$108, RunTimeSignatureAdjuster
.LBB22_14:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$8049, %ax              # imm = 0x1F71
	xorw	%cx, %ax
	cmpw	$-12204, %ax            # imm = 0xD054
	jne	.LBB22_104
# %bb.15:                               # %read_min.split196
	movq	(%r13), %rax
	movq	416(%rax), %rax
	movq	(%r13), %rcx
	subq	424(%rcx), %rax
	movq	(%r13), %rcx
	movq	%rax, 448(%rcx)
	movq	(%r13), %rax
	movq	400(%rax), %rdi
	addq	$1, %rdi
	movl	$104, %esi
	callq	calloc
	movq	(%r13), %rcx
	movq	%rax, 552(%rcx)
	movq	(%r13), %rax
	movq	400(%rax), %rdi
	movl	$64, %esi
	callq	calloc
	movq	(%r13), %rcx
	movq	%rax, 584(%rcx)
	movq	(%r13), %rax
	movq	416(%rax), %rdi
	movl	$64, %esi
	callq	calloc
	movq	(%r13), %rcx
	movq	%rax, 568(%rcx)
	movq	(%r13), %rax
	movq	552(%rax), %rax
	movw	$-12204, BasicBlockSignatureTracker # imm = 0xD054
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB22_22
# %bb.16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$221, %ax
	cmpw	$-12151, %ax            # imm = 0xD089
	jne	.LBB22_104
# %bb.17:                               # %read_min.split198
	movq	(%r13), %rax
	movq	568(%rax), %rax
	movw	$-12151, BasicBlockSignatureTracker # imm = 0xD089
	movw	$221, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB22_22
# %bb.18:                               # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$31322, %ax             # imm = 0x7A5A
	cmpw	$-21805, %ax            # imm = 0xAAD3
	jne	.LBB22_104
# %bb.19:                               # %read_min.split202
	movw	$-21805, BasicBlockSignatureTracker # imm = 0xAAD3
	movw	$31322, RunTimeSignatureAdjuster # imm = 0x7A5A
# %bb.20:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$68, %ax
	xorw	%cx, %ax
	cmpw	$-12083, %ax            # imm = 0xD0CD
	jne	.LBB22_104
# %bb.21:                               # %read_min.split274
	movq	(%r13), %rax
	movq	584(%rax), %rax
	movw	$-12083, BasicBlockSignatureTracker # imm = 0xD0CD
	movw	$153, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jne	.LBB22_24
.LBB22_22:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$646, %ax               # imm = 0x286
	xorw	%cx, %ax
	cmpw	$-11566, %ax            # imm = 0xD2D2
	jne	.LBB22_104
# %bb.23:                               # %read_min.split200
	movabsq	$.L.str.2.37, %rdi
	movb	$0, %al
	callq	printf
	movq	(%r13), %rdi
	movw	$-11566, BasicBlockSignatureTracker # imm = 0xD2D2
	movw	$-5826, RunTimeSignatureAdjuster # imm = 0xE93E
	callq	getfree
	movw	$-11566, BasicBlockSignatureTracker # imm = 0xD2D2
	movw	$-5826, RunTimeSignatureAdjuster # imm = 0xE93E
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-11566, BasicBlockSignatureTracker # imm = 0xD2D2
	movw	$7905, RunTimeSignatureAdjuster # imm = 0x1EE1
	jmp	.LBB22_98
.LBB22_24:                              # %Buffer__1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-21420, %ax            # imm = 0xAC54
	cmpw	$31897, %ax             # imm = 0x7C99
	jne	.LBB22_104
# %bb.25:                               # %read_min.split204
	movw	$31897, BasicBlockSignatureTracker # imm = 0x7C99
	movw	$-21420, RunTimeSignatureAdjuster # imm = 0xAC54
# %bb.26:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$558, %ax               # imm = 0x22E
	xorw	%cx, %ax
	cmpw	$-11549, %ax            # imm = 0xD2E3
	jne	.LBB22_104
# %bb.27:                               # %read_min.split276
	movq	(%r13), %rax
	movq	552(%rax), %rax
	movq	(%r13), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	addq	$104, %rax
	movq	(%r13), %rcx
	movq	%rax, 560(%rcx)
	movq	(%r13), %rax
	movq	568(%rax), %rax
	movq	(%r13), %rcx
	movq	424(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%r13), %rcx
	movq	%rax, 576(%rcx)
	movq	(%r13), %rax
	movq	584(%rax), %rax
	movq	(%r13), %rcx
	movq	400(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%r13), %rcx
	movq	%rax, 592(%rcx)
	movq	(%r13), %rax
	movq	552(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%r13), %rax
	movq	568(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$1, (%rax)
	movw	$-11549, BasicBlockSignatureTracker # imm = 0xD2E3
	movw	$0, RunTimeSignatureAdjuster
.LBB22_28:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$391, %ax               # imm = 0x187
	xorw	%cx, %ax
	cmpw	$-11420, %ax            # imm = 0xD364
	jne	.LBB22_103
# %bb.29:                               # %read_min.split206
                                        #   in Loop: Header=BB22_28 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r13), %rcx
	movq	408(%rcx), %rcx
	movw	$-11420, BasicBlockSignatureTracker # imm = 0xD364
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jg	.LBB22_48
# %bb.30:                               #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$15, %ax
	cmpw	$-11413, %ax            # imm = 0xD36B
	jne	.LBB22_103
# %bb.31:                               # %read_min.split208
                                        #   in Loop: Header=BB22_28 Depth=1
	movq	(%r12), %rdx
	movq	%r14, %rdi
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.1.36, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movb	$0, %al
	callq	__isoc99_sscanf
	movw	$-11413, BasicBlockSignatureTracker # imm = 0xD36B
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$2, %eax
	jne	.LBB22_34
# %bb.32:                               #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$18, %ax
	cmpw	$-11399, %ax            # imm = 0xD379
	jne	.LBB22_103
# %bb.33:                               # %read_min.split214
                                        #   in Loop: Header=BB22_28 Depth=1
	movq	(%rbx), %rax
	movq	(%r15), %rcx
	movw	$-11399, BasicBlockSignatureTracker # imm = 0xD379
	movw	$18, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB22_36
.LBB22_34:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$230, %ax
	xorw	%cx, %ax
	cmpw	$-11379, %ax            # imm = 0xD38D
	jne	.LBB22_104
# %bb.35:                               # %read_min.split212
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-11379, BasicBlockSignatureTracker # imm = 0xD38D
	movw	$8126, RunTimeSignatureAdjuster # imm = 0x1FBE
	jmp	.LBB22_98
.LBB22_36:                              # %Buffer__2
                                        #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$27189, %ax             # imm = 0x6A35
	cmpw	$-18100, %ax            # imm = 0xB94C
	jne	.LBB22_103
# %bb.37:                               # %read_min.split216
                                        #   in Loop: Header=BB22_28 Depth=1
	movw	$-18100, BasicBlockSignatureTracker # imm = 0xB94C
	movw	$27189, RunTimeSignatureAdjuster # imm = 0x6A35
# %bb.38:                               #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$189, %ax
	xorw	%cx, %ax
	cmpw	$-11324, %ax            # imm = 0xD3C4
	jne	.LBB22_103
# %bb.39:                               # %read_min.split278
                                        #   in Loop: Header=BB22_28 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %r8          # 8-byte Reload
	subq	(%r8), %rax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	imulq	$104, (%r8), %rdx
	addq	%rdx, %rcx
	movl	%eax, 96(%rcx)
	movq	(%rdi), %rax
	imulq	$104, (%r8), %rcx
	addq	%rcx, %rax
	movq	$-1, 80(%rax)
	movq	(%r8), %rax
	movq	(%rdi), %rcx
	movq	(%r8), %rdx
	movq	(%r13), %rsi
	addq	408(%rsi), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 96(%rcx)
	movq	(%rdi), %rax
	movq	(%r8), %rcx
	movq	(%r13), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	$1, 80(%rax)
	movq	(%rbx), %rax
	movq	(%rdi), %rcx
	imulq	$104, (%r8), %rdx
	addq	%rdx, %rcx
	movl	%eax, 100(%rcx)
	movq	(%r15), %rax
	movq	(%rdi), %rcx
	movq	(%r8), %rdx
	movq	(%r13), %rsi
	addq	408(%rsi), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 100(%rcx)
	movq	(%rdi), %rax
	movq	(%r13), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rdi), %rax
	imulq	$104, (%r8), %rcx
	addq	%rcx, %rax
	movq	(%rsi), %rcx
	movq	%rax, 16(%rcx)
	movq	(%r13), %rax
	movq	528(%rax), %rax
	addq	$15, %rax
	movq	(%rsi), %rcx
	movq	%rax, (%rcx)
	movq	(%rsi), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rsi), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rsi), %rax
	movq	(%rsi), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rsi), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rsi), %rcx
	movq	%rax, 40(%rcx)
	movq	(%rsi), %rax
	movq	(%rsi), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	(%rsi), %rax
	addq	$64, %rax
	movq	%rax, (%rsi)
	movq	(%rdi), %rax
	movq	(%r8), %rcx
	movq	(%r13), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rsi), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rdi), %rax
	movq	(%r13), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	(%rsi), %rcx
	movq	%rax, 16(%rcx)
	movq	(%rsi), %rax
	movq	$15, (%rax)
	movq	(%rsi), %rax
	movq	$15, 56(%rax)
	movq	(%rsi), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rsi), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rsi), %rax
	movq	(%rsi), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rsi), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rsi), %rcx
	movq	%rax, 40(%rcx)
	movq	(%rsi), %rax
	movq	(%rsi), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	(%rsi), %rax
	addq	$64, %rax
	movq	%rax, (%rsi)
	movq	(%rdi), %rax
	imulq	$104, (%r8), %rcx
	addq	%rcx, %rax
	movq	(%rsi), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rdi), %rax
	movq	(%r8), %rcx
	movq	(%r13), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rsi), %rcx
	movq	%rax, 16(%rcx)
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-11324, BasicBlockSignatureTracker # imm = 0xD3C4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$10000000, %rax         # imm = 0x989680
	jle	.LBB22_42
# %bb.40:                               #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$44, %ax
	cmpw	$-11288, %ax            # imm = 0xD3E8
	jne	.LBB22_103
# %bb.41:                               # %read_min.split218
                                        #   in Loop: Header=BB22_28 Depth=1
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-11288, BasicBlockSignatureTracker # imm = 0xD3E8
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB22_44
.LBB22_42:                              #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2025, %ax              # imm = 0x7E9
	cmpw	$-11219, %ax            # imm = 0xD42D
	jne	.LBB22_103
# %bb.43:                               # %read_min.split220
                                        #   in Loop: Header=BB22_28 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	movw	$-11219, BasicBlockSignatureTracker # imm = 0xD42D
	movw	$1989, RunTimeSignatureAdjuster # imm = 0x7C5
.LBB22_44:                              #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$2003, %cx              # imm = 0x7D3
	xorw	%dx, %cx
	cmpw	$-11205, %cx            # imm = 0xD43B
	jne	.LBB22_103
# %bb.45:                               # %read_min.split222
                                        #   in Loop: Header=BB22_28 Depth=1
	shlq	$1, %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rdx), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rdx), %rax
	movq	(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rdx), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 40(%rcx)
	movq	(%rdx), %rax
	movq	(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	(%rdx), %rax
	addq	$64, %rax
	movq	%rax, (%rdx)
	movw	$-11205, BasicBlockSignatureTracker # imm = 0xD43B
	movw	$0, RunTimeSignatureAdjuster
# %bb.46:                               #   in Loop: Header=BB22_28 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$124, %ax
	cmpw	$-11193, %ax            # imm = 0xD447
	jne	.LBB22_103
# %bb.47:                               # %read_min.split224
                                        #   in Loop: Header=BB22_28 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$1, %rax
	movq	%rax, (%rcx)
	movw	$-11193, BasicBlockSignatureTracker # imm = 0xD447
	movw	$1700, RunTimeSignatureAdjuster # imm = 0x6A4
	jmp	.LBB22_28
.LBB22_48:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2018, %ax              # imm = 0x7E2
	cmpw	$-11130, %ax            # imm = 0xD486
	jne	.LBB22_104
# %bb.49:                               # %read_min.split210
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r13), %rcx
	movq	408(%rcx), %rcx
	addq	$1, %rcx
	movw	$-11130, BasicBlockSignatureTracker # imm = 0xD486
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB22_52
# %bb.50:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$39, %ax
	cmpw	$-11103, %ax            # imm = 0xD4A1
	jne	.LBB22_104
# %bb.51:                               # %read_min.split226
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-11103, BasicBlockSignatureTracker # imm = 0xD4A1
	movw	$6290, RunTimeSignatureAdjuster # imm = 0x1892
	jmp	.LBB22_98
.LBB22_52:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$396, %ax               # imm = 0x18C
	cmpw	$-10998, %ax            # imm = 0xD50A
	jne	.LBB22_104
# %bb.53:                               # %read_min.split228
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movw	$-10998, BasicBlockSignatureTracker # imm = 0xD50A
	movw	$0, RunTimeSignatureAdjuster
.LBB22_54:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$248, %ax
	xorw	%cx, %ax
	cmpw	$-10766, %ax            # imm = 0xD5F2
	jne	.LBB22_102
# %bb.55:                               # %read_min.split230
                                        #   in Loop: Header=BB22_54 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r13), %rcx
	movq	432(%rcx), %rcx
	movw	$-10766, BasicBlockSignatureTracker # imm = 0xD5F2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jge	.LBB22_64
# %bb.56:                               #   in Loop: Header=BB22_54 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$954, %ax               # imm = 0x3BA
	cmpw	$-10680, %ax            # imm = 0xD648
	jne	.LBB22_102
# %bb.57:                               # %read_min.split232
                                        #   in Loop: Header=BB22_54 Depth=1
	movq	(%r12), %rdx
	movq	%r14, %rdi
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.3.38, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	-80(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_sscanf
	movw	$-10680, BasicBlockSignatureTracker # imm = 0xD648
	movw	$0, RunTimeSignatureAdjuster
	cmpl	$3, %eax
	je	.LBB22_60
# %bb.58:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$188, %ax
	cmpw	$-10508, %ax            # imm = 0xD6F4
	jne	.LBB22_104
# %bb.59:                               # %read_min.split236
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$-1, (%rax)
	movw	$-10508, BasicBlockSignatureTracker # imm = 0xD6F4
	movw	$6855, RunTimeSignatureAdjuster # imm = 0x1AC7
	jmp	.LBB22_98
.LBB22_60:                              #   in Loop: Header=BB22_54 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$293, %ax               # imm = 0x125
	cmpw	$-10387, %ax            # imm = 0xD76D
	jne	.LBB22_102
# %bb.61:                               # %read_min.split238
                                        #   in Loop: Header=BB22_54 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movq	(%rbx), %rcx
	movq	(%r13), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rsi), %rax
	imulq	$104, (%r15), %rcx
	addq	%rcx, %rax
	movq	(%rdx), %rcx
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movq	(%rdx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rsi), %rax
	movq	(%rdx), %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rdx), %rax
	movq	(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	(%rdx), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 40(%rcx)
	movq	(%rdx), %rax
	movq	(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movw	$-10387, BasicBlockSignatureTracker # imm = 0xD76D
	movw	$0, RunTimeSignatureAdjuster
# %bb.62:                               #   in Loop: Header=BB22_54 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$226, %ax
	cmpw	$-10353, %ax            # imm = 0xD78F
	jne	.LBB22_102
# %bb.63:                               # %read_min.split240
                                        #   in Loop: Header=BB22_54 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$1, %rax
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$64, %rax
	movq	%rax, (%rcx)
	movw	$-10353, BasicBlockSignatureTracker # imm = 0xD78F
	movw	$645, RunTimeSignatureAdjuster # imm = 0x285
	jmp	.LBB22_54
.LBB22_64:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$621, %ax               # imm = 0x26D
	cmpw	$-10337, %ax            # imm = 0xD79F
	jne	.LBB22_104
# %bb.65:                               # %read_min.split234
	movq	(%r13), %rax
	movq	576(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$-10337, BasicBlockSignatureTracker # imm = 0xD79F
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB22_76
# %bb.66:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$52, %ax
	cmpw	$-10325, %ax            # imm = 0xD7AB
	jne	.LBB22_104
# %bb.67:                               # %read_min.split242
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	(%r13), %rcx
	movq	%rax, 576(%rcx)
	movq	(%r13), %rax
	movq	568(%rax), %rax
	movq	%rax, (%rdx)
	movq	(%r13), %rax
	movq	$0, 424(%rax)
	movw	$-10325, BasicBlockSignatureTracker # imm = 0xD7AB
	movw	$0, RunTimeSignatureAdjuster
.LBB22_68:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$28, %ax
	xorw	%cx, %ax
	cmpw	$-10313, %ax            # imm = 0xD7B7
	jne	.LBB22_101
# %bb.69:                               # %read_min.split246
                                        #   in Loop: Header=BB22_68 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r13), %rcx
	movq	576(%rcx), %rcx
	movw	$-10313, BasicBlockSignatureTracker # imm = 0xD7B7
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jae	.LBB22_74
# %bb.70:                               #   in Loop: Header=BB22_68 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$79, %ax
	cmpw	$-10248, %ax            # imm = 0xD7F8
	jne	.LBB22_101
# %bb.71:                               # %read_min.split248
                                        #   in Loop: Header=BB22_68 Depth=1
	movq	(%r13), %rax
	movq	424(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 424(%rax)
	movw	$-10248, BasicBlockSignatureTracker # imm = 0xD7F8
	movw	$0, RunTimeSignatureAdjuster
# %bb.72:                               #   in Loop: Header=BB22_68 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4028, %ax              # imm = 0xFBC
	cmpw	$-10172, %ax            # imm = 0xD844
	jne	.LBB22_101
# %bb.73:                               # %read_min.split252
                                        #   in Loop: Header=BB22_68 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$64, %rax
	movq	%rax, (%rcx)
	movw	$-10172, BasicBlockSignatureTracker # imm = 0xD844
	movw	$4079, RunTimeSignatureAdjuster # imm = 0xFEF
	jmp	.LBB22_68
.LBB22_74:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$3821, %ax              # imm = 0xEED
	cmpw	$-9894, %ax             # imm = 0xD95A
	jne	.LBB22_104
# %bb.75:                               # %read_min.split250
	movq	(%r13), %rax
	movq	424(%rax), %rax
	movq	(%r13), %rcx
	movq	%rax, 432(%rcx)
	movw	$-9894, BasicBlockSignatureTracker # imm = 0xD95A
	movw	$3781, RunTimeSignatureAdjuster # imm = 0xEC5
.LBB22_76:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3635, %ax              # imm = 0xE33
	xorw	%cx, %ax
	cmpw	$-9812, %ax             # imm = 0xD9AC
	jne	.LBB22_104
# %bb.77:                               # %read_min.split244
	movq	(%r12), %rdi
	callq	fclose
	movq	(%r13), %rax
	movb	$0, 200(%rax)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$1, (%rax)
	movw	$-9812, BasicBlockSignatureTracker # imm = 0xD9AC
	movw	$0, RunTimeSignatureAdjuster
.LBB22_78:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$18, %ax
	xorw	%cx, %ax
	cmpw	$-9794, %ax             # imm = 0xD9BE
	jne	.LBB22_100
# %bb.79:                               # %read_min.split254
                                        #   in Loop: Header=BB22_78 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r13), %rcx
	movq	408(%rcx), %rcx
	movw	$-9794, BasicBlockSignatureTracker # imm = 0xD9BE
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jg	.LBB22_96
# %bb.80:                               #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$991, %ax               # imm = 0x3DF
	cmpw	$-9631, %ax             # imm = 0xDA61
	jne	.LBB22_100
# %bb.81:                               # %read_min.split256
                                        #   in Loop: Header=BB22_78 Depth=1
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-9631, BasicBlockSignatureTracker # imm = 0xDA61
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$10000000, %rax         # imm = 0x989680
	jle	.LBB22_84
# %bb.82:                               #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1584, %ax              # imm = 0x630
	cmpw	$-9135, %ax             # imm = 0xDC51
	jne	.LBB22_100
# %bb.83:                               # %read_min.split260
                                        #   in Loop: Header=BB22_78 Depth=1
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-9135, BasicBlockSignatureTracker # imm = 0xDC51
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB22_86
.LBB22_84:                              #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1928, %ax              # imm = 0x788
	cmpw	$-8727, %ax             # imm = 0xDDE9
	jne	.LBB22_100
# %bb.85:                               # %read_min.split262
                                        #   in Loop: Header=BB22_78 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	movw	$-8727, BasicBlockSignatureTracker # imm = 0xDDE9
	movw	$440, RunTimeSignatureAdjuster # imm = 0x1B8
.LBB22_86:                              #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$611, %cx               # imm = 0x263
	xorw	%dx, %cx
	cmpw	$-8654, %cx             # imm = 0xDE32
	jne	.LBB22_100
# %bb.87:                               # %read_min.split264
                                        #   in Loop: Header=BB22_78 Depth=1
	imulq	$-2, %rax, %rax
	movq	(%r13), %rcx
	movq	568(%rcx), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	imulq	$3, (%rdx), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-8654, BasicBlockSignatureTracker # imm = 0xDE32
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$10000000, %rax         # imm = 0x989680
	jle	.LBB22_90
# %bb.88:                               #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$152, %ax
	cmpw	$-8534, %ax             # imm = 0xDEAA
	jne	.LBB22_100
# %bb.89:                               # %read_min.split266
                                        #   in Loop: Header=BB22_78 Depth=1
	movq	(%r13), %rax
	movq	528(%rax), %rax
	movw	$-8534, BasicBlockSignatureTracker # imm = 0xDEAA
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB22_92
.LBB22_90:                              #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$322, %ax               # imm = 0x142
	cmpw	$-8336, %ax             # imm = 0xDF70
	jne	.LBB22_100
# %bb.91:                               # %read_min.split268
                                        #   in Loop: Header=BB22_78 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	movw	$-8336, BasicBlockSignatureTracker # imm = 0xDF70
	movw	$474, RunTimeSignatureAdjuster # imm = 0x1DA
.LBB22_92:                              #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %dx
	xorw	$266, %cx               # imm = 0x10A
	xorw	%dx, %cx
	cmpw	$-8288, %cx             # imm = 0xDFA0
	jne	.LBB22_100
# %bb.93:                               # %read_min.split270
                                        #   in Loop: Header=BB22_78 Depth=1
	imulq	$-2, %rax, %rax
	movq	(%r13), %rcx
	movq	568(%rcx), %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	imulq	$3, (%rdx), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movw	$-8288, BasicBlockSignatureTracker # imm = 0xDFA0
	movw	$0, RunTimeSignatureAdjuster
# %bb.94:                               #   in Loop: Header=BB22_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$5, %ax
	cmpw	$-8283, %ax             # imm = 0xDFA5
	jne	.LBB22_100
# %bb.95:                               # %read_min.split272
                                        #   in Loop: Header=BB22_78 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	addq	$1, %rax
	movq	%rax, (%rcx)
	movw	$-8283, BasicBlockSignatureTracker # imm = 0xDFA5
	movw	$1545, RunTimeSignatureAdjuster # imm = 0x609
	jmp	.LBB22_78
.LBB22_96:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1636, %ax              # imm = 0x664
	cmpw	$-8230, %ax             # imm = 0xDFDA
	jne	.LBB22_104
# %bb.97:                               # %read_min.split258
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movw	$-8230, BasicBlockSignatureTracker # imm = 0xDFDA
	movw	$5097, RunTimeSignatureAdjuster # imm = 0x13E9
.LBB22_98:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$11417, %ax             # imm = 0x2C99
	xorw	%cx, %ax
	cmpw	$-8022, %ax             # imm = 0xE0AA
	jne	.LBB22_104
# %bb.99:                               # %read_min.split186
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movw	$-8022, BasicBlockSignatureTracker # imm = 0xE0AA
	movw	$-9573, RunTimeSignatureAdjuster # imm = 0xDA9B
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_100:                             # %CFerrorHandler.read_min.loopexit
	jmp	.LBB22_104
.LBB22_101:                             # %CFerrorHandler.read_min.loopexit1
	jmp	.LBB22_104
.LBB22_102:                             # %CFerrorHandler.read_min.loopexit2
	jmp	.LBB22_104
.LBB22_103:                             # %CFerrorHandler.read_min.loopexit3
	jmp	.LBB22_104
.LBB22_104:                             # %CFerrorHandler.read_min
	callq	FAULT_DETECTED_CFC
.Lfunc_end22:
	.size	read_min, .Lfunc_end22-read_min
	.cfi_endproc
                                        # -- End function
	.globl	update_tree             # -- Begin function update_tree
	.p2align	4, 0x90
	.type	update_tree,@function
update_tree:                            # @update_tree
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
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	BasicBlockSignatureTracker, %bx
	movw	RunTimeSignatureAdjuster, %ax
	xorw	$8966, %bx              # imm = 0x2306
	xorw	%ax, %bx
	cmpw	$-7883, %bx             # imm = 0xE135
	jne	.LBB23_133
# %bb.1:                                # %update_tree.split
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%r8, %r9
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r15, -128(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movq	%r8, %r14
	movq	%r10, %r8
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r10)
	movq	%r9, (%rdx)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r11)
	movq	16(%rbp), %rax
	movq	%rax, (%r14)
	movq	%rbx, %r10
	movq	24(%rbp), %rax
	movq	%rax, (%rbx)
	movq	%rdi, %r9
	movq	32(%rbp), %rax
	movq	%rax, (%rdi)
	movq	40(%rbp), %rax
	movq	%rax, (%r13)
	movq	48(%rbp), %rax
	movq	%rax, (%r12)
	movq	%rsi, %rdi
	movq	56(%rbp), %rax
	movq	%rax, (%rsi)
	movq	(%r13), %rax
	movq	8(%rax), %rax
	movq	%r11, %rsi
	movq	(%r11), %rcx
	movw	$-7883, BasicBlockSignatureTracker # imm = 0xE135
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB23_4
# %bb.2:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$115, %ax
	cmpw	$-7866, %ax             # imm = 0xE146
	jne	.LBB23_133
# %bb.3:                                # %update_tree.split232
	movq	(%r12), %rax
	movw	$-7866, BasicBlockSignatureTracker # imm = 0xE146
	movw	$115, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB23_8
.LBB23_4:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1003, %ax              # imm = 0x3EB
	xorw	%cx, %ax
	cmpw	$-7458, %ax             # imm = 0xE2DE
	jne	.LBB23_133
# %bb.5:                                # %update_tree.split234
	movq	(%r13), %rax
	movq	8(%rax), %rax
	movq	(%rdx), %rcx
	movw	$-7458, BasicBlockSignatureTracker # imm = 0xE2DE
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB23_20
# %bb.6:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$429, %ax               # imm = 0x1AD
	cmpw	$-7309, %ax             # imm = 0xE373
	jne	.LBB23_133
# %bb.7:                                # %update_tree.split238
	movq	(%r12), %rax
	movw	$-7309, BasicBlockSignatureTracker # imm = 0xE373
	movw	$429, RunTimeSignatureAdjuster # imm = 0x1AD
	cmpq	$0, %rax
	jg	.LBB23_10
	jmp	.LBB23_20
.LBB23_8:                               # %Buffer__
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-15297, %ax            # imm = 0xC43F
	cmpw	$9593, %ax              # imm = 0x2579
	jne	.LBB23_133
# %bb.9:                                # %update_tree.split236
	movw	$9593, BasicBlockSignatureTracker # imm = 0x2579
	movw	$-15297, RunTimeSignatureAdjuster # imm = 0xC43F
	jmp	.LBB23_12
.LBB23_10:                              # %Buffer__1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$-7176, %ax             # imm = 0xE3F8
	cmpw	$139, %ax
	jne	.LBB23_133
# %bb.11:                               # %update_tree.split242
	movw	$139, BasicBlockSignatureTracker
	movw	$-7731, RunTimeSignatureAdjuster # imm = 0xE1CD
.LBB23_12:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$674, %ax               # imm = 0x2A2
	xorw	%cx, %ax
	cmpw	$-7196, %ax             # imm = 0xE3E4
	jne	.LBB23_133
# %bb.13:                               # %update_tree.split354
	movq	(%r12), %rax
	movw	$-7196, BasicBlockSignatureTracker # imm = 0xE3E4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB23_16
# %bb.14:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1980, %ax              # imm = 0x7BC
	cmpw	$-7080, %ax             # imm = 0xE458
	jne	.LBB23_133
# %bb.15:                               # %update_tree.split244
	movq	(%r12), %rax
	movw	$-7080, BasicBlockSignatureTracker # imm = 0xE458
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_18
.LBB23_16:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1904, %ax              # imm = 0x770
	cmpw	$-7020, %ax             # imm = 0xE494
	jne	.LBB23_133
# %bb.17:                               # %update_tree.split246
	xorl	%eax, %eax
	subq	(%r12), %rax
	movw	$-7020, BasicBlockSignatureTracker # imm = 0xE494
	movw	$204, RunTimeSignatureAdjuster
.LBB23_18:
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$169, %cx
	xorw	%bx, %cx
	cmpw	$-6927, %cx             # imm = 0xE4F1
	jne	.LBB23_133
# %bb.19:                               # %update_tree.split248
	movq	%rax, (%r12)
	movw	$-6927, BasicBlockSignatureTracker # imm = 0xE4F1
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_28
.LBB23_20:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1805, %ax              # imm = 0x70D
	xorw	%cx, %ax
	cmpw	$-6701, %ax             # imm = 0xE5D3
	jne	.LBB23_133
# %bb.21:                               # %update_tree.split240
	movq	(%r12), %rax
	movw	$-6701, BasicBlockSignatureTracker # imm = 0xE5D3
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	jl	.LBB23_24
# %bb.22:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$770, %ax               # imm = 0x302
	cmpw	$-6447, %ax             # imm = 0xE6D1
	jne	.LBB23_133
# %bb.23:                               # %update_tree.split252
	movq	(%r12), %rax
	movw	$-6447, BasicBlockSignatureTracker # imm = 0xE6D1
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_26
.LBB23_24:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$669, %ax               # imm = 0x29D
	cmpw	$-6322, %ax             # imm = 0xE74E
	jne	.LBB23_133
# %bb.25:                               # %update_tree.split254
	xorl	%eax, %eax
	subq	(%r12), %rax
	movw	$-6322, BasicBlockSignatureTracker # imm = 0xE74E
	movw	$415, RunTimeSignatureAdjuster # imm = 0x19F
.LBB23_26:
	movw	BasicBlockSignatureTracker, %cx
	movw	RunTimeSignatureAdjuster, %bx
	xorw	$423, %cx               # imm = 0x1A7
	xorw	%bx, %cx
	cmpw	$-6282, %cx             # imm = 0xE776
	jne	.LBB23_133
# %bb.27:                               # %update_tree.split256
	xorl	%ecx, %ecx
	subq	%rax, %rcx
	movq	%rcx, (%r12)
	movw	$-6282, BasicBlockSignatureTracker # imm = 0xE776
	movw	$903, RunTimeSignatureAdjuster # imm = 0x387
.LBB23_28:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$828, %ax               # imm = 0x33C
	xorw	%cx, %ax
	cmpw	$-6195, %ax             # imm = 0xE7CD
	jne	.LBB23_133
# %bb.29:                               # %update_tree.split250
	movq	(%r14), %rax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rax, (%rbx)
	movq	(%r12), %rax
	movq	(%rbx), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movw	$-6195, BasicBlockSignatureTracker # imm = 0xE7CD
	movw	$0, RunTimeSignatureAdjuster
.LBB23_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_38 Depth 2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$33, %ax
	xorw	%cx, %ax
	cmpw	$-6164, %ax             # imm = 0xE7EC
	jne	.LBB23_132
# %bb.31:                               # %update_tree.split258
                                        #   in Loop: Header=BB23_30 Depth=1
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movw	$-6164, BasicBlockSignatureTracker # imm = 0xE7EC
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB23_36
# %bb.32:                               #   in Loop: Header=BB23_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4074, %ax              # imm = 0xFEA
	cmpw	$-6138, %ax             # imm = 0xE806
	jne	.LBB23_132
# %bb.33:                               # %update_tree.split260
                                        #   in Loop: Header=BB23_30 Depth=1
	movw	$-6138, BasicBlockSignatureTracker # imm = 0xE806
	movw	$0, RunTimeSignatureAdjuster
.LBB23_34:                              #   in Loop: Header=BB23_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$12, %ax
	xorw	%cx, %ax
	cmpw	$-6134, %ax             # imm = 0xE80A
	jne	.LBB23_132
# %bb.35:                               # %update_tree.split264
                                        #   in Loop: Header=BB23_30 Depth=1
	movq	(%r12), %rax
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	(%r11), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	(%r11), %rax
	movq	%rax, (%rbx)
	movw	$-6134, BasicBlockSignatureTracker # imm = 0xE80A
	movw	$4039, RunTimeSignatureAdjuster # imm = 0xFC7
	jmp	.LBB23_30
.LBB23_36:                              #   in Loop: Header=BB23_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$4047, %ax              # imm = 0xFCF
	cmpw	$-6109, %ax             # imm = 0xE823
	jne	.LBB23_132
# %bb.37:                               # %update_tree.split262
                                        #   in Loop: Header=BB23_30 Depth=1
	movw	$-6109, BasicBlockSignatureTracker # imm = 0xE823
	movw	$0, RunTimeSignatureAdjuster
.LBB23_38:                              #   Parent Loop BB23_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$195, %ax
	xorw	%cx, %ax
	cmpw	$-5920, %ax             # imm = 0xE8E0
	jne	.LBB23_131
# %bb.39:                               # %update_tree.split266
                                        #   in Loop: Header=BB23_38 Depth=2
	movq	(%rbx), %rax
	movq	(%r14), %rcx
	movw	$-5920, BasicBlockSignatureTracker # imm = 0xE8E0
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB23_42
# %bb.40:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$264, %ax               # imm = 0x108
	cmpw	$-5656, %ax             # imm = 0xE9E8
	jne	.LBB23_133
# %bb.41:                               # %update_tree.split268
	movw	$-5656, BasicBlockSignatureTracker # imm = 0xE9E8
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_48
.LBB23_42:                              #   in Loop: Header=BB23_38 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$281, %ax               # imm = 0x119
	cmpw	$-5639, %ax             # imm = 0xE9F9
	jne	.LBB23_131
# %bb.43:                               # %update_tree.split270
                                        #   in Loop: Header=BB23_38 Depth=2
	movq	(%rbx), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movw	$-5639, BasicBlockSignatureTracker # imm = 0xE9F9
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB23_46
# %bb.44:                               #   in Loop: Header=BB23_30 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$964, %ax               # imm = 0x3C4
	cmpw	$-5571, %ax             # imm = 0xEA3D
	jne	.LBB23_132
# %bb.45:                               # %update_tree.split274
                                        #   in Loop: Header=BB23_30 Depth=1
	movw	$-5571, BasicBlockSignatureTracker # imm = 0xEA3D
	movw	$571, RunTimeSignatureAdjuster # imm = 0x23B
	jmp	.LBB23_34
.LBB23_46:                              #   in Loop: Header=BB23_38 Depth=2
	movw	BasicBlockSignatureTracker, %ax
	xorw	$856, %ax               # imm = 0x358
	cmpw	$-5471, %ax             # imm = 0xEAA1
	jne	.LBB23_131
# %bb.47:                               # %update_tree.split276
                                        #   in Loop: Header=BB23_38 Depth=2
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rbx)
	movw	$-5471, BasicBlockSignatureTracker # imm = 0xEAA1
	movw	$642, RunTimeSignatureAdjuster # imm = 0x282
	jmp	.LBB23_38
.LBB23_48:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$774, %ax               # imm = 0x306
	cmpw	$-5394, %ax             # imm = 0xEAEE
	jne	.LBB23_133
# %bb.49:                               # %update_tree.split272
	movq	(%rdx), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%r14), %rax
	movq	88(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rsi), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%r13), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-5394, BasicBlockSignatureTracker # imm = 0xEAEE
	movw	$0, RunTimeSignatureAdjuster
.LBB23_50:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1694, %ax              # imm = 0x69E
	xorw	%cx, %ax
	cmpw	$-5008, %ax             # imm = 0xEC70
	jne	.LBB23_130
# %bb.51:                               # %update_tree.split278
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r10), %rcx
	movw	$-5008, BasicBlockSignatureTracker # imm = 0xEC70
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_74
# %bb.52:                               #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$194, %ax
	cmpw	$-4942, %ax             # imm = 0xECB2
	jne	.LBB23_130
# %bb.53:                               # %update_tree.split280
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movw	$-4942, BasicBlockSignatureTracker # imm = 0xECB2
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB23_56
# %bb.54:                               #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$120, %ax
	cmpw	$-4918, %ax             # imm = 0xECCA
	jne	.LBB23_130
# %bb.55:                               # %update_tree.split284
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	40(%rax), %rax
	movq	(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movw	$-4918, BasicBlockSignatureTracker # imm = 0xECCA
	movw	$120, RunTimeSignatureAdjuster
.LBB23_56:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$491, %ax               # imm = 0x1EB
	xorw	%cx, %ax
	cmpw	$-4775, %ax             # imm = 0xED59
	jne	.LBB23_130
# %bb.57:                               # %update_tree.split286
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movw	$-4775, BasicBlockSignatureTracker # imm = 0xED59
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB23_60
# %bb.58:                               #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$136, %ax
	cmpw	$-4655, %ax             # imm = 0xEDD1
	jne	.LBB23_130
# %bb.59:                               # %update_tree.split288
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	32(%rax), %rax
	movq	(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movw	$-4655, BasicBlockSignatureTracker # imm = 0xEDD1
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_62
.LBB23_60:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$829, %ax               # imm = 0x33D
	cmpw	$-4508, %ax             # imm = 0xEE64
	jne	.LBB23_130
# %bb.61:                               # %update_tree.split290
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movw	$-4508, BasicBlockSignatureTracker # imm = 0xEE64
	movw	$949, RunTimeSignatureAdjuster # imm = 0x3B5
.LBB23_62:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$938, %ax               # imm = 0x3AA
	xorw	%cx, %ax
	cmpw	$-4485, %ax             # imm = 0xEE7B
	jne	.LBB23_130
# %bb.63:                               # %update_tree.split292
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rax, 24(%rcx)
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 32(%rcx)
	movq	(%rdx), %rax
	movq	32(%rax), %rax
	movw	$-4485, BasicBlockSignatureTracker # imm = 0xEE7B
	movw	$0, RunTimeSignatureAdjuster
	cmpq	$0, %rax
	je	.LBB23_66
# %bb.64:                               #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$274, %ax               # imm = 0x112
	cmpw	$-4247, %ax             # imm = 0xEF69
	jne	.LBB23_130
# %bb.65:                               # %update_tree.split294
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movw	$-4247, BasicBlockSignatureTracker # imm = 0xEF69
	movw	$274, RunTimeSignatureAdjuster # imm = 0x112
.LBB23_66:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$471, %ax               # imm = 0x1D7
	xorw	%cx, %ax
	cmpw	$-4180, %ax             # imm = 0xEFAC
	jne	.LBB23_130
# %bb.67:                               # %update_tree.split296
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	(%rdx), %rax
	movq	$0, 40(%rax)
	movq	(%rdx), %rax
	cmpl	$0, 8(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$-4180, BasicBlockSignatureTracker # imm = 0xEFAC
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB23_70
# %bb.68:                               #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$8105, %ax              # imm = 0x1FA9
	cmpw	$-4091, %ax             # imm = 0xF005
	jne	.LBB23_130
# %bb.69:                               # %update_tree.split298
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	80(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-4091, BasicBlockSignatureTracker # imm = 0xF005
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_72
.LBB23_70:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$8168, %ax              # imm = 0x1FE8
	cmpw	$-4028, %ax             # imm = 0xF044
	jne	.LBB23_130
# %bb.71:                               # %update_tree.split300
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	80(%rax), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	subq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-4028, BasicBlockSignatureTracker # imm = 0xF044
	movw	$65, RunTimeSignatureAdjuster
.LBB23_72:                              #   in Loop: Header=BB23_50 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$130, %ax
	xorw	%cx, %ax
	cmpw	$-3961, %ax             # imm = 0xF087
	jne	.LBB23_130
# %bb.73:                               # %update_tree.split302
                                        #   in Loop: Header=BB23_50 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	48(%rax), %rax
	movq	-144(%rbp), %r13        # 8-byte Reload
	movq	%rax, (%r13)
	movq	(%rdx), %rax
	movq	88(%rax), %rax
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%rax, (%r15)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	(%r11), %rax
	movq	(%rdx), %rcx
	movl	%eax, 8(%rcx)
	movq	%r8, %r14
	movq	(%r14), %rax
	movq	(%rdx), %rcx
	movq	%rax, 80(%rcx)
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	(%rbx), %rax
	movq	(%rdx), %rcx
	movq	%rax, 48(%rcx)
	movq	-112(%rbp), %r12        # 8-byte Reload
	movq	(%r12), %rax
	movq	(%rdx), %rcx
	movq	%rax, 88(%rcx)
	movq	(%rdx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r11)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r14)
	movq	(%r13), %rax
	movq	%rax, (%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	subq	(%r15), %rax
	movq	%rax, (%r12)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	(%rdx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-3961, BasicBlockSignatureTracker # imm = 0xF087
	movw	$6761, RunTimeSignatureAdjuster # imm = 0x1A69
	jmp	.LBB23_50
.LBB23_74:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$7550, %ax              # imm = 0x1D7E
	cmpw	$-3826, %ax             # imm = 0xF10E
	jne	.LBB23_133
# %bb.75:                               # %update_tree.split282
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rdi), %rcx
	movw	$-3826, BasicBlockSignatureTracker # imm = 0xF10E
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jle	.LBB23_106
# %bb.76:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$875, %ax               # imm = 0x36B
	cmpw	$-3483, %ax             # imm = 0xF265
	jne	.LBB23_133
# %bb.77:                               # %update_tree.split304
	movq	(%r10), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-3483, BasicBlockSignatureTracker # imm = 0xF265
	movw	$0, RunTimeSignatureAdjuster
.LBB23_78:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$384, %ax               # imm = 0x180
	xorw	%cx, %ax
	cmpw	$-3099, %ax             # imm = 0xF3E5
	jne	.LBB23_127
# %bb.79:                               # %update_tree.split308
                                        #   in Loop: Header=BB23_78 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r9), %rcx
	movw	$-3099, BasicBlockSignatureTracker # imm = 0xF3E5
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_90
# %bb.80:                               #   in Loop: Header=BB23_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1918, %ax              # imm = 0x77E
	cmpw	$-2917, %ax             # imm = 0xF49B
	jne	.LBB23_127
# %bb.81:                               # %update_tree.split310
                                        #   in Loop: Header=BB23_78 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	88(%rcx), %rdx
	subq	%r8, %rdx
	movq	%rdx, 88(%rcx)
	movq	(%rax), %rax
	movslq	8(%rax), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$-2917, BasicBlockSignatureTracker # imm = 0xF49B
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_84
# %bb.82:                               #   in Loop: Header=BB23_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$442, %ax               # imm = 0x1BA
	cmpw	$-2783, %ax             # imm = 0xF521
	jne	.LBB23_127
# %bb.83:                               # %update_tree.split314
                                        #   in Loop: Header=BB23_78 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	movw	$-2783, BasicBlockSignatureTracker # imm = 0xF521
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_86
.LBB23_84:                              #   in Loop: Header=BB23_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$353, %ax               # imm = 0x161
	cmpw	$-2566, %ax             # imm = 0xF5FA
	jne	.LBB23_127
# %bb.85:                               # %update_tree.split316
                                        #   in Loop: Header=BB23_78 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	80(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 80(%rcx)
	movw	$-2566, BasicBlockSignatureTracker # imm = 0xF5FA
	movw	$219, RunTimeSignatureAdjuster
.LBB23_86:                              #   in Loop: Header=BB23_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$787, %ax               # imm = 0x313
	xorw	%cx, %ax
	cmpw	$-2510, %ax             # imm = 0xF632
	jne	.LBB23_127
# %bb.87:                               # %update_tree.split318
                                        #   in Loop: Header=BB23_78 Depth=1
	movw	$-2510, BasicBlockSignatureTracker # imm = 0xF632
	movw	$0, RunTimeSignatureAdjuster
# %bb.88:                               #   in Loop: Header=BB23_78 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$12, %ax
	cmpw	$-2498, %ax             # imm = 0xF63E
	jne	.LBB23_127
# %bb.89:                               # %update_tree.split320
                                        #   in Loop: Header=BB23_78 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-2498, BasicBlockSignatureTracker # imm = 0xF63E
	movw	$1115, RunTimeSignatureAdjuster # imm = 0x45B
	jmp	.LBB23_78
.LBB23_90:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1369, %ax              # imm = 0x559
	cmpw	$-2372, %ax             # imm = 0xF6BC
	jne	.LBB23_133
# %bb.91:                               # %update_tree.split312
	movq	(%rsi), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-2372, BasicBlockSignatureTracker # imm = 0xF6BC
	movw	$0, RunTimeSignatureAdjuster
.LBB23_92:                              # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$3784, %ax              # imm = 0xEC8
	xorw	%cx, %ax
	cmpw	$-1932, %ax             # imm = 0xF874
	jne	.LBB23_126
# %bb.93:                               # %update_tree.split322
                                        #   in Loop: Header=BB23_92 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r9), %rcx
	movw	$-1932, BasicBlockSignatureTracker # imm = 0xF874
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_104
# %bb.94:                               #   in Loop: Header=BB23_92 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$176, %ax
	cmpw	$-1852, %ax             # imm = 0xF8C4
	jne	.LBB23_126
# %bb.95:                               # %update_tree.split324
                                        #   in Loop: Header=BB23_92 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movq	(%rdx), %rax
	movslq	8(%rax), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	$-1852, BasicBlockSignatureTracker # imm = 0xF8C4
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	jne	.LBB23_98
# %bb.96:                               #   in Loop: Header=BB23_92 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$37, %ax
	cmpw	$-1823, %ax             # imm = 0xF8E1
	jne	.LBB23_126
# %bb.97:                               # %update_tree.split328
                                        #   in Loop: Header=BB23_92 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	movw	$-1823, BasicBlockSignatureTracker # imm = 0xF8E1
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_100
.LBB23_98:                              #   in Loop: Header=BB23_92 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$50, %ax
	cmpw	$-1802, %ax             # imm = 0xF8F6
	jne	.LBB23_126
# %bb.99:                               # %update_tree.split330
                                        #   in Loop: Header=BB23_92 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	80(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 80(%rcx)
	movw	$-1802, BasicBlockSignatureTracker # imm = 0xF8F6
	movw	$23, RunTimeSignatureAdjuster
.LBB23_100:                             #   in Loop: Header=BB23_92 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$483, %ax               # imm = 0x1E3
	xorw	%cx, %ax
	cmpw	$-1790, %ax             # imm = 0xF902
	jne	.LBB23_126
# %bb.101:                              # %update_tree.split332
                                        #   in Loop: Header=BB23_92 Depth=1
	movw	$-1790, BasicBlockSignatureTracker # imm = 0xF902
	movw	$0, RunTimeSignatureAdjuster
# %bb.102:                              #   in Loop: Header=BB23_92 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$44, %ax
	cmpw	$-1746, %ax             # imm = 0xF92E
	jne	.LBB23_126
# %bb.103:                              # %update_tree.split334
                                        #   in Loop: Header=BB23_92 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-1746, BasicBlockSignatureTracker # imm = 0xF92E
	movw	$3986, RunTimeSignatureAdjuster # imm = 0xF92
	jmp	.LBB23_92
.LBB23_104:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$607, %ax               # imm = 0x25F
	cmpw	$-1493, %ax             # imm = 0xFA2B
	jne	.LBB23_133
# %bb.105:                              # %update_tree.split326
	movw	$-1493, BasicBlockSignatureTracker # imm = 0xFA2B
	movw	$0, RunTimeSignatureAdjuster
	jmp	.LBB23_124
.LBB23_106:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$2664, %ax              # imm = 0xA68
	cmpw	$-1178, %ax             # imm = 0xFB66
	jne	.LBB23_133
# %bb.107:                              # %update_tree.split306
	movq	(%r10), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-1178, BasicBlockSignatureTracker # imm = 0xFB66
	movw	$0, RunTimeSignatureAdjuster
.LBB23_108:                             # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$209, %ax
	xorw	%cx, %ax
	cmpw	$-1097, %ax             # imm = 0xFBB7
	jne	.LBB23_129
# %bb.109:                              # %update_tree.split338
                                        #   in Loop: Header=BB23_108 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r9), %rcx
	movw	$-1097, BasicBlockSignatureTracker # imm = 0xFBB7
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_114
# %bb.110:                              #   in Loop: Header=BB23_108 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1863, %ax              # imm = 0x747
	cmpw	$-784, %ax              # imm = 0xFCF0
	jne	.LBB23_129
# %bb.111:                              # %update_tree.split340
                                        #   in Loop: Header=BB23_108 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	88(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 88(%rcx)
	movw	$-784, BasicBlockSignatureTracker # imm = 0xFCF0
	movw	$0, RunTimeSignatureAdjuster
# %bb.112:                              #   in Loop: Header=BB23_108 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$12, %ax
	cmpw	$-772, %ax              # imm = 0xFCFC
	jne	.LBB23_129
# %bb.113:                              # %update_tree.split344
                                        #   in Loop: Header=BB23_108 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-772, BasicBlockSignatureTracker # imm = 0xFCFC
	movw	$1946, RunTimeSignatureAdjuster # imm = 0x79A
	jmp	.LBB23_108
.LBB23_114:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$1714, %ax              # imm = 0x6B2
	cmpw	$-763, %ax              # imm = 0xFD05
	jne	.LBB23_133
# %bb.115:                              # %update_tree.split342
	movq	(%rsi), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movw	$-763, BasicBlockSignatureTracker # imm = 0xFD05
	movw	$0, RunTimeSignatureAdjuster
.LBB23_116:                             # =>This Inner Loop Header: Depth=1
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$19, %ax
	xorw	%cx, %ax
	cmpw	$-746, %ax              # imm = 0xFD16
	jne	.LBB23_128
# %bb.117:                              # %update_tree.split346
                                        #   in Loop: Header=BB23_116 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r9), %rcx
	movw	$-746, BasicBlockSignatureTracker # imm = 0xFD16
	movw	$0, RunTimeSignatureAdjuster
	cmpq	%rcx, %rax
	je	.LBB23_122
# %bb.118:                              #   in Loop: Header=BB23_116 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$126, %ax
	cmpw	$-664, %ax              # imm = 0xFD68
	jne	.LBB23_128
# %bb.119:                              # %update_tree.split348
                                        #   in Loop: Header=BB23_116 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movw	$-664, BasicBlockSignatureTracker # imm = 0xFD68
	movw	$0, RunTimeSignatureAdjuster
# %bb.120:                              #   in Loop: Header=BB23_116 Depth=1
	movw	BasicBlockSignatureTracker, %ax
	xorw	$173, %ax
	cmpw	$-571, %ax              # imm = 0xFDC5
	jne	.LBB23_128
# %bb.121:                              # %update_tree.split352
                                        #   in Loop: Header=BB23_116 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rcx)
	movw	$-571, BasicBlockSignatureTracker # imm = 0xFDC5
	movw	$192, RunTimeSignatureAdjuster
	jmp	.LBB23_116
.LBB23_122:
	movw	BasicBlockSignatureTracker, %ax
	xorw	$823, %ax               # imm = 0x337
	cmpw	$-479, %ax              # imm = 0xFE21
	jne	.LBB23_133
# %bb.123:                              # %update_tree.split350
	movw	$-479, BasicBlockSignatureTracker # imm = 0xFE21
	movw	$1034, RunTimeSignatureAdjuster # imm = 0x40A
.LBB23_124:
	movw	BasicBlockSignatureTracker, %ax
	movw	RunTimeSignatureAdjuster, %cx
	xorw	$1041, %ax              # imm = 0x411
	xorw	%cx, %ax
	cmpw	$-454, %ax              # imm = 0xFE3A
	jne	.LBB23_133
# %bb.125:                              # %update_tree.split336
	movw	$-454, BasicBlockSignatureTracker # imm = 0xFE3A
	movw	$16134, RunTimeSignatureAdjuster # imm = 0x3F06
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_126:                             # %CFerrorHandler.update_tree.loopexit
	jmp	.LBB23_133
.LBB23_127:                             # %CFerrorHandler.update_tree.loopexit1
	jmp	.LBB23_133
.LBB23_128:                             # %CFerrorHandler.update_tree.loopexit2
	jmp	.LBB23_133
.LBB23_129:                             # %CFerrorHandler.update_tree.loopexit3
	jmp	.LBB23_133
.LBB23_130:                             # %CFerrorHandler.update_tree.loopexit4
	jmp	.LBB23_133
.LBB23_131:                             # %CFerrorHandler.update_tree.loopexit5
	jmp	.LBB23_133
.LBB23_132:                             # %CFerrorHandler.update_tree.loopexit6
	jmp	.LBB23_133
.LBB23_133:                             # %CFerrorHandler.update_tree
	callq	FAULT_DETECTED_CFC
.Lfunc_end23:
	.size	update_tree, .Lfunc_end23-update_tree
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
	movw	$-206, BasicBlockSignatureTracker(%rip)
	movw	$0, RunTimeSignatureAdjuster(%rip)
.Lfunc_end24:
	.size	FAULT_DETECTED_CFC, .Lfunc_end24-FAULT_DETECTED_CFC
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"network %s: not enough memory\n"
	.size	.L.str, 31

	.type	net,@object             # @net
	.comm	net,624,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"active arcs                : %ld\n"
	.size	.L.str.1, 34

	.type	.L.str.1.2,@object      # @.str.1.2
.L.str.1.2:
	.asciz	"simplex iterations         : %ld\n"
	.size	.L.str.1.2, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"objective value            : %0.0f\n"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"erased arcs                : %ld\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"new implicit arcs          : %ld\n"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"not enough memory, exit(-1)\n"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"checksum                   : %ld\n"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\nMCF SPEC CPU2006 version 1.10\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\n"
	.size	.L.str.8, 52

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Copyright (c) 2000-2002 Andreas Loebel & ZIB\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Copyright (c) 2003-2005 Andreas Loebel\n"
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"read error, exit\n"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nodes                      : %ld\n"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"done\n"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"mcf.out"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"PRIMAL NETWORK SIMPLEX: "
	.size	.L.str.16, 25

	.type	.L.str.1.17,@object     # @.str.1.17
.L.str.1.17:
	.asciz	"artificial arc with nonzero flow, node %d (%ld)\n"
	.size	.L.str.1.17, 49

	.type	.L.str.2.18,@object     # @.str.2.18
.L.str.2.18:
	.asciz	"basis primal infeasible (%ld)\n"
	.size	.L.str.2.18, 31

	.type	.L.str.3.19,@object     # @.str.3.19
.L.str.3.19:
	.asciz	"DUAL NETWORK SIMPLEX: "
	.size	.L.str.3.19, 23

	.type	.L.str.4.20,@object     # @.str.4.20
.L.str.4.20:
	.asciz	"basis dual infeasible\n"
	.size	.L.str.4.20, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"w"
	.size	.L.str.25, 2

	.type	.L.str.1.26,@object     # @.str.1.26
.L.str.1.26:
	.asciz	"()\n"
	.size	.L.str.1.26, 4

	.type	.L.str.2.27,@object     # @.str.2.27
.L.str.2.27:
	.asciz	"***\n"
	.size	.L.str.2.27, 5

	.type	.L.str.3.28,@object     # @.str.3.28
.L.str.3.28:
	.asciz	"%d\n"
	.size	.L.str.3.28, 4

	.type	perm,@object            # @perm
	.local	perm
	.comm	perm,2808,16
	.type	initialize,@object      # @initialize
	.data
	.p2align	3
initialize:
	.quad	1                       # 0x1
	.size	initialize, 8

	.type	basket,@object          # @basket
	.local	basket
	.comm	basket,8424,16
	.type	nr_group,@object        # @nr_group
	.local	nr_group
	.comm	nr_group,8,8
	.type	group_pos,@object       # @group_pos
	.local	group_pos
	.comm	group_pos,8,8
	.type	basket_size,@object     # @basket_size
	.local	basket_size
	.comm	basket_size,8,8
	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"r"
	.size	.L.str.35, 2

	.type	.L.str.1.36,@object     # @.str.1.36
.L.str.1.36:
	.asciz	"%ld %ld"
	.size	.L.str.1.36, 8

	.type	.L.str.2.37,@object     # @.str.2.37
.L.str.2.37:
	.asciz	"read_min(): not enough memory\n"
	.size	.L.str.2.37, 31

	.type	.L.str.3.38,@object     # @.str.3.38
.L.str.3.38:
	.asciz	"%ld %ld %ld"
	.size	.L.str.3.38, 12

	.type	BasicBlockSignatureTracker,@object # @BasicBlockSignatureTracker
	.comm	BasicBlockSignatureTracker,2,4
	.type	RunTimeSignatureAdjuster,@object # @RunTimeSignatureAdjuster
	.comm	RunTimeSignatureAdjuster,2,4

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
