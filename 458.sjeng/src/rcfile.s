	.file	"rcfile.c"
	.text
	.comm	rcfile,8,8
	.comm	line,256,32
	.comm	TTSize,4,4
	.comm	ECacheSize,4,4
	.comm	PBSize,4,4
	.comm	cfg_booklearn,4,4
	.comm	cfg_razordrop,4,4
	.comm	cfg_cutdrop,4,4
	.comm	cfg_ksafety,540,32
	.comm	cfg_tropism,140,32
	.comm	havercfile,4,4
	.comm	cfg_futprune,4,4
	.comm	cfg_devscale,4,4
	.comm	cfg_onerep,4,4
	.comm	cfg_recap,4,4
	.comm	cfg_smarteval,4,4
	.comm	cfg_attackeval,4,4
	.comm	cfg_scalefac,4,4
	.section	.rodata
.LC1:
	.string	"%u"
	.text
	.globl	read_rcfile
	.type	read_rcfile, @function
read_rcfile:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$3000000, TTSize(%rip)
	movl	$1000000, ECacheSize(%rip)
	movl	$200000, PBSize(%rip)
	movl	$1, cfg_devscale(%rip)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, cfg_scalefac(%rip)
	movl	$1, cfg_razordrop(%rip)
	movl	$0, cfg_cutdrop(%rip)
	movl	$1, cfg_futprune(%rip)
	movl	$1, cfg_smarteval(%rip)
	movl	$0, cfg_attackeval(%rip)
	movl	$1, cfg_onerep(%rip)
	movl	$0, cfg_recap(%rip)
	movl	$0, havercfile(%rip)
	movl	cfg_devscale(%rip), %eax
	leal	(%rax,%rax), %edx
	movl	havercfile(%rip), %eax
	addl	%edx, %eax
	leal	4(%rax), %edx
	movl	cfg_razordrop(%rip), %eax
	sall	$3, %eax
	addl	%eax, %edx
	movl	cfg_cutdrop(%rip), %eax
	sall	$4, %eax
	addl	%eax, %edx
	movl	cfg_futprune(%rip), %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	cfg_smarteval(%rip), %eax
	sall	$6, %eax
	addl	%eax, %edx
	movl	cfg_attackeval(%rip), %eax
	sall	$7, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rsi
	leaq	setcode(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	call	initialize_eval@PLT
	call	alloc_hash@PLT
	call	alloc_ecache@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	read_rcfile, .-read_rcfile
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
