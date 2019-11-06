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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	416(%rcx), %rax
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	448(%rcx), %rax
	movq	%rax, 448(%rcx)
	movq	-8(%rbp), %rax
	movq	568(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	416(%rax), %rsi
	shlq	$6, %rsi
	callq	realloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movq	stdout, %rdi
	callq	fflush
	movq	$-1, -32(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	568(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 568(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	424(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 576(%rcx)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	addq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	movq	$0, -32(%rbp)
.LBB0_9:
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$2, %ecx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rdi
	cmpq	48(%rdi), %rsi
	setg	%al
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$2, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	8(%rsi), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	16(%rsi), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	(%rsi), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	48(%rsi), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movq	%rax, 48(%rdx)
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB1_1
.LBB1_5:
	popq	%rbp
	retq
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
	movl	$3, %eax
	movl	$2, %r10d
	movq	%rdi, -64(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 48(%rdx)
	movq	$1, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	176(%rdx), %rdx
	cmpq	%rdx, %rcx
	cmovgl	%r10d, %eax
	cltq
	movq	%rax, -16(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	cmpq	448(%rdx), %rcx
	jg	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	cmpq	48(%rcx), %rax
	setl	%al
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_9
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-64(%rbp), %rcx
	cmpq	448(%rcx), %rax
	jg	.LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_9:
	popq	%rbp
	retq
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -104(%rbp)
	movq	$15, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	$30, -88(%rbp)
	movq	-136(%rbp), %rax
	subq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$15000, 408(%rax)       # imm = 0x3A98
	jg	.LBB3_7
# %bb.1:
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	456(%rcx), %rax
	movq	-16(%rbp), %rcx
	cmpq	416(%rcx), %rax
	jle	.LBB3_6
# %bb.2:
	movl	$2, %ecx
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	-16(%rbp), %rdx
	imulq	408(%rdx), %rax
	cqto
	idivq	%rcx
	movq	-16(%rbp), %rcx
	addq	424(%rcx), %rax
	movq	-16(%rbp), %rcx
	cmpq	416(%rcx), %rax
	jle	.LBB3_6
# %bb.3:
	movq	$1, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	resize_prob
	cmpq	$0, %rax
	je	.LBB3_5
# %bb.4:
	movq	$-1, -120(%rbp)
	jmp	.LBB3_48
.LBB3_5:
	movq	-16(%rbp), %rdi
	callq	refresh_neighbour_lists
.LBB3_6:
	jmp	.LBB3_7
.LBB3_7:
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	408(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	cmpq	-112(%rbp), %rcx
	jge	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$-1, 88(%rax)
	sete	%al
.LBB3_10:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$1, %al
	jne	.LBB3_11
	jmp	.LBB3_13
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_8
.LBB3_13:
	movq	$0, -80(%rbp)
.LBB3_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB3_34
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$-1, 88(%rax)
	je	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -80(%rbp)
.LBB3_17:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$-1, 24(%rax)
	jne	.LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_33
.LBB3_19:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movslq	100(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	56(%rcx), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB3_20:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB3_32
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	100(%rax), %rax
	movq	-64(%rbp), %rcx
	addq	56(%rcx), %rax
	cmpq	-152(%rbp), %rax
	jle	.LBB3_24
# %bb.22:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB3_23:                               # %.backedge
                                        #   in Loop: Header=BB3_20 Depth=2
	jmp	.LBB3_20
.LBB3_24:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	(%rcx), %rax
	movq	-56(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jge	.LBB3_31
# %bb.25:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	448(%rcx), %rax
	jge	.LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-72(%rbp), %r9
	callq	insert_new_arc
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_30
.LBB3_27:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB3_29
# %bb.28:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-72(%rbp), %r9
	callq	replace_weaker_arc
.LBB3_29:                               #   in Loop: Header=BB3_20 Depth=2
	jmp	.LBB3_30
.LBB3_30:                               #   in Loop: Header=BB3_20 Depth=2
	jmp	.LBB3_31
.LBB3_31:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_23
.LBB3_32:                               #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_33
.LBB3_33:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB3_14
.LBB3_34:
	cmpq	$0, -32(%rbp)
	je	.LBB3_47
# %bb.35:
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$6, %rax
	addq	576(%rcx), %rax
	movq	%rax, 576(%rcx)
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB3_41
# %bb.36:
	jmp	.LBB3_37
.LBB3_37:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB3_40
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
# %bb.39:                               #   in Loop: Header=BB3_37 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_37
.LBB3_40:
	jmp	.LBB3_46
.LBB3_41:
	jmp	.LBB3_42
.LBB3_42:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB3_45
# %bb.43:                               #   in Loop: Header=BB3_42 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
# %bb.44:                               #   in Loop: Header=BB3_42 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_42
.LBB3_45:
	jmp	.LBB3_46
.LBB3_46:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	424(%rcx), %rax
	movq	%rax, 424(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	440(%rcx), %rax
	movq	%rax, 440(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	448(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 448(%rcx)
.LBB3_47:
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB3_48:
	movq	-120(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB4_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_18
.LBB4_2:
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	424(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	440(%rdx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB4_17
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_12
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movq	$-2, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB4_11
# %bb.7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB4_10
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 48(%rcx)
.LBB4_10:                               #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_12
.LBB4_12:                               #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	$64, %edx
	callq	memcpy
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
.LBB4_15:                               #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_17:
	jmp	.LBB4_18
.LBB4_18:
	cmpq	$0, -24(%rbp)
	je	.LBB4_20
# %bb.19:
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	424(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 424(%rdx)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	440(%rdx), %rsi
	subq	%rcx, %rsi
	movq	%rsi, 440(%rdx)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	576(%rdx), %rsi
	subq	%rcx, %rax
	shlq	$6, %rax
	addq	%rax, %rsi
	movq	%rsi, 576(%rdx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	448(%rcx), %rax
	movq	%rax, 448(%rcx)
	movq	-16(%rbp), %rdi
	callq	refresh_neighbour_lists
.LBB4_20:
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
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
	subq	$16, %rsp
	movl	$5, %eax
	movq	$-1, -8(%rbp)
	movq	net+408, %rcx
	cmpq	$15000, %rcx            # imm = 0x3A98
	cmovlel	%eax, %eax
	cltq
	movq	%rax, -16(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB5_13
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	net+424, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	callq	primal_net_simplex
	movabsq	$.L.str.1.2, %rdi
	movq	net+600, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	callq	flow_cost
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
	cmpq	$0, -16(%rbp)
	jne	.LBB5_4
# %bb.3:
	jmp	.LBB5_14
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, net+440
	je	.LBB5_8
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$net, %rdi
	movq	$-1, %rsi
	xorl	%edx, %edx
	callq	suspend_impl
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	printf
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$net, %rdi
	callq	price_out_impl
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.4, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	printf
.LBB5_10:                               #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -8(%rbp)
	jge	.LBB5_12
# %bb.11:
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB5_12:                               #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_13:                               # %.loopexit
	jmp	.LBB5_14
.LBB5_14:
	movabsq	$.L.str.6, %rdi
	movq	net+616, %rsi
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
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
	cmpl	$2, -16(%rbp)
	jge	.LBB6_2
# %bb.1:
	movl	$-1, -12(%rbp)
	jmp	.LBB6_7
.LBB6_2:
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
	movq	%rbx, %rdi
	callq	read_min
	cmpq	$0, %rax
	je	.LBB6_4
# %bb.3:
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	callq	getfree
	movl	$-1, -12(%rbp)
	jmp	.LBB6_7
.LBB6_4:
	movabsq	$.L.str.13, %rdi
	movq	net+408, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$net, %rdi
	callq	primal_start_artificial
	callq	global_opt
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.15, %rdi
	movabsq	$net, %rsi
	callq	write_circulations
	cmpq	$0, %rax
	je	.LBB6_6
# %bb.5:
	movabsq	$net, %rdi
	callq	getfree
	movl	$-1, -12(%rbp)
	jmp	.LBB6_7
.LBB6_6:
	movabsq	$net, %rdi
	callq	getfree
	movl	$0, -12(%rbp)
.LBB6_7:
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
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
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_4:
	movq	-24(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_8:
	popq	%rbp
	retq
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
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	$-100000000, (%rax)     # imm = 0xFA0A1F00
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rax, -16(%rbp)
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #     Child Loop BB8_9 Depth 2
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB8_16
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_3
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB8_8
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_8:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_9:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=2
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_15
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
# %bb.13:                               #   in Loop: Header=BB8_9 Depth=2
	jmp	.LBB8_9
.LBB8_14:                               # %.loopexit
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_15
.LBB8_15:                               #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1
.LBB8_16:
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
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
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB9_7
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$1, 48(%rax)
	jmp	.LBB9_5
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB9_5:                                #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_1
.LBB9_7:
	movq	-16(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB9_11
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, 48(%rcx)
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_8
.LBB9_11:
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_12:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB9_23
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_21
# %bb.14:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$0, 96(%rax)
	jg	.LBB9_20
.LBB9_16:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	528(%rcx), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB9_19:                               #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_21
.LBB9_21:                               #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_22
.LBB9_22:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_12
.LBB9_23:
	movq	-48(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
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
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB10_7
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$1, 48(%rax)
	jmp	.LBB10_5
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_1
.LBB10_7:
	movq	-16(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB10_11
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, 48(%rcx)
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_8
.LBB10_11:
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB10_23
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB10_21
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB10_16
# %bb.15:                               #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$0, 96(%rax)
	jg	.LBB10_20
.LBB10_16:                              #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	528(%rcx), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB10_19:                              #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_20
.LBB10_20:                              #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_21
.LBB10_21:                              #   in Loop: Header=BB10_12 Depth=1
	jmp	.LBB10_22
.LBB10_22:                              #   in Loop: Header=BB10_12 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_12
.LBB10_23:
	movq	-48(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	popq	%rbp
	retq
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	592(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB11_16
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB11_10
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB11_10
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -24(%rbp)
	jl	.LBB11_6
# %bb.5:                                #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB11_7
.LBB11_6:                               #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	subq	-24(%rbp), %rax
.LBB11_7:                               #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rcx
	cmpq	512(%rcx), %rax
	jle	.LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_1 Depth=1
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1.17, %rdi
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	printf
.LBB11_9:                               #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_14
.LBB11_10:                              #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	512(%rdx), %rax
	cmpq	%rax, %rcx
	jl	.LBB11_12
# %bb.11:                               #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	cmpq	512(%rcx), %rax
	jle	.LBB11_13
.LBB11_12:
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2.18, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rax
	movq	$0, 488(%rax)
	movq	$1, -40(%rbp)
	jmp	.LBB11_17
.LBB11_13:                              #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_16:
	movq	-8(%rbp), %rax
	movq	$1, 488(%rax)
	movq	$0, -40(%rbp)
.LBB11_17:
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB12_15
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	16(%rax), %rax
	movq	(%rax), %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %ecx
	subl	$-1, %ecx
	je	.LBB12_11
	jmp	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movl	%eax, %ecx
	subl	$2, %ecx
	jb	.LBB12_5
	jmp	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	subl	$2, %eax
	je	.LBB12_8
	jmp	.LBB12_12
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	512(%rdx), %rax
	cmpq	%rax, %rcx
	jge	.LBB12_7
# %bb.6:
	jmp	.LBB12_16
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_13
.LBB12_8:                               #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	512(%rcx), %rax
	jle	.LBB12_10
# %bb.9:
	jmp	.LBB12_16
.LBB12_10:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_13
.LBB12_11:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_12
.LBB12_12:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_14
.LBB12_14:                              #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_1
.LBB12_15:
	movq	$0, -32(%rbp)
	jmp	.LBB12_17
.LBB12_16:
	movabsq	$.L.str.3.19, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.4.20, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movq	$1, -32(%rbp)
.LBB12_17:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 552(%rax)
	je	.LBB13_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	552(%rax), %rdi
	callq	free
.LBB13_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 568(%rax)
	je	.LBB13_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	568(%rax), %rdi
	callq	free
.LBB13_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 584(%rax)
	je	.LBB13_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	584(%rax), %rdi
	callq	free
.LBB13_6:
	movq	-8(%rbp), %rax
	movq	$0, 560(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 552(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 576(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 568(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 592(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 584(%rax)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
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
	subq	$64, %rsp
	movabsq	$.L.str.25, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -64(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	576(%rdx), %rdx
	movq	-32(%rbp), %rsi
	subq	440(%rsi), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB14_2
# %bb.1:
	movq	$-1, -48(%rbp)
	jmp	.LBB14_26
.LBB14_2:
	movq	-32(%rbp), %rdi
	callq	refresh_neighbour_lists
	movq	-32(%rbp), %rax
	movq	552(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_10 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB14_25
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB14_23
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	movabsq	$.L.str.1.26, %rsi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB14_6:                               #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
	cmpq	$0, -16(%rbp)
	je	.LBB14_22
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB14_9
# %bb.8:                                #   in Loop: Header=BB14_6 Depth=2
	movabsq	$.L.str.2.27, %rsi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
.LBB14_9:                               #   in Loop: Header=BB14_6 Depth=2
	movabsq	$.L.str.3.28, %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	subl	96(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	imulq	$104, 408(%rcx), %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_10:                              #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -8(%rbp)
	je	.LBB14_15
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=3
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB14_13
# %bb.12:                               #   in Loop: Header=BB14_6 Depth=2
	jmp	.LBB14_16
.LBB14_13:                              #   in Loop: Header=BB14_10 Depth=3
	jmp	.LBB14_14
.LBB14_14:                              #   in Loop: Header=BB14_10 Depth=3
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_10
.LBB14_15:                              # %.loopexit
                                        #   in Loop: Header=BB14_6 Depth=2
	jmp	.LBB14_16
.LBB14_16:                              #   in Loop: Header=BB14_6 Depth=2
	cmpq	$0, -8(%rbp)
	jne	.LBB14_18
# %bb.17:
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	$-1, -48(%rbp)
	jmp	.LBB14_26
.LBB14_18:                              #   in Loop: Header=BB14_6 Depth=2
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$0, 96(%rax)
	je	.LBB14_20
# %bb.19:                               #   in Loop: Header=BB14_6 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              #   in Loop: Header=BB14_6 Depth=2
	movq	$0, -16(%rbp)
.LBB14_21:                              #   in Loop: Header=BB14_6 Depth=2
	jmp	.LBB14_6
.LBB14_22:                              #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_23
.LBB14_23:                              #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_24
.LBB14_24:                              #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_3
.LBB14_25:
	movq	-24(%rbp), %rdi
	callq	fclose
	movq	$0, -48(%rbp)
.LBB14_26:
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jge	.LBB15_2
# %bb.1:
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$1, 24(%rcx)
	je	.LBB15_5
.LBB15_2:
	xorl	%eax, %eax
	cmpq	$0, -8(%rbp)
	jle	.LBB15_4
# %bb.3:
	movq	-16(%rbp), %rax
	cmpl	$2, 24(%rax)
	sete	%al
.LBB15_4:
.LBB15_5:
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
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
	subq	$48, %rsp
	movl	$2, %ecx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movq	perm(,%rax,8), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
                                        #     Child Loop BB16_5 Depth 2
	jmp	.LBB16_2
.LBB16_2:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movq	perm(,%rax,8), %rax
	movq	16(%rax), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB16_4
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_2
.LBB16_4:                               #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	perm(,%rcx,8), %rcx
	cmpq	16(%rcx), %rax
	jle	.LBB16_7
# %bb.6:                                #   in Loop: Header=BB16_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_5
.LBB16_7:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB16_9
# %bb.8:                                #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	movq	perm(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	perm(,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, perm(,%rcx,8)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, perm(,%rcx,8)
.LBB16_9:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB16_11
# %bb.10:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB16_11:                              #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_12
.LBB16_12:                              #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB16_1
# %bb.13:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB16_15
# %bb.14:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sort_basket
.LBB16_15:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB16_18
# %bb.16:
	cmpq	$50, -8(%rbp)
	jg	.LBB16_18
# %bb.17:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sort_basket
.LBB16_18:
	addq	$48, %rsp
	popq	%rbp
	retq
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
	subq	$80, %rsp
	movq	%rdi, -80(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, initialize
	je	.LBB17_6
# %bb.1:
	movq	$1, -24(%rbp)
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	$351, -24(%rbp)         # imm = 0x15F
	jge	.LBB17_5
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	movabsq	$basket, %rax
	imulq	$24, -24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, perm(,%rcx,8)
# %bb.4:                                #   in Loop: Header=BB17_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_2
.LBB17_5:
	movl	$300, %ecx              # imm = 0x12C
	movq	-80(%rbp), %rax
	subq	$1, %rax
	cqto
	idivq	%rcx
	addq	$1, %rax
	movq	%rax, nr_group
	movq	$0, group_pos
	movq	$0, basket_size
	movq	$0, initialize
	jmp	.LBB17_21
.LBB17_6:
	movq	$2, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpq	$50, -24(%rbp)
	jg	.LBB17_9
# %bb.8:                                #   in Loop: Header=BB17_7 Depth=1
	movq	-24(%rbp), %rax
	cmpq	basket_size, %rax
	setle	%al
.LBB17_9:                               #   in Loop: Header=BB17_7 Depth=1
	testb	$1, %al
	jne	.LBB17_10
	jmp	.LBB17_20
.LBB17_10:                              #   in Loop: Header=BB17_7 Depth=1
	movq	-24(%rbp), %rax
	movq	perm(,%rax,8), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jge	.LBB17_12
# %bb.11:                               #   in Loop: Header=BB17_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 24(%rax)
	je	.LBB17_14
.LBB17_12:                              #   in Loop: Header=BB17_7 Depth=1
	cmpq	$0, -16(%rbp)
	jle	.LBB17_18
# %bb.13:                               #   in Loop: Header=BB17_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB17_18
.LBB17_14:                              #   in Loop: Header=BB17_7 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -16(%rbp)
	jl	.LBB17_16
# %bb.15:                               #   in Loop: Header=BB17_7 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB17_17
.LBB17_16:                              #   in Loop: Header=BB17_7 Depth=1
	xorl	%eax, %eax
	subq	-16(%rbp), %rax
.LBB17_17:                              #   in Loop: Header=BB17_7 Depth=1
	movq	-32(%rbp), %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 16(%rcx)
.LBB17_18:                              #   in Loop: Header=BB17_7 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              #   in Loop: Header=BB17_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_7
.LBB17_20:
	movq	-32(%rbp), %rax
	movq	%rax, basket_size
.LBB17_21:
	movq	group_pos, %rax
	movq	%rax, -56(%rbp)
.LBB17_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_23 Depth 2
	movq	-72(%rbp), %rax
	movq	group_pos, %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB17_23:                              #   Parent Loop BB17_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jae	.LBB17_33
# %bb.24:                               #   in Loop: Header=BB17_23 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jle	.LBB17_31
# %bb.25:                               #   in Loop: Header=BB17_23 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	bea_is_dual_infeasible
	cmpl	$0, %eax
	je	.LBB17_30
# %bb.26:                               #   in Loop: Header=BB17_23 Depth=2
	movq	basket_size, %rax
	addq	$1, %rax
	movq	%rax, basket_size
	movq	-8(%rbp), %rax
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -16(%rbp)
	jl	.LBB17_28
# %bb.27:                               #   in Loop: Header=BB17_23 Depth=2
	movq	-16(%rbp), %rax
	jmp	.LBB17_29
.LBB17_28:                              #   in Loop: Header=BB17_23 Depth=2
	xorl	%eax, %eax
	subq	-16(%rbp), %rax
.LBB17_29:                              #   in Loop: Header=BB17_23 Depth=2
	movq	basket_size, %rcx
	movq	perm(,%rcx,8), %rcx
	movq	%rax, 16(%rcx)
.LBB17_30:                              #   in Loop: Header=BB17_23 Depth=2
	jmp	.LBB17_31
.LBB17_31:                              #   in Loop: Header=BB17_23 Depth=2
	jmp	.LBB17_32
.LBB17_32:                              #   in Loop: Header=BB17_23 Depth=2
	movq	nr_group, %rax
	shlq	$6, %rax
	addq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_23
.LBB17_33:                              #   in Loop: Header=BB17_22 Depth=1
	movq	group_pos, %rax
	addq	$1, %rax
	movq	%rax, group_pos
	cmpq	nr_group, %rax
	jne	.LBB17_35
# %bb.34:                               #   in Loop: Header=BB17_22 Depth=1
	movq	$0, group_pos
.LBB17_35:                              #   in Loop: Header=BB17_22 Depth=1
	cmpq	$50, basket_size
	jge	.LBB17_38
# %bb.36:                               #   in Loop: Header=BB17_22 Depth=1
	movq	group_pos, %rax
	cmpq	-56(%rbp), %rax
	je	.LBB17_38
# %bb.37:                               #   in Loop: Header=BB17_22 Depth=1
	jmp	.LBB17_22
.LBB17_38:
	cmpq	$0, basket_size
	jne	.LBB17_40
# %bb.39:
	movq	$1, initialize
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, -48(%rbp)
	jmp	.LBB17_41
.LBB17_40:
	movq	basket_size, %rsi
	movl	$1, %edi
	callq	sort_basket
	movq	perm+8, %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	perm+8, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB17_41:
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -32(%rbp)
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB18_24
# %bb.2:                                #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	88(%rcx), %rax
	jge	.LBB18_13
# %bb.3:                                #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB18_7
# %bb.4:                                #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jle	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB18_6:                               #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_12
.LBB18_7:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB18_11
# %bb.8:                                #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	subq	80(%rdx), %rax
	cmpq	%rax, %rcx
	jle	.LBB18_10
# %bb.9:                                #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	subq	80(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB18_10:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_12
.LBB18_12:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_23
.LBB18_13:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB18_17
# %bb.14:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jl	.LBB18_16
# %bb.15:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
.LBB18_16:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_22
.LBB18_17:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB18_21
# %bb.18:                               #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	80(%rdx), %rax
	cmpq	%rax, %rcx
	jl	.LBB18_20
# %bb.19:                               #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	subq	80(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$1, (%rax)
.LBB18_20:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_21
.LBB18_21:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_22
.LBB18_22:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB18_23:                              #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_1
.LBB18_24:
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB19_7
# %bb.2:                                #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB19_4
# %bb.3:                                #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.LBB19_5
.LBB19_4:                               #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$1, 80(%rax)
.LBB19_5:                               #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_6
.LBB19_6:                               #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB19_1
.LBB19_7:
	jmp	.LBB19_8
.LBB19_8:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB19_14
# %bb.9:                                #   in Loop: Header=BB19_8 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB19_11
# %bb.10:                               #   in Loop: Header=BB19_8 Depth=1
	movq	-8(%rbp), %rax
	movq	$1, 80(%rax)
	jmp	.LBB19_12
.LBB19_11:                              #   in Loop: Header=BB19_8 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
.LBB19_12:                              #   in Loop: Header=BB19_8 Depth=1
	jmp	.LBB19_13
.LBB19_13:                              #   in Loop: Header=BB19_8 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_8
.LBB19_14:
	popq	%rbp
	retq
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
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	$0, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-32(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	addq	$600, %rax              # imm = 0x258
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	addq	$608, %rax              # imm = 0x260
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	addq	$616, %rax              # imm = 0x268
	movq	%rax, -96(%rbp)
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB20_2
	jmp	.LBB20_30
.LBB20_2:                               #   in Loop: Header=BB20_1 Depth=1
	leaq	-80(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-176(%rbp), %rdx
	callq	primal_bea_mpp
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB20_28
# %bb.3:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	cmpq	$0, -80(%rbp)
	jle	.LBB20_5
# %bb.4:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB20_6
.LBB20_5:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %r8
	movq	$1, -72(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	primal_iminus
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_13
# %bb.7:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$2, 24(%rax)
	jne	.LBB20_9
# %bb.8:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.LBB20_10
.LBB20_9:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movl	$2, 24(%rax)
.LBB20_10:                              #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB20_12
# %bb.11:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	primal_update_flow
.LBB20_12:                              #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_27
.LBB20_13:                              #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB20_15
# %bb.14:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB20_15:                              #   in Loop: Header=BB20_1 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movslq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	je	.LBB20_17
# %bb.16:                               #   in Loop: Header=BB20_1 Depth=1
	movq	$1, -112(%rbp)
	jmp	.LBB20_18
.LBB20_17:                              #   in Loop: Header=BB20_1 Depth=1
	movq	$2, -112(%rbp)
.LBB20_18:                              #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -80(%rbp)
	jle	.LBB20_20
# %bb.19:                               #   in Loop: Header=BB20_1 Depth=1
	movl	$1, %eax
	subq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB20_21
.LBB20_20:                              #   in Loop: Header=BB20_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB20_21:                              #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_23
# %bb.22:                               #   in Loop: Header=BB20_1 Depth=1
	movq	$1, -128(%rbp)
	jmp	.LBB20_24
.LBB20_23:                              #   in Loop: Header=BB20_1 Depth=1
	movq	$0, -128(%rbp)
.LBB20_24:                              #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -88(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movslq	%eax, %rdi
	movq	-128(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %r15
	movq	-200(%rbp), %r10
	movq	-120(%rbp), %r11
	movq	-40(%rbp), %rbx
	movq	-80(%rbp), %r14
	movq	-32(%rbp), %rax
	movq	512(%rax), %rax
	movq	%r15, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%rax, 40(%rsp)
	callq	update_tree
	movl	$200, %ecx
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-112(%rbp), %rax
	movq	-192(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	jne	.LBB20_26
# %bb.25:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	refresh_potential
	movq	-96(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
.LBB20_26:                              #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_27
.LBB20_27:                              #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_29
.LBB20_28:                              #   in Loop: Header=BB20_1 Depth=1
	movq	$1, -136(%rbp)
.LBB20_29:                              #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_1
.LBB20_30:
	movq	-32(%rbp), %rdi
	callq	refresh_potential
	movq	-96(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rdi
	callq	primal_feasible
	movq	-32(%rbp), %rdi
	callq	dual_feasible
	xorl	%eax, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	400(%rax), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$-100000000, (%rax)     # imm = 0xFA0A1F00
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-32(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_6
# %bb.2:                                #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$-1, 24(%rax)
	je	.LBB21_4
# %bb.3:                                #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
.LBB21_4:                               #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_5
.LBB21_5:                               #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_1
.LBB21_6:
	movq	-32(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_10
# %bb.8:                                #   in Loop: Header=BB21_7 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	addq	$-104, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movq	$100000000, (%rax)      # imm = 0x5F5E100
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
# %bb.9:                                #   in Loop: Header=BB21_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_7
.LBB21_10:
	movq	-8(%rbp), %rax
	addq	$-104, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
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
	subq	$288, %rsp              # imm = 0x120
	movabsq	$.L.str.35, %rsi
	movq	%rdi, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB22_2
# %bb.1:
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_2:
	leaq	-288(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.1.36, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-288(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	je	.LBB22_4
# %bb.3:
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_4:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 408(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 432(%rcx)
	movq	-40(%rbp), %rax
	addq	-40(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 400(%rcx)
	movq	-40(%rbp), %rax
	addq	-40(%rbp), %rax
	addq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 424(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$15000, 408(%rax)       # imm = 0x3A98
	jg	.LBB22_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 416(%rcx)
	movq	-8(%rbp), %rax
	movq	$3000000, 456(%rax)     # imm = 0x2DC6C0
	jmp	.LBB22_7
.LBB22_6:
	movq	-8(%rbp), %rax
	movq	$27328512, 416(%rax)    # imm = 0x1A10000
	movq	-8(%rbp), %rax
	movq	$28900000, 456(%rax)    # imm = 0x1B8FAA0
.LBB22_7:
	movq	-8(%rbp), %rax
	movq	416(%rax), %rax
	movq	-8(%rbp), %rcx
	subq	424(%rcx), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 448(%rcx)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	addq	$1, %rdi
	movl	$104, %esi
	callq	calloc
	movq	-8(%rbp), %rcx
	movq	%rax, 552(%rcx)
	movq	-8(%rbp), %rax
	movq	400(%rax), %rdi
	movl	$64, %esi
	callq	calloc
	movq	-8(%rbp), %rcx
	movq	%rax, 584(%rcx)
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdi
	movl	$64, %esi
	callq	calloc
	movq	-8(%rbp), %rcx
	movq	%rax, 568(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 552(%rax)
	je	.LBB22_10
# %bb.8:
	movq	-8(%rbp), %rax
	cmpq	$0, 568(%rax)
	je	.LBB22_10
# %bb.9:
	movq	-8(%rbp), %rax
	cmpq	$0, 584(%rax)
	jne	.LBB22_11
.LBB22_10:
	movabsq	$.L.str.2.37, %rdi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	getfree
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_11:
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	-8(%rbp), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	addq	$104, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 560(%rcx)
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	424(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 576(%rcx)
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	400(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 592(%rcx)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$1, -24(%rbp)
.LBB22_12:                              # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	408(%rcx), %rax
	jg	.LBB22_21
# %bb.13:                               #   in Loop: Header=BB22_12 Depth=1
	leaq	-288(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.1.36, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-288(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB22_15
# %bb.14:                               #   in Loop: Header=BB22_12 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB22_16
.LBB22_15:
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_16:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	subq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$104, -24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, 96(%rcx)
	movq	-32(%rbp), %rax
	imulq	$104, -24(%rbp), %rcx
	addq	%rcx, %rax
	movq	$-1, 80(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	408(%rsi), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 96(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	$1, 80(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$104, -24(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%eax, 100(%rcx)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	408(%rsi), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rcx
	movl	%eax, 100(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	imulq	$104, -24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	addq	$15, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$104, 400(%rcx), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	$15, (%rax)
	movq	-16(%rbp), %rax
	movq	$15, 56(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	imulq	$104, -24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$10000000, 528(%rax)    # imm = 0x989680
	jle	.LBB22_18
# %bb.17:                               #   in Loop: Header=BB22_12 Depth=1
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	jmp	.LBB22_19
.LBB22_18:                              #   in Loop: Header=BB22_12 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	jmp	.LBB22_19
.LBB22_19:                              #   in Loop: Header=BB22_12 Depth=1
	shlq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
# %bb.20:                               #   in Loop: Header=BB22_12 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB22_12
.LBB22_21:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	408(%rcx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.LBB22_23
# %bb.22:
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_23:
	movq	$0, -24(%rbp)
.LBB22_24:                              # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	432(%rcx), %rax
	jge	.LBB22_29
# %bb.25:                               #   in Loop: Header=BB22_24 Depth=1
	leaq	-288(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movl	$200, %esi
	callq	fgets
	movabsq	$.L.str.3.38, %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-288(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB22_27
# %bb.26:
	movq	$-1, -56(%rbp)
	jmp	.LBB22_46
.LBB22_27:                              #   in Loop: Header=BB22_24 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	408(%rdx), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	imulq	$104, -48(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 64(%rcx)
# %bb.28:                               #   in Loop: Header=BB22_24 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_24
.LBB22_29:
	movq	-8(%rbp), %rax
	movq	576(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB22_35
# %bb.30:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 576(%rcx)
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 424(%rax)
.LBB22_31:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	576(%rcx), %rax
	jae	.LBB22_34
# %bb.32:                               #   in Loop: Header=BB22_31 Depth=1
	movq	-8(%rbp), %rax
	movq	424(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 424(%rax)
# %bb.33:                               #   in Loop: Header=BB22_31 Depth=1
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB22_31
.LBB22_34:
	movq	-8(%rbp), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 432(%rcx)
.LBB22_35:
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-8(%rbp), %rax
	movb	$0, 200(%rax)
	movq	$1, -24(%rbp)
.LBB22_36:                              # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	408(%rcx), %rax
	jg	.LBB22_45
# %bb.37:                               #   in Loop: Header=BB22_36 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$10000000, 528(%rax)    # imm = 0x989680
	jle	.LBB22_39
# %bb.38:                               #   in Loop: Header=BB22_36 Depth=1
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	jmp	.LBB22_40
.LBB22_39:                              #   in Loop: Header=BB22_36 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	jmp	.LBB22_40
.LBB22_40:                              #   in Loop: Header=BB22_36 Depth=1
	imulq	$-2, %rax, %rax
	movq	-8(%rbp), %rcx
	movq	568(%rcx), %rcx
	imulq	$3, -24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	$10000000, 528(%rax)    # imm = 0x989680
	jle	.LBB22_42
# %bb.41:                               #   in Loop: Header=BB22_36 Depth=1
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	jmp	.LBB22_43
.LBB22_42:                              #   in Loop: Header=BB22_36 Depth=1
	movl	$10000000, %eax         # imm = 0x989680
	jmp	.LBB22_43
.LBB22_43:                              #   in Loop: Header=BB22_36 Depth=1
	imulq	$-2, %rax, %rax
	movq	-8(%rbp), %rcx
	movq	568(%rcx), %rcx
	imulq	$3, -24(%rbp), %rdx
	subq	$1, %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movq	%rax, 56(%rcx)
# %bb.44:                               #   in Loop: Header=BB22_36 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB22_36
.LBB22_45:
	movq	$0, -56(%rbp)
.LBB22_46:
	movq	-56(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
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
	movq	56(%rbp), %rax
	movq	48(%rbp), %rax
	movq	40(%rbp), %rax
	movq	32(%rbp), %rax
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -48(%rbp)
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_2
# %bb.1:
	cmpq	$0, 48(%rbp)
	jl	.LBB23_4
.LBB23_2:
	movq	40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB23_8
# %bb.3:
	cmpq	$0, 48(%rbp)
	jle	.LBB23_8
.LBB23_4:
	cmpq	$0, 48(%rbp)
	jl	.LBB23_6
# %bb.5:
	movq	48(%rbp), %rax
	jmp	.LBB23_7
.LBB23_6:
	xorl	%eax, %eax
	subq	48(%rbp), %rax
.LBB23_7:
	movq	%rax, 48(%rbp)
	jmp	.LBB23_12
.LBB23_8:
	cmpq	$0, 48(%rbp)
	jl	.LBB23_10
# %bb.9:
	movq	48(%rbp), %rax
	jmp	.LBB23_11
.LBB23_10:
	xorl	%eax, %eax
	subq	48(%rbp), %rax
.LBB23_11:
	xorl	%ecx, %ecx
	subq	%rax, %rcx
	movq	%rcx, 48(%rbp)
.LBB23_12:
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
.LBB23_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_17 Depth 2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB23_16
# %bb.14:                               #   in Loop: Header=BB23_13 Depth=1
	jmp	.LBB23_15
.LBB23_15:                              #   in Loop: Header=BB23_13 Depth=1
	movq	48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_13
.LBB23_16:                              #   in Loop: Header=BB23_13 Depth=1
	jmp	.LBB23_17
.LBB23_17:                              #   Parent Loop BB23_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpq	16(%rbp), %rax
	jne	.LBB23_19
# %bb.18:
	jmp	.LBB23_22
.LBB23_19:                              #   in Loop: Header=BB23_17 Depth=2
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB23_21
# %bb.20:                               #   in Loop: Header=BB23_13 Depth=1
	jmp	.LBB23_15
.LBB23_21:                              #   in Loop: Header=BB23_17 Depth=2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_17
.LBB23_22:
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB23_23:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.LBB23_35
# %bb.24:                               #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB23_26
# %bb.25:                               #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 40(%rcx)
.LBB23_26:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB23_28
# %bb.27:                               #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB23_29
.LBB23_28:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB23_29:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB23_31
# %bb.30:                               #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 40(%rcx)
.LBB23_31:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_33
# %bb.32:                               #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB23_34
.LBB23_33:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB23_34:                              #   in Loop: Header=BB23_23 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	subq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_23
.LBB23_35:
	movq	-24(%rbp), %rax
	cmpq	56(%rbp), %rax
	jle	.LBB23_51
# %bb.36:
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_37:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	je	.LBB23_43
# %bb.38:                               #   in Loop: Header=BB23_37 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 88(%rcx)
	movq	-8(%rbp), %rax
	movslq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB23_40
# %bb.39:                               #   in Loop: Header=BB23_37 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	jmp	.LBB23_41
.LBB23_40:                              #   in Loop: Header=BB23_37 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 80(%rcx)
.LBB23_41:                              #   in Loop: Header=BB23_37 Depth=1
	jmp	.LBB23_42
.LBB23_42:                              #   in Loop: Header=BB23_37 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_37
.LBB23_43:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_44:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	je	.LBB23_50
# %bb.45:                               #   in Loop: Header=BB23_44 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	movq	-8(%rbp), %rax
	movslq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_47
# %bb.46:                               #   in Loop: Header=BB23_44 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	jmp	.LBB23_48
.LBB23_47:                              #   in Loop: Header=BB23_44 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 80(%rcx)
.LBB23_48:                              #   in Loop: Header=BB23_44 Depth=1
	jmp	.LBB23_49
.LBB23_49:                              #   in Loop: Header=BB23_44 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_44
.LBB23_50:
	jmp	.LBB23_60
.LBB23_51:
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_52:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	je	.LBB23_55
# %bb.53:                               #   in Loop: Header=BB23_52 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 88(%rcx)
# %bb.54:                               #   in Loop: Header=BB23_52 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_52
.LBB23_55:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_56:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	32(%rbp), %rax
	je	.LBB23_59
# %bb.57:                               #   in Loop: Header=BB23_56 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
# %bb.58:                               #   in Loop: Header=BB23_56 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_56
.LBB23_59:
	jmp	.LBB23_60
.LBB23_60:
	popq	%rbp
	retq
.Lfunc_end23:
	.size	update_tree, .Lfunc_end23-update_tree
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
