	.text
	.file	"llvm-link"
	.globl	BZ2_blockSort           # -- Begin function BZ2_blockSort
	.p2align	4, 0x90
	.type	BZ2_blockSort,@function
BZ2_blockSort:                          # @BZ2_blockSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	108(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	656(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$10000, -8(%rbp)        # imm = 0x2710
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	fallbackSort
	jmp	.LBB0_18
.LBB0_2:
	movl	-8(%rbp), %eax
	addl	$34, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB0_4:
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB0_6
# %bb.5:
	movl	$1, -20(%rbp)
.LBB0_6:
	cmpl	$100, -20(%rbp)
	jle	.LBB0_8
# %bb.7:
	movl	$100, -20(%rbp)
.LBB0_8:
	leaq	-28(%rbp), %r10
	movl	$3, %ecx
	movl	-8(%rbp), %esi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	%ecx
	imull	%eax, %esi
	movl	%esi, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	%r10, (%rsp)
	callq	mainSort
	cmpl	$3, -24(%rbp)
	jl	.LBB0_13
# %bb.9:
	movq	stderr, %rdi
	movl	-32(%rbp), %edx
	subl	-28(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	cmpl	$0, -8(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	$1, %eax
	jmp	.LBB0_12
.LBB0_11:
	movl	-8(%rbp), %eax
.LBB0_12:
	movabsq	$.L.str, %rsi
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	fprintf
.LBB0_13:
	cmpl	$0, -28(%rbp)
	jge	.LBB0_17
# %bb.14:
	cmpl	$2, -24(%rbp)
	jl	.LBB0_16
# %bb.15:
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	fallbackSort
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movq	-16(%rbp), %rax
	movl	$-1, 48(%rax)
	movl	$0, -4(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jge	.LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_22
# %bb.21:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	jmp	.LBB0_25
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_19
.LBB0_24:                               # %.loopexit
	jmp	.LBB0_25
.LBB0_25:
	movq	-16(%rbp), %rax
	cmpl	$-1, 48(%rax)
	jne	.LBB0_27
# %bb.26:
	movl	$1003, %edi             # imm = 0x3EB
	callq	BZ2_bz__AssertH__fail
.LBB0_27:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	BZ2_blockSort, .Lfunc_end0-BZ2_blockSort
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fallbackSort
	.type	fallbackSort,@function
fallbackSort:                           # @fallbackSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2144, %rsp             # imm = 0x860
	movq	%rdi, -56(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$4, -48(%rbp)
	jl	.LBB1_2
# %bb.1:
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB1_2:
	movl	$0, -4(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$257, -4(%rbp)          # imm = 0x101
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movslq	-4(%rbp), %rax
	movl	$0, -1120(%rbp,%rax,4)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_3
.LBB1_6:
	movl	$0, -4(%rbp)
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	-1120(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -1120(%rbp,%rax,4)
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_7
.LBB1_10:
	movl	$0, -4(%rbp)
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	movslq	-4(%rbp), %rax
	movl	-1120(%rbp,%rax,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -2144(%rbp,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_11
.LBB1_14:
	movl	$1, -4(%rbp)
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	cmpl	$257, -4(%rbp)          # imm = 0x101
	jge	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-1120(%rbp,%rax,4), %eax
	movslq	-4(%rbp), %rcx
	addl	-1120(%rbp,%rcx,4), %eax
	movl	%eax, -1120(%rbp,%rcx,4)
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_15
.LBB1_18:
	movl	$0, -4(%rbp)
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	movq	-80(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rax
	movl	-1120(%rbp,%rax,4), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movl	%eax, -1120(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_19
.LBB1_22:
	movl	$32, %ecx
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -4(%rbp)
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_23
.LBB1_26:
	movl	$0, -4(%rbp)
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$1, %eax
	movslq	-4(%rbp), %rcx
	movl	-1120(%rbp,%rcx,4), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	-1120(%rbp,%rdx,4), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	orl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
# %bb.29:                               #   in Loop: Header=BB1_27 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_27
.LBB1_30:
	movl	$0, -4(%rbp)
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	cmpl	$32, -4(%rbp)
	jge	.LBB1_34
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	movl	$1, %eax
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	movl	$1, %edx
	shll	%cl, %edx
	movq	-32(%rbp), %rcx
	movl	-12(%rbp), %esi
	movl	-4(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	sarl	$5, %esi
	movslq	%esi, %rsi
	orl	(%rcx,%rsi,4), %edx
	movl	%edx, (%rcx,%rsi,4)
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	xorl	$-1, %eax
	movq	-32(%rbp), %rcx
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	addl	$1, %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	andl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
# %bb.33:                               #   in Loop: Header=BB1_31 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_31
.LBB1_34:
	movl	$1, -40(%rbp)
.LBB1_35:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #       Child Loop BB1_47 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_56 Depth 3
                                        #       Child Loop BB1_62 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_71 Depth 3
                                        #       Child Loop BB1_78 Depth 3
	cmpl	$4, -48(%rbp)
	jl	.LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movl	-40(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB1_37:                               #   in Loop: Header=BB1_35 Depth=1
	movl	$0, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB1_38:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_45
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=2
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-4(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_38 Depth=2
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB1_41:                               #   in Loop: Header=BB1_38 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_38 Depth=2
	movl	-12(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB1_43:                               #   in Loop: Header=BB1_38 Depth=2
	movl	-16(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.44:                               #   in Loop: Header=BB1_38 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_38
.LBB1_45:                               #   in Loop: Header=BB1_35 Depth=1
	movl	$0, -44(%rbp)
	movl	$-1, -20(%rbp)
.LBB1_46:                               #   Parent Loop BB1_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_47 Depth 3
                                        #       Child Loop BB1_53 Depth 3
                                        #       Child Loop BB1_56 Depth 3
                                        #       Child Loop BB1_62 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_71 Depth 3
                                        #       Child Loop BB1_78 Depth 3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB1_47:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %esi
	sarl	$5, %esi
	movslq	%esi, %rsi
	movl	(%rcx,%rsi,4), %esi
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %edx
	andl	%edx, %esi
	cmpl	$0, %esi
	je	.LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=3
	movl	-8(%rbp), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	setne	%al
.LBB1_49:                               #   in Loop: Header=BB1_47 Depth=3
	testb	$1, %al
	jne	.LBB1_50
	jmp	.LBB1_51
.LBB1_50:                               #   in Loop: Header=BB1_47 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_47
.LBB1_51:                               #   in Loop: Header=BB1_46 Depth=2
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB1_59
# %bb.52:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_53
.LBB1_53:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	$-1, (%rax,%rcx,4)
	jne	.LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=3
	movl	-8(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_53
.LBB1_55:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_56
.LBB1_56:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_56 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_56
.LBB1_58:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_59
.LBB1_59:                               #   in Loop: Header=BB1_46 Depth=2
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB1_61
# %bb.60:                               #   in Loop: Header=BB1_35 Depth=1
	jmp	.LBB1_85
.LBB1_61:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_62
.LBB1_62:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %esi
	sarl	$5, %esi
	movslq	%esi, %rsi
	movl	(%rcx,%rsi,4), %esi
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %edx
	andl	%edx, %esi
	cmpl	$0, %esi
	jne	.LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_62 Depth=3
	movl	-8(%rbp), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	setne	%al
.LBB1_64:                               #   in Loop: Header=BB1_62 Depth=3
	testb	$1, %al
	jne	.LBB1_65
	jmp	.LBB1_66
.LBB1_65:                               #   in Loop: Header=BB1_62 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_62
.LBB1_66:                               #   in Loop: Header=BB1_46 Depth=2
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB1_74
# %bb.67:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_68
.LBB1_68:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_68 Depth=3
	movl	-8(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_68
.LBB1_70:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_71
.LBB1_71:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	-8(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-8(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB1_72
	jmp	.LBB1_73
.LBB1_72:                               #   in Loop: Header=BB1_71 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_71
.LBB1_73:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_74
.LBB1_74:                               #   in Loop: Header=BB1_46 Depth=2
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB1_76
# %bb.75:                               #   in Loop: Header=BB1_35 Depth=1
	jmp	.LBB1_85
.LBB1_76:                               #   in Loop: Header=BB1_46 Depth=2
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB1_84
# %bb.77:                               #   in Loop: Header=BB1_46 Depth=2
	movl	-20(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	fallbackQSort3
	movl	$-1, -64(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_78:                               #   Parent Loop BB1_35 Depth=1
                                        #     Parent Loop BB1_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB1_83
# %bb.79:                               #   in Loop: Header=BB1_78 Depth=3
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_78 Depth=3
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	andl	$31, %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	orl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB1_81:                               #   in Loop: Header=BB1_78 Depth=3
	jmp	.LBB1_82
.LBB1_82:                               #   in Loop: Header=BB1_78 Depth=3
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_78
.LBB1_83:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_84
.LBB1_84:                               #   in Loop: Header=BB1_46 Depth=2
	jmp	.LBB1_46
.LBB1_85:                               #   in Loop: Header=BB1_35 Depth=1
	cmpl	$4, -48(%rbp)
	jl	.LBB1_87
# %bb.86:                               #   in Loop: Header=BB1_35 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movl	-44(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB1_87:                               #   in Loop: Header=BB1_35 Depth=1
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB1_89
# %bb.88:                               #   in Loop: Header=BB1_35 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB1_90
.LBB1_89:
	jmp	.LBB1_91
.LBB1_90:                               #   in Loop: Header=BB1_35 Depth=1
	jmp	.LBB1_35
.LBB1_91:
	cmpl	$4, -48(%rbp)
	jl	.LBB1_93
# %bb.92:
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB1_93:
	movl	$0, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB1_94:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_96 Depth 2
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_100
# %bb.95:                               #   in Loop: Header=BB1_94 Depth=1
	jmp	.LBB1_96
.LBB1_96:                               #   Parent Loop BB1_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-16(%rbp), %rax
	cmpl	$0, -2144(%rbp,%rax,4)
	jne	.LBB1_98
# %bb.97:                               #   in Loop: Header=BB1_96 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB1_96
.LBB1_98:                               #   in Loop: Header=BB1_94 Depth=1
	movslq	-16(%rbp), %rax
	movl	-2144(%rbp,%rax,4), %ecx
	addl	$-1, %ecx
	movl	%ecx, -2144(%rbp,%rax,4)
	movl	-16(%rbp), %eax
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movl	(%rdx,%rsi,4), %edx
	movb	%al, (%rcx,%rdx)
# %bb.99:                               #   in Loop: Header=BB1_94 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_94
.LBB1_100:
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jl	.LBB1_102
# %bb.101:
	movl	$1005, %edi             # imm = 0x3ED
	callq	BZ2_bz__AssertH__fail
.LBB1_102:
	addq	$2144, %rsp             # imm = 0x860
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fallbackSort, .Lfunc_end1-fallbackSort
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mainSort
	.type	mainSort,@function
mainSort:                               # @mainSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3456, %rsp             # imm = 0xD80
	movq	16(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -96(%rbp)
	cmpl	$4, -96(%rbp)
	jl	.LBB2_2
# %bb.1:
	movabsq	$.L.str.6, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB2_2:
	movl	$65536, -8(%rbp)        # imm = 0x10000
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_6:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shll	$8, %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, -8(%rbp)
	jl	.LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	movq	-80(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movzwl	%cx, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movzwl	%cx, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movzwl	%cx, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movzwl	%cx, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	movl	-8(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_7
.LBB2_10:
	jmp	.LBB2_11
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	.LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	movq	-80(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movzwl	%cx, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB2_11 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_11
.LBB2_14:
	movl	$0, -8(%rbp)
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	cmpl	$34, -8(%rbp)
	jge	.LBB2_18
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	addl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
	movq	-80(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	$0, (%rax,%rcx,2)
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_18:
	cmpl	$4, -96(%rbp)
	jl	.LBB2_20
# %bb.19:
	movabsq	$.L.str.2, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB2_20:
	movl	$1, -8(%rbp)
.LBB2_21:                               # =>This Inner Loop Header: Depth=1
	cmpl	$65536, -8(%rbp)        # imm = 0x10000
	jg	.LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=1
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
# %bb.23:                               #   in Loop: Header=BB2_21 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_21
.LBB2_24:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	shll	$8, %eax
	movw	%ax, -10(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB2_25:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, -8(%rbp)
	jl	.LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=1
	movzwl	-10(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movzwl	-10(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	-10(%rbp), %edx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movzwl	-10(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movzwl	-10(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	-10(%rbp), %edx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movzwl	-10(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movzwl	-10(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	-10(%rbp), %edx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	subl	$2, %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movzwl	-10(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movzwl	-10(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	-10(%rbp), %edx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	subl	$3, %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.27:                               #   in Loop: Header=BB2_25 Depth=1
	movl	-8(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_25
.LBB2_28:
	jmp	.LBB2_29
.LBB2_29:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	.LBB2_32
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	movzwl	-10(%rbp), %eax
	sarl	$8, %eax
	movq	-48(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, -10(%rbp)
	movq	-24(%rbp), %rax
	movzwl	-10(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	-10(%rbp), %edx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_29
.LBB2_32:
	movl	$0, -8(%rbp)
.LBB2_33:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -8(%rbp)
	jg	.LBB2_36
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=1
	movslq	-8(%rbp), %rax
	movb	$0, -368(%rbp,%rax)
	movl	-8(%rbp), %eax
	movslq	-8(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
# %bb.35:                               #   in Loop: Header=BB2_33 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_33
.LBB2_36:
	movl	$1, -28(%rbp)
.LBB2_37:                               # =>This Inner Loop Header: Depth=1
	imull	$3, -28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# %bb.38:                               #   in Loop: Header=BB2_37 Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jle	.LBB2_37
# %bb.39:
	jmp	.LBB2_40
.LBB2_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
                                        #       Child Loop BB2_43 Depth 3
	movl	$3, %ecx
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB2_41:                               #   Parent Loop BB2_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_43 Depth 3
	cmpl	$255, -8(%rbp)
	jg	.LBB2_50
# %bb.42:                               #   in Loop: Header=BB2_41 Depth=2
	movslq	-8(%rbp), %rax
	movl	-1392(%rbp,%rax,4), %eax
	movl	%eax, -108(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_43:                               #   Parent Loop BB2_40 Depth=1
                                        #     Parent Loop BB2_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	-1392(%rbp,%rcx,4), %ecx
	addl	$1, %ecx
	shll	$8, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movl	-1392(%rbp,%rdx,4), %edx
	shll	$8, %edx
	movslq	%edx, %rdx
	subl	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-108(%rbp), %edx
	addl	$1, %edx
	shll	$8, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	movq	-24(%rbp), %rdx
	movl	-108(%rbp), %esi
	shll	$8, %esi
	movslq	%esi, %rsi
	subl	(%rdx,%rsi,4), %ecx
	cmpl	%ecx, %eax
	jbe	.LBB2_47
# %bb.44:                               #   in Loop: Header=BB2_43 Depth=3
	movl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	cltq
	movl	-1392(%rbp,%rax,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_46
# %bb.45:                               #   in Loop: Header=BB2_41 Depth=2
	jmp	.LBB2_48
.LBB2_46:                               #   in Loop: Header=BB2_43 Depth=3
	jmp	.LBB2_43
.LBB2_47:                               #   in Loop: Header=BB2_41 Depth=2
	jmp	.LBB2_48
.LBB2_48:                               #   in Loop: Header=BB2_41 Depth=2
	movl	-108(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
# %bb.49:                               #   in Loop: Header=BB2_41 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_41
.LBB2_50:                               #   in Loop: Header=BB2_40 Depth=1
	jmp	.LBB2_51
.LBB2_51:                               #   in Loop: Header=BB2_40 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB2_40
# %bb.52:
	movl	$0, -64(%rbp)
	movl	$0, -8(%rbp)
.LBB2_53:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_55 Depth 2
                                        #     Child Loop BB2_71 Depth 2
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_83 Depth 2
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_100 Depth 2
                                        #     Child Loop BB2_103 Depth 2
	cmpl	$255, -8(%rbp)
	jg	.LBB2_113
# %bb.54:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-8(%rbp), %rax
	movl	-1392(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB2_55:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$255, -4(%rbp)
	jg	.LBB2_68
# %bb.56:                               #   in Loop: Header=BB2_55 Depth=2
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB2_66
# %bb.57:                               #   in Loop: Header=BB2_55 Depth=2
	movl	-16(%rbp), %eax
	shll	$8, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$2097152, %eax          # imm = 0x200000
	cmpl	$0, %eax
	jne	.LBB2_65
# %bb.58:                               #   in Loop: Header=BB2_55 Depth=2
	movq	-24(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB2_64
# %bb.59:                               #   in Loop: Header=BB2_55 Depth=2
	cmpl	$4, -96(%rbp)
	jl	.LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_55 Depth=2
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movl	-16(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-84(%rbp), %r9d
	subl	-88(%rbp), %r9d
	addl	$1, %r9d
	movb	$0, %al
	callq	fprintf
.LBB2_61:                               #   in Loop: Header=BB2_55 Depth=2
	movl	$2, %eax
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movq	16(%rbp), %rax
	movl	$2, (%rsp)
	movq	%rax, 8(%rsp)
	callq	mainQSort3
	movl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
	addl	$1, %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	16(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB2_63
# %bb.62:
	jmp	.LBB2_115
.LBB2_63:                               #   in Loop: Header=BB2_55 Depth=2
	jmp	.LBB2_64
.LBB2_64:                               #   in Loop: Header=BB2_55 Depth=2
	jmp	.LBB2_65
.LBB2_65:                               #   in Loop: Header=BB2_55 Depth=2
	movq	-24(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	orl	$2097152, %edx          # imm = 0x200000
	movl	%edx, (%rax,%rcx,4)
.LBB2_66:                               #   in Loop: Header=BB2_55 Depth=2
	jmp	.LBB2_67
.LBB2_67:                               #   in Loop: Header=BB2_55 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_55
.LBB2_68:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-16(%rbp), %rax
	cmpb	$0, -368(%rbp,%rax)
	je	.LBB2_70
# %bb.69:                               #   in Loop: Header=BB2_53 Depth=1
	movl	$1006, %edi             # imm = 0x3EE
	callq	BZ2_bz__AssertH__fail
.LBB2_70:                               #   in Loop: Header=BB2_53 Depth=1
	movl	$0, -4(%rbp)
.LBB2_71:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$255, -4(%rbp)
	jg	.LBB2_74
# %bb.72:                               #   in Loop: Header=BB2_71 Depth=2
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$8, %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	movslq	-4(%rbp), %rcx
	movl	%eax, -3440(%rbp,%rcx,4)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$8, %ecx
	addl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	subl	$1, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -2416(%rbp,%rcx,4)
# %bb.73:                               #   in Loop: Header=BB2_71 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_71
.LBB2_74:                               #   in Loop: Header=BB2_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	movl	%eax, -4(%rbp)
.LBB2_75:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	movslq	-16(%rbp), %rcx
	cmpl	-3440(%rbp,%rcx,4), %eax
	jge	.LBB2_82
# %bb.76:                               #   in Loop: Header=BB2_75 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB2_78
# %bb.77:                               #   in Loop: Header=BB2_75 Depth=2
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_78:                               #   in Loop: Header=BB2_75 Depth=2
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -11(%rbp)
	movzbl	-11(%rbp), %eax
	cmpb	$0, -368(%rbp,%rax)
	jne	.LBB2_80
# %bb.79:                               #   in Loop: Header=BB2_75 Depth=2
	movl	-32(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	-11(%rbp), %edx
	movl	-3440(%rbp,%rdx,4), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -3440(%rbp,%rdx,4)
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB2_80:                               #   in Loop: Header=BB2_75 Depth=2
	jmp	.LBB2_81
.LBB2_81:                               #   in Loop: Header=BB2_75 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_75
.LBB2_82:                               #   in Loop: Header=BB2_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	shll	$8, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB2_83:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	movslq	-16(%rbp), %rcx
	cmpl	-2416(%rbp,%rcx,4), %eax
	jle	.LBB2_90
# %bb.84:                               #   in Loop: Header=BB2_83 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB2_86
# %bb.85:                               #   in Loop: Header=BB2_83 Depth=2
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_86:                               #   in Loop: Header=BB2_83 Depth=2
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -11(%rbp)
	movzbl	-11(%rbp), %eax
	cmpb	$0, -368(%rbp,%rax)
	jne	.LBB2_88
# %bb.87:                               #   in Loop: Header=BB2_83 Depth=2
	movl	-32(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	-11(%rbp), %edx
	movl	-2416(%rbp,%rdx,4), %esi
	movl	%esi, %edi
	addl	$-1, %edi
	movl	%edi, -2416(%rbp,%rdx,4)
	movslq	%esi, %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB2_88:                               #   in Loop: Header=BB2_83 Depth=2
	jmp	.LBB2_89
.LBB2_89:                               #   in Loop: Header=BB2_83 Depth=2
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_83
.LBB2_90:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-16(%rbp), %rax
	movl	-3440(%rbp,%rax,4), %eax
	subl	$1, %eax
	movslq	-16(%rbp), %rcx
	cmpl	-2416(%rbp,%rcx,4), %eax
	je	.LBB2_94
# %bb.91:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-16(%rbp), %rax
	cmpl	$0, -3440(%rbp,%rax,4)
	jne	.LBB2_93
# %bb.92:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-16(%rbp), %rax
	movl	-2416(%rbp,%rax,4), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB2_94
.LBB2_93:                               #   in Loop: Header=BB2_53 Depth=1
	movl	$1007, %edi             # imm = 0x3EF
	callq	BZ2_bz__AssertH__fail
.LBB2_94:                               #   in Loop: Header=BB2_53 Depth=1
	movl	$0, -4(%rbp)
.LBB2_95:                               #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$255, -4(%rbp)
	jg	.LBB2_98
# %bb.96:                               #   in Loop: Header=BB2_95 Depth=2
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	shll	$8, %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	orl	$2097152, %edx          # imm = 0x200000
	movl	%edx, (%rax,%rcx,4)
# %bb.97:                               #   in Loop: Header=BB2_95 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_95
.LBB2_98:                               #   in Loop: Header=BB2_53 Depth=1
	movslq	-16(%rbp), %rax
	movb	$1, -368(%rbp,%rax)
	cmpl	$255, -8(%rbp)
	jge	.LBB2_111
# %bb.99:                               #   in Loop: Header=BB2_53 Depth=1
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	shll	$8, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	movl	%eax, -112(%rbp)
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	shll	$8, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$-2097153, %eax         # imm = 0xFFDFFFFF
	subl	-112(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -60(%rbp)
.LBB2_100:                              #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	movl	-60(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	sarl	%cl, %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	jle	.LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_100 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_100
.LBB2_102:                              #   in Loop: Header=BB2_53 Depth=1
	movl	-104(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB2_103:                              #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -4(%rbp)
	jl	.LBB2_108
# %bb.104:                              #   in Loop: Header=BB2_103 Depth=2
	movq	-56(%rbp), %rax
	movl	-112(%rbp), %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movl	-4(%rbp), %eax
	movl	-60(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	sarl	%cl, %eax
	movw	%ax, -66(%rbp)
	movw	-66(%rbp), %ax
	movq	-80(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	cmpl	$34, -100(%rbp)
	jge	.LBB2_106
# %bb.105:                              #   in Loop: Header=BB2_103 Depth=2
	movw	-66(%rbp), %ax
	movq	-80(%rbp), %rcx
	movl	-100(%rbp), %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
.LBB2_106:                              #   in Loop: Header=BB2_103 Depth=2
	jmp	.LBB2_107
.LBB2_107:                              #   in Loop: Header=BB2_103 Depth=2
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_103
.LBB2_108:                              #   in Loop: Header=BB2_53 Depth=1
	movl	-104(%rbp), %eax
	subl	$1, %eax
	movl	-60(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	sarl	%cl, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jle	.LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_53 Depth=1
	movl	$1002, %edi             # imm = 0x3EA
	callq	BZ2_bz__AssertH__fail
.LBB2_110:                              #   in Loop: Header=BB2_53 Depth=1
	jmp	.LBB2_111
.LBB2_111:                              #   in Loop: Header=BB2_53 Depth=1
	jmp	.LBB2_112
.LBB2_112:                              #   in Loop: Header=BB2_53 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB2_53
.LBB2_113:
	cmpl	$4, -96(%rbp)
	jl	.LBB2_115
# %bb.114:
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movl	-36(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-36(%rbp), %r8d
	subl	-64(%rbp), %r8d
	movb	$0, %al
	callq	fprintf
.LBB2_115:
	addq	$3456, %rsp             # imm = 0xD80
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mainSort, .Lfunc_end2-mainSort
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mainQSort3
	.type	mainQSort3,@function
mainQSort3:                             # @mainQSort3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1408, %rsp             # imm = 0x580
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -136(%rbp)
	movq	%rdx, -184(%rbp)
	movl	%ecx, -172(%rbp)
	movl	%r8d, -168(%rbp)
	movl	%r9d, -164(%rbp)
	movl	$0, -4(%rbp)
	movl	-168(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-164(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -992(%rbp,%rcx,4)
	movl	16(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -592(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #       Child Loop BB3_12 Depth 3
                                        #       Child Loop BB3_21 Depth 3
                                        #     Child Loop BB3_38 Depth 2
                                        #     Child Loop BB3_44 Depth 2
	cmpl	$0, -4(%rbp)
	jle	.LBB3_53
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	cmpl	$100, -4(%rbp)
	jl	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$1001, %edi             # imm = 0x3E9
	callq	BZ2_bz__AssertH__fail
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	movslq	-4(%rbp), %rax
	movl	-1392(%rbp,%rax,4), %eax
	movl	%eax, -36(%rbp)
	movslq	-4(%rbp), %rax
	movl	-992(%rbp,%rax,4), %eax
	movl	%eax, -32(%rbp)
	movslq	-4(%rbp), %rax
	movl	-592(%rbp,%rax,4), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	cmpl	$20, %eax
	jl	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	cmpl	$14, -28(%rbp)
	jle	.LBB3_10
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movl	-172(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %eax
	movq	24(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	mainSimpleSort
	movq	24(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB3_8
# %bb.7:
	jmp	.LBB3_54
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_9
.LBB3_9:                                # %.backedge2
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, %ecx
	movb	(%rax,%rcx), %r8b
	movq	-136(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	movl	(%rdx,%rsi,4), %edx
	addl	-28(%rbp), %edx
	movl	%edx, %edx
	movb	(%rcx,%rdx), %cl
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edi
	addl	-32(%rbp), %edi
	sarl	$1, %edi
	movslq	%edi, %rdi
	movl	(%rsi,%rdi,4), %esi
	addl	-28(%rbp), %esi
	movl	%esi, %eax
	movzbl	%r8b, %edi
	movzbl	%cl, %esi
	movzbl	(%rdx,%rax), %edx
	callq	mmed3
	movzbl	%al, %eax
	movl	%eax, -140(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	%eax, -12(%rbp)
.LBB3_11:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_12 Depth 3
                                        #       Child Loop BB3_21 Depth 3
	jmp	.LBB3_12
.LBB3_12:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_20
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=3
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, %ecx
	movzbl	(%rax,%rcx), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB3_17
# %bb.15:                               #   in Loop: Header=BB3_12 Depth=3
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -160(%rbp)
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-160(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB3_16:                               # %.backedge1
                                        #   in Loop: Header=BB3_12 Depth=3
	jmp	.LBB3_12
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=3
	cmpl	$0, -40(%rbp)
	jle	.LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_20
.LBB3_19:                               #   in Loop: Header=BB3_12 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB3_16
.LBB3_20:                               #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_21
.LBB3_21:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_29
.LBB3_23:                               #   in Loop: Header=BB3_21 Depth=3
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, %ecx
	movzbl	(%rax,%rcx), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB3_26
# %bb.24:                               #   in Loop: Header=BB3_21 Depth=3
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -156(%rbp)
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-156(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB3_25:                               # %.backedge
                                        #   in Loop: Header=BB3_21 Depth=3
	jmp	.LBB3_21
.LBB3_26:                               #   in Loop: Header=BB3_21 Depth=3
	cmpl	$0, -40(%rbp)
	jge	.LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_29
.LBB3_28:                               #   in Loop: Header=BB3_21 Depth=3
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_25
.LBB3_29:                               #   in Loop: Header=BB3_11 Depth=2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_32
.LBB3_31:                               #   in Loop: Header=BB3_11 Depth=2
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -152(%rbp)
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-152(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_11
.LBB3_32:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB3_34
# %bb.33:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-32(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -992(%rbp,%rcx,4)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -592(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_9
.LBB3_34:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_36
# %bb.35:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	jmp	.LBB3_37
.LBB3_36:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-8(%rbp), %eax
	subl	-48(%rbp), %eax
.LBB3_37:                               #   in Loop: Header=BB3_1 Depth=1
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-8(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB3_38:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -124(%rbp)
	jle	.LBB3_40
# %bb.39:                               #   in Loop: Header=BB3_38 Depth=2
	movq	-24(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -148(%rbp)
	movq	-24(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-116(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-148(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	-124(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB3_38
.LBB3_40:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-32(%rbp), %eax
	subl	-44(%rbp), %eax
	jmp	.LBB3_43
.LBB3_42:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-44(%rbp), %eax
	subl	-12(%rbp), %eax
.LBB3_43:                               #   in Loop: Header=BB3_1 Depth=1
	movl	%eax, -100(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-32(%rbp), %eax
	subl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB3_44:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -120(%rbp)
	jle	.LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_44 Depth=2
	movq	-24(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -144(%rbp)
	movq	-24(%rbp), %rax
	movslq	-104(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-108(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-144(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-120(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB3_44
.LBB3_46:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbp), %eax
	addl	-8(%rbp), %eax
	subl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-12(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-60(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_48
# %bb.47:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB3_48:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-56(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_50
# %bb.49:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB3_50:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-60(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_52
# %bb.51:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB3_52:                               #   in Loop: Header=BB3_1 Depth=1
	movl	-72(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-60(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -992(%rbp,%rcx,4)
	movl	-96(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -592(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-68(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-56(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -992(%rbp,%rcx,4)
	movl	-92(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -592(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-64(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -1392(%rbp,%rcx,4)
	movl	-52(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -992(%rbp,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -592(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_9
.LBB3_53:                               # %.loopexit
	jmp	.LBB3_54
.LBB3_54:
	addq	$1408, %rsp             # imm = 0x580
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mainQSort3, .Lfunc_end3-mainQSort3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mainSimpleSort
	.type	mainSimpleSort,@function
mainSimpleSort:                         # @mainSimpleSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-40(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	cmpl	$2, -48(%rbp)
	jge	.LBB4_2
# %bb.1:
	jmp	.LBB4_38
.LBB4_2:
	movl	$0, -16(%rbp)
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movslq	-16(%rbp), %rax
	movl	incs(,%rax,4), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_3
.LBB4_5:
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_11 Depth 3
                                        #       Child Loop BB4_19 Depth 3
                                        #       Child Loop BB4_27 Depth 3
	cmpl	$0, -16(%rbp)
	jl	.LBB4_37
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	movslq	-16(%rbp), %rax
	movl	incs(,%rax,4), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB4_8:                                #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_11 Depth 3
                                        #       Child Loop BB4_19 Depth 3
                                        #       Child Loop BB4_27 Depth 3
	movl	-8(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_35
.LBB4_10:                               #   in Loop: Header=BB4_8 Depth=2
	movq	-32(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_11:                               #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edi
	addl	16(%rbp), %edi
	movl	-20(%rbp), %esi
	addl	16(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	24(%rbp), %r9
	callq	mainGtU
	cmpb	$0, %al
	je	.LBB4_15
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_16
.LBB4_14:                               #   in Loop: Header=BB4_11 Depth=3
	jmp	.LBB4_11
.LBB4_15:                               # %.loopexit2
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_16
.LBB4_16:                               #   in Loop: Header=BB4_8 Depth=2
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_35
.LBB4_18:                               #   in Loop: Header=BB4_8 Depth=2
	movq	-32(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_19:                               #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edi
	addl	16(%rbp), %edi
	movl	-20(%rbp), %esi
	addl	16(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	24(%rbp), %r9
	callq	mainGtU
	cmpb	$0, %al
	je	.LBB4_23
# %bb.20:                               #   in Loop: Header=BB4_19 Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_24
.LBB4_22:                               #   in Loop: Header=BB4_19 Depth=3
	jmp	.LBB4_19
.LBB4_23:                               # %.loopexit1
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_24
.LBB4_24:                               #   in Loop: Header=BB4_8 Depth=2
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_35
.LBB4_26:                               #   in Loop: Header=BB4_8 Depth=2
	movq	-32(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_27:                               #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edi
	addl	16(%rbp), %edi
	movl	-20(%rbp), %esi
	addl	16(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	24(%rbp), %r9
	callq	mainGtU
	cmpb	$0, %al
	je	.LBB4_31
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=3
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_32
.LBB4_30:                               #   in Loop: Header=BB4_27 Depth=3
	jmp	.LBB4_27
.LBB4_31:                               # %.loopexit
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_32
.LBB4_32:                               #   in Loop: Header=BB4_8 Depth=2
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	24(%rbp), %rax
	cmpl	$0, (%rax)
	jge	.LBB4_34
# %bb.33:
	jmp	.LBB4_38
.LBB4_34:                               #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_8
.LBB4_35:                               #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_36
.LBB4_36:                               #   in Loop: Header=BB4_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_6
.LBB4_37:                               # %.loopexit3
	jmp	.LBB4_38
.LBB4_38:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mainSimpleSort, .Lfunc_end4-mainSimpleSort
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mmed3
	.type	mmed3,@function
mmed3:                                  # @mmed3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, -2(%rbp)
	movb	%sil, -1(%rbp)
	movb	%dl, -3(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_2
# %bb.1:
	movb	-2(%rbp), %al
	movb	%al, -4(%rbp)
	movb	-1(%rbp), %al
	movb	%al, -2(%rbp)
	movb	-4(%rbp), %al
	movb	%al, -1(%rbp)
.LBB5_2:
	movzbl	-1(%rbp), %eax
	movzbl	-3(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_6
# %bb.3:
	movb	-3(%rbp), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_5
# %bb.4:
	movb	-2(%rbp), %al
	movb	%al, -1(%rbp)
.LBB5_5:
	jmp	.LBB5_6
.LBB5_6:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mmed3, .Lfunc_end5-mmed3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mainGtU
	.type	mainGtU,@function
mainGtU:                                # @mainGtU
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_2
# %bb.1:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_2:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_4
# %bb.3:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_4:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_6
# %bb.5:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_6:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_8
# %bb.7:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_8:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_10
# %bb.9:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_10:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_12
# %bb.11:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_12:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_14
# %bb.13:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_14:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_16
# %bb.15:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_16:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_18
# %bb.17:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_18:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_20
# %bb.19:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_20:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_22
# %bb.21:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_22:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_24
# %bb.23:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_24:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -40(%rbp)
.LBB6_25:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_27
# %bb.26:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_27:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_29
# %bb.28:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_29:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_31
# %bb.30:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_31:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_33
# %bb.32:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_33:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_35
# %bb.34:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_35:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_37
# %bb.36:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_37:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_39
# %bb.38:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_39:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_41
# %bb.40:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_41:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_43
# %bb.42:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_43:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_45
# %bb.44:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_45:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_47
# %bb.46:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_47:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_49
# %bb.48:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_49:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_51
# %bb.50:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_51:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_53
# %bb.52:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_53:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -2(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %ecx
	movb	(%rax,%rcx), %al
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_55
# %bb.54:
	movzbl	-2(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_55:                               #   in Loop: Header=BB6_25 Depth=1
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	-8(%rbp), %ecx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_57
# %bb.56:
	movzwl	-16(%rbp), %eax
	movzwl	-14(%rbp), %ecx
	cmpl	%ecx, %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movb	%al, -3(%rbp)
	jmp	.LBB6_64
.LBB6_57:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB6_59
# %bb.58:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -12(%rbp)
.LBB6_59:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB6_61
# %bb.60:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -8(%rbp)
.LBB6_61:                               #   in Loop: Header=BB6_25 Depth=1
	movl	-40(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -40(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
# %bb.62:                               #   in Loop: Header=BB6_25 Depth=1
	cmpl	$0, -40(%rbp)
	jge	.LBB6_25
# %bb.63:
	movb	$0, -3(%rbp)
.LBB6_64:
	movzbl	-3(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mainGtU, .Lfunc_end6-mainGtU
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fallbackQSort3
	.type	fallbackQSort3,@function
fallbackQSort3:                         # @fallbackQSort3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$928, %rsp              # imm = 0x3A0
	movq	%rdi, -24(%rbp)
	movq	%rsi, -88(%rbp)
	movl	%edx, -120(%rbp)
	movl	%ecx, -116(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -4(%rbp)
	movl	-120(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -928(%rbp,%rcx,4)
	movl	-116(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -528(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_24 Depth 3
                                        #     Child Loop BB7_41 Depth 2
                                        #     Child Loop BB7_47 Depth 2
	cmpl	$0, -4(%rbp)
	jle	.LBB7_53
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	cmpl	$100, -4(%rbp)
	jl	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$1004, %edi             # imm = 0x3EC
	callq	BZ2_bz__AssertH__fail
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	movslq	-4(%rbp), %rax
	movl	-928(%rbp,%rax,4), %eax
	movl	%eax, -32(%rbp)
	movslq	-4(%rbp), %rax
	movl	-528(%rbp,%rax,4), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	cmpl	$10, %eax
	jge	.LBB7_7
# %bb.5:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	fallbackSimpleSort
.LBB7_6:                                # %.backedge2
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$3, %ecx
	imull	$7621, -80(%rbp), %eax  # imm = 0x1DC5
	addl	$1, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_13
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	cmpl	$1, -92(%rbp)
	jne	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	-32(%rbp), %edx
	addl	-28(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB7_12
.LBB7_11:                               #   in Loop: Header=BB7_1 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
.LBB7_12:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	%eax, -12(%rbp)
.LBB7_14:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_24 Depth 3
	jmp	.LBB7_15
.LBB7_15:                               #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB7_17
# %bb.16:                               #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_23
.LBB7_17:                               #   in Loop: Header=BB7_15 Depth=3
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB7_20
# %bb.18:                               #   in Loop: Header=BB7_15 Depth=3
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-112(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB7_19:                               # %.backedge1
                                        #   in Loop: Header=BB7_15 Depth=3
	jmp	.LBB7_15
.LBB7_20:                               #   in Loop: Header=BB7_15 Depth=3
	cmpl	$0, -36(%rbp)
	jle	.LBB7_22
# %bb.21:                               #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_23
.LBB7_22:                               #   in Loop: Header=BB7_15 Depth=3
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB7_19
.LBB7_23:                               #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_24
.LBB7_24:                               #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB7_26
# %bb.25:                               #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_32
.LBB7_26:                               #   in Loop: Header=BB7_24 Depth=3
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	(%rax,%rcx,4), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB7_29
# %bb.27:                               #   in Loop: Header=BB7_24 Depth=3
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -108(%rbp)
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB7_28:                               # %.backedge
                                        #   in Loop: Header=BB7_24 Depth=3
	jmp	.LBB7_24
.LBB7_29:                               #   in Loop: Header=BB7_24 Depth=3
	cmpl	$0, -36(%rbp)
	jge	.LBB7_31
# %bb.30:                               #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_32
.LBB7_31:                               #   in Loop: Header=BB7_24 Depth=3
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_28
.LBB7_32:                               #   in Loop: Header=BB7_14 Depth=2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB7_34
# %bb.33:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_35
.LBB7_34:                               #   in Loop: Header=BB7_14 Depth=2
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -104(%rbp)
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-104(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_14
.LBB7_35:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_37
# %bb.36:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_6
.LBB7_37:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	subl	-32(%rbp), %eax
	jmp	.LBB7_40
.LBB7_39:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-8(%rbp), %eax
	subl	-44(%rbp), %eax
.LBB7_40:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-8(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB7_41:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -76(%rbp)
	jle	.LBB7_43
# %bb.42:                               #   in Loop: Header=BB7_41 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movq	-24(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-100(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_41
.LBB7_43:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	subl	-40(%rbp), %eax
	jmp	.LBB7_46
.LBB7_45:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	subl	-12(%rbp), %eax
.LBB7_46:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, -48(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	subl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB7_47:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -72(%rbp)
	jle	.LBB7_49
# %bb.48:                               #   in Loop: Header=BB7_47 Depth=2
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-96(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_47
.LBB7_49:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax
	addl	-8(%rbp), %eax
	subl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	-12(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB7_51
# %bb.50:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -928(%rbp,%rcx,4)
	movl	-36(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -528(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-48(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -928(%rbp,%rcx,4)
	movl	-28(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -528(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_52
.LBB7_51:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-48(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -928(%rbp,%rcx,4)
	movl	-28(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -528(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -928(%rbp,%rcx,4)
	movl	-36(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -528(%rbp,%rcx,4)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB7_52:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_6
.LBB7_53:
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fallbackQSort3, .Lfunc_end7-fallbackQSort3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fallbackSimpleSort
	.type	fallbackSimpleSort,@function
fallbackSimpleSort:                     # @fallbackSimpleSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -12(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB8_2
# %bb.1:
	jmp	.LBB8_25
.LBB8_2:
	movl	-12(%rbp), %eax
	subl	-28(%rbp), %eax
	cmpl	$3, %eax
	jle	.LBB8_14
# %bb.3:
	movl	-12(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -8(%rbp)
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB8_13
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
	movl	-8(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -4(%rbp)
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jg	.LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=2
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movl	(%rdx,%rsi,4), %edx
	cmpl	(%rcx,%rdx,4), %eax
	seta	%al
.LBB8_8:                                #   in Loop: Header=BB8_6 Depth=2
	testb	$1, %al
	jne	.LBB8_9
	jmp	.LBB8_11
.LBB8_9:                                #   in Loop: Header=BB8_6 Depth=2
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	$4, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.10:                               #   in Loop: Header=BB8_6 Depth=2
	movl	-4(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_6
.LBB8_11:                               #   in Loop: Header=BB8_4 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	$4, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.12:                               #   in Loop: Header=BB8_4 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB8_4
.LBB8_13:
	jmp	.LBB8_14
.LBB8_14:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB8_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB8_24
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -16(%rbp)
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB8_17:                               #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jg	.LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_17 Depth=2
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movl	(%rdx,%rsi,4), %edx
	cmpl	(%rcx,%rdx,4), %eax
	seta	%al
.LBB8_19:                               #   in Loop: Header=BB8_17 Depth=2
	testb	$1, %al
	jne	.LBB8_20
	jmp	.LBB8_22
.LBB8_20:                               #   in Loop: Header=BB8_17 Depth=2
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.21:                               #   in Loop: Header=BB8_17 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_17
.LBB8_22:                               #   in Loop: Header=BB8_15 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.23:                               #   in Loop: Header=BB8_15 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB8_15
.LBB8_24:                               # %.loopexit
	jmp	.LBB8_25
.LBB8_25:
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fallbackSimpleSort, .Lfunc_end8-fallbackSimpleSort
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function compressStream
.LCPI9_0:
	.quad	4636737291354636288     # double 100
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4620693217682128896     # double 8
	.text
	.globl	compressStream
	.p2align	4, 0x90
	.type	compressStream,@function
compressStream:                         # @compressStream
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5184, %rsp             # imm = 0x1440
	leaq	-4(%rbp), %rax
	movl	%edi, -36(%rbp)
	movl	%esi, -32(%rbp)
	movq	$0, -48(%rbp)
	movl	-32(%rbp), %esi
	movl	blockSize100k, %edx
	movl	verbosity, %ecx
	movl	workFactor, %r8d
	movq	%rax, %rdi
	callq	BZ2_bzWriteOpen
	movq	%rax, -48(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB9_2
# %bb.1:
	jmp	.LBB9_29
.LBB9_2:
	cmpl	$2, verbosity
	jl	.LBB9_4
# %bb.3:
	movabsq	$.L.str.9, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB9_4:
	jmp	.LBB9_5
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %edi
	callq	myfeof
	cmpb	$0, %al
	je	.LBB9_7
# %bb.6:
	jmp	.LBB9_12
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=1
	leaq	-5168(%rbp), %rdi
	movl	-36(%rbp), %ecx
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	callq	spec_fread
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	leaq	-4(%rbp), %rdi
	leaq	-5168(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %ecx
	callq	BZ2_bzWrite
.LBB9_9:                                #   in Loop: Header=BB9_5 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB9_11
# %bb.10:
	jmp	.LBB9_29
.LBB9_11:                               #   in Loop: Header=BB9_5 Depth=1
	jmp	.LBB9_5
.LBB9_12:
	leaq	-4(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %r8
	leaq	-24(%rbp), %r9
	leaq	-20(%rbp), %rax
	movq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, (%rsp)
	callq	BZ2_bzWriteClose64
	cmpl	$0, -4(%rbp)
	je	.LBB9_14
# %bb.13:
	jmp	.LBB9_29
.LBB9_14:
	movl	$0, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB9_16
# %bb.15:
	jmp	.LBB9_35
.LBB9_16:
	cmpl	$1, -32(%rbp)
	je	.LBB9_20
# %bb.17:
	movl	$0, -8(%rbp)
	movl	$0, outputHandleJustInCase
	cmpl	$-1, -8(%rbp)
	jne	.LBB9_19
# %bb.18:
	jmp	.LBB9_35
.LBB9_19:
	jmp	.LBB9_20
.LBB9_20:
	movl	$0, outputHandleJustInCase
	movl	$0, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB9_22
# %bb.21:
	jmp	.LBB9_35
.LBB9_22:
	cmpl	$1, verbosity
	jl	.LBB9_28
# %bb.23:
	cmpl	$0, -16(%rbp)
	jne	.LBB9_26
# %bb.24:
	cmpl	$0, -12(%rbp)
	jne	.LBB9_26
# %bb.25:
	movabsq	$.L.str.1.10, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	jmp	.LBB9_27
.LBB9_26:
	leaq	-80(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	uInt64_from_UInt32s
	leaq	-72(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	uInt64_from_UInt32s
	leaq	-80(%rbp), %rdi
	callq	uInt64_to_double
	leaq	-72(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)
	callq	uInt64_to_double
	leaq	-80(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)
	callq	uInt64_toAscii
	leaq	-72(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	callq	uInt64_toAscii
	movabsq	$.L.str.2.11, %rsi
	leaq	-128(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movsd	.LCPI9_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI9_1(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	stderr, %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm1
	divsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	divsd	-64(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	movb	$3, %al
	callq	fprintf
.LBB9_27:
	jmp	.LBB9_28
.LBB9_28:
	jmp	.LBB9_38
.LBB9_29:
	movq	-48(%rbp), %rsi
	leaq	-20(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-84(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %r8
	leaq	-24(%rbp), %r9
	movl	$1, %edx
	callq	BZ2_bzWriteClose64
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	subl	$-9, %ecx
	je	.LBB9_32
	jmp	.LBB9_30
.LBB9_30:
	movl	%eax, %ecx
	subl	$-6, %ecx
	je	.LBB9_34
	jmp	.LBB9_31
.LBB9_31:
	subl	$-3, %eax
	je	.LBB9_33
	jmp	.LBB9_36
.LBB9_32:
	callq	configError
	jmp	.LBB9_37
.LBB9_33:
	callq	outOfMemory
	jmp	.LBB9_37
.LBB9_34:
	jmp	.LBB9_35
.LBB9_35:
	callq	ioError
	jmp	.LBB9_37
.LBB9_36:
	movabsq	$.L.str.3.12, %rdi
	callq	panic
.LBB9_37:
	movabsq	$.L.str.4.13, %rdi
	callq	panic
.LBB9_38:
	addq	$5184, %rsp             # imm = 0x1440
	popq	%rbp
	retq
.Lfunc_end9:
	.size	compressStream, .Lfunc_end9-compressStream
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function myfeof
	.type	myfeof,@function
myfeof:                                 # @myfeof
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	spec_getc
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB10_2
# %bb.1:
	movb	$1, -1(%rbp)
	jmp	.LBB10_3
.LBB10_2:
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %esi
	movzbl	%al, %edi
	callq	spec_ungetc
	movb	$0, -1(%rbp)
.LBB10_3:
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	myfeof, .Lfunc_end10-myfeof
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uInt64_from_UInt32s
	.type	uInt64_from_UInt32s,@function
uInt64_from_UInt32s:                    # @uInt64_from_UInt32s
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 7(%rcx)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 6(%rcx)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 5(%rcx)
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 4(%rcx)
	movl	-8(%rbp), %eax
	shrl	$24, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 3(%rcx)
	movl	-8(%rbp), %eax
	shrl	$16, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 2(%rcx)
	movl	-8(%rbp), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, 1(%rcx)
	movl	-8(%rbp), %eax
	andl	$255, %eax
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	uInt64_from_UInt32s, .Lfunc_end11-uInt64_from_UInt32s
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function uInt64_to_double
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4643211215818981376     # double 256
	.text
	.p2align	4, 0x90
	.type	uInt64_to_double,@function
uInt64_to_double:                       # @uInt64_to_double
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rdi, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movsd	.LCPI12_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	-16(%rbp), %xmm1
	movsd	%xmm1, -16(%rbp)
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_1
.LBB12_4:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end12:
	.size	uInt64_to_double, .Lfunc_end12-uInt64_to_double
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uInt64_toAscii
	.type	uInt64_toAscii,@function
uInt64_toAscii:                         # @uInt64_toAscii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	leaq	-24(%rbp), %rdi
	callq	uInt64_qrm10
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$48, %eax
	movslq	-4(%rbp), %rcx
	movb	%al, -80(%rbp,%rcx)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	uInt64_isZero
	cmpb	$0, %al
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB13_1
# %bb.3:
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movl	$0, -8(%rbp)
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	movb	-80(%rbp,%rax), %al
	movq	-32(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB13_4
.LBB13_7:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	uInt64_toAscii, .Lfunc_end13-uInt64_toAscii
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function configError
	.type	configError,@function
configError:                            # @configError
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$3, %edi
	callq	setExit
	movl	exitValue, %edi
	callq	exit
.Lfunc_end14:
	.size	configError, .Lfunc_end14-configError
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function outOfMemory
	.type	outOfMemory,@function
outOfMemory:                            # @outOfMemory
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	progName, %rdx
	movb	$0, %al
	callq	fprintf
	callq	showFileNames
	movl	$1, %edi
	callq	cleanUpAndFail
	popq	%rbp
	retq
.Lfunc_end15:
	.size	outOfMemory, .Lfunc_end15-outOfMemory
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ioError
	.type	ioError,@function
ioError:                                # @ioError
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.15, %rsi
	movq	stderr, %rdi
	movq	progName, %rdx
	movb	$0, %al
	callq	fprintf
	movq	progName, %rdi
	callq	perror
	callq	showFileNames
	movl	$1, %edi
	callq	cleanUpAndFail
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ioError, .Lfunc_end16-ioError
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function panic
	.type	panic,@function
panic:                                  # @panic
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	progName, %rdx
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	callq	showFileNames
	movl	$3, %edi
	callq	cleanUpAndFail
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	panic, .Lfunc_end17-panic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function showFileNames
	.type	showFileNames,@function
showFileNames:                          # @showFileNames
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$0, noisy
	je	.LBB18_2
# %bb.1:
	movabsq	$.L.str.11, %rsi
	movabsq	$inName, %rdx
	movabsq	$outName, %rcx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB18_2:
	popq	%rbp
	retq
.Lfunc_end18:
	.size	showFileNames, .Lfunc_end18-showFileNames
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cleanUpAndFail
	.type	cleanUpAndFail,@function
cleanUpAndFail:                         # @cleanUpAndFail
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	setExit
	movl	exitValue, %edi
	callq	exit
.Lfunc_end19:
	.size	cleanUpAndFail, .Lfunc_end19-cleanUpAndFail
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function setExit
	.type	setExit,@function
setExit:                                # @setExit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	$0, exitValue
	popq	%rbp
	retq
.Lfunc_end20:
	.size	setExit, .Lfunc_end20-setExit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uInt64_qrm10
	.type	uInt64_qrm10,@function
uInt64_qrm10:                           # @uInt64_qrm10
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$7, -4(%rbp)
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jl	.LBB21_4
# %bb.2:                                #   in Loop: Header=BB21_1 Depth=1
	movl	$10, %ecx
	movl	-8(%rbp), %eax
	shll	$8, %eax
	movq	-24(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movq	-24(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	movb	%al, (%rdx,%rsi)
	movl	-12(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -8(%rbp)
# %bb.3:                                #   in Loop: Header=BB21_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_1
.LBB21_4:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	uInt64_qrm10, .Lfunc_end21-uInt64_qrm10
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uInt64_isZero
	.type	uInt64_isZero,@function
uInt64_isZero:                          # @uInt64_isZero
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	$0, -8(%rbp)
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$8, -8(%rbp)
	jge	.LBB22_6
# %bb.2:                                #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB22_4
# %bb.3:
	movb	$0, -1(%rbp)
	jmp	.LBB22_7
.LBB22_4:                               #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_5
.LBB22_5:                               #   in Loop: Header=BB22_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB22_1
.LBB22_6:
	movb	$1, -1(%rbp)
.LBB22_7:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	uInt64_isZero, .Lfunc_end22-uInt64_isZero
	.cfi_endproc
                                        # -- End function
	.globl	uncompressStream        # -- Begin function uncompressStream
	.p2align	4, 0x90
	.type	uncompressStream,@function
uncompressStream:                       # @uncompressStream
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$10080, %rsp            # imm = 0x2760
	movl	%edi, -12(%rbp)
	movl	%esi, -32(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -36(%rbp)
.LBB23_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_5 Depth 2
                                        #     Child Loop BB23_18 Depth 2
	leaq	-8(%rbp), %rdi
	leaq	-10080(%rbp), %r8
	movl	-12(%rbp), %esi
	movl	verbosity, %edx
	movzbl	smallMode, %ecx
	movl	-28(%rbp), %r9d
	callq	BZ2_bzReadOpen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB23_3
# %bb.2:                                #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB23_4
.LBB23_3:
	jmp	.LBB23_48
.LBB23_4:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB23_5:                               #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -8(%rbp)
	jne	.LBB23_13
# %bb.6:                                #   in Loop: Header=BB23_5 Depth=2
	leaq	-8(%rbp), %rdi
	leaq	-5072(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	$5000, %ecx             # imm = 0x1388
	callq	BZ2_bzRead
	movl	%eax, -20(%rbp)
	cmpl	$-5, -8(%rbp)
	jne	.LBB23_8
# %bb.7:
	jmp	.LBB23_39
.LBB23_8:                               #   in Loop: Header=BB23_5 Depth=2
	cmpl	$0, -8(%rbp)
	je	.LBB23_10
# %bb.9:                                #   in Loop: Header=BB23_5 Depth=2
	cmpl	$4, -8(%rbp)
	jne	.LBB23_12
.LBB23_10:                              #   in Loop: Header=BB23_5 Depth=2
	cmpl	$0, -20(%rbp)
	jle	.LBB23_12
# %bb.11:                               #   in Loop: Header=BB23_5 Depth=2
	leaq	-5072(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	$1, %esi
	callq	spec_fwrite
.LBB23_12:                              #   in Loop: Header=BB23_5 Depth=2
	jmp	.LBB23_5
.LBB23_13:                              #   in Loop: Header=BB23_1 Depth=1
	cmpl	$4, -8(%rbp)
	je	.LBB23_15
# %bb.14:
	jmp	.LBB23_48
.LBB23_15:                              #   in Loop: Header=BB23_1 Depth=1
	leaq	-8(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	movq	-48(%rbp), %rsi
	callq	BZ2_bzReadGetUnused
	cmpl	$0, -8(%rbp)
	je	.LBB23_17
# %bb.16:                               #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.5.14, %rdi
	callq	panic
.LBB23_17:                              #   in Loop: Header=BB23_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -16(%rbp)
.LBB23_18:                              #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB23_21
# %bb.19:                               #   in Loop: Header=BB23_18 Depth=2
	movq	-56(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movslq	-16(%rbp), %rcx
	movb	%al, -10080(%rbp,%rcx)
# %bb.20:                               #   in Loop: Header=BB23_18 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_18
.LBB23_21:                              #   in Loop: Header=BB23_1 Depth=1
	leaq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	BZ2_bzReadClose
	cmpl	$0, -8(%rbp)
	je	.LBB23_23
# %bb.22:                               #   in Loop: Header=BB23_1 Depth=1
	movabsq	$.L.str.5.14, %rdi
	callq	panic
.LBB23_23:                              #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -28(%rbp)
	jne	.LBB23_26
# %bb.24:                               #   in Loop: Header=BB23_1 Depth=1
	movl	-12(%rbp), %edi
	callq	myfeof
	movzbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB23_26
# %bb.25:
	jmp	.LBB23_27
.LBB23_26:                              #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_1
.LBB23_27:
	jmp	.LBB23_28
.LBB23_28:
	movl	$0, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB23_30
# %bb.29:
	jmp	.LBB23_52
.LBB23_30:
	movl	$0, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB23_32
# %bb.31:
	jmp	.LBB23_52
.LBB23_32:
	cmpl	$1, -32(%rbp)
	je	.LBB23_36
# %bb.33:
	movl	$0, -24(%rbp)
	movl	$0, outputHandleJustInCase
	cmpl	$-1, -24(%rbp)
	jne	.LBB23_35
# %bb.34:
	jmp	.LBB23_52
.LBB23_35:
	jmp	.LBB23_36
.LBB23_36:
	movl	$0, outputHandleJustInCase
	cmpl	$2, verbosity
	jl	.LBB23_38
# %bb.37:
	movabsq	$.L.str.6.15, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB23_38:
	movb	$1, -1(%rbp)
	jmp	.LBB23_67
.LBB23_39:
	cmpb	$0, forceOverwrite
	je	.LBB23_47
# %bb.40:
	movl	-12(%rbp), %edi
	callq	spec_rewind
.LBB23_41:                              # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %edi
	callq	myfeof
	cmpb	$0, %al
	je	.LBB23_43
# %bb.42:
	jmp	.LBB23_46
.LBB23_43:                              #   in Loop: Header=BB23_41 Depth=1
	leaq	-5072(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	callq	spec_fread
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB23_45
# %bb.44:                               #   in Loop: Header=BB23_41 Depth=1
	leaq	-5072(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	$1, %esi
	callq	spec_fwrite
.LBB23_45:                              #   in Loop: Header=BB23_41 Depth=1
	jmp	.LBB23_41
.LBB23_46:
	jmp	.LBB23_28
.LBB23_47:
	jmp	.LBB23_48
.LBB23_48:
	movq	-48(%rbp), %rsi
	leaq	-68(%rbp), %rdi
	callq	BZ2_bzReadClose
	movl	-8(%rbp), %eax
	addl	$9, %eax
	movl	%eax, %ecx
	subl	$6, %ecx
	ja	.LBB23_65
# %bb.49:
	movq	.LJTI23_0(,%rax,8), %rax
	jmpq	*%rax
.LBB23_50:
	callq	configError
	jmp	.LBB23_66
.LBB23_51:
	jmp	.LBB23_52
.LBB23_52:
	callq	ioError
	jmp	.LBB23_66
.LBB23_53:
	callq	crcError
.LBB23_54:
	callq	outOfMemory
.LBB23_55:
	callq	compressedStreamEOF
.LBB23_56:
	cmpl	$0, -12(%rbp)
	je	.LBB23_58
# %bb.57:
	jmp	.LBB23_58
.LBB23_58:
	cmpl	$1, -32(%rbp)
	je	.LBB23_60
# %bb.59:
	jmp	.LBB23_60
.LBB23_60:
	cmpl	$1, -36(%rbp)
	jne	.LBB23_62
# %bb.61:
	movb	$0, -1(%rbp)
	jmp	.LBB23_67
.LBB23_62:
	cmpb	$0, noisy
	je	.LBB23_64
# %bb.63:
	movabsq	$.L.str.7.16, %rsi
	movabsq	$inName, %rcx
	movq	stderr, %rdi
	movq	progName, %rdx
	movb	$0, %al
	callq	fprintf
.LBB23_64:
	movb	$1, -1(%rbp)
	jmp	.LBB23_67
.LBB23_65:
	movabsq	$.L.str.8.17, %rdi
	callq	panic
.LBB23_66:
	movabsq	$.L.str.9.18, %rdi
	callq	panic
	movb	$1, -1(%rbp)
.LBB23_67:
	movzbl	-1(%rbp), %eax
	addq	$10080, %rsp            # imm = 0x2760
	popq	%rbp
	retq
.Lfunc_end23:
	.size	uncompressStream, .Lfunc_end23-uncompressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI23_0:
	.quad	.LBB23_50
	.quad	.LBB23_65
	.quad	.LBB23_55
	.quad	.LBB23_51
	.quad	.LBB23_56
	.quad	.LBB23_53
	.quad	.LBB23_54
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function crcError
	.type	crcError,@function
crcError:                               # @crcError
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.12, %rsi
	movq	stderr, %rdi
	movq	progName, %rdx
	movb	$0, %al
	callq	fprintf
	callq	showFileNames
	callq	cadvise
	movl	$2, %edi
	callq	cleanUpAndFail
	popq	%rbp
	retq
.Lfunc_end24:
	.size	crcError, .Lfunc_end24-crcError
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function compressedStreamEOF
	.type	compressedStreamEOF,@function
compressedStreamEOF:                    # @compressedStreamEOF
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$0, noisy
	je	.LBB25_2
# %bb.1:
	movabsq	$.L.str.14, %rsi
	movq	stderr, %rdi
	movq	progName, %rdx
	movb	$0, %al
	callq	fprintf
	movq	progName, %rdi
	callq	perror
	callq	showFileNames
	callq	cadvise
.LBB25_2:
	movl	$2, %edi
	callq	cleanUpAndFail
	popq	%rbp
	retq
.Lfunc_end25:
	.size	compressedStreamEOF, .Lfunc_end25-compressedStreamEOF
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cadvise
	.type	cadvise,@function
cadvise:                                # @cadvise
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	$0, noisy
	je	.LBB26_2
# %bb.1:
	movabsq	$.L.str.13, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB26_2:
	popq	%rbp
	retq
.Lfunc_end26:
	.size	cadvise, .Lfunc_end26-cadvise
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bz__AssertH__fail   # -- Begin function BZ2_bz__AssertH__fail
	.p2align	4, 0x90
	.type	BZ2_bz__AssertH__fail,@function
BZ2_bz__AssertH__fail:                  # @BZ2_bz__AssertH__fail
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%edi, -20(%rbp)
	movq	stderr, %rbx
	movl	-20(%rbp), %r14d
	callq	BZ2_bzlibVersion
	movabsq	$.L.str.21, %rsi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	cmpl	$1007, -20(%rbp)        # imm = 0x3EF
	jne	.LBB27_2
# %bb.1:
	movabsq	$.L.str.1.22, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB27_2:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end27:
	.size	BZ2_bz__AssertH__fail, .Lfunc_end27-BZ2_bz__AssertH__fail
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzlibVersion        # -- Begin function BZ2_bzlibVersion
	.p2align	4, 0x90
	.type	BZ2_bzlibVersion,@function
BZ2_bzlibVersion:                       # @BZ2_bzlibVersion
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.5.23, %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	BZ2_bzlibVersion, .Lfunc_end28-BZ2_bzlibVersion
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzCompressInit      # -- Begin function BZ2_bzCompressInit
	.p2align	4, 0x90
	.type	BZ2_bzCompressInit,@function
BZ2_bzCompressInit:                     # @BZ2_bzCompressInit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -20(%rbp)
	callq	bz_config_ok
	cmpl	$0, %eax
	jne	.LBB29_2
# %bb.1:
	movl	$-9, -28(%rbp)
	jmp	.LBB29_29
.LBB29_2:
	cmpq	$0, -16(%rbp)
	je	.LBB29_7
# %bb.3:
	cmpl	$1, -24(%rbp)
	jl	.LBB29_7
# %bb.4:
	cmpl	$9, -24(%rbp)
	jg	.LBB29_7
# %bb.5:
	cmpl	$0, -20(%rbp)
	jl	.LBB29_7
# %bb.6:
	cmpl	$250, -20(%rbp)
	jle	.LBB29_8
.LBB29_7:
	movl	$-2, -28(%rbp)
	jmp	.LBB29_29
.LBB29_8:
	cmpl	$0, -20(%rbp)
	jne	.LBB29_10
# %bb.9:
	movl	$30, -20(%rbp)
.LBB29_10:
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB29_12
# %bb.11:
	movabsq	$default_bzalloc, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB29_12:
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB29_14
# %bb.13:
	movabsq	$default_bzfree, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB29_14:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	$55768, %esi            # imm = 0xD9D8
	movl	$1, %edx
	callq	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB29_16
# %bb.15:
	movl	$-3, -28(%rbp)
	jmp	.LBB29_29
.LBB29_16:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	imull	$100000, -24(%rbp), %eax # imm = 0x186A0
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
                                        # kill: def %esi killed %esi killed %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	-32(%rbp), %ecx
	addl	$34, %ecx
	movslq	%ecx, %rsi
	shlq	$2, %rsi
                                        # kill: def %esi killed %esi killed %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	$262148, %esi           # imm = 0x40004
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB29_19
# %bb.17:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB29_19
# %bb.18:
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB29_28
.LBB29_19:
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB29_21
# %bb.20:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	*%rax
.LBB29_21:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB29_23
# %bb.22:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	*%rax
.LBB29_23:
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB29_25
# %bb.24:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rsi
	callq	*%rax
.LBB29_25:
	cmpq	$0, -8(%rbp)
	je	.LBB29_27
# %bb.26:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rsi
	callq	*%rax
.LBB29_27:
	movl	$-3, -28(%rbp)
	jmp	.LBB29_29
.LBB29_28:
	movq	-8(%rbp), %rax
	movl	$0, 660(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 652(%rax)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 664(%rcx)
	imull	$100000, -24(%rbp), %eax # imm = 0x186A0
	subl	$19, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 112(%rcx)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 656(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rdi
	callq	init_RL
	movq	-8(%rbp), %rdi
	callq	prepare_new_block
	movl	$0, -28(%rbp)
.LBB29_29:
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	BZ2_bzCompressInit, .Lfunc_end29-BZ2_bzCompressInit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bz_config_ok
	.type	bz_config_ok,@function
bz_config_ok:                           # @bz_config_ok
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	bz_config_ok, .Lfunc_end30-bz_config_ok
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function default_bzalloc
	.type	default_bzalloc,@function
default_bzalloc:                        # @default_bzalloc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -4(%rbp)
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	default_bzalloc, .Lfunc_end31-default_bzalloc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function default_bzfree
	.type	default_bzfree,@function
default_bzfree:                         # @default_bzfree
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB32_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	free
.LBB32_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	default_bzfree, .Lfunc_end32-default_bzfree
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function init_RL
	.type	init_RL,@function
init_RL:                                # @init_RL
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, 92(%rax)          # imm = 0x100
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	init_RL, .Lfunc_end33-init_RL
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function prepare_new_block
	.type	prepare_new_block,@function
prepare_new_block:                      # @prepare_new_block
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 648(%rax)
	movl	$0, -4(%rbp)
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB34_4
# %bb.2:                                #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movb	$0, 128(%rax,%rcx)
# %bb.3:                                #   in Loop: Header=BB34_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB34_1
.LBB34_4:
	movq	-16(%rbp), %rax
	movl	660(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 660(%rax)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	prepare_new_block, .Lfunc_end34-prepare_new_block
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzCompress          # -- Begin function BZ2_bzCompress
	.p2align	4, 0x90
	.type	BZ2_bzCompress,@function
BZ2_bzCompress:                         # @BZ2_bzCompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_2
# %bb.1:
	movl	$-2, -8(%rbp)
	jmp	.LBB35_39
.LBB35_2:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB35_4
# %bb.3:
	movl	$-2, -8(%rbp)
	jmp	.LBB35_39
.LBB35_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB35_6
# %bb.5:
	movl	$-2, -8(%rbp)
	jmp	.LBB35_39
.LBB35_6:
	jmp	.LBB35_7
.LBB35_7:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-1, %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	ja	.LBB35_38
# %bb.8:                                #   in Loop: Header=BB35_7 Depth=1
	movq	.LJTI35_0(,%rax,8), %rax
	jmpq	*%rax
.LBB35_9:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_10:                              #   in Loop: Header=BB35_7 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB35_12
# %bb.11:
	movq	-32(%rbp), %rdi
	callq	handle_compress
	movl	$4294967294, %ecx       # imm = 0xFFFFFFFE
	movl	$1, %edx
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB35_39
.LBB35_12:                              #   in Loop: Header=BB35_7 Depth=1
	cmpl	$1, -20(%rbp)
	jne	.LBB35_15
# %bb.13:                               #   in Loop: Header=BB35_7 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	$3, 8(%rax)
.LBB35_14:                              # %.backedge
                                        #   in Loop: Header=BB35_7 Depth=1
	jmp	.LBB35_7
.LBB35_15:                              #   in Loop: Header=BB35_7 Depth=1
	cmpl	$2, -20(%rbp)
	jne	.LBB35_17
# %bb.16:                               #   in Loop: Header=BB35_7 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	$4, 8(%rax)
	jmp	.LBB35_14
.LBB35_17:
	movl	$-2, -8(%rbp)
	jmp	.LBB35_39
.LBB35_18:
	cmpl	$1, -20(%rbp)
	je	.LBB35_20
# %bb.19:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_20:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB35_22
# %bb.21:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_22:
	movq	-32(%rbp), %rdi
	callq	handle_compress
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	ja	.LBB35_25
# %bb.23:
	movq	-16(%rbp), %rdi
	callq	isempty_RL
	cmpb	$0, %al
	je	.LBB35_25
# %bb.24:
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jge	.LBB35_26
.LBB35_25:
	movl	$2, -8(%rbp)
	jmp	.LBB35_39
.LBB35_26:
	movq	-16(%rbp), %rax
	movl	$2, 8(%rax)
	movl	$1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_27:
	cmpl	$2, -20(%rbp)
	je	.LBB35_29
# %bb.28:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_29:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB35_31
# %bb.30:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_31:
	movq	-32(%rbp), %rdi
	callq	handle_compress
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	jne	.LBB35_33
# %bb.32:
	movl	$-1, -8(%rbp)
	jmp	.LBB35_39
.LBB35_33:
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	ja	.LBB35_36
# %bb.34:
	movq	-16(%rbp), %rdi
	callq	isempty_RL
	cmpb	$0, %al
	je	.LBB35_36
# %bb.35:
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jge	.LBB35_37
.LBB35_36:
	movl	$3, -8(%rbp)
	jmp	.LBB35_39
.LBB35_37:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$4, -8(%rbp)
	jmp	.LBB35_39
.LBB35_38:
	movl	$0, -8(%rbp)
.LBB35_39:
	movl	-8(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	BZ2_bzCompress, .Lfunc_end35-BZ2_bzCompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_9
	.quad	.LBB35_10
	.quad	.LBB35_18
	.quad	.LBB35_27
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function handle_compress
	.type	handle_compress,@function
handle_compress:                        # @handle_compress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -2(%rbp)
	movb	$0, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB36_13
# %bb.2:                                #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	copy_output_until_stop
	movzbl	%al, %eax
	movzbl	-1(%rbp), %ecx
	orl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jge	.LBB36_4
# %bb.3:
	jmp	.LBB36_25
.LBB36_4:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$4, 8(%rax)
	jne	.LBB36_8
# %bb.5:                                #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB36_8
# %bb.6:                                #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	isempty_RL
	movzbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB36_8
# %bb.7:
	jmp	.LBB36_25
.LBB36_8:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	prepare_new_block
	movq	-16(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB36_12
# %bb.9:                                #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB36_12
# %bb.10:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	isempty_RL
	movzbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB36_12
# %bb.11:
	jmp	.LBB36_25
.LBB36_12:                              #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_13
.LBB36_13:                              #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 12(%rax)
	jne	.LBB36_24
# %bb.14:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	copy_input_until_stop
	movzbl	%al, %eax
	movzbl	-2(%rbp), %ecx
	orl	%eax, %ecx
	movb	%cl, -2(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$2, 8(%rax)
	je	.LBB36_17
# %bb.15:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB36_17
# %bb.16:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	flush_RL
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	cmpl	$4, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movzbl	%al, %esi
	callq	BZ2_compressBlock
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB36_23
.LBB36_17:                              #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	movl	108(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB36_19
# %bb.18:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	BZ2_compressBlock
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB36_22
.LBB36_19:                              #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB36_21
# %bb.20:
	jmp	.LBB36_25
.LBB36_21:                              #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_22
.LBB36_22:                              #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_23
.LBB36_23:                              #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_24
.LBB36_24:                              #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_1
.LBB36_25:
	movb	$1, %al
	movzbl	-2(%rbp), %ecx
	cmpl	$0, %ecx
	jne	.LBB36_27
# %bb.26:
	movzbl	-1(%rbp), %eax
	cmpl	$0, %eax
	setne	%al
.LBB36_27:
	andb	$1, %al
	movzbl	%al, %eax
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	handle_compress, .Lfunc_end36-handle_compress
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function isempty_RL
	.type	isempty_RL,@function
isempty_RL:                             # @isempty_RL
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$256, 92(%rax)          # imm = 0x100
	jae	.LBB37_3
# %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jle	.LBB37_3
# %bb.2:
	movb	$0, -1(%rbp)
	jmp	.LBB37_4
.LBB37_3:
	movb	$1, -1(%rbp)
.LBB37_4:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	isempty_RL, .Lfunc_end37-isempty_RL
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function copy_output_until_stop
	.type	copy_output_until_stop,@function
copy_output_until_stop:                 # @copy_output_until_stop
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movb	$0, -1(%rbp)
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB38_3
# %bb.2:
	jmp	.LBB38_8
.LBB38_3:                               #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jl	.LBB38_5
# %bb.4:
	jmp	.LBB38_8
.LBB38_5:                               #   in Loop: Header=BB38_1 Depth=1
	movb	$1, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	120(%rcx), %rcx
	movb	(%rax,%rcx), %al
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 120(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB38_7
# %bb.6:                                #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB38_7:                               #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_1
.LBB38_8:
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	copy_output_until_stop, .Lfunc_end38-copy_output_until_stop
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function copy_input_until_stop
	.type	copy_input_until_stop,@function
copy_input_until_stop:                  # @copy_input_until_stop
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	jne	.LBB39_20
# %bb.1:
	jmp	.LBB39_2
.LBB39_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB39_4
# %bb.3:
	jmp	.LBB39_19
.LBB39_4:                               #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB39_6
# %bb.5:
	jmp	.LBB39_19
.LBB39_6:                               #   in Loop: Header=BB39_2 Depth=1
	movb	$1, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	92(%rcx), %eax
	je	.LBB39_9
# %bb.7:                                #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 96(%rax)
	jne	.LBB39_9
# %bb.8:                                #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -11(%rbp)
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movl	648(%rcx), %ecx
	shrl	$24, %ecx
	movzbl	-11(%rbp), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 648(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	92(%rcx), %ecx
	movb	$1, 128(%rax,%rcx)
	movb	-11(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
	jmp	.LBB39_16
.LBB39_9:                               #   in Loop: Header=BB39_2 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jne	.LBB39_11
# %bb.10:                               #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$255, 96(%rax)
	jne	.LBB39_14
.LBB39_11:                              #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$256, 92(%rax)          # imm = 0x100
	jae	.LBB39_13
# %bb.12:                               #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rdi
	callq	add_pair_to_block
.LBB39_13:                              #   in Loop: Header=BB39_2 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	jmp	.LBB39_15
.LBB39_14:                              #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 96(%rax)
.LBB39_15:                              #   in Loop: Header=BB39_2 Depth=1
	jmp	.LBB39_16
.LBB39_16:                              #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB39_18
# %bb.17:                               #   in Loop: Header=BB39_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB39_18:                              #   in Loop: Header=BB39_2 Depth=1
	jmp	.LBB39_2
.LBB39_19:
	jmp	.LBB39_41
.LBB39_20:
	jmp	.LBB39_21
.LBB39_21:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB39_23
# %bb.22:
	jmp	.LBB39_40
.LBB39_23:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB39_25
# %bb.24:
	jmp	.LBB39_40
.LBB39_25:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB39_27
# %bb.26:
	jmp	.LBB39_40
.LBB39_27:                              #   in Loop: Header=BB39_21 Depth=1
	movb	$1, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	92(%rcx), %eax
	je	.LBB39_30
# %bb.28:                               #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 96(%rax)
	jne	.LBB39_30
# %bb.29:                               #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -10(%rbp)
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movl	648(%rcx), %ecx
	shrl	$24, %ecx
	movzbl	-10(%rbp), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 648(%rcx)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	92(%rcx), %ecx
	movb	$1, 128(%rax,%rcx)
	movb	-10(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
	jmp	.LBB39_37
.LBB39_30:                              #   in Loop: Header=BB39_21 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jne	.LBB39_32
# %bb.31:                               #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$255, 96(%rax)
	jne	.LBB39_35
.LBB39_32:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$256, 92(%rax)          # imm = 0x100
	jae	.LBB39_34
# %bb.33:                               #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rdi
	callq	add_pair_to_block
.LBB39_34:                              #   in Loop: Header=BB39_21 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	jmp	.LBB39_36
.LBB39_35:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 96(%rax)
.LBB39_36:                              #   in Loop: Header=BB39_21 Depth=1
	jmp	.LBB39_37
.LBB39_37:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB39_39
# %bb.38:                               #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB39_39:                              #   in Loop: Header=BB39_21 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	jmp	.LBB39_21
.LBB39_40:
	jmp	.LBB39_41
.LBB39_41:
	movzbl	-9(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	copy_input_until_stop, .Lfunc_end39-copy_input_until_stop
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function flush_RL
	.type	flush_RL,@function
flush_RL:                               # @flush_RL
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
	cmpl	$256, 92(%rax)          # imm = 0x100
	jae	.LBB40_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	add_pair_to_block
.LBB40_2:
	movq	-8(%rbp), %rdi
	callq	init_RL
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	flush_RL, .Lfunc_end40-flush_RL
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function add_pair_to_block
	.type	add_pair_to_block,@function
add_pair_to_block:                      # @add_pair_to_block
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movb	%al, -1(%rbp)
	movl	$0, -20(%rbp)
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB41_4
# %bb.2:                                #   in Loop: Header=BB41_1 Depth=1
	movq	-16(%rbp), %rax
	movl	648(%rax), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rcx
	movl	648(%rcx), %ecx
	shrl	$24, %ecx
	movzbl	-1(%rbp), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 648(%rcx)
# %bb.3:                                #   in Loop: Header=BB41_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB41_1
.LBB41_4:
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	$1, 128(%rax,%rcx)
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	je	.LBB41_7
	jmp	.LBB41_5
.LBB41_5:
	movl	%eax, %ecx
	subl	$2, %ecx
	je	.LBB41_8
	jmp	.LBB41_6
.LBB41_6:
	subl	$3, %eax
	je	.LBB41_9
	jmp	.LBB41_10
.LBB41_7:
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	jmp	.LBB41_11
.LBB41_8:
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	jmp	.LBB41_11
.LBB41_9:
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	jmp	.LBB41_11
.LBB41_10:
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %ecx
	subl	$4, %ecx
	movslq	%ecx, %rcx
	movb	$1, 128(%rax,%rcx)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	subl	$4, %eax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	108(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
.LBB41_11:
	popq	%rbp
	retq
.Lfunc_end41:
	.size	add_pair_to_block, .Lfunc_end41-add_pair_to_block
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzCompressEnd       # -- Begin function BZ2_bzCompressEnd
	.p2align	4, 0x90
	.type	BZ2_bzCompressEnd,@function
BZ2_bzCompressEnd:                      # @BZ2_bzCompressEnd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB42_2
# %bb.1:
	movl	$-2, -12(%rbp)
	jmp	.LBB42_13
.LBB42_2:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_4
# %bb.3:
	movl	$-2, -12(%rbp)
	jmp	.LBB42_13
.LBB42_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB42_6
# %bb.5:
	movl	$-2, -12(%rbp)
	jmp	.LBB42_13
.LBB42_6:
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB42_8
# %bb.7:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	*%rax
.LBB42_8:
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB42_10
# %bb.9:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	*%rax
.LBB42_10:
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB42_12
# %bb.11:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rsi
	callq	*%rax
.LBB42_12:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movl	$0, -12(%rbp)
.LBB42_13:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	BZ2_bzCompressEnd, .Lfunc_end42-BZ2_bzCompressEnd
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzDecompressInit    # -- Begin function BZ2_bzDecompressInit
	.p2align	4, 0x90
	.type	BZ2_bzDecompressInit,@function
BZ2_bzDecompressInit:                   # @BZ2_bzDecompressInit
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -24(%rbp)
	callq	bz_config_ok
	cmpl	$0, %eax
	jne	.LBB43_2
# %bb.1:
	movl	$-9, -20(%rbp)
	jmp	.LBB43_17
.LBB43_2:
	cmpq	$0, -16(%rbp)
	jne	.LBB43_4
# %bb.3:
	movl	$-2, -20(%rbp)
	jmp	.LBB43_17
.LBB43_4:
	cmpl	$0, -24(%rbp)
	je	.LBB43_7
# %bb.5:
	cmpl	$1, -24(%rbp)
	je	.LBB43_7
# %bb.6:
	movl	$-2, -20(%rbp)
	jmp	.LBB43_17
.LBB43_7:
	cmpl	$0, -28(%rbp)
	jl	.LBB43_9
# %bb.8:
	cmpl	$4, -28(%rbp)
	jle	.LBB43_10
.LBB43_9:
	movl	$-2, -20(%rbp)
	jmp	.LBB43_17
.LBB43_10:
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB43_12
# %bb.11:
	movabsq	$default_bzalloc, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB43_12:
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB43_14
# %bb.13:
	movabsq	$default_bzfree, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB43_14:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	$64144, %esi            # imm = 0xFA90
	movl	$1, %edx
	callq	*%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB43_16
# %bb.15:
	movl	$-3, -20(%rbp)
	jmp	.LBB43_17
.LBB43_16:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rax
	movl	$10, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 3188(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movb	%al, 44(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 3168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 3160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 3152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	$0, -20(%rbp)
.LBB43_17:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	BZ2_bzDecompressInit, .Lfunc_end43-BZ2_bzDecompressInit
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_indexIntoF          # -- Begin function BZ2_indexIntoF
	.p2align	4, 0x90
	.type	BZ2_indexIntoF,@function
BZ2_indexIntoF:                         # @BZ2_indexIntoF
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$256, -12(%rbp)         # imm = 0x100
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	addl	-12(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB44_3
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB44_4
.LBB44_3:                               #   in Loop: Header=BB44_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB44_1
# %bb.6:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	BZ2_indexIntoF, .Lfunc_end44-BZ2_indexIntoF
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzDecompress        # -- Begin function BZ2_bzDecompress
	.p2align	4, 0x90
	.type	BZ2_bzDecompress,@function
BZ2_bzDecompress:                       # @BZ2_bzDecompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB45_2
# %bb.1:
	movl	$-2, -16(%rbp)
	jmp	.LBB45_37
.LBB45_2:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB45_4
# %bb.3:
	movl	$-2, -16(%rbp)
	jmp	.LBB45_37
.LBB45_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB45_6
# %bb.5:
	movl	$-2, -16(%rbp)
	jmp	.LBB45_37
.LBB45_6:
	jmp	.LBB45_7
.LBB45_7:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB45_9
# %bb.8:
	movl	$-1, -16(%rbp)
	jmp	.LBB45_37
.LBB45_9:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	jne	.LBB45_26
# %bb.10:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, 44(%rax)
	je	.LBB45_12
# %bb.11:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rdi
	callq	unRLE_obuf_to_output_SMALL
	movb	%al, -9(%rbp)
	jmp	.LBB45_13
.LBB45_12:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rdi
	callq	unRLE_obuf_to_output_FAST
	movb	%al, -9(%rbp)
.LBB45_13:                              #   in Loop: Header=BB45_7 Depth=1
	cmpb	$0, -9(%rbp)
	je	.LBB45_15
# %bb.14:
	movl	$-4, -16(%rbp)
	jmp	.LBB45_37
.LBB45_15:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB45_24
# %bb.16:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB45_24
# %bb.17:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	movl	3184(%rax), %eax
	xorl	$-1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3184(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$3, 52(%rax)
	jl	.LBB45_19
# %bb.18:                               #   in Loop: Header=BB45_7 Depth=1
	movabsq	$.L.str.2.24, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	3176(%rax), %edx
	movq	-8(%rbp), %rax
	movl	3184(%rax), %ecx
	movb	$0, %al
	callq	fprintf
.LBB45_19:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	jl	.LBB45_21
# %bb.20:                               #   in Loop: Header=BB45_7 Depth=1
	movabsq	$.L.str.3.25, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB45_21:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	movl	3184(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	3176(%rcx), %eax
	je	.LBB45_23
# %bb.22:
	movl	$-4, -16(%rbp)
	jmp	.LBB45_37
.LBB45_23:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	movl	3188(%rax), %eax
	shll	$1, %eax
	movq	-8(%rbp), %rcx
	movl	3188(%rcx), %ecx
	shrl	$31, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3188(%rcx)
	movq	-8(%rbp), %rax
	movl	3184(%rax), %eax
	movq	-8(%rbp), %rcx
	xorl	3188(%rcx), %eax
	movl	%eax, 3188(%rcx)
	movq	-8(%rbp), %rax
	movl	$14, 8(%rax)
	jmp	.LBB45_25
.LBB45_24:
	movl	$0, -16(%rbp)
	jmp	.LBB45_37
.LBB45_25:                              #   in Loop: Header=BB45_7 Depth=1
	jmp	.LBB45_26
.LBB45_26:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$10, 8(%rax)
	jl	.LBB45_36
# %bb.27:                               #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rdi
	callq	BZ2_decompress
	movl	%eax, -20(%rbp)
	cmpl	$4, -20(%rbp)
	jne	.LBB45_33
# %bb.28:
	movq	-8(%rbp), %rax
	cmpl	$3, 52(%rax)
	jl	.LBB45_30
# %bb.29:
	movabsq	$.L.str.4.26, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	3180(%rax), %edx
	movq	-8(%rbp), %rax
	movl	3188(%rax), %ecx
	movb	$0, %al
	callq	fprintf
.LBB45_30:
	movq	-8(%rbp), %rax
	movl	3188(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	3180(%rcx), %eax
	je	.LBB45_32
# %bb.31:
	movl	$-4, -16(%rbp)
	jmp	.LBB45_37
.LBB45_32:
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB45_37
.LBB45_33:                              #   in Loop: Header=BB45_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	je	.LBB45_35
# %bb.34:
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB45_37
.LBB45_35:                              #   in Loop: Header=BB45_7 Depth=1
	jmp	.LBB45_36
.LBB45_36:                              #   in Loop: Header=BB45_7 Depth=1
	jmp	.LBB45_7
.LBB45_37:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	BZ2_bzDecompress, .Lfunc_end45-BZ2_bzDecompress
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function unRLE_obuf_to_output_SMALL
	.type	unRLE_obuf_to_output_SMALL,@function
unRLE_obuf_to_output_SMALL:             # @unRLE_obuf_to_output_SMALL
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB46_48
# %bb.1:
	jmp	.LBB46_2
.LBB46_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_3 Depth 2
	jmp	.LBB46_3
.LBB46_3:                               #   Parent Loop BB46_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB46_5
# %bb.4:
	movb	$0, -17(%rbp)
	jmp	.LBB46_75
.LBB46_5:                               #   in Loop: Header=BB46_3 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB46_7
# %bb.6:                                #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_10
.LBB46_7:                               #   in Loop: Header=BB46_3 Depth=2
	movq	-16(%rbp), %rax
	movb	12(%rax), %al
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rax
	movl	3184(%rax), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rcx
	movl	3184(%rcx), %ecx
	shrl	$24, %ecx
	movq	-16(%rbp), %rdx
	movzbl	12(%rdx), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 3184(%rcx)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB46_9
# %bb.8:                                #   in Loop: Header=BB46_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB46_9:                               #   in Loop: Header=BB46_3 Depth=2
	jmp	.LBB46_3
.LBB46_10:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_12
# %bb.11:
	movb	$0, -17(%rbp)
	jmp	.LBB46_75
.LBB46_12:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB46_14
# %bb.13:
	movb	$1, -17(%rbp)
	jmp	.LBB46_75
.LBB46_14:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movb	%al, 12(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB46_18
# %bb.15:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB46_17
# %bb.16:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB46_17:                              #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_18
.LBB46_18:                              #   in Loop: Header=BB46_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_21
# %bb.19:                               #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_20
.LBB46_20:                              # %.backedge
                                        #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_2
.LBB46_21:                              #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_23
# %bb.22:                               #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_20
.LBB46_23:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB46_27
# %bb.24:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB46_26
# %bb.25:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB46_26:                              #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_27
.LBB46_27:                              #   in Loop: Header=BB46_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_29
# %bb.28:                               #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_20
.LBB46_29:                              #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_31
# %bb.30:                               #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_20
.LBB46_31:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB46_35
# %bb.32:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB46_34
# %bb.33:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB46_34:                              #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_35
.LBB46_35:                              #   in Loop: Header=BB46_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_37
# %bb.36:                               #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_20
.LBB46_37:                              #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_39
# %bb.38:                               #   in Loop: Header=BB46_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_20
.LBB46_39:                              #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB46_43
# %bb.40:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB46_42
# %bb.41:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB46_42:                              #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_43
.LBB46_43:                              #   in Loop: Header=BB46_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movzbl	-1(%rbp), %eax
	addl	$4, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB46_47
# %bb.44:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB46_46
# %bb.45:                               #   in Loop: Header=BB46_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB46_46:                              #   in Loop: Header=BB46_2 Depth=1
	jmp	.LBB46_47
.LBB46_47:                              #   in Loop: Header=BB46_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movq	-16(%rbp), %rcx
	xorl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	jmp	.LBB46_20
.LBB46_48:
	jmp	.LBB46_49
.LBB46_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_50 Depth 2
	jmp	.LBB46_50
.LBB46_50:                              #   Parent Loop BB46_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB46_52
# %bb.51:
	movb	$0, -17(%rbp)
	jmp	.LBB46_75
.LBB46_52:                              #   in Loop: Header=BB46_50 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB46_54
# %bb.53:                               #   in Loop: Header=BB46_49 Depth=1
	jmp	.LBB46_57
.LBB46_54:                              #   in Loop: Header=BB46_50 Depth=2
	movq	-16(%rbp), %rax
	movb	12(%rax), %al
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rax
	movl	3184(%rax), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rcx
	movl	3184(%rcx), %ecx
	shrl	$24, %ecx
	movq	-16(%rbp), %rdx
	movzbl	12(%rdx), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 3184(%rcx)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB46_56
# %bb.55:                               #   in Loop: Header=BB46_50 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB46_56:                              #   in Loop: Header=BB46_50 Depth=2
	jmp	.LBB46_50
.LBB46_57:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_59
# %bb.58:
	movb	$0, -17(%rbp)
	jmp	.LBB46_75
.LBB46_59:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB46_61
# %bb.60:
	movb	$1, -17(%rbp)
	jmp	.LBB46_75
.LBB46_61:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movb	%al, 12(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_64
# %bb.62:                               #   in Loop: Header=BB46_49 Depth=1
	jmp	.LBB46_63
.LBB46_63:                              # %.backedge1
                                        #   in Loop: Header=BB46_49 Depth=1
	jmp	.LBB46_49
.LBB46_64:                              #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_66
# %bb.65:                               #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_63
.LBB46_66:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_68
# %bb.67:                               #   in Loop: Header=BB46_49 Depth=1
	jmp	.LBB46_63
.LBB46_68:                              #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_70
# %bb.69:                               #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_63
.LBB46_70:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB46_72
# %bb.71:                               #   in Loop: Header=BB46_49 Depth=1
	jmp	.LBB46_63
.LBB46_72:                              #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB46_74
# %bb.73:                               #   in Loop: Header=BB46_49 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB46_63
.LBB46_74:                              #   in Loop: Header=BB46_49 Depth=1
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movzbl	-1(%rbp), %eax
	addl	$4, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-16(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	jmp	.LBB46_63
.LBB46_75:
	movzbl	-17(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	unRLE_obuf_to_output_SMALL, .Lfunc_end46-unRLE_obuf_to_output_SMALL
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function unRLE_obuf_to_output_FAST
	.type	unRLE_obuf_to_output_FAST,@function
unRLE_obuf_to_output_FAST:              # @unRLE_obuf_to_output_FAST
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB47_48
# %bb.1:
	jmp	.LBB47_2
.LBB47_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_3 Depth 2
	jmp	.LBB47_3
.LBB47_3:                               #   Parent Loop BB47_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB47_5
# %bb.4:
	movb	$0, -25(%rbp)
	jmp	.LBB47_82
.LBB47_5:                               #   in Loop: Header=BB47_3 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB47_7
# %bb.6:                                #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_10
.LBB47_7:                               #   in Loop: Header=BB47_3 Depth=2
	movq	-16(%rbp), %rax
	movb	12(%rax), %al
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movq	-16(%rbp), %rax
	movl	3184(%rax), %eax
	shll	$8, %eax
	movq	-16(%rbp), %rcx
	movl	3184(%rcx), %ecx
	shrl	$24, %ecx
	movq	-16(%rbp), %rdx
	movzbl	12(%rdx), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 3184(%rcx)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB47_9
# %bb.8:                                #   in Loop: Header=BB47_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB47_9:                               #   in Loop: Header=BB47_3 Depth=2
	jmp	.LBB47_3
.LBB47_10:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB47_12
# %bb.11:
	movb	$0, -25(%rbp)
	jmp	.LBB47_82
.LBB47_12:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB47_14
# %bb.13:
	movb	$1, -25(%rbp)
	jmp	.LBB47_82
.LBB47_14:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movb	%al, 12(%rcx)
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB47_18
# %bb.15:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB47_17
# %bb.16:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB47_17:                              #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_18
.LBB47_18:                              #   in Loop: Header=BB47_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB47_21
# %bb.19:                               #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_20
.LBB47_20:                              # %.backedge
                                        #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_2
.LBB47_21:                              #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB47_23
# %bb.22:                               #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB47_20
.LBB47_23:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB47_27
# %bb.24:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB47_26
# %bb.25:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB47_26:                              #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_27
.LBB47_27:                              #   in Loop: Header=BB47_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB47_29
# %bb.28:                               #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_20
.LBB47_29:                              #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB47_31
# %bb.30:                               #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB47_20
.LBB47_31:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB47_35
# %bb.32:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB47_34
# %bb.33:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB47_34:                              #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_35
.LBB47_35:                              #   in Loop: Header=BB47_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64080(%rcx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB47_37
# %bb.36:                               #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_20
.LBB47_37:                              #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	je	.LBB47_39
# %bb.38:                               #   in Loop: Header=BB47_2 Depth=1
	movzbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB47_20
.LBB47_39:                              #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB47_43
# %bb.40:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB47_42
# %bb.41:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB47_42:                              #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_43
.LBB47_43:                              #   in Loop: Header=BB47_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movzbl	-1(%rbp), %ecx
	xorl	%eax, %ecx
	movb	%cl, -1(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movzbl	-1(%rbp), %eax
	addl	$4, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB47_47
# %bb.44:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB47_46
# %bb.45:                               #   in Loop: Header=BB47_2 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
.LBB47_46:                              #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_47
.LBB47_47:                              #   in Loop: Header=BB47_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movq	-16(%rbp), %rcx
	xorl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	jmp	.LBB47_20
.LBB47_48:
	movq	-16(%rbp), %rax
	movl	3184(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movb	12(%rax), %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	1092(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	3152(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	64080(%rax), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB47_49:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_51 Depth 2
	cmpl	$0, -36(%rbp)
	jle	.LBB47_60
# %bb.50:                               #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_51
.LBB47_51:                              #   Parent Loop BB47_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -40(%rbp)
	jne	.LBB47_53
# %bb.52:
	jmp	.LBB47_78
.LBB47_53:                              #   in Loop: Header=BB47_51 Depth=2
	cmpl	$1, -36(%rbp)
	jne	.LBB47_55
# %bb.54:                               #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_56
.LBB47_55:                              #   in Loop: Header=BB47_51 Depth=2
	movb	-17(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-48(%rbp), %eax
	shll	$8, %eax
	movl	-48(%rbp), %ecx
	shrl	$24, %ecx
	movzbl	-17(%rbp), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB47_51
.LBB47_56:                              #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_57
.LBB47_57:                              #   in Loop: Header=BB47_49 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB47_59
# %bb.58:
	movl	$1, -36(%rbp)
	jmp	.LBB47_78
.LBB47_59:                              #   in Loop: Header=BB47_49 Depth=1
	movb	-17(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx)
	movl	-48(%rbp), %eax
	shll	$8, %eax
	movl	-48(%rbp), %ecx
	shrl	$24, %ecx
	movzbl	-17(%rbp), %edx
	xorl	%edx, %ecx
	movl	%ecx, %ecx
	xorl	BZ2_crc32Table(,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.LBB47_60:                              #   in Loop: Header=BB47_49 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB47_62
# %bb.61:
	movb	$1, -25(%rbp)
	jmp	.LBB47_82
.LBB47_62:                              #   in Loop: Header=BB47_49 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB47_64
# %bb.63:
	movl	$0, -36(%rbp)
	jmp	.LBB47_78
.LBB47_64:                              #   in Loop: Header=BB47_49 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, -17(%rbp)
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movzbl	-1(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB47_66
# %bb.65:                               #   in Loop: Header=BB47_49 Depth=1
	movzbl	-1(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB47_57
.LBB47_66:                              #   in Loop: Header=BB47_49 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB47_68
# %bb.67:                               #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_57
.LBB47_68:                              #   in Loop: Header=BB47_49 Depth=1
	movl	$2, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB47_71
# %bb.69:                               #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_70
.LBB47_70:                              # %.backedge1
                                        #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_49
.LBB47_71:                              #   in Loop: Header=BB47_49 Depth=1
	movzbl	-1(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB47_73
# %bb.72:                               #   in Loop: Header=BB47_49 Depth=1
	movzbl	-1(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB47_70
.LBB47_73:                              #   in Loop: Header=BB47_49 Depth=1
	movl	$3, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB47_75
# %bb.74:                               #   in Loop: Header=BB47_49 Depth=1
	jmp	.LBB47_70
.LBB47_75:                              #   in Loop: Header=BB47_49 Depth=1
	movzbl	-1(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB47_77
# %bb.76:                               #   in Loop: Header=BB47_49 Depth=1
	movzbl	-1(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB47_70
.LBB47_77:                              #   in Loop: Header=BB47_49 Depth=1
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movb	%al, -1(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movzbl	-1(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$255, %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB47_70
.LBB47_78:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	subl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	addl	36(%rcx), %eax
	movl	%eax, 36(%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	cmpl	-76(%rbp), %eax
	jae	.LBB47_80
# %bb.79:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 40(%rax)
.LBB47_80:
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 3184(%rcx)
	movb	-17(%rbp), %al
	movq	-16(%rbp), %rcx
	movb	%al, 12(%rcx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 1092(%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 3152(%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 32(%rcx)
# %bb.81:
	movb	$0, -25(%rbp)
.LBB47_82:
	movzbl	-25(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end47:
	.size	unRLE_obuf_to_output_FAST, .Lfunc_end47-unRLE_obuf_to_output_FAST
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzDecompressEnd     # -- Begin function BZ2_bzDecompressEnd
	.p2align	4, 0x90
	.type	BZ2_bzDecompressEnd,@function
BZ2_bzDecompressEnd:                    # @BZ2_bzDecompressEnd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB48_2
# %bb.1:
	movl	$-2, -12(%rbp)
	jmp	.LBB48_13
.LBB48_2:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB48_4
# %bb.3:
	movl	$-2, -12(%rbp)
	jmp	.LBB48_13
.LBB48_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB48_6
# %bb.5:
	movl	$-2, -12(%rbp)
	jmp	.LBB48_13
.LBB48_6:
	movq	-24(%rbp), %rax
	cmpq	$0, 3152(%rax)
	je	.LBB48_8
# %bb.7:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	3152(%rcx), %rsi
	callq	*%rax
.LBB48_8:
	movq	-24(%rbp), %rax
	cmpq	$0, 3160(%rax)
	je	.LBB48_10
# %bb.9:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	3160(%rcx), %rsi
	callq	*%rax
.LBB48_10:
	movq	-24(%rbp), %rax
	cmpq	$0, 3168(%rax)
	je	.LBB48_12
# %bb.11:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	3168(%rcx), %rsi
	callq	*%rax
.LBB48_12:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movl	$0, -12(%rbp)
.LBB48_13:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	BZ2_bzDecompressEnd, .Lfunc_end48-BZ2_bzDecompressEnd
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzWriteOpen         # -- Begin function BZ2_bzWriteOpen
	.p2align	4, 0x90
	.type	BZ2_bzWriteOpen,@function
BZ2_bzWriteOpen:                        # @BZ2_bzWriteOpen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -12(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_2
# %bb.1:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB49_2:
	cmpq	$0, -8(%rbp)
	je	.LBB49_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB49_4:
	cmpl	$0, -40(%rbp)
	je	.LBB49_11
# %bb.5:
	cmpl	$1, -36(%rbp)
	jl	.LBB49_11
# %bb.6:
	cmpl	$9, -36(%rbp)
	jg	.LBB49_11
# %bb.7:
	cmpl	$0, -12(%rbp)
	jl	.LBB49_11
# %bb.8:
	cmpl	$250, -12(%rbp)
	jg	.LBB49_11
# %bb.9:
	cmpl	$0, -32(%rbp)
	jl	.LBB49_11
# %bb.10:
	cmpl	$4, -32(%rbp)
	jle	.LBB49_16
.LBB49_11:
	cmpq	$0, -24(%rbp)
	je	.LBB49_13
# %bb.12:
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.LBB49_13:
	cmpq	$0, -8(%rbp)
	je	.LBB49_15
# %bb.14:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB49_15:
	movq	$0, -48(%rbp)
	jmp	.LBB49_35
.LBB49_16:
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB49_22
# %bb.17:
	cmpq	$0, -24(%rbp)
	je	.LBB49_19
# %bb.18:
	movq	-24(%rbp), %rax
	movl	$-3, (%rax)
.LBB49_19:
	cmpq	$0, -8(%rbp)
	je	.LBB49_21
# %bb.20:
	movq	-8(%rbp), %rax
	movl	$-3, 5096(%rax)
.LBB49_21:
	movq	$0, -48(%rbp)
	jmp	.LBB49_35
.LBB49_22:
	cmpq	$0, -24(%rbp)
	je	.LBB49_24
# %bb.23:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB49_24:
	cmpq	$0, -8(%rbp)
	je	.LBB49_26
# %bb.25:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB49_26:
	movq	-8(%rbp), %rax
	movb	$0, 5100(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 5004(%rax)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rax
	movb	$1, 5008(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5072(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5080(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5088(%rax)
	cmpl	$0, -12(%rbp)
	jne	.LBB49_28
# %bb.27:
	movl	$30, -12(%rbp)
.LBB49_28:
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-12(%rbp), %ecx
	callq	BZ2_bzCompressInit
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB49_34
# %bb.29:
	cmpq	$0, -24(%rbp)
	je	.LBB49_31
# %bb.30:
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB49_31:
	cmpq	$0, -8(%rbp)
	je	.LBB49_33
# %bb.32:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5096(%rcx)
.LBB49_33:
	movq	-8(%rbp), %rdi
	callq	free
	movq	$0, -48(%rbp)
	jmp	.LBB49_35
.LBB49_34:
	movq	-8(%rbp), %rax
	movl	$0, 5024(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 5100(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB49_35:
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	BZ2_bzWriteOpen, .Lfunc_end49-BZ2_bzWriteOpen
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzWrite             # -- Begin function BZ2_bzWrite
	.p2align	4, 0x90
	.type	BZ2_bzWrite,@function
BZ2_bzWrite:                            # @BZ2_bzWrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB50_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB50_2:
	cmpq	$0, -8(%rbp)
	je	.LBB50_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB50_4:
	cmpq	$0, -8(%rbp)
	je	.LBB50_7
# %bb.5:
	cmpq	$0, -40(%rbp)
	je	.LBB50_7
# %bb.6:
	cmpl	$0, -24(%rbp)
	jge	.LBB50_12
.LBB50_7:
	cmpq	$0, -16(%rbp)
	je	.LBB50_9
# %bb.8:
	movq	-16(%rbp), %rax
	movl	$-2, (%rax)
.LBB50_9:
	cmpq	$0, -8(%rbp)
	je	.LBB50_11
# %bb.10:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB50_11:
	jmp	.LBB50_46
.LBB50_12:
	movq	-8(%rbp), %rax
	cmpb	$0, 5008(%rax)
	jne	.LBB50_18
# %bb.13:
	cmpq	$0, -16(%rbp)
	je	.LBB50_15
# %bb.14:
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
.LBB50_15:
	cmpq	$0, -8(%rbp)
	je	.LBB50_17
# %bb.16:
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.LBB50_17:
	jmp	.LBB50_46
.LBB50_18:
	cmpl	$0, -24(%rbp)
	jne	.LBB50_24
# %bb.19:
	cmpq	$0, -16(%rbp)
	je	.LBB50_21
# %bb.20:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB50_21:
	cmpq	$0, -8(%rbp)
	je	.LBB50_23
# %bb.22:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB50_23:
	jmp	.LBB50_46
.LBB50_24:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5024(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5016(%rcx)
.LBB50_25:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	$5000, 5048(%rax)       # imm = 0x1388
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5040(%rcx)
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	xorl	%esi, %esi
	callq	BZ2_bzCompress
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB50_31
# %bb.26:
	cmpq	$0, -16(%rbp)
	je	.LBB50_28
# %bb.27:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB50_28:
	cmpq	$0, -8(%rbp)
	je	.LBB50_30
# %bb.29:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5096(%rcx)
.LBB50_30:
	jmp	.LBB50_46
.LBB50_31:                              #   in Loop: Header=BB50_25 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$5000, 5048(%rax)       # imm = 0x1388
	jae	.LBB50_39
# %bb.32:                               #   in Loop: Header=BB50_25 Depth=1
	movl	$5000, %eax             # imm = 0x1388
	movq	-8(%rbp), %rcx
	subl	5048(%rcx), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, %esi
	callq	spec_fwrite
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB50_38
# %bb.33:
	cmpq	$0, -16(%rbp)
	je	.LBB50_35
# %bb.34:
	movq	-16(%rbp), %rax
	movl	$-6, (%rax)
.LBB50_35:
	cmpq	$0, -8(%rbp)
	je	.LBB50_37
# %bb.36:
	movq	-8(%rbp), %rax
	movl	$-6, 5096(%rax)
.LBB50_37:
	jmp	.LBB50_46
.LBB50_38:                              #   in Loop: Header=BB50_25 Depth=1
	jmp	.LBB50_39
.LBB50_39:                              #   in Loop: Header=BB50_25 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 5024(%rax)
	jne	.LBB50_45
# %bb.40:
	cmpq	$0, -16(%rbp)
	je	.LBB50_42
# %bb.41:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB50_42:
	cmpq	$0, -8(%rbp)
	je	.LBB50_44
# %bb.43:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB50_44:
	jmp	.LBB50_46
.LBB50_45:                              #   in Loop: Header=BB50_25 Depth=1
	jmp	.LBB50_25
.LBB50_46:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	BZ2_bzWrite, .Lfunc_end50-BZ2_bzWrite
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzWriteClose        # -- Begin function BZ2_bzWriteClose
	.p2align	4, 0x90
	.type	BZ2_bzWriteClose,@function
BZ2_bzWriteClose:                       # @BZ2_bzWriteClose
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -4(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -16(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %r9
	xorl	%r8d, %r8d
	movq	$0, (%rsp)
	callq	BZ2_bzWriteClose64
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	BZ2_bzWriteClose, .Lfunc_end51-BZ2_bzWriteClose
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzWriteClose64      # -- Begin function BZ2_bzWriteClose64
	.p2align	4, 0x90
	.type	BZ2_bzWriteClose64,@function
BZ2_bzWriteClose64:                     # @BZ2_bzWriteClose64
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -72(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB52_6
# %bb.1:
	cmpq	$0, -24(%rbp)
	je	.LBB52_3
# %bb.2:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB52_3:
	cmpq	$0, -8(%rbp)
	je	.LBB52_5
# %bb.4:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB52_5:
	jmp	.LBB52_57
.LBB52_6:
	movq	-8(%rbp), %rax
	cmpb	$0, 5008(%rax)
	jne	.LBB52_12
# %bb.7:
	cmpq	$0, -24(%rbp)
	je	.LBB52_9
# %bb.8:
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
.LBB52_9:
	cmpq	$0, -8(%rbp)
	je	.LBB52_11
# %bb.10:
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.LBB52_11:
	jmp	.LBB52_57
.LBB52_12:
	cmpq	$0, -56(%rbp)
	je	.LBB52_14
# %bb.13:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.LBB52_14:
	cmpq	$0, -48(%rbp)
	je	.LBB52_16
# %bb.15:
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
.LBB52_16:
	cmpq	$0, -40(%rbp)
	je	.LBB52_18
# %bb.17:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB52_18:
	cmpq	$0, 16(%rbp)
	je	.LBB52_20
# %bb.19:
	movq	16(%rbp), %rax
	movl	$0, (%rax)
.LBB52_20:
	cmpl	$0, -32(%rbp)
	jne	.LBB52_42
# %bb.21:
	movq	-8(%rbp), %rax
	cmpl	$0, 5096(%rax)
	jne	.LBB52_42
# %bb.22:
	jmp	.LBB52_23
.LBB52_23:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	$5000, 5048(%rax)       # imm = 0x1388
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5040(%rcx)
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	movl	$2, %esi
	callq	BZ2_bzCompress
	movl	%eax, -12(%rbp)
	cmpl	$3, -12(%rbp)
	je	.LBB52_30
# %bb.24:                               #   in Loop: Header=BB52_23 Depth=1
	cmpl	$4, -12(%rbp)
	je	.LBB52_30
# %bb.25:
	cmpq	$0, -24(%rbp)
	je	.LBB52_27
# %bb.26:
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB52_27:
	cmpq	$0, -8(%rbp)
	je	.LBB52_29
# %bb.28:
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5096(%rcx)
.LBB52_29:
	jmp	.LBB52_57
.LBB52_30:                              #   in Loop: Header=BB52_23 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$5000, 5048(%rax)       # imm = 0x1388
	jae	.LBB52_38
# %bb.31:                               #   in Loop: Header=BB52_23 Depth=1
	movl	$5000, %eax             # imm = 0x1388
	movq	-8(%rbp), %rcx
	subl	5048(%rcx), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, %esi
	callq	spec_fwrite
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB52_37
# %bb.32:
	cmpq	$0, -24(%rbp)
	je	.LBB52_34
# %bb.33:
	movq	-24(%rbp), %rax
	movl	$-6, (%rax)
.LBB52_34:
	cmpq	$0, -8(%rbp)
	je	.LBB52_36
# %bb.35:
	movq	-8(%rbp), %rax
	movl	$-6, 5096(%rax)
.LBB52_36:
	jmp	.LBB52_57
.LBB52_37:                              #   in Loop: Header=BB52_23 Depth=1
	jmp	.LBB52_38
.LBB52_38:                              #   in Loop: Header=BB52_23 Depth=1
	cmpl	$4, -12(%rbp)
	jne	.LBB52_40
# %bb.39:
	jmp	.LBB52_41
.LBB52_40:                              #   in Loop: Header=BB52_23 Depth=1
	jmp	.LBB52_23
.LBB52_41:
	jmp	.LBB52_42
.LBB52_42:
	cmpl	$0, -32(%rbp)
	jne	.LBB52_44
# %bb.43:
	jmp	.LBB52_44
.LBB52_44:
	cmpq	$0, -56(%rbp)
	je	.LBB52_46
# %bb.45:
	movq	-8(%rbp), %rax
	movl	5028(%rax), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB52_46:
	cmpq	$0, -48(%rbp)
	je	.LBB52_48
# %bb.47:
	movq	-8(%rbp), %rax
	movl	5032(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB52_48:
	cmpq	$0, -40(%rbp)
	je	.LBB52_50
# %bb.49:
	movq	-8(%rbp), %rax
	movl	5052(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB52_50:
	cmpq	$0, 16(%rbp)
	je	.LBB52_52
# %bb.51:
	movq	-8(%rbp), %rax
	movl	5056(%rax), %eax
	movq	16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB52_52:
	cmpq	$0, -24(%rbp)
	je	.LBB52_54
# %bb.53:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB52_54:
	cmpq	$0, -8(%rbp)
	je	.LBB52_56
# %bb.55:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB52_56:
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	callq	BZ2_bzCompressEnd
	movq	-8(%rbp), %rdi
	callq	free
.LBB52_57:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	BZ2_bzWriteClose64, .Lfunc_end52-BZ2_bzWriteClose64
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzReadOpen          # -- Begin function BZ2_bzReadOpen
	.p2align	4, 0x90
	.type	BZ2_bzReadOpen,@function
BZ2_bzReadOpen:                         # @BZ2_bzReadOpen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -12(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB53_2
# %bb.1:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB53_2:
	cmpq	$0, -8(%rbp)
	je	.LBB53_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB53_4:
	cmpl	$0, -52(%rbp)
	je	.LBB53_14
# %bb.5:
	cmpl	$0, -32(%rbp)
	je	.LBB53_7
# %bb.6:
	cmpl	$1, -32(%rbp)
	jne	.LBB53_14
.LBB53_7:
	cmpl	$0, -36(%rbp)
	jl	.LBB53_14
# %bb.8:
	cmpl	$4, -36(%rbp)
	jg	.LBB53_14
# %bb.9:
	cmpq	$0, -48(%rbp)
	jne	.LBB53_11
# %bb.10:
	cmpl	$0, -12(%rbp)
	jne	.LBB53_14
.LBB53_11:
	cmpq	$0, -48(%rbp)
	je	.LBB53_19
# %bb.12:
	cmpl	$0, -12(%rbp)
	jl	.LBB53_14
# %bb.13:
	cmpl	$5000, -12(%rbp)        # imm = 0x1388
	jle	.LBB53_19
.LBB53_14:
	cmpq	$0, -24(%rbp)
	je	.LBB53_16
# %bb.15:
	movq	-24(%rbp), %rax
	movl	$-2, (%rax)
.LBB53_16:
	cmpq	$0, -8(%rbp)
	je	.LBB53_18
# %bb.17:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB53_18:
	movq	$0, -64(%rbp)
	jmp	.LBB53_39
.LBB53_19:
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB53_25
# %bb.20:
	cmpq	$0, -24(%rbp)
	je	.LBB53_22
# %bb.21:
	movq	-24(%rbp), %rax
	movl	$-3, (%rax)
.LBB53_22:
	cmpq	$0, -8(%rbp)
	je	.LBB53_24
# %bb.23:
	movq	-8(%rbp), %rax
	movl	$-3, 5096(%rax)
.LBB53_24:
	movq	$0, -64(%rbp)
	jmp	.LBB53_39
.LBB53_25:
	cmpq	$0, -24(%rbp)
	je	.LBB53_27
# %bb.26:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB53_27:
	cmpq	$0, -8(%rbp)
	je	.LBB53_29
# %bb.28:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB53_29:
	movq	-8(%rbp), %rax
	movb	$0, 5100(%rax)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 5004(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 5008(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5072(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5080(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5088(%rax)
.LBB53_30:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB53_32
# %bb.31:                               #   in Loop: Header=BB53_30 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	5004(%rdx), %rdx
	movb	%al, 4(%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	5004(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 5004(%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB53_30
.LBB53_32:
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	movl	-36(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	BZ2_bzDecompressInit
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB53_38
# %bb.33:
	cmpq	$0, -24(%rbp)
	je	.LBB53_35
# %bb.34:
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB53_35:
	cmpq	$0, -8(%rbp)
	je	.LBB53_37
# %bb.36:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5096(%rcx)
.LBB53_37:
	movq	-8(%rbp), %rdi
	callq	free
	movq	$0, -64(%rbp)
	jmp	.LBB53_39
.LBB53_38:
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5024(%rcx)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5016(%rcx)
	movq	-8(%rbp), %rax
	movb	$1, 5100(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB53_39:
	movq	-64(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	BZ2_bzReadOpen, .Lfunc_end53-BZ2_bzReadOpen
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzReadClose         # -- Begin function BZ2_bzReadClose
	.p2align	4, 0x90
	.type	BZ2_bzReadClose,@function
BZ2_bzReadClose:                        # @BZ2_bzReadClose
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB54_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB54_2:
	cmpq	$0, -8(%rbp)
	je	.LBB54_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB54_4:
	cmpq	$0, -8(%rbp)
	jne	.LBB54_10
# %bb.5:
	cmpq	$0, -16(%rbp)
	je	.LBB54_7
# %bb.6:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB54_7:
	cmpq	$0, -8(%rbp)
	je	.LBB54_9
# %bb.8:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB54_9:
	jmp	.LBB54_19
.LBB54_10:
	movq	-8(%rbp), %rax
	cmpb	$0, 5008(%rax)
	je	.LBB54_16
# %bb.11:
	cmpq	$0, -16(%rbp)
	je	.LBB54_13
# %bb.12:
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
.LBB54_13:
	cmpq	$0, -8(%rbp)
	je	.LBB54_15
# %bb.14:
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.LBB54_15:
	jmp	.LBB54_19
.LBB54_16:
	movq	-8(%rbp), %rax
	cmpb	$0, 5100(%rax)
	je	.LBB54_18
# %bb.17:
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	callq	BZ2_bzDecompressEnd
.LBB54_18:
	movq	-8(%rbp), %rdi
	callq	free
.LBB54_19:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	BZ2_bzReadClose, .Lfunc_end54-BZ2_bzReadClose
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzRead              # -- Begin function BZ2_bzRead
	.p2align	4, 0x90
	.type	BZ2_bzRead,@function
BZ2_bzRead:                             # @BZ2_bzRead
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB55_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB55_2:
	cmpq	$0, -8(%rbp)
	je	.LBB55_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB55_4:
	cmpq	$0, -8(%rbp)
	je	.LBB55_7
# %bb.5:
	cmpq	$0, -40(%rbp)
	je	.LBB55_7
# %bb.6:
	cmpl	$0, -28(%rbp)
	jge	.LBB55_12
.LBB55_7:
	cmpq	$0, -16(%rbp)
	je	.LBB55_9
# %bb.8:
	movq	-16(%rbp), %rax
	movl	$-2, (%rax)
.LBB55_9:
	cmpq	$0, -8(%rbp)
	je	.LBB55_11
# %bb.10:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB55_11:
	movl	$0, -20(%rbp)
	jmp	.LBB55_57
.LBB55_12:
	movq	-8(%rbp), %rax
	cmpb	$0, 5008(%rax)
	je	.LBB55_18
# %bb.13:
	cmpq	$0, -16(%rbp)
	je	.LBB55_15
# %bb.14:
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
.LBB55_15:
	cmpq	$0, -8(%rbp)
	je	.LBB55_17
# %bb.16:
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.LBB55_17:
	movl	$0, -20(%rbp)
	jmp	.LBB55_57
.LBB55_18:
	cmpl	$0, -28(%rbp)
	jne	.LBB55_24
# %bb.19:
	cmpq	$0, -16(%rbp)
	je	.LBB55_21
# %bb.20:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB55_21:
	cmpq	$0, -8(%rbp)
	je	.LBB55_23
# %bb.22:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB55_23:
	movl	$0, -20(%rbp)
	jmp	.LBB55_57
.LBB55_24:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5048(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5040(%rcx)
.LBB55_25:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 5024(%rax)
	jne	.LBB55_28
# %bb.26:                               #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	myfeof.39
	cmpb	$0, %al
	jne	.LBB55_28
# %bb.27:                               #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	callq	spec_fread
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5004(%rcx)
	movq	-8(%rbp), %rax
	movl	5004(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5024(%rcx)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 5016(%rcx)
.LBB55_28:                              #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rdi
	addq	$5016, %rdi             # imm = 0x1398
	callq	BZ2_bzDecompress
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB55_35
# %bb.29:                               #   in Loop: Header=BB55_25 Depth=1
	cmpl	$4, -24(%rbp)
	je	.LBB55_35
# %bb.30:
	cmpq	$0, -16(%rbp)
	je	.LBB55_32
# %bb.31:
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB55_32:
	cmpq	$0, -8(%rbp)
	je	.LBB55_34
# %bb.33:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 5096(%rcx)
.LBB55_34:
	movl	$0, -20(%rbp)
	jmp	.LBB55_57
.LBB55_35:                              #   in Loop: Header=BB55_25 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB55_44
# %bb.36:                               #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	myfeof.39
	movzbl	%al, %eax
	cmpl	$0, %eax
	je	.LBB55_44
# %bb.37:                               #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 5024(%rax)
	jne	.LBB55_44
# %bb.38:                               #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 5048(%rax)
	jbe	.LBB55_44
# %bb.39:
	cmpq	$0, -16(%rbp)
	je	.LBB55_41
# %bb.40:
	movq	-16(%rbp), %rax
	movl	$-7, (%rax)
.LBB55_41:
	cmpq	$0, -8(%rbp)
	je	.LBB55_43
# %bb.42:
	movq	-8(%rbp), %rax
	movl	$-7, 5096(%rax)
.LBB55_43:
	movl	$0, -20(%rbp)
	jmp	.LBB55_57
.LBB55_44:                              #   in Loop: Header=BB55_25 Depth=1
	cmpl	$4, -24(%rbp)
	jne	.LBB55_50
# %bb.45:
	cmpq	$0, -16(%rbp)
	je	.LBB55_47
# %bb.46:
	movq	-16(%rbp), %rax
	movl	$4, (%rax)
.LBB55_47:
	cmpq	$0, -8(%rbp)
	je	.LBB55_49
# %bb.48:
	movq	-8(%rbp), %rax
	movl	$4, 5096(%rax)
.LBB55_49:
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	5048(%rcx), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB55_57
.LBB55_50:                              #   in Loop: Header=BB55_25 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 5048(%rax)
	jne	.LBB55_56
# %bb.51:
	cmpq	$0, -16(%rbp)
	je	.LBB55_53
# %bb.52:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB55_53:
	cmpq	$0, -8(%rbp)
	je	.LBB55_55
# %bb.54:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB55_55:
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB55_57
.LBB55_56:                              #   in Loop: Header=BB55_25 Depth=1
	jmp	.LBB55_25
.LBB55_57:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	BZ2_bzRead, .Lfunc_end55-BZ2_bzRead
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function myfeof.39
	.type	myfeof.39,@function
myfeof.39:                              # @myfeof.39
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	spec_getc
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB56_2
# %bb.1:
	movb	$1, -1(%rbp)
	jmp	.LBB56_3
.LBB56_2:
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %esi
	movzbl	%al, %edi
	callq	spec_ungetc
	movb	$0, -1(%rbp)
.LBB56_3:
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	myfeof.39, .Lfunc_end56-myfeof.39
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzReadGetUnused     # -- Begin function BZ2_bzReadGetUnused
	.p2align	4, 0x90
	.type	BZ2_bzReadGetUnused,@function
BZ2_bzReadGetUnused:                    # @BZ2_bzReadGetUnused
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB57_6
# %bb.1:
	cmpq	$0, -16(%rbp)
	je	.LBB57_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	$-2, (%rax)
.LBB57_3:
	cmpq	$0, -8(%rbp)
	je	.LBB57_5
# %bb.4:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB57_5:
	jmp	.LBB57_24
.LBB57_6:
	movq	-8(%rbp), %rax
	cmpl	$4, 5096(%rax)
	je	.LBB57_12
# %bb.7:
	cmpq	$0, -16(%rbp)
	je	.LBB57_9
# %bb.8:
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
.LBB57_9:
	cmpq	$0, -8(%rbp)
	je	.LBB57_11
# %bb.10:
	movq	-8(%rbp), %rax
	movl	$-1, 5096(%rax)
.LBB57_11:
	jmp	.LBB57_24
.LBB57_12:
	cmpq	$0, -32(%rbp)
	je	.LBB57_14
# %bb.13:
	cmpq	$0, -24(%rbp)
	jne	.LBB57_19
.LBB57_14:
	cmpq	$0, -16(%rbp)
	je	.LBB57_16
# %bb.15:
	movq	-16(%rbp), %rax
	movl	$-2, (%rax)
.LBB57_16:
	cmpq	$0, -8(%rbp)
	je	.LBB57_18
# %bb.17:
	movq	-8(%rbp), %rax
	movl	$-2, 5096(%rax)
.LBB57_18:
	jmp	.LBB57_24
.LBB57_19:
	cmpq	$0, -16(%rbp)
	je	.LBB57_21
# %bb.20:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB57_21:
	cmpq	$0, -8(%rbp)
	je	.LBB57_23
# %bb.22:
	movq	-8(%rbp), %rax
	movl	$0, 5096(%rax)
.LBB57_23:
	movq	-8(%rbp), %rax
	movl	5024(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rax
	movq	5016(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB57_24:
	popq	%rbp
	retq
.Lfunc_end57:
	.size	BZ2_bzReadGetUnused, .Lfunc_end57-BZ2_bzReadGetUnused
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzBuffToBuffCompress # -- Begin function BZ2_bzBuffToBuffCompress
	.p2align	4, 0x90
	.type	BZ2_bzBuffToBuffCompress,@function
BZ2_bzBuffToBuffCompress:               # @BZ2_bzBuffToBuffCompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -12(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB58_9
# %bb.1:
	cmpq	$0, -24(%rbp)
	je	.LBB58_9
# %bb.2:
	cmpq	$0, -40(%rbp)
	je	.LBB58_9
# %bb.3:
	cmpl	$1, -16(%rbp)
	jl	.LBB58_9
# %bb.4:
	cmpl	$9, -16(%rbp)
	jg	.LBB58_9
# %bb.5:
	cmpl	$0, -12(%rbp)
	jl	.LBB58_9
# %bb.6:
	cmpl	$4, -12(%rbp)
	jg	.LBB58_9
# %bb.7:
	cmpl	$0, 16(%rbp)
	jl	.LBB58_9
# %bb.8:
	cmpl	$250, 16(%rbp)
	jle	.LBB58_10
.LBB58_9:
	movl	$-2, -8(%rbp)
	jmp	.LBB58_21
.LBB58_10:
	cmpl	$0, 16(%rbp)
	jne	.LBB58_12
# %bb.11:
	movl	$30, 16(%rbp)
.LBB58_12:
	leaq	-128(%rbp), %rdi
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	16(%rbp), %ecx
	callq	BZ2_bzCompressInit
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB58_14
# %bb.13:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB58_21
.LBB58_14:
	leaq	-128(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
	movl	$2, %esi
	callq	BZ2_bzCompress
	movl	%eax, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jne	.LBB58_16
# %bb.15:
	jmp	.LBB58_19
.LBB58_16:
	cmpl	$4, -4(%rbp)
	je	.LBB58_18
# %bb.17:
	jmp	.LBB58_20
.LBB58_18:
	leaq	-128(%rbp), %rdi
	movl	-96(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	callq	BZ2_bzCompressEnd
	movl	$0, -8(%rbp)
	jmp	.LBB58_21
.LBB58_19:
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzCompressEnd
	movl	$-8, -8(%rbp)
	jmp	.LBB58_21
.LBB58_20:
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzCompressEnd
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB58_21:
	movl	-8(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	BZ2_bzBuffToBuffCompress, .Lfunc_end58-BZ2_bzBuffToBuffCompress
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzBuffToBuffDecompress # -- Begin function BZ2_bzBuffToBuffDecompress
	.p2align	4, 0x90
	.type	BZ2_bzBuffToBuffDecompress,@function
BZ2_bzBuffToBuffDecompress:             # @BZ2_bzBuffToBuffDecompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -12(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB59_7
# %bb.1:
	cmpq	$0, -24(%rbp)
	je	.LBB59_7
# %bb.2:
	cmpq	$0, -40(%rbp)
	je	.LBB59_7
# %bb.3:
	cmpl	$0, -16(%rbp)
	je	.LBB59_5
# %bb.4:
	cmpl	$1, -16(%rbp)
	jne	.LBB59_7
.LBB59_5:
	cmpl	$0, -12(%rbp)
	jl	.LBB59_7
# %bb.6:
	cmpl	$4, -12(%rbp)
	jle	.LBB59_8
.LBB59_7:
	movl	$-2, -8(%rbp)
	jmp	.LBB59_19
.LBB59_8:
	leaq	-128(%rbp), %rdi
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	BZ2_bzDecompressInit
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB59_10
# %bb.9:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB59_19
.LBB59_10:
	leaq	-128(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
	callq	BZ2_bzDecompress
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB59_12
# %bb.11:
	jmp	.LBB59_15
.LBB59_12:
	cmpl	$4, -4(%rbp)
	je	.LBB59_14
# %bb.13:
	jmp	.LBB59_18
.LBB59_14:
	leaq	-128(%rbp), %rdi
	movl	-96(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	callq	BZ2_bzDecompressEnd
	movl	$0, -8(%rbp)
	jmp	.LBB59_19
.LBB59_15:
	cmpl	$0, -96(%rbp)
	jbe	.LBB59_17
# %bb.16:
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	movl	$-7, -8(%rbp)
	jmp	.LBB59_19
.LBB59_17:
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	movl	$-8, -8(%rbp)
	jmp	.LBB59_19
.LBB59_18:
	leaq	-128(%rbp), %rdi
	callq	BZ2_bzDecompressEnd
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB59_19:
	movl	-8(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	BZ2_bzBuffToBuffDecompress, .Lfunc_end59-BZ2_bzBuffToBuffDecompress
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzopen              # -- Begin function BZ2_bzopen
	.p2align	4, 0x90
	.type	BZ2_bzopen,@function
BZ2_bzopen:                             # @BZ2_bzopen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	callq	bzopen_or_bzdopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	BZ2_bzopen, .Lfunc_end60-BZ2_bzopen
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bzopen_or_bzdopen
	.type	bzopen_or_bzdopen,@function
bzopen_or_bzdopen:                      # @bzopen_or_bzdopen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5088, %rsp             # imm = 0x13E0
	leaq	-82(%rbp), %rax
	movq	%rdi, -72(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -64(%rbp)
	movl	$9, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	memset
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$30, -56(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB61_2
# %bb.1:
	movq	$0, -48(%rbp)
	jmp	.LBB61_36
.LBB61_2:
	jmp	.LBB61_3
.LBB61_3:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB61_14
# %bb.4:                                #   in Loop: Header=BB61_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	subl	$114, %ecx
	je	.LBB61_7
	jmp	.LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_3 Depth=1
	movl	%eax, %ecx
	subl	$115, %ecx
	je	.LBB61_9
	jmp	.LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_3 Depth=1
	subl	$119, %eax
	je	.LBB61_8
	jmp	.LBB61_10
.LBB61_7:                               #   in Loop: Header=BB61_3 Depth=1
	movl	$0, -12(%rbp)
	jmp	.LBB61_13
.LBB61_8:                               #   in Loop: Header=BB61_3 Depth=1
	movl	$1, -12(%rbp)
	jmp	.LBB61_13
.LBB61_9:                               #   in Loop: Header=BB61_3 Depth=1
	movl	$1, -28(%rbp)
	jmp	.LBB61_13
.LBB61_10:                              #   in Loop: Header=BB61_3 Depth=1
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB61_12
# %bb.11:                               #   in Loop: Header=BB61_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	subl	$48, %eax
	movl	%eax, -8(%rbp)
.LBB61_12:                              #   in Loop: Header=BB61_3 Depth=1
	jmp	.LBB61_13
.LBB61_13:                              #   in Loop: Header=BB61_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB61_3
.LBB61_14:
	movabsq	$.L.str.7.43, %rsi
	movabsq	$.L.str.6.42, %rax
	leaq	-82(%rbp), %rdi
	movl	-12(%rbp), %ecx
	cmpl	$0, %ecx
	cmovneq	%rax, %rsi
	callq	strcat
	movabsq	$.L.str.8.44, %rsi
	leaq	-82(%rbp), %rdi
	callq	strcat
	cmpl	$0, -64(%rbp)
	jne	.LBB61_20
# %bb.15:
	cmpq	$0, -72(%rbp)
	je	.LBB61_17
# %bb.16:
	movq	-72(%rbp), %rdi
	movl	$.L.str.9.45, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB61_18
.LBB61_17:
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-12(%rbp), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB61_19
.LBB61_18:
	movl	$0, -4(%rbp)
.LBB61_19:
	jmp	.LBB61_21
.LBB61_20:
	movl	$0, -4(%rbp)
.LBB61_21:
	cmpl	$0, -4(%rbp)
	jne	.LBB61_23
# %bb.22:
	movq	$0, -48(%rbp)
	jmp	.LBB61_36
.LBB61_23:
	cmpl	$0, -12(%rbp)
	je	.LBB61_29
# %bb.24:
	cmpl	$1, -8(%rbp)
	jge	.LBB61_26
# %bb.25:
	movl	$1, -8(%rbp)
.LBB61_26:
	cmpl	$9, -8(%rbp)
	jle	.LBB61_28
# %bb.27:
	movl	$9, -8(%rbp)
.LBB61_28:
	leaq	-60(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	BZ2_bzWriteOpen
	movq	%rax, -40(%rbp)
	jmp	.LBB61_30
.LBB61_29:
	leaq	-60(%rbp), %rdi
	leaq	-5088(%rbp), %r8
	movl	-4(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-52(%rbp), %r9d
	callq	BZ2_bzReadOpen
	movq	%rax, -40(%rbp)
.LBB61_30:
	cmpq	$0, -40(%rbp)
	jne	.LBB61_35
# %bb.31:
	cmpl	$0, -4(%rbp)
	je	.LBB61_34
# %bb.32:
	cmpl	$1, -4(%rbp)
	je	.LBB61_34
# %bb.33:
	jmp	.LBB61_34
.LBB61_34:
	movq	$0, -48(%rbp)
	jmp	.LBB61_36
.LBB61_35:
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB61_36:
	movq	-48(%rbp), %rax
	addq	$5088, %rsp             # imm = 0x13E0
	popq	%rbp
	retq
.Lfunc_end61:
	.size	bzopen_or_bzdopen, .Lfunc_end61-bzopen_or_bzdopen
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzdopen             # -- Begin function BZ2_bzdopen
	.p2align	4, 0x90
	.type	BZ2_bzdopen,@function
BZ2_bzdopen:                            # @BZ2_bzdopen
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	xorl	%edi, %edi
	movl	$1, %ecx
	callq	bzopen_or_bzdopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	BZ2_bzdopen, .Lfunc_end62-BZ2_bzdopen
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzread              # -- Begin function BZ2_bzread
	.p2align	4, 0x90
	.type	BZ2_bzread,@function
BZ2_bzread:                             # @BZ2_bzread
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$4, 5096(%rax)
	jne	.LBB63_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB63_6
.LBB63_2:
	leaq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-16(%rbp), %ecx
	callq	BZ2_bzRead
	movl	%eax, -12(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB63_4
# %bb.3:
	cmpl	$4, -8(%rbp)
	jne	.LBB63_5
.LBB63_4:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB63_6
.LBB63_5:
	movl	$-1, -4(%rbp)
.LBB63_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	BZ2_bzread, .Lfunc_end63-BZ2_bzread
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzwrite             # -- Begin function BZ2_bzwrite
	.p2align	4, 0x90
	.type	BZ2_bzwrite,@function
BZ2_bzwrite:                            # @BZ2_bzwrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-12(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -4(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	callq	BZ2_bzWrite
	cmpl	$0, -12(%rbp)
	jne	.LBB64_2
# %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB64_3
.LBB64_2:
	movl	$-1, -8(%rbp)
.LBB64_3:
	movl	-8(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	BZ2_bzwrite, .Lfunc_end64-BZ2_bzwrite
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzflush             # -- Begin function BZ2_bzflush
	.p2align	4, 0x90
	.type	BZ2_bzflush,@function
BZ2_bzflush:                            # @BZ2_bzflush
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end65:
	.size	BZ2_bzflush, .Lfunc_end65-BZ2_bzflush
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzclose             # -- Begin function BZ2_bzclose
	.p2align	4, 0x90
	.type	BZ2_bzclose,@function
BZ2_bzclose:                            # @BZ2_bzclose
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
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB66_2
# %bb.1:
	jmp	.LBB66_10
.LBB66_2:
	movq	-8(%rbp), %rax
	cmpb	$0, 5008(%rax)
	je	.LBB66_6
# %bb.3:
	leaq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	BZ2_bzWriteClose
	cmpl	$0, -16(%rbp)
	je	.LBB66_5
# %bb.4:
	movq	-8(%rbp), %rsi
	xorl	%edi, %edi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	BZ2_bzWriteClose
.LBB66_5:
	jmp	.LBB66_7
.LBB66_6:
	leaq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	BZ2_bzReadClose
.LBB66_7:
	cmpl	$0, -12(%rbp)
	je	.LBB66_10
# %bb.8:
	cmpl	$1, -12(%rbp)
	je	.LBB66_10
# %bb.9:
	jmp	.LBB66_10
.LBB66_10:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	BZ2_bzclose, .Lfunc_end66-BZ2_bzclose
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bzerror             # -- Begin function BZ2_bzerror
	.p2align	4, 0x90
	.type	BZ2_bzerror,@function
BZ2_bzerror:                            # @BZ2_bzerror
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	5096(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB67_2
# %bb.1:
	movl	$0, -4(%rbp)
.LBB67_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	imull	$-1, -4(%rbp), %eax
	cltq
	movq	bzerrorstrings(,%rax,8), %rax
	popq	%rbp
	retq
.Lfunc_end67:
	.size	BZ2_bzerror, .Lfunc_end67-BZ2_bzerror
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_bsInitWrite         # -- Begin function BZ2_bsInitWrite
	.p2align	4, 0x90
	.type	BZ2_bsInitWrite,@function
BZ2_bsInitWrite:                        # @BZ2_bsInitWrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 644(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 640(%rax)
	popq	%rbp
	retq
.Lfunc_end68:
	.size	BZ2_bsInitWrite, .Lfunc_end68-BZ2_bsInitWrite
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_compressBlock       # -- Begin function BZ2_compressBlock
	.p2align	4, 0x90
	.type	BZ2_compressBlock,@function
BZ2_compressBlock:                      # @BZ2_compressBlock
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 108(%rax)
	jle	.LBB69_6
# %bb.1:
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	xorl	$-1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 648(%rcx)
	movq	-8(%rbp), %rax
	movl	652(%rax), %eax
	shll	$1, %eax
	movq	-8(%rbp), %rcx
	movl	652(%rcx), %ecx
	shrl	$31, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 652(%rcx)
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	movq	-8(%rbp), %rcx
	xorl	652(%rcx), %eax
	movl	%eax, 652(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$1, 660(%rax)
	jle	.LBB69_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
.LBB69_3:
	movq	-8(%rbp), %rax
	cmpl	$2, 656(%rax)
	jl	.LBB69_5
# %bb.4:
	movabsq	$.L.str.56, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	660(%rax), %edx
	movq	-8(%rbp), %rax
	movl	648(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	652(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	108(%rax), %r9d
	movb	$0, %al
	callq	fprintf
.LBB69_5:
	movq	-8(%rbp), %rdi
	callq	BZ2_blockSort
.LBB69_6:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	108(%rcx), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$1, 660(%rax)
	jne	.LBB69_8
# %bb.7:
	movq	-8(%rbp), %rdi
	callq	BZ2_bsInitWrite
	movq	-8(%rbp), %rdi
	movl	$66, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$90, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$104, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	664(%rax), %eax
	addl	$48, %eax
	movzbl	%al, %esi
	callq	bsPutUChar
.LBB69_8:
	movq	-8(%rbp), %rax
	cmpl	$0, 108(%rax)
	jle	.LBB69_10
# %bb.9:
	movq	-8(%rbp), %rdi
	movl	$49, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$65, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$38, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$83, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	648(%rax), %esi
	callq	bsPutUInt32
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movl	$24, %esi
	callq	bsW
	movq	-8(%rbp), %rdi
	callq	generateMTFValues
	movq	-8(%rbp), %rdi
	callq	sendMTFValues
.LBB69_10:
	cmpb	$0, -9(%rbp)
	je	.LBB69_14
# %bb.11:
	movq	-8(%rbp), %rdi
	movl	$23, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$114, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$69, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$56, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$80, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$144, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	652(%rax), %esi
	callq	bsPutUInt32
	movq	-8(%rbp), %rax
	cmpl	$2, 656(%rax)
	jl	.LBB69_13
# %bb.12:
	movabsq	$.L.str.1.57, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	652(%rax), %edx
	movb	$0, %al
	callq	fprintf
.LBB69_13:
	movq	-8(%rbp), %rdi
	callq	bsFinishWrite
.LBB69_14:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	BZ2_compressBlock, .Lfunc_end69-BZ2_compressBlock
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsPutUChar
	.type	bsPutUChar,@function
bsPutUChar:                             # @bsPutUChar
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movb	%sil, -1(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	-1(%rbp), %edx
	movl	$8, %esi
	callq	bsW
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	bsPutUChar, .Lfunc_end70-bsPutUChar
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsPutUInt32
	.type	bsPutUInt32,@function
bsPutUInt32:                            # @bsPutUInt32
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def %edx killed %edx killed %rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def %edx killed %edx killed %rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def %edx killed %edx killed %rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def %edx killed %edx killed %rdx
	callq	bsW
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	bsPutUInt32, .Lfunc_end71-bsPutUInt32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsW
	.type	bsW,@function
bsW:                                    # @bsW
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.LBB72_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 644(%rax)
	jl	.LBB72_3
# %bb.2:                                #   in Loop: Header=BB72_1 Depth=1
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %ecx
	shll	$8, %ecx
	movl	%ecx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 644(%rax)
	jmp	.LBB72_1
.LBB72_3:
	movl	$32, %ecx
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	subl	644(%rdx), %ecx
	subl	-12(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	movq	-8(%rbp), %rcx
	orl	640(%rcx), %eax
	movl	%eax, 640(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	644(%rcx), %eax
	movl	%eax, 644(%rcx)
	popq	%rbp
	retq
.Lfunc_end72:
	.size	bsW, .Lfunc_end72-bsW
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function generateMTFValues
	.type	generateMTFValues,@function
generateMTFValues:                      # @generateMTFValues
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	makeMaps_e
	movq	-32(%rbp), %rax
	movl	124(%rax), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -16(%rbp)
.LBB73_1:                               # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB73_4
# %bb.2:                                #   in Loop: Header=BB73_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	$0, 672(%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB73_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB73_1
.LBB73_4:
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB73_5:                               # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jge	.LBB73_8
# %bb.6:                                #   in Loop: Header=BB73_5 Depth=1
	movl	-16(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movb	%al, -336(%rbp,%rcx)
# %bb.7:                                #   in Loop: Header=BB73_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB73_5
.LBB73_8:
	movl	$0, -16(%rbp)
.LBB73_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_16 Depth 2
                                        #     Child Loop BB73_24 Depth 2
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jge	.LBB73_29
# %bb.10:                               #   in Loop: Header=BB73_9 Depth=1
	movq	-80(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB73_12
# %bb.11:                               #   in Loop: Header=BB73_9 Depth=1
	movq	-32(%rbp), %rax
	movl	108(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB73_12:                              #   in Loop: Header=BB73_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movb	384(%rax,%rcx), %al
	movb	%al, -17(%rbp)
	movzbl	-336(%rbp), %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB73_14
# %bb.13:                               #   in Loop: Header=BB73_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB73_27
.LBB73_14:                              #   in Loop: Header=BB73_9 Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB73_23
# %bb.15:                               #   in Loop: Header=BB73_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB73_16:                              #   Parent Loop BB73_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB73_18
# %bb.17:                               #   in Loop: Header=BB73_16 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$1, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	676(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 676(%rax)
	jmp	.LBB73_19
.LBB73_18:                              #   in Loop: Header=BB73_16 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	672(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 672(%rax)
.LBB73_19:                              #   in Loop: Header=BB73_16 Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB73_21
# %bb.20:                               #   in Loop: Header=BB73_9 Depth=1
	jmp	.LBB73_22
.LBB73_21:                              #   in Loop: Header=BB73_16 Depth=2
	movl	$2, %ecx
	movl	-12(%rbp), %eax
	subl	$2, %eax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	jmp	.LBB73_16
.LBB73_22:                              #   in Loop: Header=BB73_9 Depth=1
	movl	$0, -12(%rbp)
.LBB73_23:                              #   in Loop: Header=BB73_9 Depth=1
	leaq	-336(%rbp), %rax
	movb	-335(%rbp), %cl
	movb	%cl, -5(%rbp)
	movb	-336(%rbp), %cl
	movb	%cl, -335(%rbp)
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movb	-17(%rbp), %al
	movb	%al, -38(%rbp)
.LBB73_24:                              #   Parent Loop BB73_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-38(%rbp), %eax
	movzbl	-5(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB73_26
# %bb.25:                               #   in Loop: Header=BB73_24 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movb	-5(%rbp), %al
	movb	%al, -37(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -5(%rbp)
	movb	-37(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB73_24
.LBB73_26:                              #   in Loop: Header=BB73_9 Depth=1
	leaq	-336(%rbp), %rax
	movb	-5(%rbp), %cl
	movb	%cl, -336(%rbp)
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	672(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 672(%rax,%rcx,4)
.LBB73_27:                              #   in Loop: Header=BB73_9 Depth=1
	jmp	.LBB73_28
.LBB73_28:                              #   in Loop: Header=BB73_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB73_9
.LBB73_29:
	cmpl	$0, -12(%rbp)
	jle	.LBB73_38
# %bb.30:
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB73_31:                              # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB73_33
# %bb.32:                               #   in Loop: Header=BB73_31 Depth=1
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$1, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	676(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 676(%rax)
	jmp	.LBB73_34
.LBB73_33:                              #   in Loop: Header=BB73_31 Depth=1
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	672(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 672(%rax)
.LBB73_34:                              #   in Loop: Header=BB73_31 Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB73_36
# %bb.35:
	jmp	.LBB73_37
.LBB73_36:                              #   in Loop: Header=BB73_31 Depth=1
	movl	$2, %ecx
	movl	-12(%rbp), %eax
	subl	$2, %eax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	jmp	.LBB73_31
.LBB73_37:
	movl	$0, -12(%rbp)
.LBB73_38:
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	672(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 672(%rax,%rcx,4)
	movl	-4(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 668(%rcx)
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end73:
	.size	generateMTFValues, .Lfunc_end73-generateMTFValues
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function sendMTFValues
.LCPI74_0:
	.quad	4636737291354636288     # double 100
	.text
	.p2align	4, 0x90
	.type	sendMTFValues,@function
sendMTFValues:                          # @sendMTFValues
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_2
# %bb.1:
	movabsq	$.L.str.2.58, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	108(%rax), %edx
	movq	-16(%rbp), %rax
	movl	668(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	124(%rax), %r8d
	movb	$0, %al
	callq	fprintf
.LBB74_2:
	movq	-16(%rbp), %rax
	movl	124(%rax), %eax
	addl	$2, %eax
	movl	%eax, -100(%rbp)
	movl	$0, -48(%rbp)
.LBB74_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_5 Depth 2
	cmpl	$6, -48(%rbp)
	jge	.LBB74_10
# %bb.4:                                #   in Loop: Header=BB74_3 Depth=1
	movl	$0, -56(%rbp)
.LBB74_5:                               #   Parent Loop BB74_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_8
# %bb.6:                                #   in Loop: Header=BB74_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$15, (%rax,%rcx)
# %bb.7:                                #   in Loop: Header=BB74_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB74_5
.LBB74_8:                               #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_9
.LBB74_9:                               #   in Loop: Header=BB74_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_3
.LBB74_10:
	movq	-16(%rbp), %rax
	cmpl	$0, 668(%rax)
	jg	.LBB74_12
# %bb.11:
	movl	$3001, %edi             # imm = 0xBB9
	callq	BZ2_bz__AssertH__fail
.LBB74_12:
	movq	-16(%rbp), %rax
	cmpl	$200, 668(%rax)
	jge	.LBB74_14
# %bb.13:
	movl	$2, -84(%rbp)
	jmp	.LBB74_24
.LBB74_14:
	movq	-16(%rbp), %rax
	cmpl	$600, 668(%rax)         # imm = 0x258
	jge	.LBB74_16
# %bb.15:
	movl	$3, -84(%rbp)
	jmp	.LBB74_23
.LBB74_16:
	movq	-16(%rbp), %rax
	cmpl	$1200, 668(%rax)        # imm = 0x4B0
	jge	.LBB74_18
# %bb.17:
	movl	$4, -84(%rbp)
	jmp	.LBB74_22
.LBB74_18:
	movq	-16(%rbp), %rax
	cmpl	$2400, 668(%rax)        # imm = 0x960
	jge	.LBB74_20
# %bb.19:
	movl	$5, -84(%rbp)
	jmp	.LBB74_21
.LBB74_20:
	movl	$6, -84(%rbp)
.LBB74_21:
	jmp	.LBB74_22
.LBB74_22:
	jmp	.LBB74_23
.LBB74_23:
	jmp	.LBB74_24
.LBB74_24:
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	movl	%eax, -140(%rbp)
	movl	$0, -20(%rbp)
.LBB74_25:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_27 Depth 2
                                        #     Child Loop BB74_39 Depth 2
	cmpl	$0, -96(%rbp)
	jle	.LBB74_47
# %bb.26:                               #   in Loop: Header=BB74_25 Depth=1
	movl	-140(%rbp), %eax
	cltd
	idivl	-96(%rbp)
	movl	%eax, -172(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -108(%rbp)
.LBB74_27:                              #   Parent Loop BB74_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	-108(%rbp), %ecx
	cmpl	-172(%rbp), %ecx
	jge	.LBB74_29
# %bb.28:                               #   in Loop: Header=BB74_27 Depth=2
	movl	-60(%rbp), %eax
	movl	-100(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setl	%al
.LBB74_29:                              #   in Loop: Header=BB74_27 Depth=2
	testb	$1, %al
	jne	.LBB74_30
	jmp	.LBB74_31
.LBB74_30:                              #   in Loop: Header=BB74_27 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	672(%rax,%rcx,4), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB74_27
.LBB74_31:                              #   in Loop: Header=BB74_25 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB74_36
# %bb.32:                               #   in Loop: Header=BB74_25 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-84(%rbp), %eax
	je	.LBB74_36
# %bb.33:                               #   in Loop: Header=BB74_25 Depth=1
	cmpl	$1, -96(%rbp)
	je	.LBB74_36
# %bb.34:                               #   in Loop: Header=BB74_25 Depth=1
	movl	$2, %ecx
	movl	-84(%rbp), %eax
	subl	-96(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB74_36
# %bb.35:                               #   in Loop: Header=BB74_25 Depth=1
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	672(%rax,%rcx,4), %eax
	movl	-108(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB74_36:                              #   in Loop: Header=BB74_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_38
# %bb.37:                               #   in Loop: Header=BB74_25 Depth=1
	movabsq	$.L.str.3.59, %rsi
	movsd	.LCPI74_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	stderr, %rdi
	movl	-96(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	-108(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movb	$1, %al
	callq	fprintf
.LBB74_38:                              #   in Loop: Header=BB74_25 Depth=1
	movl	$0, -56(%rbp)
.LBB74_39:                              #   Parent Loop BB74_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_46
# %bb.40:                               #   in Loop: Header=BB74_39 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB74_43
# %bb.41:                               #   in Loop: Header=BB74_39 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB74_43
# %bb.42:                               #   in Loop: Header=BB74_39 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	jmp	.LBB74_44
.LBB74_43:                              #   in Loop: Header=BB74_39 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$15, (%rax,%rcx)
.LBB74_44:                              #   in Loop: Header=BB74_39 Depth=2
	jmp	.LBB74_45
.LBB74_45:                              #   in Loop: Header=BB74_39 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB74_39
.LBB74_46:                              #   in Loop: Header=BB74_25 Depth=1
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-108(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	jmp	.LBB74_25
.LBB74_47:
	movl	$0, -136(%rbp)
.LBB74_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_50 Depth 2
                                        #     Child Loop BB74_54 Depth 2
                                        #       Child Loop BB74_56 Depth 3
                                        #     Child Loop BB74_63 Depth 2
                                        #     Child Loop BB74_68 Depth 2
                                        #       Child Loop BB74_73 Depth 3
                                        #       Child Loop BB74_80 Depth 3
                                        #         Child Loop BB74_82 Depth 4
                                        #       Child Loop BB74_89 Depth 3
                                        #       Child Loop BB74_98 Depth 3
                                        #     Child Loop BB74_105 Depth 2
                                        #     Child Loop BB74_110 Depth 2
	cmpl	$4, -136(%rbp)
	jge	.LBB74_115
# %bb.49:                               #   in Loop: Header=BB74_48 Depth=1
	movl	$0, -48(%rbp)
.LBB74_50:                              #   Parent Loop BB74_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_53
# %bb.51:                               #   in Loop: Header=BB74_50 Depth=2
	movslq	-48(%rbp), %rax
	movl	$0, -224(%rbp,%rax,4)
# %bb.52:                               #   in Loop: Header=BB74_50 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_50
.LBB74_53:                              #   in Loop: Header=BB74_48 Depth=1
	movl	$0, -48(%rbp)
.LBB74_54:                              #   Parent Loop BB74_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB74_56 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_61
# %bb.55:                               #   in Loop: Header=BB74_54 Depth=2
	movl	$0, -56(%rbp)
.LBB74_56:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_59
# %bb.57:                               #   in Loop: Header=BB74_56 Depth=3
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.58:                               #   in Loop: Header=BB74_56 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB74_56
.LBB74_59:                              #   in Loop: Header=BB74_54 Depth=2
	jmp	.LBB74_60
.LBB74_60:                              #   in Loop: Header=BB74_54 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_54
.LBB74_61:                              #   in Loop: Header=BB74_48 Depth=1
	cmpl	$6, -84(%rbp)
	jne	.LBB74_67
# %bb.62:                               #   in Loop: Header=BB74_48 Depth=1
	movl	$0, -56(%rbp)
.LBB74_63:                              #   Parent Loop BB74_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_66
# %bb.64:                               #   in Loop: Header=BB74_63 Depth=2
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	37966(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	37708(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	38482(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	38224(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	38998(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	38740(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
# %bb.65:                               #   in Loop: Header=BB74_63 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB74_63
.LBB74_66:                              #   in Loop: Header=BB74_48 Depth=1
	jmp	.LBB74_67
.LBB74_67:                              #   in Loop: Header=BB74_48 Depth=1
	movl	$0, -104(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -20(%rbp)
.LBB74_68:                              #   Parent Loop BB74_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB74_73 Depth 3
                                        #       Child Loop BB74_80 Depth 3
                                        #         Child Loop BB74_82 Depth 4
                                        #       Child Loop BB74_89 Depth 3
                                        #       Child Loop BB74_98 Depth 3
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB74_70
# %bb.69:                               #   in Loop: Header=BB74_48 Depth=1
	jmp	.LBB74_103
.LBB74_70:                              #   in Loop: Header=BB74_68 Depth=2
	movl	-20(%rbp), %eax
	addl	$50, %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB74_72
# %bb.71:                               #   in Loop: Header=BB74_68 Depth=2
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB74_72:                              #   in Loop: Header=BB74_68 Depth=2
	movl	$0, -48(%rbp)
.LBB74_73:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_76
# %bb.74:                               #   in Loop: Header=BB74_73 Depth=3
	movslq	-48(%rbp), %rax
	movw	$0, -162(%rbp,%rax,2)
# %bb.75:                               #   in Loop: Header=BB74_73 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_73
.LBB74_76:                              #   in Loop: Header=BB74_68 Depth=2
	cmpl	$6, -84(%rbp)
	jne	.LBB74_79
# %bb.77:                               #   in Loop: Header=BB74_68 Depth=2
	movl	$50, %eax
	movl	-60(%rbp), %ecx
	subl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB74_79
# %bb.78:                               #   in Loop: Header=BB74_68 Depth=2
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$20, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$21, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$22, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$23, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$24, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$25, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$26, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$27, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$28, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$29, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$30, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$31, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$32, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$33, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$34, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$35, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$36, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$37, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$38, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$39, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$40, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$41, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$42, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$43, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$44, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$45, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$46, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$47, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$48, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$49, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -162(%rbp)
	movl	-32(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -160(%rbp)
	movl	-28(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -158(%rbp)
	movl	-28(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -156(%rbp)
	movl	-24(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -154(%rbp)
	movl	-24(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -152(%rbp)
	jmp	.LBB74_88
.LBB74_79:                              #   in Loop: Header=BB74_68 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB74_80:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_68 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB74_82 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB74_87
# %bb.81:                               #   in Loop: Header=BB74_80 Depth=3
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -150(%rbp)
	movl	$0, -48(%rbp)
.LBB74_82:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_68 Depth=2
                                        #       Parent Loop BB74_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_85
# %bb.83:                               #   in Loop: Header=BB74_82 Depth=4
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movzwl	-150(%rbp), %ecx
	movzbl	(%rax,%rcx), %eax
	movslq	-48(%rbp), %rcx
	movzwl	-162(%rbp,%rcx,2), %edx
	addl	%eax, %edx
	movw	%dx, -162(%rbp,%rcx,2)
# %bb.84:                               #   in Loop: Header=BB74_82 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_82
.LBB74_85:                              #   in Loop: Header=BB74_80 Depth=3
	jmp	.LBB74_86
.LBB74_86:                              #   in Loop: Header=BB74_80 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_80
.LBB74_87:                              #   in Loop: Header=BB74_68 Depth=2
	jmp	.LBB74_88
.LBB74_88:                              #   in Loop: Header=BB74_68 Depth=2
	movl	$999999999, -144(%rbp)  # imm = 0x3B9AC9FF
	movl	$-1, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB74_89:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_94
# %bb.90:                               #   in Loop: Header=BB74_89 Depth=3
	movslq	-48(%rbp), %rax
	movzwl	-162(%rbp,%rax,2), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB74_92
# %bb.91:                               #   in Loop: Header=BB74_89 Depth=3
	movslq	-48(%rbp), %rax
	movzwl	-162(%rbp,%rax,2), %eax
	movl	%eax, -144(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB74_92:                              #   in Loop: Header=BB74_89 Depth=3
	jmp	.LBB74_93
.LBB74_93:                              #   in Loop: Header=BB74_89 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_89
.LBB74_94:                              #   in Loop: Header=BB74_68 Depth=2
	movl	-144(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	movslq	-52(%rbp), %rax
	movl	-224(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp,%rax,4)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	movb	%al, 1704(%rcx,%rdx)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	cmpl	$6, -84(%rbp)
	jne	.LBB74_97
# %bb.95:                               #   in Loop: Header=BB74_68 Depth=2
	movl	$50, %eax
	movl	-60(%rbp), %ecx
	subl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB74_97
# %bb.96:                               #   in Loop: Header=BB74_68 Depth=2
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$18, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$19, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$20, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$21, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$22, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$23, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$24, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$25, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$26, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$27, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$28, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$29, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$30, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$31, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$32, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$33, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$34, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$35, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$36, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$37, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$38, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$39, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$40, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$41, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$42, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$43, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$44, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$45, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$46, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$47, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$48, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$49, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB74_102
.LBB74_97:                              #   in Loop: Header=BB74_68 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB74_98:                              #   Parent Loop BB74_48 Depth=1
                                        #     Parent Loop BB74_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB74_101
# %bb.99:                               #   in Loop: Header=BB74_98 Depth=3
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.100:                              #   in Loop: Header=BB74_98 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_98
.LBB74_101:                             #   in Loop: Header=BB74_68 Depth=2
	jmp	.LBB74_102
.LBB74_102:                             #   in Loop: Header=BB74_68 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB74_68
.LBB74_103:                             #   in Loop: Header=BB74_48 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_109
# %bb.104:                              #   in Loop: Header=BB74_48 Depth=1
	movabsq	$.L.str.4.60, %rsi
	movl	$8, %r8d
	movq	stderr, %rdi
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movl	-148(%rbp), %eax
	cltd
	idivl	%r8d
	movl	%ecx, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	fprintf
	movl	$0, -48(%rbp)
.LBB74_105:                             #   Parent Loop BB74_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_108
# %bb.106:                              #   in Loop: Header=BB74_105 Depth=2
	movabsq	$.L.str.5.61, %rsi
	movq	stderr, %rdi
	movslq	-48(%rbp), %rax
	movl	-224(%rbp,%rax,4), %edx
	movb	$0, %al
	callq	fprintf
# %bb.107:                              #   in Loop: Header=BB74_105 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_105
.LBB74_108:                             #   in Loop: Header=BB74_48 Depth=1
	movabsq	$.L.str.6.62, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB74_109:                             #   in Loop: Header=BB74_48 Depth=1
	movl	$0, -48(%rbp)
.LBB74_110:                             #   Parent Loop BB74_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_113
# %bb.111:                              #   in Loop: Header=BB74_110 Depth=2
	movq	-16(%rbp), %rdi
	addq	$37708, %rdi            # imm = 0x934C
	movslq	-48(%rbp), %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	addq	$45448, %rsi            # imm = 0xB188
	movslq	-48(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rsi
	movl	-100(%rbp), %edx
	movl	$17, %ecx
	callq	BZ2_hbMakeCodeLengths
# %bb.112:                              #   in Loop: Header=BB74_110 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_110
.LBB74_113:                             #   in Loop: Header=BB74_48 Depth=1
	jmp	.LBB74_114
.LBB74_114:                             #   in Loop: Header=BB74_48 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB74_48
.LBB74_115:
	cmpl	$8, -84(%rbp)
	jl	.LBB74_117
# %bb.116:
	movl	$3002, %edi             # imm = 0xBBA
	callq	BZ2_bz__AssertH__fail
.LBB74_117:
	cmpl	$32768, -104(%rbp)      # imm = 0x8000
	jge	.LBB74_119
# %bb.118:
	cmpl	$18002, -104(%rbp)      # imm = 0x4652
	jle	.LBB74_120
.LBB74_119:
	movl	$3003, %edi             # imm = 0xBBB
	callq	BZ2_bz__AssertH__fail
.LBB74_120:
	movl	$0, -44(%rbp)
.LBB74_121:                             # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_124
# %bb.122:                              #   in Loop: Header=BB74_121 Depth=1
	movl	-44(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movb	%al, -168(%rbp,%rcx)
# %bb.123:                              #   in Loop: Header=BB74_121 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_121
.LBB74_124:
	movl	$0, -44(%rbp)
.LBB74_125:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_127 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB74_131
# %bb.126:                              #   in Loop: Header=BB74_125 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	1704(%rax,%rcx), %al
	movb	%al, -122(%rbp)
	movl	$0, -88(%rbp)
	movslq	-88(%rbp), %rax
	movb	-168(%rbp,%rax), %al
	movb	%al, -89(%rbp)
.LBB74_127:                             #   Parent Loop BB74_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-122(%rbp), %eax
	movzbl	-89(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB74_129
# %bb.128:                              #   in Loop: Header=BB74_127 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movb	-89(%rbp), %al
	movb	%al, -121(%rbp)
	movslq	-88(%rbp), %rax
	movb	-168(%rbp,%rax), %al
	movb	%al, -89(%rbp)
	movb	-121(%rbp), %al
	movslq	-88(%rbp), %rcx
	movb	%al, -168(%rbp,%rcx)
	jmp	.LBB74_127
.LBB74_129:                             #   in Loop: Header=BB74_125 Depth=1
	movb	-89(%rbp), %al
	movb	%al, -168(%rbp)
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movb	%al, 19706(%rcx,%rdx)
# %bb.130:                              #   in Loop: Header=BB74_125 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_125
.LBB74_131:
	movl	$0, -48(%rbp)
.LBB74_132:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_134 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_147
# %bb.133:                              #   in Loop: Header=BB74_132 Depth=1
	movl	$32, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -44(%rbp)
.LBB74_134:                             #   Parent Loop BB74_132 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_141
# %bb.135:                              #   in Loop: Header=BB74_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB74_137
# %bb.136:                              #   in Loop: Header=BB74_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -128(%rbp)
.LBB74_137:                             #   in Loop: Header=BB74_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB74_139
# %bb.138:                              #   in Loop: Header=BB74_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -132(%rbp)
.LBB74_139:                             #   in Loop: Header=BB74_134 Depth=2
	jmp	.LBB74_140
.LBB74_140:                             #   in Loop: Header=BB74_134 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_134
.LBB74_141:                             #   in Loop: Header=BB74_132 Depth=1
	cmpl	$17, -128(%rbp)
	jle	.LBB74_143
# %bb.142:                              #   in Loop: Header=BB74_132 Depth=1
	movl	$3004, %edi             # imm = 0xBBC
	callq	BZ2_bz__AssertH__fail
.LBB74_143:                             #   in Loop: Header=BB74_132 Depth=1
	cmpl	$1, -132(%rbp)
	jge	.LBB74_145
# %bb.144:                              #   in Loop: Header=BB74_132 Depth=1
	movl	$3005, %edi             # imm = 0xBBD
	callq	BZ2_bz__AssertH__fail
.LBB74_145:                             #   in Loop: Header=BB74_132 Depth=1
	movq	-16(%rbp), %rdi
	addq	$39256, %rdi            # imm = 0x9958
	movslq	-48(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	addq	$37708, %rsi            # imm = 0x934C
	movslq	-48(%rbp), %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%rax, %rsi
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	BZ2_hbAssignCodes
# %bb.146:                              #   in Loop: Header=BB74_132 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_132
.LBB74_147:
	movl	$0, -44(%rbp)
.LBB74_148:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_150 Depth 2
	cmpl	$16, -44(%rbp)
	jge	.LBB74_157
# %bb.149:                              #   in Loop: Header=BB74_148 Depth=1
	movslq	-44(%rbp), %rax
	movb	$0, -192(%rbp,%rax)
	movl	$0, -88(%rbp)
.LBB74_150:                             #   Parent Loop BB74_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -88(%rbp)
	jge	.LBB74_155
# %bb.151:                              #   in Loop: Header=BB74_150 Depth=2
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$4, %ecx
	addl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB74_153
# %bb.152:                              #   in Loop: Header=BB74_150 Depth=2
	movslq	-44(%rbp), %rax
	movb	$1, -192(%rbp,%rax)
.LBB74_153:                             #   in Loop: Header=BB74_150 Depth=2
	jmp	.LBB74_154
.LBB74_154:                             #   in Loop: Header=BB74_150 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB74_150
.LBB74_155:                             #   in Loop: Header=BB74_148 Depth=1
	jmp	.LBB74_156
.LBB74_156:                             #   in Loop: Header=BB74_148 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_148
.LBB74_157:
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -44(%rbp)
.LBB74_158:                             # =>This Inner Loop Header: Depth=1
	cmpl	$16, -44(%rbp)
	jge	.LBB74_164
# %bb.159:                              #   in Loop: Header=BB74_158 Depth=1
	movslq	-44(%rbp), %rax
	cmpb	$0, -192(%rbp,%rax)
	je	.LBB74_161
# %bb.160:                              #   in Loop: Header=BB74_158 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
	jmp	.LBB74_162
.LBB74_161:                             #   in Loop: Header=BB74_158 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
.LBB74_162:                             #   in Loop: Header=BB74_158 Depth=1
	jmp	.LBB74_163
.LBB74_163:                             #   in Loop: Header=BB74_158 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_158
.LBB74_164:
	movl	$0, -44(%rbp)
.LBB74_165:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_168 Depth 2
	cmpl	$16, -44(%rbp)
	jge	.LBB74_177
# %bb.166:                              #   in Loop: Header=BB74_165 Depth=1
	movslq	-44(%rbp), %rax
	cmpb	$0, -192(%rbp,%rax)
	je	.LBB74_175
# %bb.167:                              #   in Loop: Header=BB74_165 Depth=1
	movl	$0, -88(%rbp)
.LBB74_168:                             #   Parent Loop BB74_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -88(%rbp)
	jge	.LBB74_174
# %bb.169:                              #   in Loop: Header=BB74_168 Depth=2
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$4, %ecx
	addl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB74_171
# %bb.170:                              #   in Loop: Header=BB74_168 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
	jmp	.LBB74_172
.LBB74_171:                             #   in Loop: Header=BB74_168 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
.LBB74_172:                             #   in Loop: Header=BB74_168 Depth=2
	jmp	.LBB74_173
.LBB74_173:                             #   in Loop: Header=BB74_168 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB74_168
.LBB74_174:                             #   in Loop: Header=BB74_165 Depth=1
	jmp	.LBB74_175
.LBB74_175:                             #   in Loop: Header=BB74_165 Depth=1
	jmp	.LBB74_176
.LBB74_176:                             #   in Loop: Header=BB74_165 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_165
.LBB74_177:
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_179
# %bb.178:
	movabsq	$.L.str.7.63, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB74_179:
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	$3, %esi
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-104(%rbp), %edx
	movl	$15, %esi
	callq	bsW
	movl	$0, -44(%rbp)
.LBB74_180:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_182 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB74_187
# %bb.181:                              #   in Loop: Header=BB74_180 Depth=1
	movl	$0, -88(%rbp)
.LBB74_182:                             #   Parent Loop BB74_180 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	19706(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB74_185
# %bb.183:                              #   in Loop: Header=BB74_182 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
# %bb.184:                              #   in Loop: Header=BB74_182 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB74_182
.LBB74_185:                             #   in Loop: Header=BB74_180 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
# %bb.186:                              #   in Loop: Header=BB74_180 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_180
.LBB74_187:
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_189
# %bb.188:
	movabsq	$.L.str.8.64, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB74_189:
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -48(%rbp)
.LBB74_190:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_192 Depth 2
                                        #       Child Loop BB74_194 Depth 3
                                        #       Child Loop BB74_197 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB74_203
# %bb.191:                              #   in Loop: Header=BB74_190 Depth=1
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rdi
	movl	-116(%rbp), %edx
	movl	$5, %esi
	callq	bsW
	movl	$0, -44(%rbp)
.LBB74_192:                             #   Parent Loop BB74_190 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB74_194 Depth 3
                                        #       Child Loop BB74_197 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB74_201
# %bb.193:                              #   in Loop: Header=BB74_192 Depth=2
	jmp	.LBB74_194
.LBB74_194:                             #   Parent Loop BB74_190 Depth=1
                                        #     Parent Loop BB74_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$37708, %rcx            # imm = 0x934C
	movslq	-48(%rbp), %rdx
	imulq	$258, %rdx, %rdx        # imm = 0x102
	addq	%rdx, %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB74_196
# %bb.195:                              #   in Loop: Header=BB74_194 Depth=3
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	movl	$2, %edx
	callq	bsW
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB74_194
.LBB74_196:                             #   in Loop: Header=BB74_192 Depth=2
	jmp	.LBB74_197
.LBB74_197:                             #   Parent Loop BB74_190 Depth=1
                                        #     Parent Loop BB74_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$37708, %rcx            # imm = 0x934C
	movslq	-48(%rbp), %rdx
	imulq	$258, %rdx, %rdx        # imm = 0x102
	addq	%rdx, %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB74_199
# %bb.198:                              #   in Loop: Header=BB74_197 Depth=3
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	movl	$3, %edx
	callq	bsW
	movl	-116(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB74_197
.LBB74_199:                             #   in Loop: Header=BB74_192 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
# %bb.200:                              #   in Loop: Header=BB74_192 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_192
.LBB74_201:                             #   in Loop: Header=BB74_190 Depth=1
	jmp	.LBB74_202
.LBB74_202:                             #   in Loop: Header=BB74_190 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_190
.LBB74_203:
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_205
# %bb.204:
	movabsq	$.L.str.9.65, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB74_205:
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -20(%rbp)
.LBB74_206:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_216 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB74_208
# %bb.207:
	jmp	.LBB74_221
.LBB74_208:                             #   in Loop: Header=BB74_206 Depth=1
	movl	-20(%rbp), %eax
	addl	$50, %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB74_210
# %bb.209:                              #   in Loop: Header=BB74_206 Depth=1
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB74_210:                             #   in Loop: Header=BB74_206 Depth=1
	movq	-16(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movzbl	1704(%rax,%rcx), %eax
	cmpl	-84(%rbp), %eax
	jl	.LBB74_212
# %bb.211:                              #   in Loop: Header=BB74_206 Depth=1
	movl	$3006, %edi             # imm = 0xBBE
	callq	BZ2_bz__AssertH__fail
.LBB74_212:                             #   in Loop: Header=BB74_206 Depth=1
	cmpl	$6, -84(%rbp)
	jne	.LBB74_215
# %bb.213:                              #   in Loop: Header=BB74_206 Depth=1
	movl	$50, %eax
	movl	-60(%rbp), %ecx
	subl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB74_215
# %bb.214:                              #   in Loop: Header=BB74_206 Depth=1
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	addq	$39256, %rax            # imm = 0x9958
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$20, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$21, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$22, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$23, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$24, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$25, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$26, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$27, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$28, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$29, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$30, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$31, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$32, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$33, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$34, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$35, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$36, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$37, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$38, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$39, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$40, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$41, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$42, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$43, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$44, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$45, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$46, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$47, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$48, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$49, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	jmp	.LBB74_220
.LBB74_215:                             #   in Loop: Header=BB74_206 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB74_216:                             #   Parent Loop BB74_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB74_219
# %bb.217:                              #   in Loop: Header=BB74_216 Depth=2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-16(%rbp), %rax
	addq	$39256, %rax            # imm = 0x9958
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
# %bb.218:                              #   in Loop: Header=BB74_216 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_216
.LBB74_219:                             #   in Loop: Header=BB74_206 Depth=1
	jmp	.LBB74_220
.LBB74_220:                             #   in Loop: Header=BB74_206 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB74_206
.LBB74_221:
	movl	-112(%rbp), %eax
	cmpl	-104(%rbp), %eax
	je	.LBB74_223
# %bb.222:
	movl	$3007, %edi             # imm = 0xBBF
	callq	BZ2_bz__AssertH__fail
.LBB74_223:
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB74_225
# %bb.224:
	movabsq	$.L.str.10.66, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movb	$0, %al
	callq	fprintf
.LBB74_225:
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	sendMTFValues, .Lfunc_end74-sendMTFValues
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsFinishWrite
	.type	bsFinishWrite,@function
bsFinishWrite:                          # @bsFinishWrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.LBB75_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 644(%rax)
	jle	.LBB75_3
# %bb.2:                                #   in Loop: Header=BB75_1 Depth=1
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %ecx
	shll	$8, %ecx
	movl	%ecx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 644(%rax)
	jmp	.LBB75_1
.LBB75_3:
	popq	%rbp
	retq
.Lfunc_end75:
	.size	bsFinishWrite, .Lfunc_end75-bsFinishWrite
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function makeMaps_e
	.type	makeMaps_e,@function
makeMaps_e:                             # @makeMaps_e
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 124(%rax)
	movl	$0, -4(%rbp)
.LBB76_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB76_6
# %bb.2:                                #   in Loop: Header=BB76_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB76_4
# %bb.3:                                #   in Loop: Header=BB76_1 Depth=1
	movq	-16(%rbp), %rax
	movl	124(%rax), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movb	%al, 384(%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	124(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 124(%rax)
.LBB76_4:                               #   in Loop: Header=BB76_1 Depth=1
	jmp	.LBB76_5
.LBB76_5:                               #   in Loop: Header=BB76_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB76_1
.LBB76_6:
	popq	%rbp
	retq
.Lfunc_end76:
	.size	makeMaps_e, .Lfunc_end76-makeMaps_e
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_decompress          # -- Begin function BZ2_decompress
	.p2align	4, 0x90
	.type	BZ2_decompress,@function
BZ2_decompress:                         # @BZ2_decompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$10, 8(%rax)
	jne	.LBB77_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	$0, 64036(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64040(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64044(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64048(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64052(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64056(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64060(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64064(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64068(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64072(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64076(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64080(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64084(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64088(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64092(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64096(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64100(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64108(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64112(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 64116(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64136(%rax)
.LBB77_2:
	movq	-8(%rbp), %rax
	movl	64036(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	64040(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	64044(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	64048(%rax), %eax
	movl	%eax, -132(%rbp)
	movq	-8(%rbp), %rax
	movl	64052(%rax), %eax
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %rax
	movl	64056(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rax
	movl	64060(%rax), %eax
	movl	%eax, -172(%rbp)
	movq	-8(%rbp), %rax
	movl	64064(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rax
	movl	64068(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	64072(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	64076(%rax), %eax
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rax
	movl	64080(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	64084(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	64088(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rax
	movl	64092(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rax
	movl	64096(%rax), %eax
	movl	%eax, -368(%rbp)
	movq	-8(%rbp), %rax
	movl	64100(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	64104(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	64108(%rax), %eax
	movl	%eax, -104(%rbp)
	movq	-8(%rbp), %rax
	movl	64112(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	64116(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rax
	movq	64120(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	64128(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	64136(%rax), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-10, %eax
	movl	%eax, %ecx
	subl	$40, %ecx
	ja	.LBB77_671
# %bb.3:
	movq	.LJTI77_0(,%rax,8), %rax
	jmpq	*%rax
.LBB77_4:
	movq	-8(%rbp), %rax
	movl	$10, 8(%rax)
.LBB77_5:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_7
# %bb.6:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -364(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-364(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_12
.LBB77_7:                               #   in Loop: Header=BB77_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_9
# %bb.8:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_9:                               #   in Loop: Header=BB77_5 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_11
# %bb.10:                               #   in Loop: Header=BB77_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_11:                              #   in Loop: Header=BB77_5 Depth=1
	jmp	.LBB77_5
.LBB77_12:
	movzbl	-9(%rbp), %eax
	cmpl	$66, %eax
	je	.LBB77_14
# %bb.13:
	movl	$-5, -20(%rbp)
	jmp	.LBB77_673
.LBB77_14:
	jmp	.LBB77_15
.LBB77_15:
	movq	-8(%rbp), %rax
	movl	$11, 8(%rax)
.LBB77_16:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_18
# %bb.17:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -360(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-360(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_23
.LBB77_18:                              #   in Loop: Header=BB77_16 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_20
# %bb.19:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_20:                              #   in Loop: Header=BB77_16 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_22
# %bb.21:                               #   in Loop: Header=BB77_16 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_22:                              #   in Loop: Header=BB77_16 Depth=1
	jmp	.LBB77_16
.LBB77_23:
	movzbl	-9(%rbp), %eax
	cmpl	$90, %eax
	je	.LBB77_25
# %bb.24:
	movl	$-5, -20(%rbp)
	jmp	.LBB77_673
.LBB77_25:
	jmp	.LBB77_26
.LBB77_26:
	movq	-8(%rbp), %rax
	movl	$12, 8(%rax)
.LBB77_27:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_29
# %bb.28:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -356(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-356(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_34
.LBB77_29:                              #   in Loop: Header=BB77_27 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_31
# %bb.30:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_31:                              #   in Loop: Header=BB77_27 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_33
# %bb.32:                               #   in Loop: Header=BB77_27 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_33:                              #   in Loop: Header=BB77_27 Depth=1
	jmp	.LBB77_27
.LBB77_34:
	movzbl	-9(%rbp), %eax
	cmpl	$104, %eax
	je	.LBB77_36
# %bb.35:
	movl	$-5, -20(%rbp)
	jmp	.LBB77_673
.LBB77_36:
	jmp	.LBB77_37
.LBB77_37:
	movq	-8(%rbp), %rax
	movl	$13, 8(%rax)
.LBB77_38:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_40
# %bb.39:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -352(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-352(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
	jmp	.LBB77_45
.LBB77_40:                              #   in Loop: Header=BB77_38 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_42
# %bb.41:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_42:                              #   in Loop: Header=BB77_38 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_44
# %bb.43:                               #   in Loop: Header=BB77_38 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_44:                              #   in Loop: Header=BB77_38 Depth=1
	jmp	.LBB77_38
.LBB77_45:
	movq	-8(%rbp), %rax
	cmpl	$49, 40(%rax)
	jl	.LBB77_47
# %bb.46:
	movq	-8(%rbp), %rax
	cmpl	$57, 40(%rax)
	jle	.LBB77_48
.LBB77_47:
	movl	$-5, -20(%rbp)
	jmp	.LBB77_673
.LBB77_48:
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	cmpb	$0, 44(%rax)
	je	.LBB77_53
# %bb.49:
	movq	-184(%rbp), %rax
	movq	56(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	imull	$100000, 40(%rcx), %ecx # imm = 0x186A0
	movslq	%ecx, %rsi
	shlq	$1, %rsi
                                        # kill: def %esi killed %esi killed %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 3160(%rcx)
	movq	-184(%rbp), %rax
	movq	56(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	imull	$100000, 40(%rcx), %ecx # imm = 0x186A0
	addl	$1, %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rsi
	shlq	$0, %rsi
                                        # kill: def %esi killed %esi killed %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 3168(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 3160(%rax)
	je	.LBB77_51
# %bb.50:
	movq	-8(%rbp), %rax
	cmpq	$0, 3168(%rax)
	jne	.LBB77_52
.LBB77_51:
	movl	$-3, -20(%rbp)
	jmp	.LBB77_673
.LBB77_52:
	jmp	.LBB77_56
.LBB77_53:
	movq	-184(%rbp), %rax
	movq	56(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rcx
	imull	$100000, 40(%rcx), %ecx # imm = 0x186A0
	movslq	%ecx, %rsi
	shlq	$2, %rsi
                                        # kill: def %esi killed %esi killed %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rcx
	movq	%rax, 3152(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 3152(%rax)
	jne	.LBB77_55
# %bb.54:
	movl	$-3, -20(%rbp)
	jmp	.LBB77_673
.LBB77_55:
	jmp	.LBB77_56
.LBB77_56:
	jmp	.LBB77_57
.LBB77_57:
	movq	-8(%rbp), %rax
	movl	$14, 8(%rax)
.LBB77_58:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_60
# %bb.59:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -348(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-348(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_65
.LBB77_60:                              #   in Loop: Header=BB77_58 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_62
# %bb.61:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_62:                              #   in Loop: Header=BB77_58 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_64
# %bb.63:                               #   in Loop: Header=BB77_58 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_64:                              #   in Loop: Header=BB77_58 Depth=1
	jmp	.LBB77_58
.LBB77_65:
	movzbl	-9(%rbp), %eax
	cmpl	$23, %eax
	jne	.LBB77_67
# %bb.66:
	jmp	.LBB77_579
.LBB77_67:
	movzbl	-9(%rbp), %eax
	cmpl	$49, %eax
	je	.LBB77_69
# %bb.68:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_69:
	jmp	.LBB77_70
.LBB77_70:
	movq	-8(%rbp), %rax
	movl	$15, 8(%rax)
.LBB77_71:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_73
# %bb.72:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -344(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-344(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_78
.LBB77_73:                              #   in Loop: Header=BB77_71 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_75
# %bb.74:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_75:                              #   in Loop: Header=BB77_71 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_77
# %bb.76:                               #   in Loop: Header=BB77_71 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_77:                              #   in Loop: Header=BB77_71 Depth=1
	jmp	.LBB77_71
.LBB77_78:
	movzbl	-9(%rbp), %eax
	cmpl	$65, %eax
	je	.LBB77_80
# %bb.79:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_80:
	jmp	.LBB77_81
.LBB77_81:
	movq	-8(%rbp), %rax
	movl	$16, 8(%rax)
.LBB77_82:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_84
# %bb.83:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -340(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-340(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_89
.LBB77_84:                              #   in Loop: Header=BB77_82 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_86
# %bb.85:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_86:                              #   in Loop: Header=BB77_82 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_88
# %bb.87:                               #   in Loop: Header=BB77_82 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_88:                              #   in Loop: Header=BB77_82 Depth=1
	jmp	.LBB77_82
.LBB77_89:
	movzbl	-9(%rbp), %eax
	cmpl	$89, %eax
	je	.LBB77_91
# %bb.90:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_91:
	jmp	.LBB77_92
.LBB77_92:
	movq	-8(%rbp), %rax
	movl	$17, 8(%rax)
.LBB77_93:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_95
# %bb.94:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -336(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-336(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_100
.LBB77_95:                              #   in Loop: Header=BB77_93 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_97
# %bb.96:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_97:                              #   in Loop: Header=BB77_93 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_99
# %bb.98:                               #   in Loop: Header=BB77_93 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_99:                              #   in Loop: Header=BB77_93 Depth=1
	jmp	.LBB77_93
.LBB77_100:
	movzbl	-9(%rbp), %eax
	cmpl	$38, %eax
	je	.LBB77_102
# %bb.101:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_102:
	jmp	.LBB77_103
.LBB77_103:
	movq	-8(%rbp), %rax
	movl	$18, 8(%rax)
.LBB77_104:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_106
# %bb.105:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -332(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-332(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_111
.LBB77_106:                             #   in Loop: Header=BB77_104 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_108
# %bb.107:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_108:                             #   in Loop: Header=BB77_104 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_110
# %bb.109:                              #   in Loop: Header=BB77_104 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_110:                             #   in Loop: Header=BB77_104 Depth=1
	jmp	.LBB77_104
.LBB77_111:
	movzbl	-9(%rbp), %eax
	cmpl	$83, %eax
	je	.LBB77_113
# %bb.112:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_113:
	jmp	.LBB77_114
.LBB77_114:
	movq	-8(%rbp), %rax
	movl	$19, 8(%rax)
.LBB77_115:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_117
# %bb.116:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -328(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-328(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_122
.LBB77_117:                             #   in Loop: Header=BB77_115 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_119
# %bb.118:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_119:                             #   in Loop: Header=BB77_115 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_121
# %bb.120:                              #   in Loop: Header=BB77_115 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_121:                             #   in Loop: Header=BB77_115 Depth=1
	jmp	.LBB77_115
.LBB77_122:
	movzbl	-9(%rbp), %eax
	cmpl	$89, %eax
	je	.LBB77_124
# %bb.123:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_124:
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	jl	.LBB77_126
# %bb.125:
	movabsq	$.L.str.71, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movb	$0, %al
	callq	fprintf
.LBB77_126:
	movq	-8(%rbp), %rax
	movl	$0, 3176(%rax)
.LBB77_127:
	movq	-8(%rbp), %rax
	movl	$20, 8(%rax)
.LBB77_128:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_130
# %bb.129:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -324(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-324(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_135
.LBB77_130:                             #   in Loop: Header=BB77_128 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_132
# %bb.131:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_132:                             #   in Loop: Header=BB77_128 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_134
# %bb.133:                              #   in Loop: Header=BB77_128 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_134:                             #   in Loop: Header=BB77_128 Depth=1
	jmp	.LBB77_128
.LBB77_135:
	movq	-8(%rbp), %rax
	movl	3176(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3176(%rcx)
.LBB77_136:
	movq	-8(%rbp), %rax
	movl	$21, 8(%rax)
.LBB77_137:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_139
# %bb.138:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -320(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-320(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_144
.LBB77_139:                             #   in Loop: Header=BB77_137 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_141
# %bb.140:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_141:                             #   in Loop: Header=BB77_137 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_143
# %bb.142:                              #   in Loop: Header=BB77_137 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_143:                             #   in Loop: Header=BB77_137 Depth=1
	jmp	.LBB77_137
.LBB77_144:
	movq	-8(%rbp), %rax
	movl	3176(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3176(%rcx)
.LBB77_145:
	movq	-8(%rbp), %rax
	movl	$22, 8(%rax)
.LBB77_146:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_148
# %bb.147:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -316(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-316(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_153
.LBB77_148:                             #   in Loop: Header=BB77_146 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_150
# %bb.149:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_150:                             #   in Loop: Header=BB77_146 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_152
# %bb.151:                              #   in Loop: Header=BB77_146 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_152:                             #   in Loop: Header=BB77_146 Depth=1
	jmp	.LBB77_146
.LBB77_153:
	movq	-8(%rbp), %rax
	movl	3176(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3176(%rcx)
.LBB77_154:
	movq	-8(%rbp), %rax
	movl	$23, 8(%rax)
.LBB77_155:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_157
# %bb.156:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -312(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-312(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_162
.LBB77_157:                             #   in Loop: Header=BB77_155 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_159
# %bb.158:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_159:                             #   in Loop: Header=BB77_155 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_161
# %bb.160:                              #   in Loop: Header=BB77_155 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_161:                             #   in Loop: Header=BB77_155 Depth=1
	jmp	.LBB77_155
.LBB77_162:
	movq	-8(%rbp), %rax
	movl	3176(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3176(%rcx)
.LBB77_163:
	movq	-8(%rbp), %rax
	movl	$24, 8(%rax)
.LBB77_164:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_166
# %bb.165:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -308(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-308(%rbp), %eax
	movq	-8(%rbp), %rcx
	movb	%al, 20(%rcx)
	jmp	.LBB77_171
.LBB77_166:                             #   in Loop: Header=BB77_164 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_168
# %bb.167:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_168:                             #   in Loop: Header=BB77_164 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_170
# %bb.169:                              #   in Loop: Header=BB77_164 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_170:                             #   in Loop: Header=BB77_164 Depth=1
	jmp	.LBB77_164
.LBB77_171:
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
.LBB77_172:
	movq	-8(%rbp), %rax
	movl	$25, 8(%rax)
.LBB77_173:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_175
# %bb.174:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -304(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-304(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_180
.LBB77_175:                             #   in Loop: Header=BB77_173 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_177
# %bb.176:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_177:                             #   in Loop: Header=BB77_173 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_179
# %bb.178:                              #   in Loop: Header=BB77_173 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_179:                             #   in Loop: Header=BB77_173 Depth=1
	jmp	.LBB77_173
.LBB77_180:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB77_181:
	movq	-8(%rbp), %rax
	movl	$26, 8(%rax)
.LBB77_182:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_184
# %bb.183:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -300(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-300(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_189
.LBB77_184:                             #   in Loop: Header=BB77_182 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_186
# %bb.185:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_186:                             #   in Loop: Header=BB77_182 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_188
# %bb.187:                              #   in Loop: Header=BB77_182 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_188:                             #   in Loop: Header=BB77_182 Depth=1
	jmp	.LBB77_182
.LBB77_189:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 56(%rcx)
.LBB77_190:
	movq	-8(%rbp), %rax
	movl	$27, 8(%rax)
.LBB77_191:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_193
# %bb.192:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-296(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_198
.LBB77_193:                             #   in Loop: Header=BB77_191 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_195
# %bb.194:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_195:                             #   in Loop: Header=BB77_191 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_197
# %bb.196:                              #   in Loop: Header=BB77_191 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_197:                             #   in Loop: Header=BB77_191 Depth=1
	jmp	.LBB77_191
.LBB77_198:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	jge	.LBB77_200
# %bb.199:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_200:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movq	-8(%rbp), %rcx
	imull	$100000, 40(%rcx), %ecx # imm = 0x186A0
	addl	$10, %ecx
	cmpl	%ecx, %eax
	jle	.LBB77_202
# %bb.201:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_202:
	movl	$0, -16(%rbp)
.LBB77_203:
	cmpl	$16, -16(%rbp)
	jge	.LBB77_218
# %bb.204:
	jmp	.LBB77_205
.LBB77_205:
	movq	-8(%rbp), %rax
	movl	$28, 8(%rax)
.LBB77_206:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_208
# %bb.207:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -292(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-292(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_213
.LBB77_208:                             #   in Loop: Header=BB77_206 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_210
# %bb.209:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_210:                             #   in Loop: Header=BB77_206 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_212
# %bb.211:                              #   in Loop: Header=BB77_206 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_212:                             #   in Loop: Header=BB77_206 Depth=1
	jmp	.LBB77_206
.LBB77_213:
	movzbl	-9(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB77_215
# %bb.214:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	$1, 3452(%rax,%rcx)
	jmp	.LBB77_216
.LBB77_215:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	$0, 3452(%rax,%rcx)
.LBB77_216:
	jmp	.LBB77_217
.LBB77_217:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_203
.LBB77_218:
	movl	$0, -16(%rbp)
.LBB77_219:                             # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB77_222
# %bb.220:                              #   in Loop: Header=BB77_219 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	$0, 3196(%rax,%rcx)
# %bb.221:                              #   in Loop: Header=BB77_219 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_219
.LBB77_222:
	movl	$0, -16(%rbp)
.LBB77_223:
	cmpl	$16, -16(%rbp)
	jge	.LBB77_243
# %bb.224:
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	cmpb	$0, 3452(%rax,%rcx)
	je	.LBB77_241
# %bb.225:
	movl	$0, -32(%rbp)
.LBB77_226:
	cmpl	$16, -32(%rbp)
	jge	.LBB77_240
# %bb.227:
	jmp	.LBB77_228
.LBB77_228:
	movq	-8(%rbp), %rax
	movl	$29, 8(%rax)
.LBB77_229:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_231
# %bb.230:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -288(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-288(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_236
.LBB77_231:                             #   in Loop: Header=BB77_229 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_233
# %bb.232:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_233:                             #   in Loop: Header=BB77_229 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_235
# %bb.234:                              #   in Loop: Header=BB77_229 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_235:                             #   in Loop: Header=BB77_229 Depth=1
	jmp	.LBB77_229
.LBB77_236:
	movzbl	-9(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB77_238
# %bb.237:
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	shll	$4, %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$1, 3196(%rax,%rcx)
.LBB77_238:
	jmp	.LBB77_239
.LBB77_239:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB77_226
.LBB77_240:
	jmp	.LBB77_241
.LBB77_241:
	jmp	.LBB77_242
.LBB77_242:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_223
.LBB77_243:
	movq	-8(%rbp), %rdi
	callq	makeMaps_d
	movq	-8(%rbp), %rax
	cmpl	$0, 3192(%rax)
	jne	.LBB77_245
# %bb.244:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_245:
	movq	-8(%rbp), %rax
	movl	3192(%rax), %eax
	addl	$2, %eax
	movl	%eax, -132(%rbp)
.LBB77_246:
	movq	-8(%rbp), %rax
	movl	$30, 8(%rax)
.LBB77_247:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$3, 36(%rax)
	jl	.LBB77_249
# %bb.248:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$3, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$7, %eax
	movl	%eax, -284(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$3, %ecx
	movl	%ecx, 36(%rax)
	movl	-284(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB77_254
.LBB77_249:                             #   in Loop: Header=BB77_247 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_251
# %bb.250:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_251:                             #   in Loop: Header=BB77_247 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_253
# %bb.252:                              #   in Loop: Header=BB77_247 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_253:                             #   in Loop: Header=BB77_247 Depth=1
	jmp	.LBB77_247
.LBB77_254:
	cmpl	$2, -96(%rbp)
	jl	.LBB77_256
# %bb.255:
	cmpl	$6, -96(%rbp)
	jle	.LBB77_257
.LBB77_256:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_257:
	jmp	.LBB77_258
.LBB77_258:
	movq	-8(%rbp), %rax
	movl	$31, 8(%rax)
.LBB77_259:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$15, 36(%rax)
	jl	.LBB77_261
# %bb.260:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$15, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, -280(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$15, %ecx
	movl	%ecx, 36(%rax)
	movl	-280(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB77_266
.LBB77_261:                             #   in Loop: Header=BB77_259 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_263
# %bb.262:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_263:                             #   in Loop: Header=BB77_259 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_265
# %bb.264:                              #   in Loop: Header=BB77_259 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_265:                             #   in Loop: Header=BB77_259 Depth=1
	jmp	.LBB77_259
.LBB77_266:
	cmpl	$1, -92(%rbp)
	jge	.LBB77_268
# %bb.267:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_268:
	movl	$0, -16(%rbp)
.LBB77_269:
	movl	-16(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB77_287
# %bb.270:
	movl	$0, -32(%rbp)
.LBB77_271:
	jmp	.LBB77_272
.LBB77_272:
	movq	-8(%rbp), %rax
	movl	$32, 8(%rax)
.LBB77_273:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_275
# %bb.274:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -276(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-276(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_280
.LBB77_275:                             #   in Loop: Header=BB77_273 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_277
# %bb.276:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_277:                             #   in Loop: Header=BB77_273 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_279
# %bb.278:                              #   in Loop: Header=BB77_273 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_279:                             #   in Loop: Header=BB77_273 Depth=1
	jmp	.LBB77_273
.LBB77_280:
	movzbl	-9(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB77_282
# %bb.281:
	jmp	.LBB77_285
.LBB77_282:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.LBB77_284
# %bb.283:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_284:
	jmp	.LBB77_271
.LBB77_285:
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movb	%al, 25886(%rcx,%rdx)
# %bb.286:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_269
.LBB77_287:
	movb	$0, -21(%rbp)
.LBB77_288:                             # =>This Inner Loop Header: Depth=1
	movzbl	-21(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB77_291
# %bb.289:                              #   in Loop: Header=BB77_288 Depth=1
	movb	-21(%rbp), %al
	movzbl	-21(%rbp), %ecx
	movb	%al, -190(%rbp,%rcx)
# %bb.290:                              #   in Loop: Header=BB77_288 Depth=1
	movb	-21(%rbp), %al
	addb	$1, %al
	movb	%al, -21(%rbp)
	jmp	.LBB77_288
.LBB77_291:
	movl	$0, -16(%rbp)
.LBB77_292:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_294 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB77_298
# %bb.293:                              #   in Loop: Header=BB77_292 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	25886(%rax,%rcx), %al
	movb	%al, -21(%rbp)
	movzbl	-21(%rbp), %eax
	movb	-190(%rbp,%rax), %al
	movb	%al, -73(%rbp)
.LBB77_294:                             #   Parent Loop BB77_292 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-21(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB77_296
# %bb.295:                              #   in Loop: Header=BB77_294 Depth=2
	movzbl	-21(%rbp), %eax
	subl	$1, %eax
	cltq
	movb	-190(%rbp,%rax), %al
	movzbl	-21(%rbp), %ecx
	movb	%al, -190(%rbp,%rcx)
	movb	-21(%rbp), %al
	addb	$-1, %al
	movb	%al, -21(%rbp)
	jmp	.LBB77_294
.LBB77_296:                             #   in Loop: Header=BB77_292 Depth=1
	movb	-73(%rbp), %al
	movb	%al, -190(%rbp)
	movb	-73(%rbp), %al
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movb	%al, 7884(%rcx,%rdx)
# %bb.297:                              #   in Loop: Header=BB77_292 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_292
.LBB77_298:
	movl	$0, -44(%rbp)
.LBB77_299:
	movl	-44(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB77_343
# %bb.300:
	jmp	.LBB77_301
.LBB77_301:
	movq	-8(%rbp), %rax
	movl	$33, 8(%rax)
.LBB77_302:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$5, 36(%rax)
	jl	.LBB77_304
# %bb.303:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$5, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$31, %eax
	movl	%eax, -272(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$5, %ecx
	movl	%ecx, 36(%rax)
	movl	-272(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB77_309
.LBB77_304:                             #   in Loop: Header=BB77_302 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_306
# %bb.305:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_306:                             #   in Loop: Header=BB77_302 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_308
# %bb.307:                              #   in Loop: Header=BB77_302 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_308:                             #   in Loop: Header=BB77_302 Depth=1
	jmp	.LBB77_302
.LBB77_309:
	movl	$0, -16(%rbp)
.LBB77_310:
	movl	-16(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB77_341
# %bb.311:
	jmp	.LBB77_312
.LBB77_312:
	cmpl	$1, -84(%rbp)
	jl	.LBB77_314
# %bb.313:
	cmpl	$20, -84(%rbp)
	jle	.LBB77_315
.LBB77_314:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_315:
	jmp	.LBB77_316
.LBB77_316:
	movq	-8(%rbp), %rax
	movl	$34, 8(%rax)
.LBB77_317:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_319
# %bb.318:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -268(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-268(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_324
.LBB77_319:                             #   in Loop: Header=BB77_317 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_321
# %bb.320:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_321:                             #   in Loop: Header=BB77_317 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_323
# %bb.322:                              #   in Loop: Header=BB77_317 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_323:                             #   in Loop: Header=BB77_317 Depth=1
	jmp	.LBB77_317
.LBB77_324:
	movzbl	-9(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB77_326
# %bb.325:
	jmp	.LBB77_339
.LBB77_326:
	jmp	.LBB77_327
.LBB77_327:
	movq	-8(%rbp), %rax
	movl	$35, 8(%rax)
.LBB77_328:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_330
# %bb.329:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -264(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-264(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_335
.LBB77_330:                             #   in Loop: Header=BB77_328 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_332
# %bb.331:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_332:                             #   in Loop: Header=BB77_328 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_334
# %bb.333:                              #   in Loop: Header=BB77_328 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_334:                             #   in Loop: Header=BB77_328 Depth=1
	jmp	.LBB77_328
.LBB77_335:
	movzbl	-9(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB77_337
# %bb.336:
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB77_338
.LBB77_337:
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
.LBB77_338:
	jmp	.LBB77_312
.LBB77_339:
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	addq	$43888, %rcx            # imm = 0xAB70
	movslq	-44(%rbp), %rdx
	imulq	$258, %rdx, %rdx        # imm = 0x102
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.340:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_310
.LBB77_341:
	jmp	.LBB77_342
.LBB77_342:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB77_299
.LBB77_343:
	movl	$0, -44(%rbp)
.LBB77_344:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_346 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB77_355
# %bb.345:                              #   in Loop: Header=BB77_344 Depth=1
	movl	$32, -152(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -16(%rbp)
.LBB77_346:                             #   Parent Loop BB77_344 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB77_353
# %bb.347:                              #   in Loop: Header=BB77_346 Depth=2
	movq	-8(%rbp), %rax
	addq	$43888, %rax            # imm = 0xAB70
	movslq	-44(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB77_349
# %bb.348:                              #   in Loop: Header=BB77_346 Depth=2
	movq	-8(%rbp), %rax
	addq	$43888, %rax            # imm = 0xAB70
	movslq	-44(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -176(%rbp)
.LBB77_349:                             #   in Loop: Header=BB77_346 Depth=2
	movq	-8(%rbp), %rax
	addq	$43888, %rax            # imm = 0xAB70
	movslq	-44(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB77_351
# %bb.350:                              #   in Loop: Header=BB77_346 Depth=2
	movq	-8(%rbp), %rax
	addq	$43888, %rax            # imm = 0xAB70
	movslq	-44(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -152(%rbp)
.LBB77_351:                             #   in Loop: Header=BB77_346 Depth=2
	jmp	.LBB77_352
.LBB77_352:                             #   in Loop: Header=BB77_346 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_346
.LBB77_353:                             #   in Loop: Header=BB77_344 Depth=1
	movq	-8(%rbp), %rdi
	addq	$45436, %rdi            # imm = 0xB17C
	movslq	-44(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	addq	$51628, %rsi            # imm = 0xC9AC
	movslq	-44(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rsi
	movq	-8(%rbp), %rdx
	addq	$57820, %rdx            # imm = 0xE1DC
	movslq	-44(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rdx
	movq	-8(%rbp), %rcx
	addq	$43888, %rcx            # imm = 0xAB70
	movslq	-44(%rbp), %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%rax, %rcx
	movl	-152(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movl	-132(%rbp), %eax
	movl	%eax, (%rsp)
	callq	BZ2_hbCreateDecodeTables
	movl	-152(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movl	%eax, 64012(%rcx,%rdx,4)
# %bb.354:                              #   in Loop: Header=BB77_344 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB77_344
.LBB77_355:
	movq	-8(%rbp), %rax
	movl	3192(%rax), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	movq	-8(%rbp), %rax
	imull	$100000, 40(%rax), %eax # imm = 0x186A0
	movl	%eax, -128(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -16(%rbp)
.LBB77_356:                             # =>This Inner Loop Header: Depth=1
	cmpl	$255, -16(%rbp)
	jg	.LBB77_359
# %bb.357:                              #   in Loop: Header=BB77_356 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	$0, 68(%rax,%rcx,4)
# %bb.358:                              #   in Loop: Header=BB77_356 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_356
.LBB77_359:
	movl	$4095, -144(%rbp)       # imm = 0xFFF
	movl	$15, -124(%rbp)
.LBB77_360:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_362 Depth 2
	cmpl	$0, -124(%rbp)
	jl	.LBB77_367
# %bb.361:                              #   in Loop: Header=BB77_360 Depth=1
	movl	$15, -148(%rbp)
.LBB77_362:                             #   Parent Loop BB77_360 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -148(%rbp)
	jl	.LBB77_365
# %bb.363:                              #   in Loop: Header=BB77_362 Depth=2
	movl	-124(%rbp), %eax
	shll	$4, %eax
	addl	-148(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-144(%rbp), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
# %bb.364:                              #   in Loop: Header=BB77_362 Depth=2
	movl	-148(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB77_362
.LBB77_365:                             #   in Loop: Header=BB77_360 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	movl	%eax, 7820(%rcx,%rdx,4)
# %bb.366:                              #   in Loop: Header=BB77_360 Depth=1
	movl	-124(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB77_360
.LBB77_367:
	movl	$0, -40(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB77_371
# %bb.368:
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.LBB77_370
# %bb.369:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_370:
	movl	$50, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movzbl	7884(%rax,%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	64012(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rax
	addq	$45436, %rax            # imm = 0xB17C
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	addq	$57820, %rax            # imm = 0xE1DC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	addq	$51628, %rax            # imm = 0xC9AC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB77_371:
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB77_372:
	movq	-8(%rbp), %rax
	movl	$36, 8(%rax)
.LBB77_373:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB77_375
# %bb.374:
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	movl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	subl	$1, %eax
	andl	%eax, %edx
	movl	%edx, -260(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	-260(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_380
.LBB77_375:                             #   in Loop: Header=BB77_373 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_377
# %bb.376:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_377:                             #   in Loop: Header=BB77_373 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_379
# %bb.378:                              #   in Loop: Header=BB77_373 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_379:                             #   in Loop: Header=BB77_373 Depth=1
	jmp	.LBB77_373
.LBB77_380:
	jmp	.LBB77_381
.LBB77_381:
	cmpl	$20, -28(%rbp)
	jle	.LBB77_383
# %bb.382:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_383:
	movl	-36(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jg	.LBB77_385
# %bb.384:
	jmp	.LBB77_395
.LBB77_385:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB77_386:
	movq	-8(%rbp), %rax
	movl	$37, 8(%rax)
.LBB77_387:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_389
# %bb.388:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -256(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-256(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB77_394
.LBB77_389:                             #   in Loop: Header=BB77_387 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_391
# %bb.390:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_391:                             #   in Loop: Header=BB77_387 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_393
# %bb.392:                              #   in Loop: Header=BB77_387 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_393:                             #   in Loop: Header=BB77_387 Depth=1
	jmp	.LBB77_387
.LBB77_394:
	movl	-36(%rbp), %eax
	shll	$1, %eax
	orl	-104(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_381
.LBB77_395:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$0, %eax
	jl	.LBB77_397
# %bb.396:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$258, %eax              # imm = 0x102
	jl	.LBB77_398
.LBB77_397:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_398:
	movq	-160(%rbp), %rax
	movl	-36(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	subl	(%rdx,%rsi,4), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
.LBB77_399:
	movl	-72(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jne	.LBB77_401
# %bb.400:
	jmp	.LBB77_520
.LBB77_401:
	cmpl	$0, -72(%rbp)
	je	.LBB77_403
# %bb.402:
	cmpl	$1, -72(%rbp)
	jne	.LBB77_458
.LBB77_403:
	movl	$-1, -52(%rbp)
	movl	$1, -116(%rbp)
.LBB77_404:
	cmpl	$0, -72(%rbp)
	jne	.LBB77_406
# %bb.405:
	movl	-52(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$0, %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB77_409
.LBB77_406:
	cmpl	$1, -72(%rbp)
	jne	.LBB77_408
# %bb.407:
	movl	-52(%rbp), %eax
	movl	-116(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
.LBB77_408:
	jmp	.LBB77_409
.LBB77_409:
	movl	-116(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB77_413
# %bb.410:
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.LBB77_412
# %bb.411:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_412:
	movl	$50, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movzbl	7884(%rax,%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	64012(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rax
	addq	$45436, %rax            # imm = 0xB17C
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	addq	$57820, %rax            # imm = 0xE1DC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	addq	$51628, %rax            # imm = 0xC9AC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB77_413:
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB77_414:
	movq	-8(%rbp), %rax
	movl	$38, 8(%rax)
.LBB77_415:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB77_417
# %bb.416:
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	movl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	subl	$1, %eax
	andl	%eax, %edx
	movl	%edx, -252(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	-252(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_422
.LBB77_417:                             #   in Loop: Header=BB77_415 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_419
# %bb.418:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_419:                             #   in Loop: Header=BB77_415 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_421
# %bb.420:                              #   in Loop: Header=BB77_415 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_421:                             #   in Loop: Header=BB77_415 Depth=1
	jmp	.LBB77_415
.LBB77_422:
	jmp	.LBB77_423
.LBB77_423:
	cmpl	$20, -28(%rbp)
	jle	.LBB77_425
# %bb.424:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_425:
	movl	-36(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jg	.LBB77_427
# %bb.426:
	jmp	.LBB77_437
.LBB77_427:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB77_428:
	movq	-8(%rbp), %rax
	movl	$39, 8(%rax)
.LBB77_429:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_431
# %bb.430:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -248(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-248(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB77_436
.LBB77_431:                             #   in Loop: Header=BB77_429 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_433
# %bb.432:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_433:                             #   in Loop: Header=BB77_429 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_435
# %bb.434:                              #   in Loop: Header=BB77_429 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_435:                             #   in Loop: Header=BB77_429 Depth=1
	jmp	.LBB77_429
.LBB77_436:
	movl	-36(%rbp), %eax
	shll	$1, %eax
	orl	-104(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_423
.LBB77_437:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$0, %eax
	jl	.LBB77_439
# %bb.438:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$258, %eax              # imm = 0x102
	jl	.LBB77_440
.LBB77_439:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_440:
	movq	-160(%rbp), %rax
	movl	-36(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	subl	(%rdx,%rsi,4), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
# %bb.441:
	movb	$1, %al
	cmpl	$0, -72(%rbp)
	je	.LBB77_443
# %bb.442:
	cmpl	$1, -72(%rbp)
	sete	%al
.LBB77_443:
	testb	$1, %al
	jne	.LBB77_404
# %bb.444:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	7820(%rdx), %rdx
	movzbl	3724(%rcx,%rdx), %ecx
	movb	3468(%rax,%rcx), %al
	movb	%al, -9(%rbp)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	-9(%rbp), %edx
	addl	68(%rcx,%rdx,4), %eax
	movl	%eax, 68(%rcx,%rdx,4)
	movq	-8(%rbp), %rax
	cmpb	$0, 44(%rax)
	je	.LBB77_451
# %bb.445:
	jmp	.LBB77_446
.LBB77_446:                             # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB77_450
# %bb.447:                              #   in Loop: Header=BB77_446 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB77_449
# %bb.448:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_449:                             #   in Loop: Header=BB77_446 Depth=1
	movzbl	-9(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	3160(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB77_446
.LBB77_450:
	jmp	.LBB77_457
.LBB77_451:
	jmp	.LBB77_452
.LBB77_452:                             # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	.LBB77_456
# %bb.453:                              #   in Loop: Header=BB77_452 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB77_455
# %bb.454:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_455:                             #   in Loop: Header=BB77_452 Depth=1
	movzbl	-9(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	3152(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB77_452
.LBB77_456:
	jmp	.LBB77_457
.LBB77_457:
	jmp	.LBB77_399
.LBB77_458:
	movl	-40(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB77_460
# %bb.459:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_460:
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$16, -64(%rbp)
	jae	.LBB77_468
# %bb.461:
	movq	-8(%rbp), %rax
	movl	7820(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rax
	movl	-68(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, %ecx
	movb	3724(%rax,%rcx), %al
	movb	%al, -9(%rbp)
.LBB77_462:                             # =>This Inner Loop Header: Depth=1
	cmpl	$3, -64(%rbp)
	jbe	.LBB77_464
# %bb.463:                              #   in Loop: Header=BB77_462 Depth=1
	movl	-68(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rax
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	-88(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movl	-88(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, 3724(%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	-88(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movl	-88(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movb	%al, 3724(%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	-88(%rbp), %ecx
	subl	$4, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movl	-88(%rbp), %edx
	subl	$3, %edx
	movslq	%edx, %rdx
	movb	%al, 3724(%rcx,%rdx)
	movl	-64(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB77_462
.LBB77_464:
	jmp	.LBB77_465
.LBB77_465:                             # =>This Inner Loop Header: Depth=1
	cmpl	$0, -64(%rbp)
	jbe	.LBB77_467
# %bb.466:                              #   in Loop: Header=BB77_465 Depth=1
	movq	-8(%rbp), %rax
	movl	-68(%rbp), %ecx
	addl	-64(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movl	-68(%rbp), %edx
	addl	-64(%rbp), %edx
	movl	%edx, %edx
	movb	%al, 3724(%rcx,%rdx)
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB77_465
.LBB77_467:
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	movb	%al, 3724(%rcx,%rdx)
	jmp	.LBB77_485
.LBB77_468:
	movl	-64(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, -80(%rbp)
	movl	-64(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -244(%rbp)
	movq	-8(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movl	7820(%rax,%rcx,4), %eax
	addl	-244(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movb	3724(%rax,%rcx), %al
	movb	%al, -9(%rbp)
.LBB77_469:                             # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	-80(%rbp), %rdx
	cmpl	7820(%rcx,%rdx,4), %eax
	jle	.LBB77_471
# %bb.470:                              #   in Loop: Header=BB77_469 Depth=1
	movq	-8(%rbp), %rax
	movl	-68(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB77_469
.LBB77_471:
	movq	-8(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movl	7820(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 7820(%rax,%rcx,4)
.LBB77_472:                             # =>This Inner Loop Header: Depth=1
	cmpl	$0, -80(%rbp)
	jle	.LBB77_474
# %bb.473:                              #   in Loop: Header=BB77_472 Depth=1
	movq	-8(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movl	7820(%rax,%rcx,4), %edx
	addl	$-1, %edx
	movl	%edx, 7820(%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movl	7820(%rcx,%rdx,4), %ecx
	addl	$16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	-80(%rbp), %rsi
	movslq	7820(%rdx,%rsi,4), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB77_472
.LBB77_474:
	movq	-8(%rbp), %rax
	movl	7820(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 7820(%rax)
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	7820(%rdx), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movq	-8(%rbp), %rax
	cmpl	$0, 7820(%rax)
	jne	.LBB77_484
# %bb.475:
	movl	$4095, -136(%rbp)       # imm = 0xFFF
	movl	$15, -120(%rbp)
.LBB77_476:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_478 Depth 2
	cmpl	$0, -120(%rbp)
	jl	.LBB77_483
# %bb.477:                              #   in Loop: Header=BB77_476 Depth=1
	movl	$15, -140(%rbp)
.LBB77_478:                             #   Parent Loop BB77_476 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -140(%rbp)
	jl	.LBB77_481
# %bb.479:                              #   in Loop: Header=BB77_478 Depth=2
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-120(%rbp), %rdx
	movl	7820(%rcx,%rdx,4), %ecx
	addl	-140(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	3724(%rax,%rcx), %al
	movq	-8(%rbp), %rcx
	movslq	-136(%rbp), %rdx
	movb	%al, 3724(%rcx,%rdx)
	movl	-136(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -136(%rbp)
# %bb.480:                              #   in Loop: Header=BB77_478 Depth=2
	movl	-140(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB77_478
.LBB77_481:                             #   in Loop: Header=BB77_476 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movslq	-120(%rbp), %rdx
	movl	%eax, 7820(%rcx,%rdx,4)
# %bb.482:                              #   in Loop: Header=BB77_476 Depth=1
	movl	-120(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB77_476
.LBB77_483:
	jmp	.LBB77_484
.LBB77_484:
	jmp	.LBB77_485
.LBB77_485:
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	-9(%rbp), %edx
	movzbl	3468(%rcx,%rdx), %ecx
	movl	68(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 68(%rax,%rcx,4)
	movq	-8(%rbp), %rax
	cmpb	$0, 44(%rax)
	je	.LBB77_487
# %bb.486:
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %ecx
	movzbl	3468(%rax,%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	3160(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	jmp	.LBB77_488
.LBB77_487:
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %ecx
	movzbl	3468(%rax,%rcx), %eax
	movq	-8(%rbp), %rcx
	movq	3152(%rcx), %rcx
	movslq	-40(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB77_488:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB77_492
# %bb.489:
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.LBB77_491
# %bb.490:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_491:
	movl	$50, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movzbl	7884(%rax,%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	64012(%rax,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rax
	addq	$45436, %rax            # imm = 0xB17C
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	addq	$57820, %rax            # imm = 0xE1DC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rax
	addq	$51628, %rax            # imm = 0xC9AC
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
.LBB77_492:
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB77_493:
	movq	-8(%rbp), %rax
	movl	$40, 8(%rax)
.LBB77_494:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB77_496
# %bb.495:
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	movl	-28(%rbp), %ecx
                                        # kill: def %cl killed %ecx
	shll	%cl, %eax
	subl	$1, %eax
	andl	%eax, %edx
	movl	%edx, -240(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 36(%rcx)
	movl	-240(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_501
.LBB77_496:                             #   in Loop: Header=BB77_494 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_498
# %bb.497:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_498:                             #   in Loop: Header=BB77_494 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_500
# %bb.499:                              #   in Loop: Header=BB77_494 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_500:                             #   in Loop: Header=BB77_494 Depth=1
	jmp	.LBB77_494
.LBB77_501:
	jmp	.LBB77_502
.LBB77_502:
	cmpl	$20, -28(%rbp)
	jle	.LBB77_504
# %bb.503:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_504:
	movl	-36(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jg	.LBB77_506
# %bb.505:
	jmp	.LBB77_516
.LBB77_506:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB77_507:
	movq	-8(%rbp), %rax
	movl	$41, 8(%rax)
.LBB77_508:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 36(%rax)
	jl	.LBB77_510
# %bb.509:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$1, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, -236(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, 36(%rax)
	movl	-236(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB77_515
.LBB77_510:                             #   in Loop: Header=BB77_508 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_512
# %bb.511:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_512:                             #   in Loop: Header=BB77_508 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_514
# %bb.513:                              #   in Loop: Header=BB77_508 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_514:                             #   in Loop: Header=BB77_508 Depth=1
	jmp	.LBB77_508
.LBB77_515:
	movl	-36(%rbp), %eax
	shll	$1, %eax
	orl	-104(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB77_502
.LBB77_516:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$0, %eax
	jl	.LBB77_518
# %bb.517:
	movl	-36(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cmpl	$258, %eax              # imm = 0x102
	jl	.LBB77_519
.LBB77_518:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_519:
	movq	-160(%rbp), %rax
	movl	-36(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	subl	(%rdx,%rsi,4), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB77_399
.LBB77_520:
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	jl	.LBB77_522
# %bb.521:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB77_523
.LBB77_522:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_523:
	movq	-8(%rbp), %rax
	movl	$0, 1096(%rax)
	movl	$1, -16(%rbp)
.LBB77_524:                             # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jg	.LBB77_527
# %bb.525:                              #   in Loop: Header=BB77_524 Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	68(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, 1096(%rcx,%rdx,4)
# %bb.526:                              #   in Loop: Header=BB77_524 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_524
.LBB77_527:
	movl	$1, -16(%rbp)
.LBB77_528:                             # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jg	.LBB77_531
# %bb.529:                              #   in Loop: Header=BB77_528 Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	1096(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	addl	1096(%rcx,%rdx,4), %eax
	movl	%eax, 1096(%rcx,%rdx,4)
# %bb.530:                              #   in Loop: Header=BB77_528 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_528
.LBB77_531:
	movl	$0, -16(%rbp)
.LBB77_532:                             # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jg	.LBB77_538
# %bb.533:                              #   in Loop: Header=BB77_532 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	cmpl	$0, 1096(%rax,%rcx,4)
	jl	.LBB77_535
# %bb.534:                              #   in Loop: Header=BB77_532 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	1096(%rax,%rcx,4), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB77_536
.LBB77_535:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_536:                             #   in Loop: Header=BB77_532 Depth=1
	jmp	.LBB77_537
.LBB77_537:                             #   in Loop: Header=BB77_532 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_532
.LBB77_538:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 3184(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-8(%rbp), %rax
	cmpl	$2, 52(%rax)
	jl	.LBB77_540
# %bb.539:
	movabsq	$.L.str.1.72, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
.LBB77_540:
	movq	-8(%rbp), %rax
	cmpb	$0, 44(%rax)
	je	.LBB77_566
# %bb.541:
	movl	$0, -16(%rbp)
.LBB77_542:                             # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jg	.LBB77_545
# %bb.543:                              #   in Loop: Header=BB77_542 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	1096(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, 2124(%rcx,%rdx,4)
# %bb.544:                              #   in Loop: Header=BB77_542 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_542
.LBB77_545:
	movl	$0, -16(%rbp)
.LBB77_546:                             # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB77_552
# %bb.547:                              #   in Loop: Header=BB77_546 Depth=1
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	movslq	-16(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %ecx
	movl	2124(%rax,%rcx,4), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movq	-8(%rbp), %rcx
	movq	3160(%rcx), %rcx
	movslq	-16(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-16(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB77_549
# %bb.548:                              #   in Loop: Header=BB77_546 Depth=1
	movq	-8(%rbp), %rax
	movq	3168(%rax), %rax
	movl	-16(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	andl	$240, %eax
	movq	-8(%rbp), %rcx
	movzbl	-9(%rbp), %edx
	movl	2124(%rcx,%rdx,4), %ecx
	sarl	$16, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-16(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
	jmp	.LBB77_550
.LBB77_549:                             #   in Loop: Header=BB77_546 Depth=1
	movq	-8(%rbp), %rax
	movq	3168(%rax), %rax
	movl	-16(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	andl	$15, %eax
	movq	-8(%rbp), %rcx
	movzbl	-9(%rbp), %edx
	movl	2124(%rcx,%rdx,4), %ecx
	sarl	$16, %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-16(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
.LBB77_550:                             #   in Loop: Header=BB77_546 Depth=1
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %ecx
	movl	2124(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 2124(%rax,%rcx,4)
# %bb.551:                              #   in Loop: Header=BB77_546 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_546
.LBB77_552:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	movslq	-16(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-16(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	-16(%rbp), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
.LBB77_553:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	movslq	-32(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-32(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	-32(%rbp), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movl	%eax, -232(%rbp)
	movl	-16(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movq	-8(%rbp), %rcx
	movq	3160(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB77_555
# %bb.554:                              #   in Loop: Header=BB77_553 Depth=1
	movq	-8(%rbp), %rax
	movq	3168(%rax), %rax
	movl	-32(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	andl	$240, %eax
	movl	-16(%rbp), %ecx
	sarl	$16, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-32(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
	jmp	.LBB77_556
.LBB77_555:                             #   in Loop: Header=BB77_553 Depth=1
	movq	-8(%rbp), %rax
	movq	3168(%rax), %rax
	movl	-32(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rax,%rcx), %eax
	andl	$15, %eax
	movl	-16(%rbp), %ecx
	sarl	$16, %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movl	-32(%rbp), %edx
	sarl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
.LBB77_556:                             #   in Loop: Header=BB77_553 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.557:                              #   in Loop: Header=BB77_553 Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jne	.LBB77_553
# %bb.558:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 1092(%rax)
	movq	-8(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB77_564
# %bb.559:
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movl	60(%rax), %edi
	movq	-8(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB77_563
# %bb.560:
	movq	-8(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB77_562
# %bb.561:
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
.LBB77_562:
	jmp	.LBB77_563
.LBB77_563:
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rcx
	xorl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
	jmp	.LBB77_565
.LBB77_564:
	movq	-8(%rbp), %rax
	movl	60(%rax), %edi
	movq	-8(%rbp), %rsi
	addq	$1096, %rsi             # imm = 0x448
	callq	BZ2_indexIntoF
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	movzwl	(%rax,%rcx,2), %eax
	movq	-8(%rbp), %rcx
	movq	3168(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movl	60(%rdx), %edx
	shrl	$1, %edx
	movl	%edx, %edx
	movzbl	(%rcx,%rdx), %edx
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	shll	$2, %ecx
	andl	$4, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
.LBB77_565:
	jmp	.LBB77_578
.LBB77_566:
	movl	$0, -16(%rbp)
.LBB77_567:                             # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB77_570
# %bb.568:                              #   in Loop: Header=BB77_567 Depth=1
	movq	-8(%rbp), %rax
	movq	3152(%rax), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	andl	$255, %eax
	movb	%al, -9(%rbp)
	movl	-16(%rbp), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	3152(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movzbl	-9(%rbp), %esi
	movslq	1096(%rdx,%rsi,4), %rdx
	orl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
	movq	-8(%rbp), %rax
	movzbl	-9(%rbp), %ecx
	movl	1096(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 1096(%rax,%rcx,4)
# %bb.569:                              #   in Loop: Header=BB77_567 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB77_567
.LBB77_570:
	movq	-8(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	56(%rcx), %rcx
	movl	(%rax,%rcx,4), %eax
	shrl	$8, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 1092(%rax)
	movq	-8(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB77_576
# %bb.571:
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-8(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB77_575
# %bb.572:
	movq	-8(%rbp), %rax
	movslq	28(%rax), %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	cmpl	$512, 28(%rax)          # imm = 0x200
	jne	.LBB77_574
# %bb.573:
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
.LBB77_574:
	jmp	.LBB77_575
.LBB77_575:
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	$1, %edx
	cmovel	%ecx, %eax
	movq	-8(%rbp), %rcx
	xorl	64(%rcx), %eax
	movl	%eax, 64(%rcx)
	jmp	.LBB77_577
.LBB77_576:
	movq	-8(%rbp), %rax
	movq	3152(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %ecx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	andl	$255, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%rax)
	movq	-8(%rbp), %rax
	movl	1092(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 1092(%rax)
.LBB77_577:
	jmp	.LBB77_578
.LBB77_578:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_579:
	jmp	.LBB77_580
.LBB77_580:
	movq	-8(%rbp), %rax
	movl	$42, 8(%rax)
.LBB77_581:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_583
# %bb.582:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -228(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-228(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_588
.LBB77_583:                             #   in Loop: Header=BB77_581 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_585
# %bb.584:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_585:                             #   in Loop: Header=BB77_581 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_587
# %bb.586:                              #   in Loop: Header=BB77_581 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_587:                             #   in Loop: Header=BB77_581 Depth=1
	jmp	.LBB77_581
.LBB77_588:
	movzbl	-9(%rbp), %eax
	cmpl	$114, %eax
	je	.LBB77_590
# %bb.589:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_590:
	jmp	.LBB77_591
.LBB77_591:
	movq	-8(%rbp), %rax
	movl	$43, 8(%rax)
.LBB77_592:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_594
# %bb.593:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -224(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-224(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_599
.LBB77_594:                             #   in Loop: Header=BB77_592 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_596
# %bb.595:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_596:                             #   in Loop: Header=BB77_592 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_598
# %bb.597:                              #   in Loop: Header=BB77_592 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_598:                             #   in Loop: Header=BB77_592 Depth=1
	jmp	.LBB77_592
.LBB77_599:
	movzbl	-9(%rbp), %eax
	cmpl	$69, %eax
	je	.LBB77_601
# %bb.600:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_601:
	jmp	.LBB77_602
.LBB77_602:
	movq	-8(%rbp), %rax
	movl	$44, 8(%rax)
.LBB77_603:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_605
# %bb.604:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -220(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-220(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_610
.LBB77_605:                             #   in Loop: Header=BB77_603 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_607
# %bb.606:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_607:                             #   in Loop: Header=BB77_603 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_609
# %bb.608:                              #   in Loop: Header=BB77_603 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_609:                             #   in Loop: Header=BB77_603 Depth=1
	jmp	.LBB77_603
.LBB77_610:
	movzbl	-9(%rbp), %eax
	cmpl	$56, %eax
	je	.LBB77_612
# %bb.611:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_612:
	jmp	.LBB77_613
.LBB77_613:
	movq	-8(%rbp), %rax
	movl	$45, 8(%rax)
.LBB77_614:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_616
# %bb.615:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -216(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-216(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_621
.LBB77_616:                             #   in Loop: Header=BB77_614 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_618
# %bb.617:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_618:                             #   in Loop: Header=BB77_614 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_620
# %bb.619:                              #   in Loop: Header=BB77_614 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_620:                             #   in Loop: Header=BB77_614 Depth=1
	jmp	.LBB77_614
.LBB77_621:
	movzbl	-9(%rbp), %eax
	cmpl	$80, %eax
	je	.LBB77_623
# %bb.622:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_623:
	jmp	.LBB77_624
.LBB77_624:
	movq	-8(%rbp), %rax
	movl	$46, 8(%rax)
.LBB77_625:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_627
# %bb.626:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -212(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-212(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_632
.LBB77_627:                             #   in Loop: Header=BB77_625 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_629
# %bb.628:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_629:                             #   in Loop: Header=BB77_625 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_631
# %bb.630:                              #   in Loop: Header=BB77_625 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_631:                             #   in Loop: Header=BB77_625 Depth=1
	jmp	.LBB77_625
.LBB77_632:
	movzbl	-9(%rbp), %eax
	cmpl	$144, %eax
	je	.LBB77_634
# %bb.633:
	movl	$-4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_634:
	movq	-8(%rbp), %rax
	movl	$0, 3180(%rax)
.LBB77_635:
	movq	-8(%rbp), %rax
	movl	$47, 8(%rax)
.LBB77_636:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_638
# %bb.637:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -208(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-208(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_643
.LBB77_638:                             #   in Loop: Header=BB77_636 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_640
# %bb.639:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_640:                             #   in Loop: Header=BB77_636 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_642
# %bb.641:                              #   in Loop: Header=BB77_636 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_642:                             #   in Loop: Header=BB77_636 Depth=1
	jmp	.LBB77_636
.LBB77_643:
	movq	-8(%rbp), %rax
	movl	3180(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3180(%rcx)
.LBB77_644:
	movq	-8(%rbp), %rax
	movl	$48, 8(%rax)
.LBB77_645:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_647
# %bb.646:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -204(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-204(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_652
.LBB77_647:                             #   in Loop: Header=BB77_645 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_649
# %bb.648:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_649:                             #   in Loop: Header=BB77_645 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_651
# %bb.650:                              #   in Loop: Header=BB77_645 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_651:                             #   in Loop: Header=BB77_645 Depth=1
	jmp	.LBB77_645
.LBB77_652:
	movq	-8(%rbp), %rax
	movl	3180(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3180(%rcx)
.LBB77_653:
	movq	-8(%rbp), %rax
	movl	$49, 8(%rax)
.LBB77_654:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_656
# %bb.655:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -200(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-200(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_661
.LBB77_656:                             #   in Loop: Header=BB77_654 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_658
# %bb.657:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_658:                             #   in Loop: Header=BB77_654 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_660
# %bb.659:                              #   in Loop: Header=BB77_654 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_660:                             #   in Loop: Header=BB77_654 Depth=1
	jmp	.LBB77_654
.LBB77_661:
	movq	-8(%rbp), %rax
	movl	3180(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3180(%rcx)
.LBB77_662:
	movq	-8(%rbp), %rax
	movl	$50, 8(%rax)
.LBB77_663:                             # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 36(%rax)
	jl	.LBB77_665
# %bb.664:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %ecx
	subl	$8, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	andl	$255, %eax
	movl	%eax, -196(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 36(%rax)
	movl	-196(%rbp), %eax
	movb	%al, -9(%rbp)
	jmp	.LBB77_670
.LBB77_665:                             #   in Loop: Header=BB77_663 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB77_667
# %bb.666:
	movl	$0, -20(%rbp)
	jmp	.LBB77_673
.LBB77_667:                             #   in Loop: Header=BB77_663 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	shll	$8, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB77_669
# %bb.668:                              #   in Loop: Header=BB77_663 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB77_669:                             #   in Loop: Header=BB77_663 Depth=1
	jmp	.LBB77_663
.LBB77_670:
	movq	-8(%rbp), %rax
	movl	3180(%rax), %eax
	shll	$8, %eax
	movzbl	-9(%rbp), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 3180(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movl	$4, -20(%rbp)
	jmp	.LBB77_673
.LBB77_671:
	movl	$4001, %edi             # imm = 0xFA1
	callq	BZ2_bz__AssertH__fail
# %bb.672:
	movl	$4002, %edi             # imm = 0xFA2
	callq	BZ2_bz__AssertH__fail
.LBB77_673:
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64036(%rcx)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64040(%rcx)
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64044(%rcx)
	movl	-132(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64048(%rcx)
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64052(%rcx)
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64056(%rcx)
	movl	-172(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64060(%rcx)
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64064(%rcx)
	movl	-56(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64068(%rcx)
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64072(%rcx)
	movl	-128(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64076(%rcx)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64080(%rcx)
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64084(%rcx)
	movl	-116(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64088(%rcx)
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64092(%rcx)
	movl	-368(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64096(%rcx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64100(%rcx)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64104(%rcx)
	movl	-104(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64108(%rcx)
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64112(%rcx)
	movl	-100(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64116(%rcx)
	movq	-168(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64120(%rcx)
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64128(%rcx)
	movq	-160(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64136(%rcx)
	movl	-20(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end77:
	.size	BZ2_decompress, .Lfunc_end77-BZ2_decompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI77_0:
	.quad	.LBB77_4
	.quad	.LBB77_15
	.quad	.LBB77_26
	.quad	.LBB77_37
	.quad	.LBB77_57
	.quad	.LBB77_70
	.quad	.LBB77_81
	.quad	.LBB77_92
	.quad	.LBB77_103
	.quad	.LBB77_114
	.quad	.LBB77_127
	.quad	.LBB77_136
	.quad	.LBB77_145
	.quad	.LBB77_154
	.quad	.LBB77_163
	.quad	.LBB77_172
	.quad	.LBB77_181
	.quad	.LBB77_190
	.quad	.LBB77_205
	.quad	.LBB77_228
	.quad	.LBB77_246
	.quad	.LBB77_258
	.quad	.LBB77_272
	.quad	.LBB77_301
	.quad	.LBB77_316
	.quad	.LBB77_327
	.quad	.LBB77_372
	.quad	.LBB77_386
	.quad	.LBB77_414
	.quad	.LBB77_428
	.quad	.LBB77_493
	.quad	.LBB77_507
	.quad	.LBB77_580
	.quad	.LBB77_591
	.quad	.LBB77_602
	.quad	.LBB77_613
	.quad	.LBB77_624
	.quad	.LBB77_635
	.quad	.LBB77_644
	.quad	.LBB77_653
	.quad	.LBB77_662
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function makeMaps_d
	.type	makeMaps_d,@function
makeMaps_d:                             # @makeMaps_d
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 3192(%rax)
	movl	$0, -4(%rbp)
.LBB78_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB78_6
# %bb.2:                                #   in Loop: Header=BB78_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 3196(%rax,%rcx)
	je	.LBB78_4
# %bb.3:                                #   in Loop: Header=BB78_1 Depth=1
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	3192(%rdx), %rdx
	movb	%al, 3468(%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	3192(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 3192(%rax)
.LBB78_4:                               #   in Loop: Header=BB78_1 Depth=1
	jmp	.LBB78_5
.LBB78_5:                               #   in Loop: Header=BB78_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB78_1
.LBB78_6:
	popq	%rbp
	retq
.Lfunc_end78:
	.size	makeMaps_d, .Lfunc_end78-makeMaps_d
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_hbMakeCodeLengths   # -- Begin function BZ2_hbMakeCodeLengths
	.p2align	4, 0x90
	.type	BZ2_hbMakeCodeLengths,@function
BZ2_hbMakeCodeLengths:                  # @BZ2_hbMakeCodeLengths
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5264, %rsp             # imm = 0x1490
	movq	%rdi, -96(%rbp)
	movq	%rsi, -88(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -80(%rbp)
	movl	$0, -4(%rbp)
.LBB79_1:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB79_7
# %bb.2:                                #   in Loop: Header=BB79_1 Depth=1
	movq	-88(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB79_4
# %bb.3:                                #   in Loop: Header=BB79_1 Depth=1
	movl	$1, %eax
	jmp	.LBB79_5
.LBB79_4:                               #   in Loop: Header=BB79_1 Depth=1
	movq	-88(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
.LBB79_5:                               #   in Loop: Header=BB79_1 Depth=1
	shll	$8, %eax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%eax, -3200(%rbp,%rcx,4)
# %bb.6:                                #   in Loop: Header=BB79_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_1
.LBB79_7:
	jmp	.LBB79_8
.LBB79_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_9 Depth 2
                                        #       Child Loop BB79_11 Depth 3
                                        #     Child Loop BB79_18 Depth 2
                                        #       Child Loop BB79_20 Depth 3
                                        #       Child Loop BB79_29 Depth 3
                                        #       Child Loop BB79_41 Depth 3
                                        #     Child Loop BB79_47 Depth 2
                                        #       Child Loop BB79_49 Depth 3
                                        #     Child Loop BB79_58 Depth 2
	movl	-48(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -1136(%rbp)
	movl	$0, -3200(%rbp)
	movl	$-2, -5264(%rbp)
	movl	$1, -4(%rbp)
.LBB79_9:                               #   Parent Loop BB79_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB79_11 Depth 3
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB79_15
# %bb.10:                               #   in Loop: Header=BB79_9 Depth=2
	movslq	-4(%rbp), %rax
	movl	$-1, -5264(%rbp,%rax,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movslq	-8(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movslq	-32(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -76(%rbp)
.LBB79_11:                              #   Parent Loop BB79_8 Depth=1
                                        #     Parent Loop BB79_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-76(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movl	-32(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_13
# %bb.12:                               #   in Loop: Header=BB79_11 Depth=3
	movl	-32(%rbp), %eax
	sarl	$1, %eax
	cltq
	movl	-1136(%rbp,%rax,4), %eax
	movslq	-32(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-32(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB79_11
.LBB79_13:                              #   in Loop: Header=BB79_9 Depth=2
	movl	-76(%rbp), %eax
	movslq	-32(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
# %bb.14:                               #   in Loop: Header=BB79_9 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_9
.LBB79_15:                              #   in Loop: Header=BB79_8 Depth=1
	cmpl	$260, -8(%rbp)          # imm = 0x104
	jl	.LBB79_17
# %bb.16:                               #   in Loop: Header=BB79_8 Depth=1
	movl	$2001, %edi             # imm = 0x7D1
	callq	BZ2_bz__AssertH__fail
.LBB79_17:                              #   in Loop: Header=BB79_8 Depth=1
	jmp	.LBB79_18
.LBB79_18:                              #   Parent Loop BB79_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB79_20 Depth 3
                                        #       Child Loop BB79_29 Depth 3
                                        #       Child Loop BB79_41 Depth 3
	cmpl	$1, -8(%rbp)
	jle	.LBB79_44
# %bb.19:                               #   in Loop: Header=BB79_18 Depth=2
	movl	-1132(%rbp), %eax
	movl	%eax, -56(%rbp)
	movslq	-8(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -1132(%rbp)
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movl	$1, -44(%rbp)
	movslq	-44(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -72(%rbp)
.LBB79_20:                              #   Parent Loop BB79_8 Depth=1
                                        #     Parent Loop BB79_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB79_22
# %bb.21:                               #   in Loop: Header=BB79_18 Depth=2
	jmp	.LBB79_28
.LBB79_22:                              #   in Loop: Header=BB79_20 Depth=3
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB79_25
# %bb.23:                               #   in Loop: Header=BB79_20 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	movslq	-1136(%rbp,%rax,4), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movslq	-20(%rbp), %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_25
# %bb.24:                               #   in Loop: Header=BB79_20 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB79_25:                              #   in Loop: Header=BB79_20 Depth=3
	movslq	-72(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movslq	-20(%rbp), %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_27
# %bb.26:                               #   in Loop: Header=BB79_18 Depth=2
	jmp	.LBB79_28
.LBB79_27:                              #   in Loop: Header=BB79_20 Depth=3
	movslq	-20(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movslq	-44(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB79_20
.LBB79_28:                              #   in Loop: Header=BB79_18 Depth=2
	movl	-72(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-1132(%rbp), %eax
	movl	%eax, -52(%rbp)
	movslq	-8(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -1132(%rbp)
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movl	$1, -40(%rbp)
	movslq	-40(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -68(%rbp)
.LBB79_29:                              #   Parent Loop BB79_8 Depth=1
                                        #     Parent Loop BB79_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.LBB79_31
# %bb.30:                               #   in Loop: Header=BB79_18 Depth=2
	jmp	.LBB79_37
.LBB79_31:                              #   in Loop: Header=BB79_29 Depth=3
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB79_34
# %bb.32:                               #   in Loop: Header=BB79_29 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	movslq	-1136(%rbp,%rax,4), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movslq	-16(%rbp), %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_34
# %bb.33:                               #   in Loop: Header=BB79_29 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB79_34:                              #   in Loop: Header=BB79_29 Depth=3
	movslq	-68(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movslq	-16(%rbp), %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_36
# %bb.35:                               #   in Loop: Header=BB79_18 Depth=2
	jmp	.LBB79_37
.LBB79_36:                              #   in Loop: Header=BB79_29 Depth=3
	movslq	-16(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movslq	-40(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB79_29
.LBB79_37:                              #   in Loop: Header=BB79_18 Depth=2
	movl	-68(%rbp), %eax
	movslq	-40(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movl	%eax, -5264(%rbp,%rcx,4)
	movslq	-56(%rbp), %rcx
	movl	%eax, -5264(%rbp,%rcx,4)
	movslq	-56(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	andl	$-256, %eax
	movslq	-52(%rbp), %rcx
	movl	-3200(%rbp,%rcx,4), %ecx
	andl	$-256, %ecx
	addl	%ecx, %eax
	movslq	-56(%rbp), %rcx
	movl	-3200(%rbp,%rcx,4), %ecx
	andl	$255, %ecx
	movslq	-52(%rbp), %rdx
	movl	-3200(%rbp,%rdx,4), %edx
	andl	$255, %edx
	cmpl	%edx, %ecx
	jle	.LBB79_39
# %bb.38:                               #   in Loop: Header=BB79_18 Depth=2
	movslq	-56(%rbp), %rcx
	movl	-3200(%rbp,%rcx,4), %ecx
	andl	$255, %ecx
	jmp	.LBB79_40
.LBB79_39:                              #   in Loop: Header=BB79_18 Depth=2
	movslq	-52(%rbp), %rcx
	movl	-3200(%rbp,%rcx,4), %ecx
	andl	$255, %ecx
.LBB79_40:                              #   in Loop: Header=BB79_18 Depth=2
	addl	$1, %ecx
	orl	%ecx, %eax
	movslq	-36(%rbp), %rcx
	movl	%eax, -3200(%rbp,%rcx,4)
	movslq	-36(%rbp), %rax
	movl	$-1, -5264(%rbp,%rax,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	-8(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movslq	-28(%rbp), %rax
	movl	-1136(%rbp,%rax,4), %eax
	movl	%eax, -64(%rbp)
.LBB79_41:                              #   Parent Loop BB79_8 Depth=1
                                        #     Parent Loop BB79_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-64(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	movl	-28(%rbp), %ecx
	sarl	$1, %ecx
	movslq	%ecx, %rcx
	movslq	-1136(%rbp,%rcx,4), %rcx
	cmpl	-3200(%rbp,%rcx,4), %eax
	jge	.LBB79_43
# %bb.42:                               #   in Loop: Header=BB79_41 Depth=3
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	cltq
	movl	-1136(%rbp,%rax,4), %eax
	movslq	-28(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB79_41
.LBB79_43:                              #   in Loop: Header=BB79_18 Depth=2
	movl	-64(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movl	%eax, -1136(%rbp,%rcx,4)
	jmp	.LBB79_18
.LBB79_44:                              #   in Loop: Header=BB79_8 Depth=1
	cmpl	$516, -36(%rbp)         # imm = 0x204
	jl	.LBB79_46
# %bb.45:                               #   in Loop: Header=BB79_8 Depth=1
	movl	$2002, %edi             # imm = 0x7D2
	callq	BZ2_bz__AssertH__fail
.LBB79_46:                              #   in Loop: Header=BB79_8 Depth=1
	movb	$0, -9(%rbp)
	movl	$1, -4(%rbp)
.LBB79_47:                              #   Parent Loop BB79_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB79_49 Depth 3
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB79_55
# %bb.48:                               #   in Loop: Header=BB79_47 Depth=2
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB79_49:                              #   Parent Loop BB79_8 Depth=1
                                        #     Parent Loop BB79_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-60(%rbp), %rax
	cmpl	$0, -5264(%rbp,%rax,4)
	jl	.LBB79_51
# %bb.50:                               #   in Loop: Header=BB79_49 Depth=3
	movslq	-60(%rbp), %rax
	movl	-5264(%rbp,%rax,4), %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB79_49
.LBB79_51:                              #   in Loop: Header=BB79_47 Depth=2
	movl	-24(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	-4(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
	movl	-24(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB79_53
# %bb.52:                               #   in Loop: Header=BB79_47 Depth=2
	movb	$1, -9(%rbp)
.LBB79_53:                              #   in Loop: Header=BB79_47 Depth=2
	jmp	.LBB79_54
.LBB79_54:                              #   in Loop: Header=BB79_47 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_47
.LBB79_55:                              #   in Loop: Header=BB79_8 Depth=1
	cmpb	$0, -9(%rbp)
	jne	.LBB79_57
# %bb.56:
	jmp	.LBB79_62
.LBB79_57:                              #   in Loop: Header=BB79_8 Depth=1
	movl	$1, -4(%rbp)
.LBB79_58:                              #   Parent Loop BB79_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB79_61
# %bb.59:                               #   in Loop: Header=BB79_58 Depth=2
	movl	$2, %ecx
	movslq	-4(%rbp), %rax
	movl	-3200(%rbp,%rax,4), %eax
	sarl	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	shll	$8, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -3200(%rbp,%rcx,4)
# %bb.60:                               #   in Loop: Header=BB79_58 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_58
.LBB79_61:                              #   in Loop: Header=BB79_8 Depth=1
	jmp	.LBB79_8
.LBB79_62:
	addq	$5264, %rsp             # imm = 0x1490
	popq	%rbp
	retq
.Lfunc_end79:
	.size	BZ2_hbMakeCodeLengths, .Lfunc_end79-BZ2_hbMakeCodeLengths
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_hbAssignCodes       # -- Begin function BZ2_hbAssignCodes
	.p2align	4, 0x90
	.type	BZ2_hbAssignCodes,@function
BZ2_hbAssignCodes:                      # @BZ2_hbAssignCodes
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB80_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB80_3 Depth 2
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB80_10
# %bb.2:                                #   in Loop: Header=BB80_1 Depth=1
	movl	$0, -4(%rbp)
.LBB80_3:                               #   Parent Loop BB80_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB80_8
# %bb.4:                                #   in Loop: Header=BB80_3 Depth=2
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB80_6
# %bb.5:                                #   in Loop: Header=BB80_3 Depth=2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB80_6:                               #   in Loop: Header=BB80_3 Depth=2
	jmp	.LBB80_7
.LBB80_7:                               #   in Loop: Header=BB80_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB80_3
.LBB80_8:                               #   in Loop: Header=BB80_1 Depth=1
	movl	-8(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -8(%rbp)
# %bb.9:                                #   in Loop: Header=BB80_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB80_1
.LBB80_10:
	popq	%rbp
	retq
.Lfunc_end80:
	.size	BZ2_hbAssignCodes, .Lfunc_end80-BZ2_hbAssignCodes
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_hbCreateDecodeTables # -- Begin function BZ2_hbCreateDecodeTables
	.p2align	4, 0x90
	.type	BZ2_hbCreateDecodeTables,@function
BZ2_hbCreateDecodeTables:               # @BZ2_hbCreateDecodeTables
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB81_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB81_3 Depth 2
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB81_10
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
	movl	$0, -12(%rbp)
.LBB81_3:                               #   Parent Loop BB81_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jge	.LBB81_8
# %bb.4:                                #   in Loop: Header=BB81_3 Depth=2
	movq	-56(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB81_6
# %bb.5:                                #   in Loop: Header=BB81_3 Depth=2
	movl	-12(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB81_6:                               #   in Loop: Header=BB81_3 Depth=2
	jmp	.LBB81_7
.LBB81_7:                               #   in Loop: Header=BB81_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB81_3
.LBB81_8:                               #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_9
.LBB81_9:                               #   in Loop: Header=BB81_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_1
.LBB81_10:
	movl	$0, -4(%rbp)
.LBB81_11:                              # =>This Inner Loop Header: Depth=1
	cmpl	$23, -4(%rbp)
	jge	.LBB81_14
# %bb.12:                               #   in Loop: Header=BB81_11 Depth=1
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB81_11 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_11
.LBB81_14:
	movl	$0, -4(%rbp)
.LBB81_15:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jge	.LBB81_18
# %bb.16:                               #   in Loop: Header=BB81_15 Depth=1
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.17:                               #   in Loop: Header=BB81_15 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_15
.LBB81_18:
	movl	$1, -4(%rbp)
.LBB81_19:                              # =>This Inner Loop Header: Depth=1
	cmpl	$23, -4(%rbp)
	jge	.LBB81_22
# %bb.20:                               #   in Loop: Header=BB81_19 Depth=1
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
# %bb.21:                               #   in Loop: Header=BB81_19 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_19
.LBB81_22:
	movl	$0, -4(%rbp)
.LBB81_23:                              # =>This Inner Loop Header: Depth=1
	cmpl	$23, -4(%rbp)
	jge	.LBB81_26
# %bb.24:                               #   in Loop: Header=BB81_23 Depth=1
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.25:                               #   in Loop: Header=BB81_23 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_23
.LBB81_26:
	movl	$0, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB81_27:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB81_30
# %bb.28:                               #   in Loop: Header=BB81_27 Depth=1
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movq	-48(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-8(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -8(%rbp)
# %bb.29:                               #   in Loop: Header=BB81_27 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_27
.LBB81_30:
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.LBB81_31:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB81_34
# %bb.32:                               #   in Loop: Header=BB81_31 Depth=1
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$1, %eax
	shll	$1, %eax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.33:                               #   in Loop: Header=BB81_31 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB81_31
.LBB81_34:
	popq	%rbp
	retq
.Lfunc_end81:
	.size	BZ2_hbCreateDecodeTables, .Lfunc_end81-BZ2_hbCreateDecodeTables
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function ran
.LCPI82_0:
	.long	1325400064              # float 2.14748365E+9
	.text
	.globl	ran
	.p2align	4, 0x90
	.type	ran,@function
ran:                                    # @ran
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$127773, %ecx           # imm = 0x1F31D
	movq	seedi, %rax
	cqto
	idivq	%rcx
	movq	%rax, -16(%rbp)
	movq	seedi, %rax
	cqto
	idivq	%rcx
	movq	%rdx, -24(%rbp)
	imulq	$16807, -24(%rbp), %rax # imm = 0x41A7
	imulq	$2836, -16(%rbp), %rcx  # imm = 0xB14
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.LBB82_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, seedi
	jmp	.LBB82_3
.LBB82_2:
	movq	-8(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movq	%rax, seedi
.LBB82_3:
	movss	.LCPI82_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	seedi, %rax
	cvtsi2ssq	%rax, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end82:
	.size	ran, .Lfunc_end82-ran
	.cfi_endproc
                                        # -- End function
	.globl	spec_init               # -- Begin function spec_init
	.p2align	4, 0x90
	.type	spec_init,@function
spec_init:                              # @spec_init
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
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB83_2
# %bb.1:
	movabsq	$.L.str.81, %rdi
	movb	$0, %al
	callq	printf
.LBB83_2:
	movl	$0, -12(%rbp)
.LBB83_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB83_7 Depth 2
	cmpl	$3, -12(%rbp)
	jge	.LBB83_12
# %bb.4:                                #   in Loop: Header=BB83_3 Depth=1
	movabsq	$spec_fd, %rbx
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movl	(%rcx), %eax
	movl	%eax, -20(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rdi
	addq	%rax, %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	movl	-20(%rbp), %eax
	movslq	-12(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	movl	%eax, (%rbx)
	movl	-20(%rbp), %eax
	addl	$1048576, %eax          # imm = 0x100000
	movslq	%eax, %rdi
	callq	malloc
	movabsq	$spec_fd, %rcx
	movslq	-12(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rax, 16(%rsi)
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	cmpq	$0, 16(%rcx)
	jne	.LBB83_6
# %bb.5:
	movabsq	$.L.str.1.82, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB83_6:                               #   in Loop: Header=BB83_3 Depth=1
	movl	$0, -16(%rbp)
.LBB83_7:                               #   Parent Loop BB83_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB83_10
# %bb.8:                                #   in Loop: Header=BB83_7 Depth=2
	movabsq	$spec_fd, %rax
	movslq	-12(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movslq	-16(%rbp), %rcx
	movb	$0, (%rax,%rcx)
# %bb.9:                                #   in Loop: Header=BB83_7 Depth=2
	movl	-16(%rbp), %eax
	addl	$1024, %eax             # imm = 0x400
	movl	%eax, -16(%rbp)
	jmp	.LBB83_7
.LBB83_10:                              #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_11
.LBB83_11:                              #   in Loop: Header=BB83_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB83_3
.LBB83_12:
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end83:
	.size	spec_init, .Lfunc_end83-spec_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_random_load
.LCPI84_0:
	.quad	4629700416936869888     # double 32
.LCPI84_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	spec_random_load
	.p2align	4, 0x90
	.type	spec_random_load,@function
spec_random_load:                       # @spec_random_load
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$4194328, %rsp          # imm = 0x400018
	.cfi_offset %rbx, -24
	movl	$4, %eax
	movl	%edi, -20(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB84_2
# %bb.1:
	movabsq	$.L.str.2.83, %rdi
	movb	$0, %al
	callq	printf
.LBB84_2:
	movl	$0, -12(%rbp)
.LBB84_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_7 Depth 2
	cmpl	$32, -12(%rbp)
	jge	.LBB84_12
# %bb.4:                                #   in Loop: Header=BB84_3 Depth=1
	movl	$5, %eax
	cmpl	dbglvl, %eax
	jge	.LBB84_6
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	movabsq	$.L.str.3.84, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB84_6:                               #   in Loop: Header=BB84_3 Depth=1
	movl	$0, -16(%rbp)
.LBB84_7:                               #   Parent Loop BB84_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$131072, -16(%rbp)      # imm = 0x20000
	jge	.LBB84_10
# %bb.8:                                #   in Loop: Header=BB84_7 Depth=2
	callq	ran
	leaq	-4194336(%rbp), %rax
	movsd	.LCPI84_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	-12(%rbp), %rdx
	shlq	$17, %rdx
	addq	%rdx, %rax
	movslq	-16(%rbp), %rdx
	movb	%cl, (%rax,%rdx)
# %bb.9:                                #   in Loop: Header=BB84_7 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB84_7
.LBB84_10:                              #   in Loop: Header=BB84_3 Depth=1
	jmp	.LBB84_11
.LBB84_11:                              #   in Loop: Header=BB84_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB84_3
.LBB84_12:
	movl	$4, %eax
	cmpl	dbglvl, %eax
	jge	.LBB84_14
# %bb.13:
	movabsq	$.L.str.4.85, %rdi
	movb	$0, %al
	callq	printf
.LBB84_14:
	movl	$0, -12(%rbp)
.LBB84_15:                              # =>This Inner Loop Header: Depth=1
	movabsq	$spec_fd, %rax
	movl	-12(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	(%rax), %ecx
	jge	.LBB84_18
# %bb.16:                               #   in Loop: Header=BB84_15 Depth=1
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rbx
	movslq	-12(%rbp), %rax
	addq	%rax, %rbx
	callq	ran
	leaq	-4194336(%rbp), %rsi
	movsd	.LCPI84_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	shlq	$17, %rax
	addq	%rax, %rsi
	movq	%rbx, %rdi
	movl	$131072, %edx           # imm = 0x20000
	callq	memcpy
# %bb.17:                               #   in Loop: Header=BB84_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$131072, %eax           # imm = 0x20000
	movl	%eax, -12(%rbp)
	jmp	.LBB84_15
.LBB84_18:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1048576, 4(%rax)       # imm = 0x100000
	xorl	%eax, %eax
	addq	$4194328, %rsp          # imm = 0x400018
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end84:
	.size	spec_random_load, .Lfunc_end84-spec_random_load
	.cfi_endproc
                                        # -- End function
	.globl	spec_load               # -- Begin function spec_load
	.p2align	4, 0x90
	.type	spec_load,@function
spec_load:                              # @spec_load
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%edi, -20(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB85_2
# %bb.1:
	movq	stderr, %rbx
	movq	-48(%rbp), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.5.86, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB85_2:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, 4(%rdx)
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 8(%rax)
	movl	$0, -28(%rbp)
.LBB85_3:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB85_10
# %bb.4:                                #   in Loop: Header=BB85_3 Depth=1
	movabsq	$spec_fd, %rax
	movl	-36(%rbp), %edi
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	movslq	-28(%rbp), %rax
	addq	%rax, %rsi
	movl	$131072, %edx           # imm = 0x20000
	callq	read
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB85_6
# %bb.5:
	jmp	.LBB85_11
.LBB85_6:                               #   in Loop: Header=BB85_3 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB85_8
# %bb.7:
	movq	stderr, %rbx
	movq	-48(%rbp), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.6.87, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB85_8:                               #   in Loop: Header=BB85_3 Depth=1
	movabsq	$spec_fd, %rax
	movl	-32(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
# %bb.9:                                #   in Loop: Header=BB85_3 Depth=1
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB85_3
.LBB85_10:                              # %.loopexit
	jmp	.LBB85_11
.LBB85_11:
	movl	-36(%rbp), %edi
	callq	close
.LBB85_12:                              # =>This Inner Loop Header: Depth=1
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB85_18
# %bb.13:                               #   in Loop: Header=BB85_12 Depth=1
	movabsq	$spec_fd, %rax
	movl	-40(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	subl	4(%rsi), %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jle	.LBB85_15
# %bb.14:                               #   in Loop: Header=BB85_12 Depth=1
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, -24(%rbp)
.LBB85_15:                              #   in Loop: Header=BB85_12 Depth=1
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB85_17
# %bb.16:                               #   in Loop: Header=BB85_12 Depth=1
	movabsq	$.L.str.7.88, %rdi
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB85_17:                              #   in Loop: Header=BB85_12 Depth=1
	movabsq	$spec_fd, %rbx
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	4(%rcx), %rax
	addq	%rax, %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rsi
	movslq	-24(%rbp), %rdx
	callq	memcpy
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	addl	4(%rbx), %eax
	movl	%eax, 4(%rbx)
	jmp	.LBB85_12
.LBB85_18:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end85:
	.size	spec_load, .Lfunc_end85-spec_load
	.cfi_endproc
                                        # -- End function
	.globl	spec_read               # -- Begin function spec_read
	.p2align	4, 0x90
	.type	spec_read,@function
spec_read:                              # @spec_read
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$4, %eax
	movl	%edi, -20(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -24(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB86_2
# %bb.1:
	movabsq	$.L.str.8.89, %rdi
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movb	$0, %al
	callq	printf
.LBB86_2:
	cmpl	$3, -20(%rbp)
	jle	.LBB86_4
# %bb.3:
	movabsq	$.L.str.9.90, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB86_4:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jl	.LBB86_8
# %bb.5:
	movl	$4, %eax
	cmpl	dbglvl, %eax
	jge	.LBB86_7
# %bb.6:
	movabsq	$.L.str.10.91, %rdi
	movb	$0, %al
	callq	printf
.LBB86_7:
	movl	$-1, -32(%rbp)
	jmp	.LBB86_14
.LBB86_8:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %ecx
	addl	-28(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jl	.LBB86_10
# %bb.9:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	subl	8(%rax), %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB86_11
.LBB86_10:
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB86_11:
	movl	$4, %r14d
	movabsq	$spec_fd, %rbx
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rsi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	8(%rcx), %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rdx
	callq	memcpy
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	addl	8(%rbx), %eax
	movl	%eax, 8(%rbx)
	cmpl	dbglvl, %r14d
	jge	.LBB86_13
# %bb.12:
	movabsq	$.L.str.11.92, %rdi
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB86_13:
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB86_14:
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end86:
	.size	spec_read, .Lfunc_end86-spec_read
	.cfi_endproc
                                        # -- End function
	.globl	spec_fread              # -- Begin function spec_fread
	.p2align	4, 0x90
	.type	spec_fread,@function
spec_fread:                             # @spec_fread
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$4, %eax
	movq	%rdi, -48(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB87_2
# %bb.1:
	movabsq	$.L.str.12.95, %rdi
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movb	$0, %al
	callq	printf
.LBB87_2:
	cmpl	$3, -20(%rbp)
	jle	.LBB87_4
# %bb.3:
	movabsq	$.L.str.13.96, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB87_4:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jl	.LBB87_8
# %bb.5:
	movl	$4, %eax
	cmpl	dbglvl, %eax
	jge	.LBB87_7
# %bb.6:
	movabsq	$.L.str.10.91, %rdi
	movb	$0, %al
	callq	printf
.LBB87_7:
	movl	$-1, -36(%rbp)
	jmp	.LBB87_14
.LBB87_8:
	movabsq	$spec_fd, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %ecx
	movl	-28(%rbp), %edx
	imull	-32(%rbp), %edx
	addl	%edx, %ecx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jl	.LBB87_10
# %bb.9:
	movabsq	$spec_fd, %rcx
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movl	4(%rdx), %eax
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	subl	8(%rcx), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -24(%rbp)
	jmp	.LBB87_11
.LBB87_10:
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB87_11:
	movl	$4, %r14d
	movabsq	$spec_fd, %rbx
	movq	-48(%rbp), %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rsi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	8(%rcx), %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rdx
	callq	memcpy
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	addl	8(%rbx), %eax
	movl	%eax, 8(%rbx)
	cmpl	dbglvl, %r14d
	jge	.LBB87_13
# %bb.12:
	movabsq	$.L.str.11.92, %rdi
	movl	-24(%rbp), %esi
	imull	-28(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB87_13:
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB87_14:
	movl	-36(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end87:
	.size	spec_fread, .Lfunc_end87-spec_fread
	.cfi_endproc
                                        # -- End function
	.globl	spec_getc               # -- Begin function spec_getc
	.p2align	4, 0x90
	.type	spec_getc,@function
spec_getc:                              # @spec_getc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB88_2
# %bb.1:
	movabsq	$.L.str.14.99, %rdi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB88_2:
	cmpl	$3, -4(%rbp)
	jle	.LBB88_4
# %bb.3:
	movabsq	$.L.str.9.90, %rsi
	movq	stderr, %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB88_4:
	movabsq	$spec_fd, %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %ecx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	4(%rax), %ecx
	jl	.LBB88_8
# %bb.5:
	movl	$4, %eax
	cmpl	dbglvl, %eax
	jge	.LBB88_7
# %bb.6:
	movabsq	$.L.str.10.91, %rdi
	movb	$0, %al
	callq	printf
.LBB88_7:
	movl	$-1, -12(%rbp)
	jmp	.LBB88_11
.LBB88_8:
	movl	$4, %eax
	movabsq	$spec_fd, %rcx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movslq	-4(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	movl	8(%rcx), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, 8(%rcx)
	movslq	%esi, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movl	%ecx, -8(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB88_10
# %bb.9:
	movabsq	$.L.str.11.92, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB88_10:
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB88_11:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	spec_getc, .Lfunc_end88-spec_getc
	.cfi_endproc
                                        # -- End function
	.globl	spec_ungetc             # -- Begin function spec_ungetc
	.p2align	4, 0x90
	.type	spec_ungetc,@function
spec_ungetc:                            # @spec_ungetc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB89_2
# %bb.1:
	movabsq	$.L.str.15.102, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB89_2:
	cmpl	$3, -8(%rbp)
	jle	.LBB89_4
# %bb.3:
	movabsq	$.L.str.9.90, %rsi
	movq	stderr, %rdi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB89_4:
	movabsq	$spec_fd, %rax
	movslq	-8(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	jg	.LBB89_6
# %bb.5:
	movabsq	$.L.str.16.103, %rsi
	movabsq	$spec_fd, %rax
	movq	stderr, %rdi
	movslq	-8(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB89_6:
	movabsq	$spec_fd, %rax
	movslq	-8(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movslq	-8(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 8(%rax)
	movslq	%edx, %rax
	movzbl	(%rcx,%rax), %eax
	movzbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB89_8
# %bb.7:
	movabsq	$.L.str.17.104, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB89_8:
	movl	$4, %eax
	cmpl	dbglvl, %eax
	jge	.LBB89_10
# %bb.9:
	movabsq	$.L.str.11.92, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB89_10:
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	spec_ungetc, .Lfunc_end89-spec_ungetc
	.cfi_endproc
                                        # -- End function
	.globl	spec_rewind             # -- Begin function spec_rewind
	.p2align	4, 0x90
	.type	spec_rewind,@function
spec_rewind:                            # @spec_rewind
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$spec_fd, %rax
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 8(%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end90:
	.size	spec_rewind, .Lfunc_end90-spec_rewind
	.cfi_endproc
                                        # -- End function
	.globl	spec_reset              # -- Begin function spec_reset
	.p2align	4, 0x90
	.type	spec_reset,@function
spec_reset:                             # @spec_reset
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
	movabsq	$spec_fd, %rbx
	movl	%edi, -12(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rdi
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	4(%rcx), %rdx
	xorl	%esi, %esi
	callq	memset
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movl	$0, 4(%rcx)
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rbx
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end91:
	.size	spec_reset, .Lfunc_end91-spec_reset
	.cfi_endproc
                                        # -- End function
	.globl	spec_write              # -- Begin function spec_write
	.p2align	4, 0x90
	.type	spec_write,@function
spec_write:                             # @spec_write
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$4, %eax
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB92_2
# %bb.1:
	movabsq	$.L.str.18.107, %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movb	$0, %al
	callq	printf
.LBB92_2:
	cmpl	$3, -20(%rbp)
	jle	.LBB92_4
# %bb.3:
	movabsq	$.L.str.19.108, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB92_4:
	movl	$4, %r14d
	movabsq	$spec_fd, %rbx
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	8(%rcx), %rax
	addq	%rax, %rdi
	movq	-32(%rbp), %rsi
	movslq	-24(%rbp), %rdx
	callq	memcpy
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rbx, %rdx
	addq	%rcx, %rdx
	addl	4(%rdx), %eax
	movl	%eax, 4(%rdx)
	movl	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	addl	8(%rbx), %eax
	movl	%eax, 8(%rbx)
	cmpl	dbglvl, %r14d
	jge	.LBB92_6
# %bb.5:
	movabsq	$.L.str.11.92, %rdi
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB92_6:
	movl	-24(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end92:
	.size	spec_write, .Lfunc_end92-spec_write
	.cfi_endproc
                                        # -- End function
	.globl	spec_fwrite             # -- Begin function spec_fwrite
	.p2align	4, 0x90
	.type	spec_fwrite,@function
spec_fwrite:                            # @spec_fwrite
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$4, %eax
	movq	%rdi, -40(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB93_2
# %bb.1:
	movabsq	$.L.str.20.111, %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movb	$0, %al
	callq	printf
.LBB93_2:
	cmpl	$3, -20(%rbp)
	jle	.LBB93_4
# %bb.3:
	movabsq	$.L.str.21.112, %rsi
	movq	stderr, %rdi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB93_4:
	movl	$4, %r14d
	movabsq	$spec_fd, %rbx
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movq	16(%rcx), %rdi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rbx, %rcx
	addq	%rax, %rcx
	movslq	8(%rcx), %rax
	addq	%rax, %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdx
	callq	memcpy
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rbx, %rdx
	addq	%rcx, %rdx
	addl	4(%rdx), %eax
	movl	%eax, 4(%rdx)
	movl	-28(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rbx
	addl	8(%rbx), %eax
	movl	%eax, 8(%rbx)
	cmpl	dbglvl, %r14d
	jge	.LBB93_6
# %bb.5:
	movabsq	$.L.str.11.92, %rdi
	movl	-24(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB93_6:
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end93:
	.size	spec_fwrite, .Lfunc_end93-spec_fwrite
	.cfi_endproc
                                        # -- End function
	.globl	spec_putc               # -- Begin function spec_putc
	.p2align	4, 0x90
	.type	spec_putc,@function
spec_putc:                              # @spec_putc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %eax
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	dbglvl, %eax
	jge	.LBB94_2
# %bb.1:
	movabsq	$.L.str.22, %rdi
	movzbl	-1(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	printf
.LBB94_2:
	cmpl	$3, -8(%rbp)
	jle	.LBB94_4
# %bb.3:
	movabsq	$.L.str.19.108, %rsi
	movq	stderr, %rdi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB94_4:
	movabsq	$spec_fd, %rax
	movb	-1(%rbp), %r8b
	movslq	-8(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movslq	-8(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movl	8(%rdi), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, 8(%rdi)
	movslq	%ecx, %rcx
	movb	%r8b, (%rdx,%rcx)
	movslq	-8(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	spec_putc, .Lfunc_end94-spec_putc
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
	movabsq	$.L.str.23, %rax
	movl	$0, -52(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$64, -8(%rbp)
	movq	%rax, -48(%rbp)
	movq	$10, seedi
	cmpl	$1, -16(%rbp)
	jle	.LBB95_2
# %bb.1:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB95_2:
	cmpl	$2, -16(%rbp)
	jle	.LBB95_4
# %bb.3:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, -8(%rbp)
.LBB95_4:
	cmpl	$3, -16(%rbp)
	jle	.LBB95_6
# %bb.5:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movl	%eax, -20(%rbp)
	jmp	.LBB95_7
.LBB95_6:
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB95_7:
	movl	-8(%rbp), %eax
	shll	$20, %eax
	movl	%eax, spec_fd
	movl	-20(%rbp), %eax
	shll	$20, %eax
	movl	%eax, spec_fd+24
	movl	-8(%rbp), %eax
	shll	$20, %eax
	movl	%eax, spec_fd+48
	callq	spec_init
	callq	debug_time
	movl	$2, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_9
# %bb.8:
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	printf
.LBB95_9:
	movq	-48(%rbp), %rsi
	movl	-8(%rbp), %edx
	shll	$20, %edx
	xorl	%edi, %edi
	callq	spec_load
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_11
# %bb.10:
	movabsq	$.L.str.25, %rdi
	movl	spec_fd+4, %esi
	movb	$0, %al
	callq	printf
.LBB95_11:
	movl	$1024, %ecx             # imm = 0x400
	movl	-8(%rbp), %eax
	shll	$20, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB95_13
# %bb.12:
	movabsq	$.L.str.26, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB95_13:
	movl	$0, -4(%rbp)
.LBB95_14:                              # =>This Inner Loop Header: Depth=1
	imull	$1027, -4(%rbp), %eax   # imm = 0x403
	movl	-8(%rbp), %ecx
	shll	$20, %ecx
	cmpl	%ecx, %eax
	jge	.LBB95_17
# %bb.15:                               #   in Loop: Header=BB95_14 Depth=1
	movq	spec_fd+16, %rax
	imull	$1027, -4(%rbp), %ecx   # imm = 0x403
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movq	-32(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movb	%al, (%rcx,%rdx)
# %bb.16:                               #   in Loop: Header=BB95_14 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB95_14
.LBB95_17:
	callq	spec_initbufs
	movl	$5, -12(%rbp)
.LBB95_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_28 Depth 2
	cmpl	$9, -12(%rbp)
	jg	.LBB95_37
# %bb.19:                               #   in Loop: Header=BB95_18 Depth=1
	callq	debug_time
	movl	$2, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_21
# %bb.20:                               #   in Loop: Header=BB95_18 Depth=1
	movabsq	$.L.str.27, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	printf
.LBB95_21:                              #   in Loop: Header=BB95_18 Depth=1
	movl	-12(%rbp), %edx
	xorl	%edi, %edi
	movl	$1, %esi
	callq	spec_compress
	callq	debug_time
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_23
# %bb.22:                               #   in Loop: Header=BB95_18 Depth=1
	movabsq	$.L.str.28, %rdi
	movl	spec_fd+28, %esi
	movb	$0, %al
	callq	printf
.LBB95_23:                              #   in Loop: Header=BB95_18 Depth=1
	xorl	%edi, %edi
	callq	spec_reset
	movl	$1, %edi
	callq	spec_rewind
	callq	debug_time
	movl	$2, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_25
# %bb.24:                               #   in Loop: Header=BB95_18 Depth=1
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	printf
.LBB95_25:                              #   in Loop: Header=BB95_18 Depth=1
	movl	-12(%rbp), %edx
	movl	$1, %edi
	xorl	%esi, %esi
	callq	spec_uncompress
	callq	debug_time
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_27
# %bb.26:                               #   in Loop: Header=BB95_18 Depth=1
	movabsq	$.L.str.30, %rdi
	movl	spec_fd+4, %esi
	movb	$0, %al
	callq	printf
.LBB95_27:                              #   in Loop: Header=BB95_18 Depth=1
	movl	$0, -4(%rbp)
.LBB95_28:                              #   Parent Loop BB95_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	imull	$1027, -4(%rbp), %eax   # imm = 0x403
	movl	-8(%rbp), %ecx
	shll	$20, %ecx
	cmpl	%ecx, %eax
	jge	.LBB95_33
# %bb.29:                               #   in Loop: Header=BB95_28 Depth=2
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	spec_fd+16, %rcx
	imull	$1027, -4(%rbp), %edx   # imm = 0x403
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB95_31
# %bb.30:
	movabsq	$.L.str.31, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB95_31:                              #   in Loop: Header=BB95_28 Depth=2
	jmp	.LBB95_32
.LBB95_32:                              #   in Loop: Header=BB95_28 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB95_28
.LBB95_33:                              #   in Loop: Header=BB95_18 Depth=1
	callq	debug_time
	movl	$3, %eax
	cmpl	dbglvl, %eax
	jge	.LBB95_35
# %bb.34:                               #   in Loop: Header=BB95_18 Depth=1
	movabsq	$.L.str.32, %rdi
	movb	$0, %al
	callq	printf
.LBB95_35:                              #   in Loop: Header=BB95_18 Depth=1
	movl	$1, %edi
	callq	spec_reset
	xorl	%edi, %edi
	callq	spec_rewind
# %bb.36:                               #   in Loop: Header=BB95_18 Depth=1
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB95_18
.LBB95_37:
	movabsq	$.L.str.33, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	main, .Lfunc_end95-main
	.cfi_endproc
                                        # -- End function
	.globl	debug_time              # -- Begin function debug_time
	.p2align	4, 0x90
	.type	debug_time,@function
debug_time:                             # @debug_time
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end96:
	.size	debug_time, .Lfunc_end96-debug_time
	.cfi_endproc
                                        # -- End function
	.globl	spec_initbufs           # -- Begin function spec_initbufs
	.p2align	4, 0x90
	.type	spec_initbufs,@function
spec_initbufs:                          # @spec_initbufs
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$0, smallMode
	movl	$0, verbosity
	movl	$9, blockSize100k
	movl	$30, workFactor
	popq	%rbp
	retq
.Lfunc_end97:
	.size	spec_initbufs, .Lfunc_end97-spec_initbufs
	.cfi_endproc
                                        # -- End function
	.globl	spec_compress           # -- Begin function spec_compress
	.p2align	4, 0x90
	.type	spec_compress,@function
spec_compress:                          # @spec_compress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, blockSize100k
	movl	-12(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	compressStream
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	spec_compress, .Lfunc_end98-spec_compress
	.cfi_endproc
                                        # -- End function
	.globl	spec_uncompress         # -- Begin function spec_uncompress
	.p2align	4, 0x90
	.type	spec_uncompress,@function
spec_uncompress:                        # @spec_uncompress
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -12(%rbp)
	movl	$0, blockSize100k
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	uncompressStream
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	spec_uncompress, .Lfunc_end99-spec_uncompress
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"      %d work, %d block, ratio %5.2f\n"
	.size	.L.str, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"    too repetitive; using fallback sorting algorithm\n"
	.size	.L.str.1, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"        main sort initialise ...\n"
	.size	.L.str.6, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"        bucket sorting ...\n"
	.size	.L.str.2, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"        qsort [0x%x, 0x%x]   done %d   this %d\n"
	.size	.L.str.7, 48

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"        %d pointers, %d sorted, %d scanned\n"
	.size	.L.str.8, 44

	.type	incs,@object            # @incs
	.data
	.p2align	4
incs:
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	13                      # 0xd
	.long	40                      # 0x28
	.long	121                     # 0x79
	.long	364                     # 0x16c
	.long	1093                    # 0x445
	.long	3280                    # 0xcd0
	.long	9841                    # 0x2671
	.long	29524                   # 0x7354
	.long	88573                   # 0x159fd
	.long	265720                  # 0x40df8
	.long	797161                  # 0xc29e9
	.long	2391484                 # 0x247dbc
	.size	incs, 56

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"        depth %6d has "
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%6d unresolved strings\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"        reconstructing block ...\n"
	.size	.L.str.5, 34

	.type	blockSize100k,@object   # @blockSize100k
	.comm	blockSize100k,4,4
	.type	verbosity,@object       # @verbosity
	.comm	verbosity,4,4
	.type	workFactor,@object      # @workFactor
	.comm	workFactor,4,4
	.type	outputHandleJustInCase,@object # @outputHandleJustInCase
	.comm	outputHandleJustInCase,4,4
	.type	smallMode,@object       # @smallMode
	.comm	smallMode,1,1
	.type	forceOverwrite,@object  # @forceOverwrite
	.comm	forceOverwrite,1,1
	.type	noisy,@object           # @noisy
	.comm	noisy,1,1
	.type	progName,@object        # @progName
	.comm	progName,8,8
	.type	inName,@object          # @inName
	.comm	inName,1034,16
	.type	keepInputFiles,@object  # @keepInputFiles
	.comm	keepInputFiles,1,1
	.type	deleteOutputOnInterrupt,@object # @deleteOutputOnInterrupt
	.comm	deleteOutputOnInterrupt,1,1
	.type	testFailsExist,@object  # @testFailsExist
	.comm	testFailsExist,1,1
	.type	unzFailsExist,@object   # @unzFailsExist
	.comm	unzFailsExist,1,1
	.type	numFileNames,@object    # @numFileNames
	.comm	numFileNames,4,4
	.type	numFilesProcessed,@object # @numFilesProcessed
	.comm	numFilesProcessed,4,4
	.type	exitValue,@object       # @exitValue
	.comm	exitValue,4,4
	.type	opMode,@object          # @opMode
	.comm	opMode,4,4
	.type	srcMode,@object         # @srcMode
	.comm	srcMode,4,4
	.type	longestFileName,@object # @longestFileName
	.comm	longestFileName,4,4
	.type	outName,@object         # @outName
	.comm	outName,1034,16
	.type	tmpName,@object         # @tmpName
	.comm	tmpName,1034,16
	.type	progNameReally,@object  # @progNameReally
	.comm	progNameReally,1034,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.1.10,@object     # @.str.1.10
.L.str.1.10:
	.asciz	" no data compressed.\n"
	.size	.L.str.1.10, 22

	.type	.L.str.2.11,@object     # @.str.2.11
.L.str.2.11:
	.asciz	"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\n"
	.size	.L.str.2.11, 57

	.type	.L.str.3.12,@object     # @.str.3.12
.L.str.3.12:
	.asciz	"compress:unexpected error"
	.size	.L.str.3.12, 26

	.type	.L.str.4.13,@object     # @.str.4.13
.L.str.4.13:
	.asciz	"compress:end"
	.size	.L.str.4.13, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n%s: PANIC -- internal consistency error:\n\t%s\n\tThis is probably a BUG, but it may be in your COMPILER.  Please do not bother\n\tthe original author.\n"
	.size	.L.str.10, 148

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\tInput file = %s, output file = %s\n"
	.size	.L.str.11, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\n%s: I/O or other error, bailing out.  Possible reason follows.\n"
	.size	.L.str.15, 65

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\n%s: couldn't allocate enough memory\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"bzip2: I'm not configured correctly for this platform!\n\tI require Int32, Int16 and Char to have sizes\n\tof 4, 2 and 1 bytes to run properly, and they don't.\n\tProbably you can fix this by defining them correctly,\n\tand recompiling.  Bye!\n"
	.size	.L.str.17, 236

	.type	.L.str.5.14,@object     # @.str.5.14
.L.str.5.14:
	.asciz	"decompress:bzReadGetUnused"
	.size	.L.str.5.14, 27

	.type	.L.str.6.15,@object     # @.str.6.15
.L.str.6.15:
	.asciz	"\n    "
	.size	.L.str.6.15, 6

	.type	.L.str.7.16,@object     # @.str.7.16
.L.str.7.16:
	.asciz	"\n%s: %s: trailing garbage after EOF ignored\n"
	.size	.L.str.7.16, 45

	.type	.L.str.8.17,@object     # @.str.8.17
.L.str.8.17:
	.asciz	"decompress:unexpected error"
	.size	.L.str.8.17, 28

	.type	.L.str.9.18,@object     # @.str.9.18
.L.str.9.18:
	.asciz	"decompress:end"
	.size	.L.str.9.18, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\n%s: Compressed file ends unexpectedly;\n\tperhaps it is corrupted?  *Possible* reason follows.\n"
	.size	.L.str.14, 95

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\nIt is possible that the compressed file(s) have become corrupted.\nYou can use the -tvv option to test integrity of such files.\n\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.size	.L.str.13, 241

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\n%s: Data integrity error when decompressing.\n"
	.size	.L.str.12, 47

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\n\nbzip2/libbzip2: internal error number %d.\nThis may be a bug in bzip2/libbzip2, %s.\nIt may also be a bug in your compiler.  Please do not bother the\noriginal author of bzip2 with a bug report for this.  He\ndoesn't know anything about bzip2 as it appears in CPU2006.\n\n"
	.size	.L.str.21, 269

	.type	.L.str.1.22,@object     # @.str.1.22
.L.str.1.22:
	.asciz	"\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"
	.size	.L.str.1.22, 1057

	.type	.L.str.5.23,@object     # @.str.5.23
.L.str.5.23:
	.asciz	"1.0.3, 15-Feb-2005"
	.size	.L.str.5.23, 19

	.type	.L.str.2.24,@object     # @.str.2.24
.L.str.2.24:
	.asciz	" {0x%08x, 0x%08x}"
	.size	.L.str.2.24, 18

	.type	.L.str.3.25,@object     # @.str.3.25
.L.str.3.25:
	.asciz	"]"
	.size	.L.str.3.25, 2

	.type	.L.str.4.26,@object     # @.str.4.26
.L.str.4.26:
	.asciz	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"
	.size	.L.str.4.26, 55

	.type	.L.str.6.42,@object     # @.str.6.42
.L.str.6.42:
	.asciz	"w"
	.size	.L.str.6.42, 2

	.type	.L.str.7.43,@object     # @.str.7.43
.L.str.7.43:
	.asciz	"r"
	.size	.L.str.7.43, 2

	.type	.L.str.8.44,@object     # @.str.8.44
.L.str.8.44:
	.asciz	"b"
	.size	.L.str.8.44, 2

	.type	.L.str.9.45,@object     # @.str.9.45
.L.str.9.45:
	.zero	1
	.size	.L.str.9.45, 1

	.type	bzerrorstrings,@object  # @bzerrorstrings
	.data
	.p2align	4
bzerrorstrings:
	.quad	.L.str.10.46
	.quad	.L.str.11.47
	.quad	.L.str.12.48
	.quad	.L.str.13.49
	.quad	.L.str.14.50
	.quad	.L.str.15.51
	.quad	.L.str.16.52
	.quad	.L.str.17.53
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.20
	.quad	.L.str.20
	.quad	.L.str.20
	.quad	.L.str.20
	.quad	.L.str.20
	.size	bzerrorstrings, 128

	.type	.L.str.10.46,@object    # @.str.10.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10.46:
	.asciz	"OK"
	.size	.L.str.10.46, 3

	.type	.L.str.11.47,@object    # @.str.11.47
.L.str.11.47:
	.asciz	"SEQUENCE_ERROR"
	.size	.L.str.11.47, 15

	.type	.L.str.12.48,@object    # @.str.12.48
.L.str.12.48:
	.asciz	"PARAM_ERROR"
	.size	.L.str.12.48, 12

	.type	.L.str.13.49,@object    # @.str.13.49
.L.str.13.49:
	.asciz	"MEM_ERROR"
	.size	.L.str.13.49, 10

	.type	.L.str.14.50,@object    # @.str.14.50
.L.str.14.50:
	.asciz	"DATA_ERROR"
	.size	.L.str.14.50, 11

	.type	.L.str.15.51,@object    # @.str.15.51
.L.str.15.51:
	.asciz	"DATA_ERROR_MAGIC"
	.size	.L.str.15.51, 17

	.type	.L.str.16.52,@object    # @.str.16.52
.L.str.16.52:
	.asciz	"IO_ERROR"
	.size	.L.str.16.52, 9

	.type	.L.str.17.53,@object    # @.str.17.53
.L.str.17.53:
	.asciz	"UNEXPECTED_EOF"
	.size	.L.str.17.53, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"OUTBUFF_FULL"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"CONFIG_ERROR"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"???"
	.size	.L.str.20, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.size	.L.str.56, 62

	.type	.L.str.1.57,@object     # @.str.1.57
.L.str.1.57:
	.asciz	"    final combined CRC = 0x%08x\n   "
	.size	.L.str.1.57, 36

	.type	.L.str.2.58,@object     # @.str.2.58
.L.str.2.58:
	.asciz	"      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.size	.L.str.2.58, 64

	.type	.L.str.3.59,@object     # @.str.3.59
.L.str.3.59:
	.asciz	"      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.size	.L.str.3.59, 59

	.type	.L.str.4.60,@object     # @.str.4.60
.L.str.4.60:
	.asciz	"      pass %d: size is %d, grp uses are "
	.size	.L.str.4.60, 41

	.type	.L.str.5.61,@object     # @.str.5.61
.L.str.5.61:
	.asciz	"%d "
	.size	.L.str.5.61, 4

	.type	.L.str.6.62,@object     # @.str.6.62
.L.str.6.62:
	.asciz	"\n"
	.size	.L.str.6.62, 2

	.type	.L.str.7.63,@object     # @.str.7.63
.L.str.7.63:
	.asciz	"      bytes: mapping %d, "
	.size	.L.str.7.63, 26

	.type	.L.str.8.64,@object     # @.str.8.64
.L.str.8.64:
	.asciz	"selectors %d, "
	.size	.L.str.8.64, 15

	.type	.L.str.9.65,@object     # @.str.9.65
.L.str.9.65:
	.asciz	"code lengths %d, "
	.size	.L.str.9.65, 18

	.type	.L.str.10.66,@object    # @.str.10.66
.L.str.10.66:
	.asciz	"codes %d\n"
	.size	.L.str.10.66, 10

	.type	BZ2_crc32Table,@object  # @BZ2_crc32Table
	.data
	.globl	BZ2_crc32Table
	.p2align	4
BZ2_crc32Table:
	.long	0                       # 0x0
	.long	79764919                # 0x4c11db7
	.long	159529838               # 0x9823b6e
	.long	222504665               # 0xd4326d9
	.long	319059676               # 0x130476dc
	.long	398814059               # 0x17c56b6b
	.long	445009330               # 0x1a864db2
	.long	507990021               # 0x1e475005
	.long	638119352               # 0x2608edb8
	.long	583659535               # 0x22c9f00f
	.long	797628118               # 0x2f8ad6d6
	.long	726387553               # 0x2b4bcb61
	.long	890018660               # 0x350c9b64
	.long	835552979               # 0x31cd86d3
	.long	1015980042              # 0x3c8ea00a
	.long	944750013               # 0x384fbdbd
	.long	1276238704              # 0x4c11db70
	.long	1221641927              # 0x48d0c6c7
	.long	1167319070              # 0x4593e01e
	.long	1095957929              # 0x4152fda9
	.long	1595256236              # 0x5f15adac
	.long	1540665371              # 0x5bd4b01b
	.long	1452775106              # 0x569796c2
	.long	1381403509              # 0x52568b75
	.long	1780037320              # 0x6a1936c8
	.long	1859660671              # 0x6ed82b7f
	.long	1671105958              # 0x639b0da6
	.long	1733955601              # 0x675a1011
	.long	2031960084              # 0x791d4014
	.long	2111593891              # 0x7ddc5da3
	.long	1889500026              # 0x709f7b7a
	.long	1952343757              # 0x745e66cd
	.long	2552477408              # 0x9823b6e0
	.long	2632100695              # 0x9ce2ab57
	.long	2443283854              # 0x91a18d8e
	.long	2506133561              # 0x95609039
	.long	2334638140              # 0x8b27c03c
	.long	2414271883              # 0x8fe6dd8b
	.long	2191915858              # 0x82a5fb52
	.long	2254759653              # 0x8664e6e5
	.long	3190512472              # 0xbe2b5b58
	.long	3135915759              # 0xbaea46ef
	.long	3081330742              # 0xb7a96036
	.long	3009969537              # 0xb3687d81
	.long	2905550212              # 0xad2f2d84
	.long	2850959411              # 0xa9ee3033
	.long	2762807018              # 0xa4ad16ea
	.long	2691435357              # 0xa06c0b5d
	.long	3560074640              # 0xd4326d90
	.long	3505614887              # 0xd0f37027
	.long	3719321342              # 0xddb056fe
	.long	3648080713              # 0xd9714b49
	.long	3342211916              # 0xc7361b4c
	.long	3287746299              # 0xc3f706fb
	.long	3467911202              # 0xceb42022
	.long	3396681109              # 0xca753d95
	.long	4063920168              # 0xf23a8028
	.long	4143685023              # 0xf6fb9d9f
	.long	4223187782              # 0xfbb8bb46
	.long	4286162673              # 0xff79a6f1
	.long	3779000052              # 0xe13ef6f4
	.long	3858754371              # 0xe5ffeb43
	.long	3904687514              # 0xe8bccd9a
	.long	3967668269              # 0xec7dd02d
	.long	881225847               # 0x34867077
	.long	809987520               # 0x30476dc0
	.long	1023691545              # 0x3d044b19
	.long	969234094               # 0x39c556ae
	.long	662832811               # 0x278206ab
	.long	591600412               # 0x23431b1c
	.long	771767749               # 0x2e003dc5
	.long	717299826               # 0x2ac12072
	.long	311336399               # 0x128e9dcf
	.long	374308984               # 0x164f8078
	.long	453813921               # 0x1b0ca6a1
	.long	533576470               # 0x1fcdbb16
	.long	25881363                # 0x18aeb13
	.long	88864420                # 0x54bf6a4
	.long	134795389               # 0x808d07d
	.long	214552010               # 0xcc9cdca
	.long	2023205639              # 0x7897ab07
	.long	2086057648              # 0x7c56b6b0
	.long	1897238633              # 0x71159069
	.long	1976864222              # 0x75d48dde
	.long	1804852699              # 0x6b93dddb
	.long	1867694188              # 0x6f52c06c
	.long	1645340341              # 0x6211e6b5
	.long	1724971778              # 0x66d0fb02
	.long	1587496639              # 0x5e9f46bf
	.long	1516133128              # 0x5a5e5b08
	.long	1461550545              # 0x571d7dd1
	.long	1406951526              # 0x53dc6066
	.long	1302016099              # 0x4d9b3063
	.long	1230646740              # 0x495a2dd4
	.long	1142491917              # 0x44190b0d
	.long	1087903418              # 0x40d816ba
	.long	2896545431              # 0xaca5c697
	.long	2825181984              # 0xa864db20
	.long	2770861561              # 0xa527fdf9
	.long	2716262478              # 0xa1e6e04e
	.long	3215044683              # 0xbfa1b04b
	.long	3143675388              # 0xbb60adfc
	.long	3055782693              # 0xb6238b25
	.long	3001194130              # 0xb2e29692
	.long	2326604591              # 0x8aad2b2f
	.long	2389456536              # 0x8e6c3698
	.long	2200899649              # 0x832f1041
	.long	2280525302              # 0x87ee0df6
	.long	2578013683              # 0x99a95df3
	.long	2640855108              # 0x9d684044
	.long	2418763421              # 0x902b669d
	.long	2498394922              # 0x94ea7b2a
	.long	3769900519              # 0xe0b41de7
	.long	3832873040              # 0xe4750050
	.long	3912640137              # 0xe9362689
	.long	3992402750              # 0xedf73b3e
	.long	4088425275              # 0xf3b06b3b
	.long	4151408268              # 0xf771768c
	.long	4197601365              # 0xfa325055
	.long	4277358050              # 0xfef34de2
	.long	3334271071              # 0xc6bcf05f
	.long	3263032808              # 0xc27dede8
	.long	3476998961              # 0xcf3ecb31
	.long	3422541446              # 0xcbffd686
	.long	3585640067              # 0xd5b88683
	.long	3514407732              # 0xd1799b34
	.long	3694837229              # 0xdc3abded
	.long	3640369242              # 0xd8fba05a
	.long	1762451694              # 0x690ce0ee
	.long	1842216281              # 0x6dcdfd59
	.long	1619975040              # 0x608edb80
	.long	1682949687              # 0x644fc637
	.long	2047383090              # 0x7a089632
	.long	2127137669              # 0x7ec98b85
	.long	1938468188              # 0x738aad5c
	.long	2001449195              # 0x774bb0eb
	.long	1325665622              # 0x4f040d56
	.long	1271206113              # 0x4bc510e1
	.long	1183200824              # 0x46863638
	.long	1111960463              # 0x42472b8f
	.long	1543535498              # 0x5c007b8a
	.long	1489069629              # 0x58c1663d
	.long	1434599652              # 0x558240e4
	.long	1363369299              # 0x51435d53
	.long	622672798               # 0x251d3b9e
	.long	568075817               # 0x21dc2629
	.long	748617968               # 0x2c9f00f0
	.long	677256519               # 0x285e1d47
	.long	907627842               # 0x36194d42
	.long	853037301               # 0x32d850f5
	.long	1067152940              # 0x3f9b762c
	.long	995781531               # 0x3b5a6b9b
	.long	51762726                # 0x315d626
	.long	131386257               # 0x7d4cb91
	.long	177728840               # 0xa97ed48
	.long	240578815               # 0xe56f0ff
	.long	269590778               # 0x1011a0fa
	.long	349224269               # 0x14d0bd4d
	.long	429104020               # 0x19939b94
	.long	491947555               # 0x1d528623
	.long	4046411278              # 0xf12f560e
	.long	4126034873              # 0xf5ee4bb9
	.long	4172115296              # 0xf8ad6d60
	.long	4234965207              # 0xfc6c70d7
	.long	3794477266              # 0xe22b20d2
	.long	3874110821              # 0xe6ea3d65
	.long	3953728444              # 0xeba91bbc
	.long	4016571915              # 0xef68060b
	.long	3609705398              # 0xd727bbb6
	.long	3555108353              # 0xd3e6a601
	.long	3735388376              # 0xdea580d8
	.long	3664026991              # 0xda649d6f
	.long	3290680682              # 0xc423cd6a
	.long	3236090077              # 0xc0e2d0dd
	.long	3449943556              # 0xcda1f604
	.long	3378572211              # 0xc960ebb3
	.long	3174993278              # 0xbd3e8d7e
	.long	3120533705              # 0xb9ff90c9
	.long	3032266256              # 0xb4bcb610
	.long	2961025959              # 0xb07daba7
	.long	2923101090              # 0xae3afba2
	.long	2868635157              # 0xaafbe615
	.long	2813903052              # 0xa7b8c0cc
	.long	2742672763              # 0xa379dd7b
	.long	2604032198              # 0x9b3660c6
	.long	2683796849              # 0x9ff77d71
	.long	2461293480              # 0x92b45ba8
	.long	2524268063              # 0x9675461f
	.long	2284983834              # 0x8832161a
	.long	2364738477              # 0x8cf30bad
	.long	2175806836              # 0x81b02d74
	.long	2238787779              # 0x857130c3
	.long	1569362073              # 0x5d8a9099
	.long	1498123566              # 0x594b8d2e
	.long	1409854455              # 0x5408abf7
	.long	1355396672              # 0x50c9b640
	.long	1317987909              # 0x4e8ee645
	.long	1246755826              # 0x4a4ffbf2
	.long	1192025387              # 0x470cdd2b
	.long	1137557660              # 0x43cdc09c
	.long	2072149281              # 0x7b827d21
	.long	2135122070              # 0x7f436096
	.long	1912620623              # 0x7200464f
	.long	1992383480              # 0x76c15bf8
	.long	1753615357              # 0x68860bfd
	.long	1816598090              # 0x6c47164a
	.long	1627664531              # 0x61043093
	.long	1707420964              # 0x65c52d24
	.long	295390185               # 0x119b4be9
	.long	358241886               # 0x155a565e
	.long	404320391               # 0x18197087
	.long	483945776               # 0x1cd86d30
	.long	43990325                # 0x29f3d35
	.long	106832002               # 0x65e2082
	.long	186451547               # 0xb1d065b
	.long	266083308               # 0xfdc1bec
	.long	932423249               # 0x3793a651
	.long	861060070               # 0x3352bbe6
	.long	1041341759              # 0x3e119d3f
	.long	986742920               # 0x3ad08088
	.long	613929101               # 0x2497d08d
	.long	542559546               # 0x2056cd3a
	.long	756411363               # 0x2d15ebe3
	.long	701822548               # 0x29d4f654
	.long	3316196985              # 0xc5a92679
	.long	3244833742              # 0xc1683bce
	.long	3425377559              # 0xcc2b1d17
	.long	3370778784              # 0xc8ea00a0
	.long	3601682597              # 0xd6ad50a5
	.long	3530312978              # 0xd26c4d12
	.long	3744426955              # 0xdf2f6bcb
	.long	3689838204              # 0xdbee767c
	.long	3819031489              # 0xe3a1cbc1
	.long	3881883254              # 0xe760d676
	.long	3928223919              # 0xea23f0af
	.long	4007849240              # 0xeee2ed18
	.long	4037393693              # 0xf0a5bd1d
	.long	4100235434              # 0xf464a0aa
	.long	4180117107              # 0xf9278673
	.long	4259748804              # 0xfde69bc4
	.long	2310601993              # 0x89b8fd09
	.long	2373574846              # 0x8d79e0be
	.long	2151335527              # 0x803ac667
	.long	2231098320              # 0x84fbdbd0
	.long	2596047829              # 0x9abc8bd5
	.long	2659030626              # 0x9e7d9662
	.long	2470359227              # 0x933eb0bb
	.long	2550115596              # 0x97ffad0c
	.long	2947551409              # 0xafb010b1
	.long	2876312838              # 0xab710d06
	.long	2788305887              # 0xa6322bdf
	.long	2733848168              # 0xa2f33668
	.long	3165939309              # 0xbcb4666d
	.long	3094707162              # 0xb8757bda
	.long	3040238851              # 0xb5365d03
	.long	2985771188              # 0xb1f740b4
	.size	BZ2_crc32Table, 1024

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"\n    [%d: huff+mtf "
	.size	.L.str.71, 20

	.type	.L.str.1.72,@object     # @.str.1.72
.L.str.1.72:
	.asciz	"rt+rld"
	.size	.L.str.1.72, 7

	.type	BZ2_rNums,@object       # @BZ2_rNums
	.data
	.globl	BZ2_rNums
	.p2align	4
BZ2_rNums:
	.long	619                     # 0x26b
	.long	720                     # 0x2d0
	.long	127                     # 0x7f
	.long	481                     # 0x1e1
	.long	931                     # 0x3a3
	.long	816                     # 0x330
	.long	813                     # 0x32d
	.long	233                     # 0xe9
	.long	566                     # 0x236
	.long	247                     # 0xf7
	.long	985                     # 0x3d9
	.long	724                     # 0x2d4
	.long	205                     # 0xcd
	.long	454                     # 0x1c6
	.long	863                     # 0x35f
	.long	491                     # 0x1eb
	.long	741                     # 0x2e5
	.long	242                     # 0xf2
	.long	949                     # 0x3b5
	.long	214                     # 0xd6
	.long	733                     # 0x2dd
	.long	859                     # 0x35b
	.long	335                     # 0x14f
	.long	708                     # 0x2c4
	.long	621                     # 0x26d
	.long	574                     # 0x23e
	.long	73                      # 0x49
	.long	654                     # 0x28e
	.long	730                     # 0x2da
	.long	472                     # 0x1d8
	.long	419                     # 0x1a3
	.long	436                     # 0x1b4
	.long	278                     # 0x116
	.long	496                     # 0x1f0
	.long	867                     # 0x363
	.long	210                     # 0xd2
	.long	399                     # 0x18f
	.long	680                     # 0x2a8
	.long	480                     # 0x1e0
	.long	51                      # 0x33
	.long	878                     # 0x36e
	.long	465                     # 0x1d1
	.long	811                     # 0x32b
	.long	169                     # 0xa9
	.long	869                     # 0x365
	.long	675                     # 0x2a3
	.long	611                     # 0x263
	.long	697                     # 0x2b9
	.long	867                     # 0x363
	.long	561                     # 0x231
	.long	862                     # 0x35e
	.long	687                     # 0x2af
	.long	507                     # 0x1fb
	.long	283                     # 0x11b
	.long	482                     # 0x1e2
	.long	129                     # 0x81
	.long	807                     # 0x327
	.long	591                     # 0x24f
	.long	733                     # 0x2dd
	.long	623                     # 0x26f
	.long	150                     # 0x96
	.long	238                     # 0xee
	.long	59                      # 0x3b
	.long	379                     # 0x17b
	.long	684                     # 0x2ac
	.long	877                     # 0x36d
	.long	625                     # 0x271
	.long	169                     # 0xa9
	.long	643                     # 0x283
	.long	105                     # 0x69
	.long	170                     # 0xaa
	.long	607                     # 0x25f
	.long	520                     # 0x208
	.long	932                     # 0x3a4
	.long	727                     # 0x2d7
	.long	476                     # 0x1dc
	.long	693                     # 0x2b5
	.long	425                     # 0x1a9
	.long	174                     # 0xae
	.long	647                     # 0x287
	.long	73                      # 0x49
	.long	122                     # 0x7a
	.long	335                     # 0x14f
	.long	530                     # 0x212
	.long	442                     # 0x1ba
	.long	853                     # 0x355
	.long	695                     # 0x2b7
	.long	249                     # 0xf9
	.long	445                     # 0x1bd
	.long	515                     # 0x203
	.long	909                     # 0x38d
	.long	545                     # 0x221
	.long	703                     # 0x2bf
	.long	919                     # 0x397
	.long	874                     # 0x36a
	.long	474                     # 0x1da
	.long	882                     # 0x372
	.long	500                     # 0x1f4
	.long	594                     # 0x252
	.long	612                     # 0x264
	.long	641                     # 0x281
	.long	801                     # 0x321
	.long	220                     # 0xdc
	.long	162                     # 0xa2
	.long	819                     # 0x333
	.long	984                     # 0x3d8
	.long	589                     # 0x24d
	.long	513                     # 0x201
	.long	495                     # 0x1ef
	.long	799                     # 0x31f
	.long	161                     # 0xa1
	.long	604                     # 0x25c
	.long	958                     # 0x3be
	.long	533                     # 0x215
	.long	221                     # 0xdd
	.long	400                     # 0x190
	.long	386                     # 0x182
	.long	867                     # 0x363
	.long	600                     # 0x258
	.long	782                     # 0x30e
	.long	382                     # 0x17e
	.long	596                     # 0x254
	.long	414                     # 0x19e
	.long	171                     # 0xab
	.long	516                     # 0x204
	.long	375                     # 0x177
	.long	682                     # 0x2aa
	.long	485                     # 0x1e5
	.long	911                     # 0x38f
	.long	276                     # 0x114
	.long	98                      # 0x62
	.long	553                     # 0x229
	.long	163                     # 0xa3
	.long	354                     # 0x162
	.long	666                     # 0x29a
	.long	933                     # 0x3a5
	.long	424                     # 0x1a8
	.long	341                     # 0x155
	.long	533                     # 0x215
	.long	870                     # 0x366
	.long	227                     # 0xe3
	.long	730                     # 0x2da
	.long	475                     # 0x1db
	.long	186                     # 0xba
	.long	263                     # 0x107
	.long	647                     # 0x287
	.long	537                     # 0x219
	.long	686                     # 0x2ae
	.long	600                     # 0x258
	.long	224                     # 0xe0
	.long	469                     # 0x1d5
	.long	68                      # 0x44
	.long	770                     # 0x302
	.long	919                     # 0x397
	.long	190                     # 0xbe
	.long	373                     # 0x175
	.long	294                     # 0x126
	.long	822                     # 0x336
	.long	808                     # 0x328
	.long	206                     # 0xce
	.long	184                     # 0xb8
	.long	943                     # 0x3af
	.long	795                     # 0x31b
	.long	384                     # 0x180
	.long	383                     # 0x17f
	.long	461                     # 0x1cd
	.long	404                     # 0x194
	.long	758                     # 0x2f6
	.long	839                     # 0x347
	.long	887                     # 0x377
	.long	715                     # 0x2cb
	.long	67                      # 0x43
	.long	618                     # 0x26a
	.long	276                     # 0x114
	.long	204                     # 0xcc
	.long	918                     # 0x396
	.long	873                     # 0x369
	.long	777                     # 0x309
	.long	604                     # 0x25c
	.long	560                     # 0x230
	.long	951                     # 0x3b7
	.long	160                     # 0xa0
	.long	578                     # 0x242
	.long	722                     # 0x2d2
	.long	79                      # 0x4f
	.long	804                     # 0x324
	.long	96                      # 0x60
	.long	409                     # 0x199
	.long	713                     # 0x2c9
	.long	940                     # 0x3ac
	.long	652                     # 0x28c
	.long	934                     # 0x3a6
	.long	970                     # 0x3ca
	.long	447                     # 0x1bf
	.long	318                     # 0x13e
	.long	353                     # 0x161
	.long	859                     # 0x35b
	.long	672                     # 0x2a0
	.long	112                     # 0x70
	.long	785                     # 0x311
	.long	645                     # 0x285
	.long	863                     # 0x35f
	.long	803                     # 0x323
	.long	350                     # 0x15e
	.long	139                     # 0x8b
	.long	93                      # 0x5d
	.long	354                     # 0x162
	.long	99                      # 0x63
	.long	820                     # 0x334
	.long	908                     # 0x38c
	.long	609                     # 0x261
	.long	772                     # 0x304
	.long	154                     # 0x9a
	.long	274                     # 0x112
	.long	580                     # 0x244
	.long	184                     # 0xb8
	.long	79                      # 0x4f
	.long	626                     # 0x272
	.long	630                     # 0x276
	.long	742                     # 0x2e6
	.long	653                     # 0x28d
	.long	282                     # 0x11a
	.long	762                     # 0x2fa
	.long	623                     # 0x26f
	.long	680                     # 0x2a8
	.long	81                      # 0x51
	.long	927                     # 0x39f
	.long	626                     # 0x272
	.long	789                     # 0x315
	.long	125                     # 0x7d
	.long	411                     # 0x19b
	.long	521                     # 0x209
	.long	938                     # 0x3aa
	.long	300                     # 0x12c
	.long	821                     # 0x335
	.long	78                      # 0x4e
	.long	343                     # 0x157
	.long	175                     # 0xaf
	.long	128                     # 0x80
	.long	250                     # 0xfa
	.long	170                     # 0xaa
	.long	774                     # 0x306
	.long	972                     # 0x3cc
	.long	275                     # 0x113
	.long	999                     # 0x3e7
	.long	639                     # 0x27f
	.long	495                     # 0x1ef
	.long	78                      # 0x4e
	.long	352                     # 0x160
	.long	126                     # 0x7e
	.long	857                     # 0x359
	.long	956                     # 0x3bc
	.long	358                     # 0x166
	.long	619                     # 0x26b
	.long	580                     # 0x244
	.long	124                     # 0x7c
	.long	737                     # 0x2e1
	.long	594                     # 0x252
	.long	701                     # 0x2bd
	.long	612                     # 0x264
	.long	669                     # 0x29d
	.long	112                     # 0x70
	.long	134                     # 0x86
	.long	694                     # 0x2b6
	.long	363                     # 0x16b
	.long	992                     # 0x3e0
	.long	809                     # 0x329
	.long	743                     # 0x2e7
	.long	168                     # 0xa8
	.long	974                     # 0x3ce
	.long	944                     # 0x3b0
	.long	375                     # 0x177
	.long	748                     # 0x2ec
	.long	52                      # 0x34
	.long	600                     # 0x258
	.long	747                     # 0x2eb
	.long	642                     # 0x282
	.long	182                     # 0xb6
	.long	862                     # 0x35e
	.long	81                      # 0x51
	.long	344                     # 0x158
	.long	805                     # 0x325
	.long	988                     # 0x3dc
	.long	739                     # 0x2e3
	.long	511                     # 0x1ff
	.long	655                     # 0x28f
	.long	814                     # 0x32e
	.long	334                     # 0x14e
	.long	249                     # 0xf9
	.long	515                     # 0x203
	.long	897                     # 0x381
	.long	955                     # 0x3bb
	.long	664                     # 0x298
	.long	981                     # 0x3d5
	.long	649                     # 0x289
	.long	113                     # 0x71
	.long	974                     # 0x3ce
	.long	459                     # 0x1cb
	.long	893                     # 0x37d
	.long	228                     # 0xe4
	.long	433                     # 0x1b1
	.long	837                     # 0x345
	.long	553                     # 0x229
	.long	268                     # 0x10c
	.long	926                     # 0x39e
	.long	240                     # 0xf0
	.long	102                     # 0x66
	.long	654                     # 0x28e
	.long	459                     # 0x1cb
	.long	51                      # 0x33
	.long	686                     # 0x2ae
	.long	754                     # 0x2f2
	.long	806                     # 0x326
	.long	760                     # 0x2f8
	.long	493                     # 0x1ed
	.long	403                     # 0x193
	.long	415                     # 0x19f
	.long	394                     # 0x18a
	.long	687                     # 0x2af
	.long	700                     # 0x2bc
	.long	946                     # 0x3b2
	.long	670                     # 0x29e
	.long	656                     # 0x290
	.long	610                     # 0x262
	.long	738                     # 0x2e2
	.long	392                     # 0x188
	.long	760                     # 0x2f8
	.long	799                     # 0x31f
	.long	887                     # 0x377
	.long	653                     # 0x28d
	.long	978                     # 0x3d2
	.long	321                     # 0x141
	.long	576                     # 0x240
	.long	617                     # 0x269
	.long	626                     # 0x272
	.long	502                     # 0x1f6
	.long	894                     # 0x37e
	.long	679                     # 0x2a7
	.long	243                     # 0xf3
	.long	440                     # 0x1b8
	.long	680                     # 0x2a8
	.long	879                     # 0x36f
	.long	194                     # 0xc2
	.long	572                     # 0x23c
	.long	640                     # 0x280
	.long	724                     # 0x2d4
	.long	926                     # 0x39e
	.long	56                      # 0x38
	.long	204                     # 0xcc
	.long	700                     # 0x2bc
	.long	707                     # 0x2c3
	.long	151                     # 0x97
	.long	457                     # 0x1c9
	.long	449                     # 0x1c1
	.long	797                     # 0x31d
	.long	195                     # 0xc3
	.long	791                     # 0x317
	.long	558                     # 0x22e
	.long	945                     # 0x3b1
	.long	679                     # 0x2a7
	.long	297                     # 0x129
	.long	59                      # 0x3b
	.long	87                      # 0x57
	.long	824                     # 0x338
	.long	713                     # 0x2c9
	.long	663                     # 0x297
	.long	412                     # 0x19c
	.long	693                     # 0x2b5
	.long	342                     # 0x156
	.long	606                     # 0x25e
	.long	134                     # 0x86
	.long	108                     # 0x6c
	.long	571                     # 0x23b
	.long	364                     # 0x16c
	.long	631                     # 0x277
	.long	212                     # 0xd4
	.long	174                     # 0xae
	.long	643                     # 0x283
	.long	304                     # 0x130
	.long	329                     # 0x149
	.long	343                     # 0x157
	.long	97                      # 0x61
	.long	430                     # 0x1ae
	.long	751                     # 0x2ef
	.long	497                     # 0x1f1
	.long	314                     # 0x13a
	.long	983                     # 0x3d7
	.long	374                     # 0x176
	.long	822                     # 0x336
	.long	928                     # 0x3a0
	.long	140                     # 0x8c
	.long	206                     # 0xce
	.long	73                      # 0x49
	.long	263                     # 0x107
	.long	980                     # 0x3d4
	.long	736                     # 0x2e0
	.long	876                     # 0x36c
	.long	478                     # 0x1de
	.long	430                     # 0x1ae
	.long	305                     # 0x131
	.long	170                     # 0xaa
	.long	514                     # 0x202
	.long	364                     # 0x16c
	.long	692                     # 0x2b4
	.long	829                     # 0x33d
	.long	82                      # 0x52
	.long	855                     # 0x357
	.long	953                     # 0x3b9
	.long	676                     # 0x2a4
	.long	246                     # 0xf6
	.long	369                     # 0x171
	.long	970                     # 0x3ca
	.long	294                     # 0x126
	.long	750                     # 0x2ee
	.long	807                     # 0x327
	.long	827                     # 0x33b
	.long	150                     # 0x96
	.long	790                     # 0x316
	.long	288                     # 0x120
	.long	923                     # 0x39b
	.long	804                     # 0x324
	.long	378                     # 0x17a
	.long	215                     # 0xd7
	.long	828                     # 0x33c
	.long	592                     # 0x250
	.long	281                     # 0x119
	.long	565                     # 0x235
	.long	555                     # 0x22b
	.long	710                     # 0x2c6
	.long	82                      # 0x52
	.long	896                     # 0x380
	.long	831                     # 0x33f
	.long	547                     # 0x223
	.long	261                     # 0x105
	.long	524                     # 0x20c
	.long	462                     # 0x1ce
	.long	293                     # 0x125
	.long	465                     # 0x1d1
	.long	502                     # 0x1f6
	.long	56                      # 0x38
	.long	661                     # 0x295
	.long	821                     # 0x335
	.long	976                     # 0x3d0
	.long	991                     # 0x3df
	.long	658                     # 0x292
	.long	869                     # 0x365
	.long	905                     # 0x389
	.long	758                     # 0x2f6
	.long	745                     # 0x2e9
	.long	193                     # 0xc1
	.long	768                     # 0x300
	.long	550                     # 0x226
	.long	608                     # 0x260
	.long	933                     # 0x3a5
	.long	378                     # 0x17a
	.long	286                     # 0x11e
	.long	215                     # 0xd7
	.long	979                     # 0x3d3
	.long	792                     # 0x318
	.long	961                     # 0x3c1
	.long	61                      # 0x3d
	.long	688                     # 0x2b0
	.long	793                     # 0x319
	.long	644                     # 0x284
	.long	986                     # 0x3da
	.long	403                     # 0x193
	.long	106                     # 0x6a
	.long	366                     # 0x16e
	.long	905                     # 0x389
	.long	644                     # 0x284
	.long	372                     # 0x174
	.long	567                     # 0x237
	.long	466                     # 0x1d2
	.long	434                     # 0x1b2
	.long	645                     # 0x285
	.long	210                     # 0xd2
	.long	389                     # 0x185
	.long	550                     # 0x226
	.long	919                     # 0x397
	.long	135                     # 0x87
	.long	780                     # 0x30c
	.long	773                     # 0x305
	.long	635                     # 0x27b
	.long	389                     # 0x185
	.long	707                     # 0x2c3
	.long	100                     # 0x64
	.long	626                     # 0x272
	.long	958                     # 0x3be
	.long	165                     # 0xa5
	.long	504                     # 0x1f8
	.long	920                     # 0x398
	.long	176                     # 0xb0
	.long	193                     # 0xc1
	.long	713                     # 0x2c9
	.long	857                     # 0x359
	.long	265                     # 0x109
	.long	203                     # 0xcb
	.long	50                      # 0x32
	.long	668                     # 0x29c
	.long	108                     # 0x6c
	.long	645                     # 0x285
	.long	990                     # 0x3de
	.long	626                     # 0x272
	.long	197                     # 0xc5
	.long	510                     # 0x1fe
	.long	357                     # 0x165
	.long	358                     # 0x166
	.long	850                     # 0x352
	.long	858                     # 0x35a
	.long	364                     # 0x16c
	.long	936                     # 0x3a8
	.long	638                     # 0x27e
	.size	BZ2_rNums, 2048

	.type	dbglvl,@object          # @dbglvl
	.globl	dbglvl
	.p2align	2
dbglvl:
	.long	4                       # 0x4
	.size	dbglvl, 4

	.type	seedi,@object           # @seedi
	.comm	seedi,8,8
	.type	spec_fd,@object         # @spec_fd
	.comm	spec_fd,72,16
	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"spec_init\n"
	.size	.L.str.81, 11

	.type	.L.str.1.82,@object     # @.str.1.82
.L.str.1.82:
	.asciz	"spec_init: Error mallocing memory!\n"
	.size	.L.str.1.82, 36

	.type	.L.str.2.83,@object     # @.str.2.83
.L.str.2.83:
	.asciz	"Creating Chunks\n"
	.size	.L.str.2.83, 17

	.type	.L.str.3.84,@object     # @.str.3.84
.L.str.3.84:
	.asciz	"Creating Chunk %d\n"
	.size	.L.str.3.84, 19

	.type	.L.str.4.85,@object     # @.str.4.85
.L.str.4.85:
	.asciz	"Filling input file\n"
	.size	.L.str.4.85, 20

	.type	.L.str.5.86,@object     # @.str.5.86
.L.str.5.86:
	.asciz	"Can't open file %s: %s\n"
	.size	.L.str.5.86, 24

	.type	.L.str.6.87,@object     # @.str.6.87
.L.str.6.87:
	.asciz	"Error reading from %s: %s\n"
	.size	.L.str.6.87, 27

	.type	.L.str.7.88,@object     # @.str.7.88
.L.str.7.88:
	.asciz	"Duplicating %d bytes\n"
	.size	.L.str.7.88, 22

	.type	.L.str.8.89,@object     # @.str.8.89
.L.str.8.89:
	.asciz	"spec_read: %d, %p, %d = "
	.size	.L.str.8.89, 25

	.type	.L.str.9.90,@object     # @.str.9.90
.L.str.9.90:
	.asciz	"spec_read: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.9.90, 34

	.type	.L.str.10.91,@object    # @.str.10.91
.L.str.10.91:
	.asciz	"EOF\n"
	.size	.L.str.10.91, 5

	.type	.L.str.11.92,@object    # @.str.11.92
.L.str.11.92:
	.asciz	"%d\n"
	.size	.L.str.11.92, 4

	.type	.L.str.12.95,@object    # @.str.12.95
.L.str.12.95:
	.asciz	"spec_fread: %p, (%d x %d) fd %d ="
	.size	.L.str.12.95, 34

	.type	.L.str.13.96,@object    # @.str.13.96
.L.str.13.96:
	.asciz	"spec_fread: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.13.96, 35

	.type	.L.str.14.99,@object    # @.str.14.99
.L.str.14.99:
	.asciz	"spec_getc: %d = "
	.size	.L.str.14.99, 17

	.type	.L.str.15.102,@object   # @.str.15.102
.L.str.15.102:
	.asciz	"spec_ungetc: %d = "
	.size	.L.str.15.102, 19

	.type	.L.str.16.103,@object   # @.str.16.103
.L.str.16.103:
	.asciz	"spec_ungetc: pos %d <= 0\n"
	.size	.L.str.16.103, 26

	.type	.L.str.17.104,@object   # @.str.17.104
.L.str.17.104:
	.asciz	"spec_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.size	.L.str.17.104, 72

	.type	.L.str.18.107,@object   # @.str.18.107
.L.str.18.107:
	.asciz	"spec_write: %d, %p, %d = "
	.size	.L.str.18.107, 26

	.type	.L.str.19.108,@object   # @.str.19.108
.L.str.19.108:
	.asciz	"spec_write: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.19.108, 35

	.type	.L.str.20.111,@object   # @.str.20.111
.L.str.20.111:
	.asciz	"spec_fwrite: %p, %d, %d, %d = "
	.size	.L.str.20.111, 31

	.type	.L.str.21.112,@object   # @.str.21.112
.L.str.21.112:
	.asciz	"spec_fwrite: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.21.112, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"spec_putc: %d, %d = "
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"input.combined"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Loading Input Data\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Input data %d bytes in length\n"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"main: Error mallocing memory!\n"
	.size	.L.str.26, 31

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Compressing Input Data, level %d\n"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Compressed data %d bytes in length\n"
	.size	.L.str.28, 36

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Uncompressing Data\n"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Uncompressed data %d bytes in length\n"
	.size	.L.str.30, 38

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Tested %dMB buffer: Miscompared!!\n"
	.size	.L.str.31, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Uncompressed data compared correctly\n"
	.size	.L.str.32, 38

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Tested %dMB buffer: OK!\n"
	.size	.L.str.33, 25


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
