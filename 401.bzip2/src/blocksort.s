	.file	"blocksort.c"
	.text
	.type	fallbackSimpleSort, @function
fallbackSimpleSort:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L15
	movl	-40(%rbp), %eax
	subl	-36(%rbp), %eax
	cmpl	$3, %eax
	jle	.L4
	movl	-40(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -16(%rbp)
	jmp	.L5
.L9:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -12(%rbp)
	jmp	.L6
.L8:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-16(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$4, -12(%rbp)
.L6:
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.L7
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	ja	.L8
.L7:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -16(%rbp)
.L5:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L9
.L4:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L10
.L14:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L11
.L13:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -12(%rbp)
.L11:
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.L12
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	ja	.L13
.L12:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -16(%rbp)
.L10:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L14
	jmp	.L1
.L15:
	nop
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fallbackSimpleSort, .-fallbackSimpleSort
	.type	fallbackQSort3, @function
fallbackQSort3:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$944, %rsp
	movq	%rdi, -920(%rbp)
	movq	%rsi, -928(%rbp)
	movl	%edx, -932(%rbp)
	movl	%ecx, -936(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -884(%rbp)
	movl	$0, -892(%rbp)
	movl	-892(%rbp), %eax
	cltq
	movl	-932(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-892(%rbp), %eax
	cltq
	movl	-936(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -892(%rbp)
	jmp	.L17
.L43:
	cmpl	$99, -892(%rbp)
	jle	.L18
	movl	$1004, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L18:
	subl	$1, -892(%rbp)
	movl	-892(%rbp), %eax
	cltq
	movl	-816(%rbp,%rax,4), %eax
	movl	%eax, -856(%rbp)
	movl	-892(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, -852(%rbp)
	movl	-852(%rbp), %eax
	subl	-856(%rbp), %eax
	cmpl	$9, %eax
	jg	.L19
	movl	-852(%rbp), %ecx
	movl	-856(%rbp), %edx
	movq	-928(%rbp), %rsi
	movq	-920(%rbp), %rax
	movq	%rax, %rdi
	call	fallbackSimpleSort
	jmp	.L17
.L19:
	movl	-884(%rbp), %eax
	imull	$7621, %eax, %eax
	addl	$1, %eax
	andl	$32767, %eax
	movl	%eax, -884(%rbp)
	movl	-884(%rbp), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -848(%rbp)
	cmpl	$0, -848(%rbp)
	jne	.L20
	movl	-856(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -888(%rbp)
	jmp	.L21
.L20:
	cmpl	$1, -848(%rbp)
	jne	.L22
	movl	-856(%rbp), %edx
	movl	-852(%rbp), %eax
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -888(%rbp)
	jmp	.L21
.L22:
	movl	-852(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -888(%rbp)
.L21:
	movl	-856(%rbp), %eax
	movl	%eax, -900(%rbp)
	movl	-900(%rbp), %eax
	movl	%eax, -908(%rbp)
	movl	-852(%rbp), %eax
	movl	%eax, -896(%rbp)
	movl	-896(%rbp), %eax
	movl	%eax, -904(%rbp)
.L28:
	movl	-908(%rbp), %eax
	cmpl	-904(%rbp), %eax
	jg	.L46
	movl	-908(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-888(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -844(%rbp)
	cmpl	$0, -844(%rbp)
	jne	.L25
	movl	-908(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -840(%rbp)
	movl	-900(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	-908(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-920(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-900(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rax, %rdx
	movl	-840(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -900(%rbp)
	addl	$1, -908(%rbp)
	jmp	.L26
.L25:
	cmpl	$0, -844(%rbp)
	jg	.L47
	addl	$1, -908(%rbp)
.L26:
	jmp	.L28
.L46:
	nop
	jmp	.L34
.L47:
	nop
.L34:
	movl	-908(%rbp), %eax
	cmpl	-904(%rbp), %eax
	jg	.L48
	movl	-904(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-928(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-888(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -844(%rbp)
	cmpl	$0, -844(%rbp)
	jne	.L31
	movl	-904(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -836(%rbp)
	movl	-896(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	-904(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-920(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-896(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rax, %rdx
	movl	-836(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -896(%rbp)
	subl	$1, -904(%rbp)
	jmp	.L32
.L31:
	cmpl	$0, -844(%rbp)
	js	.L49
	subl	$1, -904(%rbp)
.L32:
	jmp	.L34
.L48:
	nop
	jmp	.L30
.L49:
	nop
.L30:
	movl	-908(%rbp), %eax
	cmpl	-904(%rbp), %eax
	jg	.L50
	movl	-908(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -832(%rbp)
	movl	-904(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	-908(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-920(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-904(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rax, %rdx
	movl	-832(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -908(%rbp)
	subl	$1, -904(%rbp)
	jmp	.L28
.L50:
	nop
	movl	-896(%rbp), %eax
	cmpl	-900(%rbp), %eax
	jge	.L37
	jmp	.L17
.L37:
	movl	-908(%rbp), %eax
	subl	-900(%rbp), %eax
	movl	%eax, %edx
	movl	-900(%rbp), %eax
	subl	-856(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -844(%rbp)
	movl	-856(%rbp), %eax
	movl	%eax, -880(%rbp)
	movl	-908(%rbp), %eax
	subl	-844(%rbp), %eax
	movl	%eax, -876(%rbp)
	movl	-844(%rbp), %eax
	movl	%eax, -872(%rbp)
	jmp	.L38
.L39:
	movl	-880(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -820(%rbp)
	movl	-876(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	-880(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-920(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-876(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rax, %rdx
	movl	-820(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -880(%rbp)
	addl	$1, -876(%rbp)
	subl	$1, -872(%rbp)
.L38:
	cmpl	$0, -872(%rbp)
	jg	.L39
	movl	-896(%rbp), %eax
	subl	-904(%rbp), %eax
	movl	%eax, %edx
	movl	-852(%rbp), %eax
	subl	-896(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -828(%rbp)
	movl	-908(%rbp), %eax
	movl	%eax, -868(%rbp)
	movl	-852(%rbp), %eax
	subl	-828(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -864(%rbp)
	movl	-828(%rbp), %eax
	movl	%eax, -860(%rbp)
	jmp	.L40
.L41:
	movl	-868(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -824(%rbp)
	movl	-864(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rdx, %rax
	movl	-868(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-920(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-864(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-920(%rbp), %rax
	addq	%rax, %rdx
	movl	-824(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -868(%rbp)
	addl	$1, -864(%rbp)
	subl	$1, -860(%rbp)
.L40:
	cmpl	$0, -860(%rbp)
	jg	.L41
	movl	-856(%rbp), %edx
	movl	-908(%rbp), %eax
	addl	%edx, %eax
	subl	-900(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -844(%rbp)
	movl	-896(%rbp), %eax
	subl	-904(%rbp), %eax
	movl	-852(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -828(%rbp)
	movl	-844(%rbp), %eax
	subl	-856(%rbp), %eax
	movl	%eax, %edx
	movl	-852(%rbp), %eax
	subl	-828(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L42
	movl	-892(%rbp), %eax
	cltq
	movl	-856(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-892(%rbp), %eax
	cltq
	movl	-844(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -892(%rbp)
	movl	-892(%rbp), %eax
	cltq
	movl	-828(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-892(%rbp), %eax
	cltq
	movl	-852(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -892(%rbp)
	jmp	.L17
.L42:
	movl	-892(%rbp), %eax
	cltq
	movl	-828(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-892(%rbp), %eax
	cltq
	movl	-852(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -892(%rbp)
	movl	-892(%rbp), %eax
	cltq
	movl	-856(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-892(%rbp), %eax
	cltq
	movl	-844(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -892(%rbp)
.L17:
	cmpl	$0, -892(%rbp)
	jg	.L43
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fallbackQSort3, .-fallbackQSort3
	.section	.rodata
.LC0:
	.string	"        bucket sorting ...\n"
.LC1:
	.string	"        depth %6d has "
.LC2:
	.string	"%6d unresolved strings\n"
	.align 8
.LC3:
	.string	"        reconstructing block ...\n"
	.text
	.type	fallbackSort, @function
fallbackSort:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2144, %rsp
	movq	%rdi, -2120(%rbp)
	movq	%rsi, -2128(%rbp)
	movq	%rdx, -2136(%rbp)
	movl	%ecx, -2140(%rbp)
	movl	%r8d, -2144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-2128(%rbp), %rax
	movq	%rax, -2072(%rbp)
	cmpl	$3, -2144(%rbp)
	jle	.L52
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
.L52:
	movl	$0, -2108(%rbp)
	jmp	.L53
.L54:
	movl	-2108(%rbp), %eax
	cltq
	movl	$0, -1040(%rbp,%rax,4)
	addl	$1, -2108(%rbp)
.L53:
	cmpl	$256, -2108(%rbp)
	jle	.L54
	movl	$0, -2108(%rbp)
	jmp	.L55
.L56:
	movl	-2108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	movl	-1040(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -1040(%rbp,%rax,4)
	addl	$1, -2108(%rbp)
.L55:
	movl	-2108(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jl	.L56
	movl	$0, -2108(%rbp)
	jmp	.L57
.L58:
	movl	-2108(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %edx
	movl	-2108(%rbp), %eax
	cltq
	movl	%edx, -2064(%rbp,%rax,4)
	addl	$1, -2108(%rbp)
.L57:
	cmpl	$255, -2108(%rbp)
	jle	.L58
	movl	$1, -2108(%rbp)
	jmp	.L59
.L60:
	movl	-2108(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %edx
	movl	-2108(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-2108(%rbp), %eax
	cltq
	movl	%edx, -1040(%rbp,%rax,4)
	addl	$1, -2108(%rbp)
.L59:
	cmpl	$256, -2108(%rbp)
	jle	.L60
	movl	$0, -2108(%rbp)
	jmp	.L61
.L62:
	movl	-2108(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2072(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -2104(%rbp)
	movl	-2104(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	subl	$1, %eax
	movl	%eax, -2100(%rbp)
	movl	-2104(%rbp), %eax
	cltq
	movl	-2100(%rbp), %edx
	movl	%edx, -1040(%rbp,%rax,4)
	movl	-2100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2120(%rbp), %rax
	addq	%rax, %rdx
	movl	-2108(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -2108(%rbp)
.L61:
	movl	-2108(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jl	.L62
	movl	-2140(%rbp), %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	addl	$2, %eax
	movl	%eax, -2084(%rbp)
	movl	$0, -2108(%rbp)
	jmp	.L63
.L64:
	movl	-2108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -2108(%rbp)
.L63:
	movl	-2108(%rbp), %eax
	cmpl	-2084(%rbp), %eax
	jl	.L64
	movl	$0, -2108(%rbp)
	jmp	.L65
.L66:
	movl	-2108(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-2108(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	andl	$31, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	movl	-2108(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-2136(%rbp), %rax
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	addl	$1, -2108(%rbp)
.L65:
	cmpl	$255, -2108(%rbp)
	jle	.L66
	movl	$0, -2108(%rbp)
	jmp	.L67
.L68:
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-2140(%rbp), %eax
	addl	%edx, %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-2140(%rbp), %eax
	addl	%ecx, %eax
	andl	$31, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-2140(%rbp), %eax
	addl	%ecx, %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-2136(%rbp), %rax
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-2140(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-2140(%rbp), %eax
	addl	%ecx, %eax
	addl	$1, %eax
	andl	$31, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	notl	%eax
	movl	%eax, %esi
	movl	-2108(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-2140(%rbp), %eax
	addl	%ecx, %eax
	addl	$1, %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-2136(%rbp), %rax
	addq	%rcx, %rax
	andl	%esi, %edx
	movl	%edx, (%rax)
	addl	$1, -2108(%rbp)
.L67:
	cmpl	$31, -2108(%rbp)
	jle	.L68
	movl	$1, -2112(%rbp)
.L100:
	cmpl	$3, -2144(%rbp)
	jle	.L69
	movq	stderr(%rip), %rax
	movl	-2112(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L69:
	movl	$0, -2104(%rbp)
	movl	$0, -2108(%rbp)
	jmp	.L70
.L73:
	movl	-2108(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2108(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L71
	movl	-2108(%rbp), %eax
	movl	%eax, -2104(%rbp)
.L71:
	movl	-2108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-2112(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -2100(%rbp)
	cmpl	$0, -2100(%rbp)
	jns	.L72
	movl	-2140(%rbp), %eax
	addl	%eax, -2100(%rbp)
.L72:
	movl	-2100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2128(%rbp), %rax
	addq	%rax, %rdx
	movl	-2104(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -2108(%rbp)
.L70:
	movl	-2108(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jl	.L73
	movl	$0, -2088(%rbp)
	movl	$-1, -2096(%rbp)
.L97:
	movl	-2096(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2100(%rbp)
	jmp	.L74
.L76:
	addl	$1, -2100(%rbp)
.L74:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L75
	movl	-2100(%rbp), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L76
.L75:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L77
	jmp	.L78
.L79:
	addl	$32, -2100(%rbp)
.L78:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L79
	jmp	.L80
.L81:
	addl	$1, -2100(%rbp)
.L80:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L81
.L77:
	movl	-2100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -2080(%rbp)
	movl	-2080(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jge	.L108
	jmp	.L84
.L86:
	addl	$1, -2100(%rbp)
.L84:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L85
	movl	-2100(%rbp), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L86
.L85:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L87
	jmp	.L88
.L89:
	addl	$32, -2100(%rbp)
.L88:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L89
	jmp	.L90
.L91:
	addl	$1, -2100(%rbp)
.L90:
	movl	-2100(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-2100(%rbp), %edx
	andl	$31, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L91
.L87:
	movl	-2100(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -2096(%rbp)
	movl	-2096(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jge	.L109
	movl	-2096(%rbp), %eax
	cmpl	-2080(%rbp), %eax
	jle	.L97
	movl	-2096(%rbp), %eax
	subl	-2080(%rbp), %eax
	addl	$1, %eax
	addl	%eax, -2088(%rbp)
	movl	-2096(%rbp), %ecx
	movl	-2080(%rbp), %edx
	movq	-2128(%rbp), %rsi
	movq	-2120(%rbp), %rax
	movq	%rax, %rdi
	call	fallbackQSort3
	movl	$-1, -2092(%rbp)
	movl	-2080(%rbp), %eax
	movl	%eax, -2108(%rbp)
	jmp	.L94
.L96:
	movl	-2108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-2128(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -2076(%rbp)
	movl	-2092(%rbp), %eax
	cmpl	-2076(%rbp), %eax
	je	.L95
	movl	-2108(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2136(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-2108(%rbp), %eax
	andl	$31, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	movl	-2108(%rbp), %eax
	sarl	$5, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-2136(%rbp), %rax
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	movl	-2076(%rbp), %eax
	movl	%eax, -2092(%rbp)
.L95:
	addl	$1, -2108(%rbp)
.L94:
	movl	-2108(%rbp), %eax
	cmpl	-2096(%rbp), %eax
	jle	.L96
	jmp	.L97
.L108:
	nop
	jmp	.L83
.L109:
	nop
.L83:
	cmpl	$3, -2144(%rbp)
	jle	.L98
	movq	stderr(%rip), %rax
	movl	-2088(%rbp), %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L98:
	sall	-2112(%rbp)
	movl	-2112(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jg	.L99
	cmpl	$0, -2088(%rbp)
	je	.L99
	jmp	.L100
.L99:
	cmpl	$3, -2144(%rbp)
	jle	.L101
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.L101:
	movl	$0, -2104(%rbp)
	movl	$0, -2108(%rbp)
	jmp	.L102
.L104:
	addl	$1, -2104(%rbp)
.L103:
	movl	-2104(%rbp), %eax
	cltq
	movl	-2064(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L104
	movl	-2104(%rbp), %eax
	cltq
	movl	-2064(%rbp,%rax,4), %eax
	leal	-1(%rax), %edx
	movl	-2104(%rbp), %eax
	cltq
	movl	%edx, -2064(%rbp,%rax,4)
	movl	-2108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-2120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-2072(%rbp), %rax
	addq	%rdx, %rax
	movl	-2104(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -2108(%rbp)
.L102:
	movl	-2108(%rbp), %eax
	cmpl	-2140(%rbp), %eax
	jl	.L103
	cmpl	$255, -2104(%rbp)
	jle	.L110
	movl	$1005, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L110:
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
.LFE7:
	.size	fallbackSort, .-fallbackSort
	.type	mainGtU, @function
mainGtU:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L112
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L112:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L114
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L114:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L115
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L115:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L116
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L116:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L117
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L117:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L118
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L118:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L119
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L119:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L120
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L120:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L121
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L121:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L122
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L122:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L123
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L123:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L124
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L124:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-44(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -4(%rbp)
.L143:
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L125
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L125:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L126
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L126:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L127
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L127:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L128
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L128:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L129
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L129:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L130
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L130:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L131
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L131:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L132
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L132:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L133
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L133:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L134
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L134:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L135
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L135:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L136
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L136:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L137
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L137:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L138
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L138:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	je	.L139
	movzbl	-10(%rbp), %eax
	cmpb	-9(%rbp), %al
	seta	%al
	jmp	.L113
.L139:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -8(%rbp)
	movl	-24(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	je	.L140
	movzwl	-8(%rbp), %eax
	cmpw	-6(%rbp), %ax
	seta	%al
	jmp	.L113
.L140:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L141
	movl	-44(%rbp), %eax
	subl	%eax, -20(%rbp)
.L141:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L142
	movl	-44(%rbp), %eax
	subl	%eax, -24(%rbp)
.L142:
	subl	$8, -4(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	jns	.L143
	movl	$0, %eax
.L113:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mainGtU, .-mainGtU
	.data
	.align 32
	.type	incs, @object
	.size	incs, 56
incs:
	.long	1
	.long	4
	.long	13
	.long	40
	.long	121
	.long	364
	.long	1093
	.long	3280
	.long	9841
	.long	29524
	.long	88573
	.long	265720
	.long	797161
	.long	2391484
	.text
	.type	mainSimpleSort, @function
mainSimpleSort:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movl	-68(%rbp), %eax
	subl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jle	.L166
	movl	$0, -16(%rbp)
	jmp	.L147
.L148:
	addl	$1, -16(%rbp)
.L147:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	incs(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L148
	subl	$1, -16(%rbp)
	jmp	.L149
.L165:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	incs(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-64(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
.L164:
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L167
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L152
.L154:
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-64(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L168
.L152:
	movl	-60(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	24(%rbp), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	mainGtU
	testb	%al, %al
	jne	.L154
	jmp	.L153
.L168:
	nop
.L153:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L169
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L156
.L158:
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-64(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L170
.L156:
	movl	-60(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	24(%rbp), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	mainGtU
	testb	%al, %al
	jne	.L158
	jmp	.L157
.L170:
	nop
.L157:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.L171
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L160
.L162:
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-64(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L172
.L160:
	movl	-60(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	subl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	24(%rbp), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	mainGtU
	testb	%al, %al
	jne	.L162
	jmp	.L161
.L172:
	nop
.L161:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L173
	jmp	.L164
.L167:
	nop
	jmp	.L151
.L169:
	nop
	jmp	.L151
.L171:
	nop
.L151:
	subl	$1, -16(%rbp)
.L149:
	cmpl	$0, -16(%rbp)
	jns	.L165
	jmp	.L144
.L166:
	nop
	jmp	.L144
.L173:
	nop
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mainSimpleSort, .-mainSimpleSort
	.type	mmed3, @function
mmed3:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -20(%rbp)
	movl	%ecx, %edx
	movb	%dl, -24(%rbp)
	movb	%al, -28(%rbp)
	movzbl	-20(%rbp), %eax
	cmpb	-24(%rbp), %al
	jbe	.L175
	movzbl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	movzbl	-24(%rbp), %eax
	movb	%al, -20(%rbp)
	movzbl	-1(%rbp), %eax
	movb	%al, -24(%rbp)
.L175:
	movzbl	-24(%rbp), %eax
	cmpb	-28(%rbp), %al
	jbe	.L176
	movzbl	-28(%rbp), %eax
	movb	%al, -24(%rbp)
	movzbl	-20(%rbp), %eax
	cmpb	-24(%rbp), %al
	jbe	.L176
	movzbl	-20(%rbp), %eax
	movb	%al, -24(%rbp)
.L176:
	movzbl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mmed3, .-mmed3
	.type	mainQSort3, @function
mainQSort3:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1408, %rsp
	movq	%rdi, -1368(%rbp)
	movq	%rsi, -1376(%rbp)
	movq	%rdx, -1384(%rbp)
	movl	%ecx, -1388(%rbp)
	movl	%r8d, -1392(%rbp)
	movl	%r9d, -1396(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -1336(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1392(%rbp), %edx
	movl	%edx, -1216(%rbp,%rax,4)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1396(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-1336(%rbp), %eax
	cltq
	movl	16(%rbp), %edx
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -1336(%rbp)
	jmp	.L179
.L207:
	cmpl	$99, -1336(%rbp)
	jle	.L180
	movl	$1001, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L180:
	subl	$1, -1336(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1216(%rbp,%rax,4), %eax
	movl	%eax, -1308(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-816(%rbp,%rax,4), %eax
	movl	%eax, -1304(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, -1300(%rbp)
	movl	-1304(%rbp), %eax
	subl	-1308(%rbp), %eax
	cmpl	$19, %eax
	jle	.L181
	cmpl	$14, -1300(%rbp)
	jle	.L182
.L181:
	movl	-1304(%rbp), %r9d
	movl	-1308(%rbp), %r8d
	movl	-1388(%rbp), %ecx
	movq	-1384(%rbp), %rdx
	movq	-1376(%rbp), %rsi
	movq	-1368(%rbp), %rax
	pushq	-1408(%rbp)
	movl	-1300(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	mainSimpleSort
	addq	$16, %rsp
	movq	-1408(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L210
	jmp	.L179
.L182:
	movl	-1308(%rbp), %edx
	movl	-1304(%rbp), %eax
	addl	%edx, %eax
	sarl	%eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-1300(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-1376(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-1304(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-1368(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	-1300(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	movq	-1376(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-1308(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-1368(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %esi
	movl	-1300(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %esi
	movq	-1376(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	mmed3
	movzbl	%al, %eax
	movl	%eax, -1296(%rbp)
	movl	-1308(%rbp), %eax
	movl	%eax, -1344(%rbp)
	movl	-1344(%rbp), %eax
	movl	%eax, -1352(%rbp)
	movl	-1304(%rbp), %eax
	movl	%eax, -1340(%rbp)
	movl	-1340(%rbp), %eax
	movl	%eax, -1348(%rbp)
.L190:
	movl	-1352(%rbp), %eax
	cmpl	-1348(%rbp), %eax
	jg	.L211
	movl	-1352(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-1300(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-1376(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	-1296(%rbp), %eax
	movl	%eax, -1292(%rbp)
	cmpl	$0, -1292(%rbp)
	jne	.L187
	movl	-1352(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -1288(%rbp)
	movl	-1344(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	-1352(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-1368(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-1344(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rax, %rdx
	movl	-1288(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -1344(%rbp)
	addl	$1, -1352(%rbp)
	jmp	.L188
.L187:
	cmpl	$0, -1292(%rbp)
	jg	.L212
	addl	$1, -1352(%rbp)
.L188:
	jmp	.L190
.L211:
	nop
	jmp	.L196
.L212:
	nop
.L196:
	movl	-1352(%rbp), %eax
	cmpl	-1348(%rbp), %eax
	jg	.L213
	movl	-1348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-1300(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-1376(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	-1296(%rbp), %eax
	movl	%eax, -1292(%rbp)
	cmpl	$0, -1292(%rbp)
	jne	.L193
	movl	-1348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -1284(%rbp)
	movl	-1340(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	-1348(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-1368(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-1340(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rax, %rdx
	movl	-1284(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -1340(%rbp)
	subl	$1, -1348(%rbp)
	jmp	.L194
.L193:
	cmpl	$0, -1292(%rbp)
	js	.L214
	subl	$1, -1348(%rbp)
.L194:
	jmp	.L196
.L213:
	nop
	jmp	.L192
.L214:
	nop
.L192:
	movl	-1352(%rbp), %eax
	cmpl	-1348(%rbp), %eax
	jg	.L215
	movl	-1352(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -1280(%rbp)
	movl	-1348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	-1352(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-1368(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-1348(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rax, %rdx
	movl	-1280(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -1352(%rbp)
	subl	$1, -1348(%rbp)
	jmp	.L190
.L215:
	nop
	movl	-1340(%rbp), %eax
	cmpl	-1344(%rbp), %eax
	jge	.L199
	movl	-1336(%rbp), %eax
	cltq
	movl	-1308(%rbp), %edx
	movl	%edx, -1216(%rbp,%rax,4)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1304(%rbp), %edx
	movl	%edx, -816(%rbp,%rax,4)
	movl	-1300(%rbp), %eax
	leal	1(%rax), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -1336(%rbp)
	jmp	.L179
.L199:
	movl	-1352(%rbp), %eax
	subl	-1344(%rbp), %eax
	movl	%eax, %edx
	movl	-1344(%rbp), %eax
	subl	-1308(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -1292(%rbp)
	movl	-1308(%rbp), %eax
	movl	%eax, -1332(%rbp)
	movl	-1352(%rbp), %eax
	subl	-1292(%rbp), %eax
	movl	%eax, -1328(%rbp)
	movl	-1292(%rbp), %eax
	movl	%eax, -1324(%rbp)
	jmp	.L200
.L201:
	movl	-1332(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -1256(%rbp)
	movl	-1328(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	-1332(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-1368(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-1328(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rax, %rdx
	movl	-1256(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -1332(%rbp)
	addl	$1, -1328(%rbp)
	subl	$1, -1324(%rbp)
.L200:
	cmpl	$0, -1324(%rbp)
	jg	.L201
	movl	-1340(%rbp), %eax
	subl	-1348(%rbp), %eax
	movl	%eax, %edx
	movl	-1304(%rbp), %eax
	subl	-1340(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -1276(%rbp)
	movl	-1352(%rbp), %eax
	movl	%eax, -1320(%rbp)
	movl	-1304(%rbp), %eax
	subl	-1276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1316(%rbp)
	movl	-1276(%rbp), %eax
	movl	%eax, -1312(%rbp)
	jmp	.L202
.L203:
	movl	-1320(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -1260(%rbp)
	movl	-1316(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rdx, %rax
	movl	-1320(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-1368(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-1316(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1368(%rbp), %rax
	addq	%rax, %rdx
	movl	-1260(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -1320(%rbp)
	addl	$1, -1316(%rbp)
	subl	$1, -1312(%rbp)
.L202:
	cmpl	$0, -1312(%rbp)
	jg	.L203
	movl	-1308(%rbp), %edx
	movl	-1352(%rbp), %eax
	addl	%edx, %eax
	subl	-1344(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1292(%rbp)
	movl	-1340(%rbp), %eax
	subl	-1348(%rbp), %eax
	movl	-1304(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -1276(%rbp)
	movl	-1308(%rbp), %eax
	movl	%eax, -1252(%rbp)
	movl	-1292(%rbp), %eax
	movl	%eax, -1240(%rbp)
	movl	-1300(%rbp), %eax
	movl	%eax, -1228(%rbp)
	movl	-1276(%rbp), %eax
	movl	%eax, -1248(%rbp)
	movl	-1304(%rbp), %eax
	movl	%eax, -1236(%rbp)
	movl	-1300(%rbp), %eax
	movl	%eax, -1224(%rbp)
	movl	-1292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1244(%rbp)
	movl	-1276(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1232(%rbp)
	movl	-1300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1220(%rbp)
	movl	-1240(%rbp), %edx
	movl	-1252(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-1236(%rbp), %edx
	movl	-1248(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L204
	movl	-1252(%rbp), %eax
	movl	%eax, -1272(%rbp)
	movl	-1248(%rbp), %eax
	movl	%eax, -1252(%rbp)
	movl	-1272(%rbp), %eax
	movl	%eax, -1248(%rbp)
	movl	-1240(%rbp), %eax
	movl	%eax, -1272(%rbp)
	movl	-1236(%rbp), %eax
	movl	%eax, -1240(%rbp)
	movl	-1272(%rbp), %eax
	movl	%eax, -1236(%rbp)
	movl	-1228(%rbp), %eax
	movl	%eax, -1272(%rbp)
	movl	-1224(%rbp), %eax
	movl	%eax, -1228(%rbp)
	movl	-1272(%rbp), %eax
	movl	%eax, -1224(%rbp)
.L204:
	movl	-1236(%rbp), %edx
	movl	-1248(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-1232(%rbp), %edx
	movl	-1244(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L205
	movl	-1248(%rbp), %eax
	movl	%eax, -1268(%rbp)
	movl	-1244(%rbp), %eax
	movl	%eax, -1248(%rbp)
	movl	-1268(%rbp), %eax
	movl	%eax, -1244(%rbp)
	movl	-1236(%rbp), %eax
	movl	%eax, -1268(%rbp)
	movl	-1232(%rbp), %eax
	movl	%eax, -1236(%rbp)
	movl	-1268(%rbp), %eax
	movl	%eax, -1232(%rbp)
	movl	-1224(%rbp), %eax
	movl	%eax, -1268(%rbp)
	movl	-1220(%rbp), %eax
	movl	%eax, -1224(%rbp)
	movl	-1268(%rbp), %eax
	movl	%eax, -1220(%rbp)
.L205:
	movl	-1240(%rbp), %edx
	movl	-1252(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-1236(%rbp), %edx
	movl	-1248(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L206
	movl	-1252(%rbp), %eax
	movl	%eax, -1264(%rbp)
	movl	-1248(%rbp), %eax
	movl	%eax, -1252(%rbp)
	movl	-1264(%rbp), %eax
	movl	%eax, -1248(%rbp)
	movl	-1240(%rbp), %eax
	movl	%eax, -1264(%rbp)
	movl	-1236(%rbp), %eax
	movl	%eax, -1240(%rbp)
	movl	-1264(%rbp), %eax
	movl	%eax, -1236(%rbp)
	movl	-1228(%rbp), %eax
	movl	%eax, -1264(%rbp)
	movl	-1224(%rbp), %eax
	movl	%eax, -1228(%rbp)
	movl	-1264(%rbp), %eax
	movl	%eax, -1224(%rbp)
.L206:
	movl	-1252(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -1216(%rbp,%rax,4)
	movl	-1240(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -816(%rbp,%rax,4)
	movl	-1228(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -1336(%rbp)
	movl	-1248(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -1216(%rbp,%rax,4)
	movl	-1236(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -816(%rbp,%rax,4)
	movl	-1224(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -1336(%rbp)
	movl	-1244(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -1216(%rbp,%rax,4)
	movl	-1232(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -816(%rbp,%rax,4)
	movl	-1220(%rbp), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -1336(%rbp)
.L179:
	cmpl	$0, -1336(%rbp)
	jg	.L207
	jmp	.L178
.L210:
	nop
.L178:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L208
	call	__stack_chk_fail@PLT
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mainQSort3, .-mainQSort3
	.section	.rodata
	.align 8
.LC4:
	.string	"        main sort initialise ...\n"
	.align 8
.LC5:
	.string	"        qsort [0x%x, 0x%x]   done %d   this %d\n"
	.align 8
.LC6:
	.string	"        %d pointers, %d sorted, %d scanned\n"
	.text
	.type	mainSort, @function
mainSort:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3456, %rsp
	movq	%rdi, -3416(%rbp)
	movq	%rsi, -3424(%rbp)
	movq	%rdx, -3432(%rbp)
	movq	%rcx, -3440(%rbp)
	movl	%r8d, -3444(%rbp)
	movl	%r9d, -3448(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -3456(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$3, -3448(%rbp)
	jle	.L217
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
.L217:
	movl	$65536, -3400(%rbp)
	jmp	.L218
.L219:
	movl	-3400(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	subl	$1, -3400(%rbp)
.L218:
	cmpl	$0, -3400(%rbp)
	jns	.L219
	movq	-3424(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, -3396(%rbp)
	movl	-3444(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -3400(%rbp)
	jmp	.L220
.L221:
	movl	-3400(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	movl	-3396(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movl	%eax, -3396(%rbp)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-3400(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-2(%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	movl	-3396(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-3424(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -3396(%rbp)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-3400(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-4(%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	movl	-3396(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-2(%rax), %rcx
	movq	-3424(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -3396(%rbp)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-3400(%rbp), %eax
	cltq
	addq	%rax, %rax
	leaq	-6(%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	movl	-3396(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-3(%rax), %rcx
	movq	-3424(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -3396(%rbp)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	subl	$4, -3400(%rbp)
.L220:
	cmpl	$2, -3400(%rbp)
	jg	.L221
	jmp	.L222
.L223:
	movl	-3400(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	movl	-3396(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movl	%eax, -3396(%rbp)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	subl	$1, -3400(%rbp)
.L222:
	cmpl	$0, -3400(%rbp)
	jns	.L223
	movl	$0, -3400(%rbp)
	jmp	.L224
.L225:
	movl	-3400(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movl	-3444(%rbp), %ecx
	movl	-3400(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movq	-3424(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-3444(%rbp), %edx
	movl	-3400(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rdx, %rax
	movw	$0, (%rax)
	addl	$1, -3400(%rbp)
.L224:
	cmpl	$33, -3400(%rbp)
	jle	.L225
	cmpl	$3, -3448(%rbp)
	jle	.L226
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rdi
	call	fwrite@PLT
.L226:
	movl	$1, -3400(%rbp)
	jmp	.L227
.L228:
	movl	-3400(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-3400(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-3400(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-3440(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -3400(%rbp)
.L227:
	cmpl	$65536, -3400(%rbp)
	jle	.L228
	movq	-3424(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movw	%ax, -3404(%rbp)
	movl	-3444(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -3400(%rbp)
	jmp	.L229
.L230:
	movzwl	-3404(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -3404(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rax, %rdx
	movl	-3396(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rax, %rdx
	movl	-3400(%rbp), %eax
	movl	%eax, (%rdx)
	movzwl	-3404(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -3404(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rax, %rdx
	movl	-3396(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-3400(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3416(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	movzwl	-3404(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -3404(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rax, %rdx
	movl	-3396(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-3400(%rbp), %eax
	leal	-2(%rax), %edx
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3416(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	movzwl	-3404(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -3404(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rax, %rdx
	movl	-3396(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-3400(%rbp), %eax
	leal	-3(%rax), %edx
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3416(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
	subl	$4, -3400(%rbp)
.L229:
	cmpl	$2, -3400(%rbp)
	jg	.L230
	jmp	.L231
.L232:
	movzwl	-3404(%rbp), %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	movl	-3400(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, -3404(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	movzwl	-3404(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rax, %rdx
	movl	-3396(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rax, %rdx
	movl	-3400(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -3400(%rbp)
.L231:
	cmpl	$0, -3400(%rbp)
	jns	.L232
	movl	$0, -3400(%rbp)
	jmp	.L233
.L234:
	movl	-3400(%rbp), %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	movl	-3400(%rbp), %eax
	cltq
	movl	-3400(%rbp), %edx
	movl	%edx, -3344(%rbp,%rax,4)
	addl	$1, -3400(%rbp)
.L233:
	cmpl	$255, -3400(%rbp)
	jle	.L234
	movl	$1, -3384(%rbp)
.L235:
	movl	-3384(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -3384(%rbp)
	cmpl	$256, -3384(%rbp)
	jle	.L235
.L241:
	movl	-3384(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3384(%rbp)
	movl	-3384(%rbp), %eax
	movl	%eax, -3400(%rbp)
	jmp	.L236
.L240:
	movl	-3400(%rbp), %eax
	cltq
	movl	-3344(%rbp,%rax,4), %eax
	movl	%eax, -3348(%rbp)
	movl	-3400(%rbp), %eax
	movl	%eax, -3396(%rbp)
	jmp	.L237
.L239:
	movl	-3396(%rbp), %eax
	subl	-3384(%rbp), %eax
	cltq
	movl	-3344(%rbp,%rax,4), %edx
	movl	-3396(%rbp), %eax
	cltq
	movl	%edx, -3344(%rbp,%rax,4)
	movl	-3384(%rbp), %eax
	subl	%eax, -3396(%rbp)
	movl	-3384(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -3396(%rbp)
	jle	.L274
.L237:
	movl	-3396(%rbp), %eax
	subl	-3384(%rbp), %eax
	cltq
	movl	-3344(%rbp,%rax,4), %eax
	addl	$1, %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-3396(%rbp), %eax
	subl	-3384(%rbp), %eax
	cltq
	movl	-3344(%rbp,%rax,4), %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3440(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-3348(%rbp), %eax
	addl	$1, %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-3348(%rbp), %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-3440(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %ecx
	ja	.L239
	jmp	.L238
.L274:
	nop
.L238:
	movl	-3396(%rbp), %eax
	cltq
	movl	-3348(%rbp), %edx
	movl	%edx, -3344(%rbp,%rax,4)
	addl	$1, -3400(%rbp)
.L236:
	cmpl	$255, -3400(%rbp)
	jle	.L240
	cmpl	$1, -3384(%rbp)
	jne	.L241
	movl	$0, -3388(%rbp)
	movl	$0, -3400(%rbp)
	jmp	.L242
.L270:
	movl	-3400(%rbp), %eax
	cltq
	movl	-3344(%rbp,%rax,4), %eax
	movl	%eax, -3376(%rbp)
	movl	$0, -3396(%rbp)
	jmp	.L243
.L248:
	movl	-3396(%rbp), %eax
	cmpl	-3376(%rbp), %eax
	je	.L244
	movl	-3376(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-3396(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -3360(%rbp)
	movl	-3360(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	jne	.L245
	movl	-3360(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	movl	%eax, -3356(%rbp)
	movl	-3360(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	subl	$1, %eax
	movl	%eax, -3352(%rbp)
	movl	-3352(%rbp), %eax
	cmpl	-3356(%rbp), %eax
	jle	.L245
	cmpl	$3, -3448(%rbp)
	jle	.L246
	movl	-3352(%rbp), %eax
	subl	-3356(%rbp), %eax
	leal	1(%rax), %edi
	movl	-3396(%rbp), %ecx
	movl	-3376(%rbp), %edx
	movq	stderr(%rip), %rax
	movl	-3388(%rbp), %esi
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L246:
	movl	-3352(%rbp), %r8d
	movl	-3356(%rbp), %edi
	movl	-3444(%rbp), %ecx
	movq	-3432(%rbp), %rdx
	movq	-3424(%rbp), %rsi
	movq	-3416(%rbp), %rax
	pushq	-3456(%rbp)
	pushq	$2
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	mainQSort3
	addq	$16, %rsp
	movl	-3352(%rbp), %eax
	subl	-3356(%rbp), %eax
	addl	$1, %eax
	addl	%eax, -3388(%rbp)
	movq	-3456(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L275
.L245:
	movl	-3360(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-3360(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3440(%rbp), %rax
	addq	%rcx, %rax
	orl	$2097152, %edx
	movl	%edx, (%rax)
.L244:
	addl	$1, -3396(%rbp)
.L243:
	cmpl	$255, -3396(%rbp)
	jle	.L248
	movl	-3376(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	je	.L249
	movl	$1006, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L249:
	movl	$0, -3396(%rbp)
	jmp	.L250
.L251:
	movl	-3396(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-3376(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	movl	%eax, %edx
	movl	-3396(%rbp), %eax
	cltq
	movl	%edx, -2320(%rbp,%rax,4)
	movl	-3396(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-3376(%rbp), %eax
	addl	%edx, %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	-3396(%rbp), %eax
	cltq
	movl	%edx, -1296(%rbp,%rax,4)
	addl	$1, -3396(%rbp)
.L250:
	cmpl	$255, -3396(%rbp)
	jle	.L251
	movl	-3376(%rbp), %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	movl	%eax, -3396(%rbp)
	jmp	.L252
.L255:
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3392(%rbp)
	cmpl	$0, -3392(%rbp)
	jns	.L253
	movl	-3444(%rbp), %eax
	addl	%eax, -3392(%rbp)
.L253:
	movl	-3392(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -3405(%rbp)
	movzbl	-3405(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L254
	movzbl	-3405(%rbp), %edx
	movslq	%edx, %rax
	movl	-2320(%rbp,%rax,4), %eax
	leal	1(%rax), %ecx
	movslq	%edx, %rdx
	movl	%ecx, -2320(%rbp,%rdx,4)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rax, %rdx
	movl	-3392(%rbp), %eax
	movl	%eax, (%rdx)
.L254:
	addl	$1, -3396(%rbp)
.L252:
	movl	-3376(%rbp), %eax
	cltq
	movl	-2320(%rbp,%rax,4), %eax
	cmpl	%eax, -3396(%rbp)
	jl	.L255
	movl	-3376(%rbp), %eax
	addl	$1, %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	jmp	.L256
.L259:
	movl	-3396(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -3392(%rbp)
	cmpl	$0, -3392(%rbp)
	jns	.L257
	movl	-3444(%rbp), %eax
	addl	%eax, -3392(%rbp)
.L257:
	movl	-3392(%rbp), %eax
	movslq	%eax, %rdx
	movq	-3424(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -3405(%rbp)
	movzbl	-3405(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L258
	movzbl	-3405(%rbp), %edx
	movslq	%edx, %rax
	movl	-1296(%rbp,%rax,4), %eax
	leal	-1(%rax), %ecx
	movslq	%edx, %rdx
	movl	%ecx, -1296(%rbp,%rdx,4)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rax, %rdx
	movl	-3392(%rbp), %eax
	movl	%eax, (%rdx)
.L258:
	subl	$1, -3396(%rbp)
.L256:
	movl	-3376(%rbp), %eax
	cltq
	movl	-1296(%rbp,%rax,4), %eax
	cmpl	%eax, -3396(%rbp)
	jg	.L259
	movl	-3376(%rbp), %eax
	cltq
	movl	-2320(%rbp,%rax,4), %eax
	leal	-1(%rax), %edx
	movl	-3376(%rbp), %eax
	cltq
	movl	-1296(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L260
	movl	-3376(%rbp), %eax
	cltq
	movl	-2320(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L261
	movl	-3376(%rbp), %eax
	cltq
	movl	-1296(%rbp,%rax,4), %eax
	movl	-3444(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.L260
.L261:
	movl	$1007, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L260:
	movl	$0, -3396(%rbp)
	jmp	.L262
.L263:
	movl	-3396(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-3376(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-3396(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-3376(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-3440(%rbp), %rax
	addq	%rcx, %rax
	orl	$2097152, %edx
	movl	%edx, (%rax)
	addl	$1, -3396(%rbp)
.L262:
	cmpl	$255, -3396(%rbp)
	jle	.L263
	movl	-3376(%rbp), %eax
	cltq
	movb	$1, -272(%rbp,%rax)
	cmpl	$254, -3400(%rbp)
	jg	.L264
	movl	-3376(%rbp), %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	movl	%eax, -3372(%rbp)
	movl	-3376(%rbp), %eax
	addl	$1, %eax
	sall	$8, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3440(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$-2097153, %eax
	movl	%eax, %edx
	movl	-3372(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -3368(%rbp)
	movl	$0, -3380(%rbp)
	jmp	.L265
.L266:
	addl	$1, -3380(%rbp)
.L265:
	movl	-3380(%rbp), %eax
	movl	-3368(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	cmpl	$65534, %eax
	jg	.L266
	movl	-3368(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -3396(%rbp)
	jmp	.L267
.L269:
	movl	-3372(%rbp), %edx
	movl	-3396(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-3416(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -3364(%rbp)
	movl	-3380(%rbp), %eax
	movl	-3396(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movw	%ax, -3402(%rbp)
	movl	-3364(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rax, %rdx
	movzwl	-3402(%rbp), %eax
	movw	%ax, (%rdx)
	cmpl	$33, -3364(%rbp)
	jg	.L268
	movl	-3364(%rbp), %edx
	movl	-3444(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-3432(%rbp), %rax
	addq	%rax, %rdx
	movzwl	-3402(%rbp), %eax
	movw	%ax, (%rdx)
.L268:
	subl	$1, -3396(%rbp)
.L267:
	cmpl	$0, -3396(%rbp)
	jns	.L269
	movl	-3368(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-3380(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	cmpl	$65535, %eax
	jle	.L264
	movl	$1002, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L264:
	addl	$1, -3400(%rbp)
.L242:
	cmpl	$255, -3400(%rbp)
	jle	.L270
	cmpl	$3, -3448(%rbp)
	jle	.L216
	movl	-3444(%rbp), %eax
	subl	-3388(%rbp), %eax
	movl	%eax, %esi
	movq	stderr(%rip), %rax
	movl	-3388(%rbp), %ecx
	movl	-3444(%rbp), %edx
	movl	%esi, %r8d
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L216
.L275:
	nop
.L216:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L273
	call	__stack_chk_fail@PLT
.L273:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	mainSort, .-mainSort
	.section	.rodata
	.align 8
.LC8:
	.string	"      %d work, %d block, ratio %5.2f\n"
	.align 8
.LC9:
	.string	"    too repetitive; using fallback sorting algorithm\n"
	.text
	.globl	BZ2_blockSort
	.type	BZ2_blockSort, @function
BZ2_blockSort:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	108(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	656(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -60(%rbp)
	cmpl	$9999, -52(%rbp)
	jg	.L277
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	fallbackSort
	jmp	.L278
.L277:
	movl	-52(%rbp), %eax
	addl	$34, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L279
	addl	$1, -56(%rbp)
.L279:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L280
	movl	$1, -60(%rbp)
.L280:
	cmpl	$100, -60(%rbp)
	jle	.L281
	movl	$100, -60(%rbp)
.L281:
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-52(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-64(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	mainSort
	addq	$16, %rsp
	cmpl	$2, -48(%rbp)
	jle	.L282
	movl	-64(%rbp), %eax
	movl	-44(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ss	%eax, %xmm1
	cmpl	$0, -52(%rbp)
	je	.L283
	cvtsi2ss	-52(%rbp), %xmm0
	jmp	.L284
.L283:
	movss	.LC7(%rip), %xmm0
.L284:
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-64(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movq	stderr(%rip), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L282:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	jns	.L278
	cmpl	$1, -48(%rbp)
	jle	.L285
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	leaq	.LC9(%rip), %rdi
	call	fwrite@PLT
.L285:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	fallbackSort
.L278:
	movq	-72(%rbp), %rax
	movl	$-1, 48(%rax)
	movl	$0, -56(%rbp)
	jmp	.L286
.L289:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L287
	movq	-72(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 48(%rax)
	jmp	.L288
.L287:
	addl	$1, -56(%rbp)
.L286:
	movq	-72(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jl	.L289
.L288:
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$-1, %eax
	jne	.L292
	movl	$1003, %edi
	call	BZ2_bz__AssertH__fail@PLT
.L292:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L291
	call	__stack_chk_fail@PLT
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	BZ2_blockSort, .-BZ2_blockSort
	.section	.rodata
	.align 4
.LC7:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
