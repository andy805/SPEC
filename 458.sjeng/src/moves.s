	.file	"moves.c"
	.text
	.comm	total_moves,4,4
	.comm	total_movegens,4,4
	.comm	numb_moves,4,4
	.local	genfor
	.comm	genfor,8,8
	.comm	fcaptures,4,4
	.comm	gfrom,4,4
	.comm	kingcap,4,4
	.globl	check_legal
	.type	check_legal, @function
check_legal:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	cmpl	$0, -12(%rbp)
	je	.L4
	cmpl	$1, -12(%rbp)
	jne	.L5
	movl	$0, %esi
	movl	$30, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L6
	movl	$0, %eax
	jmp	.L3
.L6:
	movl	$0, %esi
	movl	$31, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L7
	movl	$0, %eax
	jmp	.L3
.L7:
	movl	$0, %esi
	movl	$32, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L8
	movl	$0, %eax
	jmp	.L3
.L8:
	movl	$1, %eax
	jmp	.L3
.L5:
	cmpl	$2, -12(%rbp)
	jne	.L9
	movl	$0, %esi
	movl	$30, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L10
	movl	$0, %eax
	jmp	.L3
.L10:
	movl	$0, %esi
	movl	$29, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L11
	movl	$0, %eax
	jmp	.L3
.L11:
	movl	$0, %esi
	movl	$28, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L12
	movl	$0, %eax
	jmp	.L3
.L12:
	movl	$1, %eax
	jmp	.L3
.L9:
	cmpl	$3, -12(%rbp)
	jne	.L13
	movl	$1, %esi
	movl	$114, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L14
	movl	$0, %eax
	jmp	.L3
.L14:
	movl	$1, %esi
	movl	$115, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L15
	movl	$0, %eax
	jmp	.L3
.L15:
	movl	$1, %esi
	movl	$116, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %eax
	jmp	.L3
.L16:
	movl	$1, %eax
	jmp	.L3
.L13:
	cmpl	$4, -12(%rbp)
	jne	.L17
	movl	$1, %esi
	movl	$114, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L3
.L18:
	movl	$1, %esi
	movl	$113, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L19
	movl	$0, %eax
	jmp	.L3
.L19:
	movl	$1, %esi
	movl	$112, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L20
	movl	$0, %eax
	jmp	.L3
.L20:
	movl	$1, %eax
	jmp	.L3
.L4:
	movl	white_to_move(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L21
	cmpl	$0, -32(%rbp)
	jne	.L22
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movl	$1, %eax
	jmp	.L3
.L23:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L24
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L25
.L24:
	movl	$2, %eax
.L25:
	cmpl	$12, %eax
	ja	.L134
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L28(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L28(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L28:
	.long	.L134-.L28
	.long	.L134-.L28
	.long	.L27-.L28
	.long	.L134-.L28
	.long	.L29-.L28
	.long	.L134-.L28
	.long	.L134-.L28
	.long	.L134-.L28
	.long	.L30-.L28
	.long	.L134-.L28
	.long	.L31-.L28
	.long	.L134-.L28
	.long	.L32-.L28
	.text
.L27:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$13, %eax
	je	.L33
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	$1, %eax
	jmp	.L3
.L33:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L135
	movl	$1, %eax
	jmp	.L3
.L29:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L136
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L136
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L136
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L136
	movl	$1, %eax
	jmp	.L3
.L32:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L137
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L137
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L38
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L137
	movl	$1, %eax
	jmp	.L3
.L38:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L137
	movl	$1, %eax
	jmp	.L3
.L30:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L138
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L138
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L40
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L138
	movl	$1, %eax
	jmp	.L3
.L40:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L138
	movl	$1, %eax
	jmp	.L3
.L31:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L41
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	$1, %eax
	jmp	.L3
.L41:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L43
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	$1, %eax
	jmp	.L3
.L43:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L44
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	$1, %eax
	jmp	.L3
.L44:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L139
	movl	$1, %eax
	jmp	.L3
.L134:
	nop
	jmp	.L35
.L135:
	nop
	jmp	.L35
.L136:
	nop
	jmp	.L35
.L137:
	nop
	jmp	.L35
.L138:
	nop
	jmp	.L35
.L139:
	nop
.L35:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	je	.L22
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L45
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L46
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -16(%rbp)
	jmp	.L47
.L48:
	subl	$12, -16(%rbp)
.L47:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L48
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L49
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L49:
	movl	$0, %eax
	jmp	.L3
.L46:
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -16(%rbp)
	jmp	.L51
.L52:
	addl	$12, -16(%rbp)
.L51:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L52
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L53
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L53:
	movl	$0, %eax
	jmp	.L3
.L45:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L54
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L55
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L56
.L57:
	subl	$1, -16(%rbp)
.L56:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L57
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L58
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L58:
	movl	$0, %eax
	jmp	.L3
.L55:
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L59
.L60:
	addl	$1, -16(%rbp)
.L59:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L60
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L61
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L61:
	movl	$0, %eax
	jmp	.L3
.L54:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L62
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L63
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -16(%rbp)
	jmp	.L64
.L65:
	subl	$13, -16(%rbp)
.L64:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L65
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L66
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L66:
	movl	$0, %eax
	jmp	.L3
.L63:
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -16(%rbp)
	jmp	.L67
.L68:
	addl	$13, -16(%rbp)
.L67:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L68
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L69
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L69:
	movl	$0, %eax
	jmp	.L3
.L62:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L50
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L70
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -16(%rbp)
	jmp	.L71
.L72:
	subl	$11, -16(%rbp)
.L71:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L72
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L73
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L73:
	movl	$0, %eax
	jmp	.L3
.L70:
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -16(%rbp)
	jmp	.L74
.L75:
	addl	$11, -16(%rbp)
.L74:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L75
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L76
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L50
.L76:
	movl	$0, %eax
	jmp	.L3
.L50:
	movl	$1, %eax
	jmp	.L3
.L22:
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L77
	movl	$0, %eax
	jmp	.L3
.L77:
	movl	$1, %eax
	jmp	.L3
.L21:
	cmpl	$0, -32(%rbp)
	jne	.L78
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L79
	movl	$1, %eax
	jmp	.L3
.L79:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L80
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	cmpl	$11, %eax
	ja	.L140
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L84(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L84(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L84:
	.long	.L140-.L84
	.long	.L83-.L84
	.long	.L140-.L84
	.long	.L85-.L84
	.long	.L140-.L84
	.long	.L140-.L84
	.long	.L140-.L84
	.long	.L86-.L84
	.long	.L140-.L84
	.long	.L87-.L84
	.long	.L140-.L84
	.long	.L88-.L84
	.text
.L83:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$13, %eax
	je	.L89
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	$1, %eax
	jmp	.L3
.L89:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L141
	movl	$1, %eax
	jmp	.L3
.L85:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L142
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L142
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L142
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L142
	movl	$1, %eax
	jmp	.L3
.L88:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L143
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L143
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L94
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L143
	movl	$1, %eax
	jmp	.L3
.L94:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L143
	movl	$1, %eax
	jmp	.L3
.L86:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L144
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L144
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L96
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L144
	movl	$1, %eax
	jmp	.L3
.L96:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L144
	movl	$1, %eax
	jmp	.L3
.L87:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jne	.L97
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	$1, %eax
	jmp	.L3
.L97:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L99
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	$1, %eax
	jmp	.L3
.L99:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L100
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	$1, %eax
	jmp	.L3
.L100:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L145
	movl	$1, %eax
	jmp	.L3
.L140:
	nop
	jmp	.L91
.L141:
	nop
	jmp	.L91
.L142:
	nop
	jmp	.L91
.L143:
	nop
	jmp	.L91
.L144:
	nop
	jmp	.L91
.L145:
	nop
.L91:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L78
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L101
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L102
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -16(%rbp)
	jmp	.L103
.L104:
	subl	$12, -16(%rbp)
.L103:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L104
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L105
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L105:
	movl	$0, %eax
	jmp	.L3
.L102:
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -16(%rbp)
	jmp	.L107
.L108:
	addl	$12, -16(%rbp)
.L107:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L108
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L109
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L109:
	movl	$0, %eax
	jmp	.L3
.L101:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L110
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L111
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L112
.L113:
	subl	$1, -16(%rbp)
.L112:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L113
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L114
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L114:
	movl	$0, %eax
	jmp	.L3
.L111:
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L115
.L116:
	addl	$1, -16(%rbp)
.L115:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L116
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L117
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L117:
	movl	$0, %eax
	jmp	.L3
.L110:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L118
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L119
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -16(%rbp)
	jmp	.L120
.L121:
	subl	$13, -16(%rbp)
.L120:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L121
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L122
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L122:
	movl	$0, %eax
	jmp	.L3
.L119:
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -16(%rbp)
	jmp	.L123
.L124:
	addl	$13, -16(%rbp)
.L123:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L124
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L125
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L125:
	movl	$0, %eax
	jmp	.L3
.L118:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L106
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L126
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -16(%rbp)
	jmp	.L127
.L128:
	subl	$11, -16(%rbp)
.L127:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L128
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L129
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L129:
	movl	$0, %eax
	jmp	.L3
.L126:
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -16(%rbp)
	jmp	.L130
.L131:
	addl	$11, -16(%rbp)
.L130:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L131
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L132
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L106
.L132:
	movl	$0, %eax
	jmp	.L3
.L106:
	movl	$1, %eax
	jmp	.L3
.L78:
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L133
	movl	$0, %eax
	jmp	.L3
.L133:
	movl	$1, %eax
	jmp	.L3
.L17:
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	check_legal, .-check_legal
	.globl	gen
	.type	gen, @function
gen:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, kingcap(%rip)
	movl	$0, numb_moves(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, genfor(%rip)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L268
	movl	$0, captures(%rip)
	movl	$0, fcaptures(%rip)
	jmp	.L266
.L268:
	nop
.L147:
.L266:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L148
	movl	$1, -12(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L149
.L195:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L269
	addl	$1, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gfrom(%rip)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	ja	.L270
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L154(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L154(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L154:
	.long	.L270-.L154
	.long	.L153-.L154
	.long	.L270-.L154
	.long	.L155-.L154
	.long	.L270-.L154
	.long	.L156-.L154
	.long	.L270-.L154
	.long	.L157-.L154
	.long	.L270-.L154
	.long	.L158-.L154
	.long	.L270-.L154
	.long	.L159-.L154
	.text
.L153:
	movl	-16(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L160
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L161
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L161
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L161
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L160
.L161:
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L160
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L160
	movl	-16(%rbp), %eax
	addl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L160
	movl	-16(%rbp), %eax
	addl	$24, %eax
	movl	%eax, %edi
	call	push_pawn_simple
.L160:
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L162
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L162
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
.L162:
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L163
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L163
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
.L163:
	movl	-16(%rbp), %eax
	leal	13(%rax), %edx
	movl	ep_square(%rip), %eax
	cmpl	%eax, %edx
	jne	.L164
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L271
.L164:
	movl	-16(%rbp), %eax
	leal	11(%rax), %edx
	movl	ep_square(%rip), %eax
	cmpl	%eax, %edx
	jne	.L271
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L271
.L155:
	movl	-16(%rbp), %eax
	subl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L166
	movl	-16(%rbp), %eax
	subl	$25, %eax
	movl	%eax, %edi
	call	push_knighT
.L166:
	movl	-16(%rbp), %eax
	subl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L167
	movl	-16(%rbp), %eax
	subl	$23, %eax
	movl	%eax, %edi
	call	push_knighT
.L167:
	movl	-16(%rbp), %eax
	subl	$14, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L168
	movl	-16(%rbp), %eax
	subl	$14, %eax
	movl	%eax, %edi
	call	push_knighT
.L168:
	movl	-16(%rbp), %eax
	subl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L169
	movl	-16(%rbp), %eax
	subl	$10, %eax
	movl	%eax, %edi
	call	push_knighT
.L169:
	movl	-16(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L170
	movl	-16(%rbp), %eax
	addl	$10, %eax
	movl	%eax, %edi
	call	push_knighT
.L170:
	movl	-16(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L171
	movl	-16(%rbp), %eax
	addl	$14, %eax
	movl	%eax, %edi
	call	push_knighT
.L171:
	movl	-16(%rbp), %eax
	addl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L172
	movl	-16(%rbp), %eax
	addl	$23, %eax
	movl	%eax, %edi
	call	push_knighT
.L172:
	movl	-16(%rbp), %eax
	addl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L272
	movl	-16(%rbp), %eax
	addl	$25, %eax
	movl	%eax, %edi
	call	push_knighT
	jmp	.L272
.L159:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L174
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
.L174:
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L175
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L175:
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L176
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L176:
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L273
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L273
.L157:
	movl	-16(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L178
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L178:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L179
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L179:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L180
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L180:
	movl	-16(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L274
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L274
.L158:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L182
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
.L182:
	movl	-16(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L183
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L183:
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L184
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L184:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L185
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L185:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L186
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L186:
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L187
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L187:
	movl	-16(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L188
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L188:
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L275
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L275
.L156:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_king
	cmpl	$30, -16(%rbp)
	jne	.L276
	movl	120+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L276
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L276
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L191
	movl	Giveaway(%rip), %eax
	cmpl	$1, %eax
	jne	.L276
.L191:
	movl	132+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L192
	movl	132+board(%rip), %eax
	cmpl	$7, %eax
	jne	.L192
	movl	124+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L192
	movl	128+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L192
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	push_king_castle
.L192:
	movl	104+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L276
	movl	104+board(%rip), %eax
	cmpl	$7, %eax
	jne	.L276
	movl	108+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L276
	movl	112+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L276
	movl	116+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L276
	movl	-16(%rbp), %eax
	subl	$2, %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	push_king_castle
	jmp	.L276
.L269:
	nop
	jmp	.L151
.L270:
	nop
	jmp	.L151
.L271:
	nop
	jmp	.L151
.L272:
	nop
	jmp	.L151
.L273:
	nop
	jmp	.L151
.L274:
	nop
	jmp	.L151
.L275:
	nop
	jmp	.L151
.L276:
	nop
.L151:
	addl	$1, -8(%rbp)
.L149:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L193
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L194
	movl	kingcap(%rip), %eax
	testl	%eax, %eax
	je	.L195
.L194:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L193
	movl	fcaptures(%rip), %edx
	movl	captures(%rip), %eax
	cmpl	%eax, %edx
	je	.L195
	jmp	.L193
.L148:
	movl	$1, -12(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L196
.L241:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L277
	addl	$1, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, gfrom(%rip)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L278
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L201(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L201(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L201:
	.long	.L278-.L201
	.long	.L278-.L201
	.long	.L200-.L201
	.long	.L278-.L201
	.long	.L202-.L201
	.long	.L278-.L201
	.long	.L203-.L201
	.long	.L278-.L201
	.long	.L204-.L201
	.long	.L278-.L201
	.long	.L205-.L201
	.long	.L278-.L201
	.long	.L206-.L201
	.text
.L200:
	movl	-16(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L207
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L208
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L208
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L208
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L207
.L208:
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L207
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L207
	movl	-16(%rbp), %eax
	subl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L207
	movl	-16(%rbp), %eax
	subl	$24, %eax
	movl	%eax, %edi
	call	push_pawn_simple
.L207:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L209
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L209
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
.L209:
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L210
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L210
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	push_pawn
.L210:
	movl	-16(%rbp), %eax
	leal	-13(%rax), %edx
	movl	ep_square(%rip), %eax
	cmpl	%eax, %edx
	jne	.L211
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L279
.L211:
	movl	-16(%rbp), %eax
	leal	-11(%rax), %edx
	movl	ep_square(%rip), %eax
	cmpl	%eax, %edx
	jne	.L279
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	push_pawn
	jmp	.L279
.L202:
	movl	-16(%rbp), %eax
	subl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L213
	movl	-16(%rbp), %eax
	subl	$25, %eax
	movl	%eax, %edi
	call	push_knighT
.L213:
	movl	-16(%rbp), %eax
	subl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L214
	movl	-16(%rbp), %eax
	subl	$23, %eax
	movl	%eax, %edi
	call	push_knighT
.L214:
	movl	-16(%rbp), %eax
	subl	$14, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L215
	movl	-16(%rbp), %eax
	subl	$14, %eax
	movl	%eax, %edi
	call	push_knighT
.L215:
	movl	-16(%rbp), %eax
	subl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L216
	movl	-16(%rbp), %eax
	subl	$10, %eax
	movl	%eax, %edi
	call	push_knighT
.L216:
	movl	-16(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L217
	movl	-16(%rbp), %eax
	addl	$10, %eax
	movl	%eax, %edi
	call	push_knighT
.L217:
	movl	-16(%rbp), %eax
	addl	$14, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L218
	movl	-16(%rbp), %eax
	addl	$14, %eax
	movl	%eax, %edi
	call	push_knighT
.L218:
	movl	-16(%rbp), %eax
	addl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L219
	movl	-16(%rbp), %eax
	addl	$23, %eax
	movl	%eax, %edi
	call	push_knighT
.L219:
	movl	-16(%rbp), %eax
	addl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L280
	movl	-16(%rbp), %eax
	addl	$25, %eax
	movl	%eax, %edi
	call	push_knighT
	jmp	.L280
.L206:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L221
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
.L221:
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L222
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L222:
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L223
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L223:
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L281
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L281
.L204:
	movl	-16(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L225
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L225:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L226
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L226:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L227
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L227:
	movl	-16(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L282
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L282
.L205:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L229
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
.L229:
	movl	-16(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L230
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L230:
	movl	-16(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L231
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L231:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L232
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L232:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L233
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_slidE
.L233:
	movl	-16(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L234
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_slidE
.L234:
	movl	-16(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L235
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_slidE
.L235:
	movl	-16(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L283
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_slidE
	jmp	.L283
.L203:
	movl	-16(%rbp), %eax
	subl	$13, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$12, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$11, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$11, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$12, %eax
	movl	%eax, %edi
	call	push_king
	movl	-16(%rbp), %eax
	addl	$13, %eax
	movl	%eax, %edi
	call	push_king
	cmpl	$114, -16(%rbp)
	jne	.L284
	movl	456+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L284
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L284
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L238
	movl	Giveaway(%rip), %eax
	cmpl	$1, %eax
	jne	.L284
.L238:
	movl	468+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L239
	movl	468+board(%rip), %eax
	cmpl	$8, %eax
	jne	.L239
	movl	460+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L239
	movl	464+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L239
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	push_king_castle
.L239:
	movl	440+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L284
	movl	440+board(%rip), %eax
	cmpl	$8, %eax
	jne	.L284
	movl	444+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L284
	movl	448+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L284
	movl	452+board(%rip), %eax
	cmpl	$13, %eax
	jne	.L284
	movl	-16(%rbp), %eax
	subl	$2, %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	push_king_castle
	jmp	.L284
.L277:
	nop
	jmp	.L198
.L278:
	nop
	jmp	.L198
.L279:
	nop
	jmp	.L198
.L280:
	nop
	jmp	.L198
.L281:
	nop
	jmp	.L198
.L282:
	nop
	jmp	.L198
.L283:
	nop
	jmp	.L198
.L284:
	nop
.L198:
	addl	$1, -8(%rbp)
.L196:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L193
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L240
	movl	kingcap(%rip), %eax
	testl	%eax, %eax
	je	.L241
.L240:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L193
	movl	fcaptures(%rip), %edx
	movl	captures(%rip), %eax
	cmpl	%eax, %edx
	je	.L241
.L193:
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	je	.L242
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L243
.L242:
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L243
	movl	kingcap(%rip), %eax
	testl	%eax, %eax
	jne	.L243
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L244
	movl	4+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L245
	movl	12+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L245
	movl	44+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L245
	movl	36+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L245
	movl	28+holding(%rip), %eax
	testl	%eax, %eax
	je	.L244
.L245:
	movl	$26, -16(%rbp)
	jmp	.L246
.L254:
	movl	-16(%rbp), %eax
	movl	%eax, gfrom(%rip)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L248
	cmpl	$13, %eax
	je	.L249
	jmp	.L247
.L248:
	addl	$3, -16(%rbp)
	jmp	.L247
.L249:
	movl	4+holding(%rip), %eax
	testl	%eax, %eax
	je	.L250
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L250
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L250
	movl	$1, %edi
	call	try_drop
.L250:
	movl	12+holding(%rip), %eax
	testl	%eax, %eax
	je	.L251
	movl	$3, %edi
	call	try_drop
.L251:
	movl	44+holding(%rip), %eax
	testl	%eax, %eax
	je	.L252
	movl	$11, %edi
	call	try_drop
.L252:
	movl	28+holding(%rip), %eax
	testl	%eax, %eax
	je	.L253
	movl	$7, %edi
	call	try_drop
.L253:
	movl	36+holding(%rip), %eax
	testl	%eax, %eax
	je	.L247
	movl	$9, %edi
	call	try_drop
.L247:
	addl	$1, -16(%rbp)
.L246:
	cmpl	$117, -16(%rbp)
	jle	.L254
	jmp	.L243
.L244:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	jne	.L243
	movl	72+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L255
	movl	80+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L255
	movl	112+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L255
	movl	104+holding(%rip), %eax
	testl	%eax, %eax
	jne	.L255
	movl	96+holding(%rip), %eax
	testl	%eax, %eax
	je	.L243
.L255:
	movl	$26, -16(%rbp)
	jmp	.L256
.L264:
	movl	-16(%rbp), %eax
	movl	%eax, gfrom(%rip)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L258
	cmpl	$13, %eax
	je	.L259
	jmp	.L257
.L258:
	addl	$3, -16(%rbp)
	jmp	.L257
.L259:
	movl	72+holding(%rip), %eax
	testl	%eax, %eax
	je	.L260
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L260
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L260
	movl	$2, %edi
	call	try_drop
.L260:
	movl	80+holding(%rip), %eax
	testl	%eax, %eax
	je	.L261
	movl	$4, %edi
	call	try_drop
.L261:
	movl	112+holding(%rip), %eax
	testl	%eax, %eax
	je	.L262
	movl	$12, %edi
	call	try_drop
.L262:
	movl	96+holding(%rip), %eax
	testl	%eax, %eax
	je	.L263
	movl	$8, %edi
	call	try_drop
.L263:
	movl	104+holding(%rip), %eax
	testl	%eax, %eax
	je	.L257
	movl	$10, %edi
	call	try_drop
.L257:
	addl	$1, -16(%rbp)
.L256:
	cmpl	$117, -16(%rbp)
	jle	.L264
.L243:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L265
	movl	fcaptures(%rip), %eax
	cmpl	$1, %eax
	jne	.L265
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L265
	movl	$1, captures(%rip)
	movl	$0, numb_moves(%rip)
	jmp	.L266
.L265:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L285
	movl	$0, kingcap(%rip)
.L285:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	gen, .-gen
	.globl	in_check
	.type	in_check, @function
in_check:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L287
	movl	$0, %eax
	jmp	.L288
.L287:
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L289
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L290
	movl	$1, %eax
	jmp	.L288
.L289:
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L290
	movl	$1, %eax
	jmp	.L288
.L290:
	movl	$0, %eax
.L288:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	in_check, .-in_check
	.globl	f_in_check
	.type	f_in_check, @function
f_in_check:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L292
	movl	$0, %eax
	jmp	.L293
.L292:
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L294
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L295
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L297(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L297(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L297:
	.long	.L295-.L297
	.long	.L295-.L297
	.long	.L296-.L297
	.long	.L295-.L297
	.long	.L298-.L297
	.long	.L295-.L297
	.long	.L299-.L297
	.long	.L295-.L297
	.long	.L300-.L297
	.long	.L295-.L297
	.long	.L301-.L297
	.long	.L295-.L297
	.long	.L302-.L297
	.text
.L296:
	movl	-8(%rbp), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L303
	movl	-8(%rbp), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L487
.L303:
	movl	$1, %eax
	jmp	.L293
.L302:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L305
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L306
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L307
.L308:
	addl	$13, -12(%rbp)
.L307:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L308
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L488
	movl	$1, %eax
	jmp	.L293
.L306:
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L310
.L311:
	subl	$13, -12(%rbp)
.L310:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L311
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L488
	movl	$1, %eax
	jmp	.L293
.L305:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L488
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L312
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L313
.L314:
	addl	$11, -12(%rbp)
.L313:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L314
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L488
	movl	$1, %eax
	jmp	.L293
.L312:
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L315
.L316:
	subl	$11, -12(%rbp)
.L315:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L316
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L488
	movl	$1, %eax
	jmp	.L293
.L300:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L317
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L318
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L319
.L320:
	addl	$12, -12(%rbp)
.L319:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L320
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L489
	movl	$1, %eax
	jmp	.L293
.L318:
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L322
.L323:
	subl	$12, -12(%rbp)
.L322:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L323
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L489
	movl	$1, %eax
	jmp	.L293
.L317:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L489
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L324
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L325
.L326:
	addl	$1, -12(%rbp)
.L325:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L326
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L489
	movl	$1, %eax
	jmp	.L293
.L324:
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L327
.L328:
	subl	$1, -12(%rbp)
.L327:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L328
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L489
	movl	$1, %eax
	jmp	.L293
.L298:
	movl	$0, -12(%rbp)
	jmp	.L329
.L331:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4096(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	addl	%edx, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L330
	movl	$1, %eax
	jmp	.L293
.L330:
	addl	$1, -12(%rbp)
.L329:
	cmpl	$7, -12(%rbp)
	jle	.L331
	jmp	.L295
.L301:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L332
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L333
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L334
.L335:
	addl	$12, -12(%rbp)
.L334:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L335
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L333:
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L337
.L338:
	subl	$12, -12(%rbp)
.L337:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L338
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L332:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L339
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L340
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L341
.L342:
	addl	$1, -12(%rbp)
.L341:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L342
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L340:
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L343
.L344:
	subl	$1, -12(%rbp)
.L343:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L344
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L339:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L345
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L346
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L347
.L348:
	addl	$13, -12(%rbp)
.L347:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L348
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L346:
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L349
.L350:
	subl	$13, -12(%rbp)
.L349:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L350
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L345:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L490
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L351
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L352
.L353:
	addl	$11, -12(%rbp)
.L352:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L353
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L351:
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L354
.L355:
	subl	$11, -12(%rbp)
.L354:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L355
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L490
	movl	$1, %eax
	jmp	.L293
.L299:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L491
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L357
	movl	$1, %eax
	jmp	.L293
.L357:
	movl	$0, %eax
	jmp	.L293
.L487:
	nop
	jmp	.L295
.L488:
	nop
	jmp	.L295
.L489:
	nop
	jmp	.L295
.L490:
	nop
	jmp	.L295
.L491:
	nop
.L295:
	cmpl	$0, -4(%rbp)
	jne	.L358
	movl	$0, %eax
	jmp	.L293
.L358:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L359
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L360
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L361
.L362:
	subl	$1, -12(%rbp)
.L361:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L362
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L363
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L363:
	movl	$1, %eax
	jmp	.L293
.L360:
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L365
.L366:
	addl	$1, -12(%rbp)
.L365:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L366
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L367
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L367:
	movl	$1, %eax
	jmp	.L293
.L359:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L368
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L369
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L370
.L371:
	subl	$12, -12(%rbp)
.L370:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L371
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L372
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L372:
	movl	$1, %eax
	jmp	.L293
.L369:
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L373
.L374:
	addl	$12, -12(%rbp)
.L373:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L374
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$8, %eax
	je	.L375
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L375:
	movl	$1, %eax
	jmp	.L293
.L368:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L376
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L377
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L378
.L379:
	subl	$13, -12(%rbp)
.L378:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L379
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L380
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L380:
	movl	$1, %eax
	jmp	.L293
.L377:
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L381
.L382:
	addl	$13, -12(%rbp)
.L381:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L382
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L383
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L383:
	movl	$1, %eax
	jmp	.L293
.L376:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L364
	movl	wking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L384
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L385
.L386:
	subl	$11, -12(%rbp)
.L385:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L386
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L387
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L387:
	movl	$1, %eax
	jmp	.L293
.L384:
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L388
.L389:
	addl	$11, -12(%rbp)
.L388:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L389
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	je	.L390
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	jne	.L364
.L390:
	movl	$1, %eax
	jmp	.L293
.L364:
	movl	$0, %eax
	jmp	.L293
.L294:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	ja	.L391
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L393(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L393(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L393:
	.long	.L391-.L393
	.long	.L392-.L393
	.long	.L391-.L393
	.long	.L394-.L393
	.long	.L391-.L393
	.long	.L395-.L393
	.long	.L391-.L393
	.long	.L396-.L393
	.long	.L391-.L393
	.long	.L397-.L393
	.long	.L391-.L393
	.long	.L398-.L393
	.text
.L392:
	movl	-8(%rbp), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	je	.L399
	movl	-8(%rbp), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	jne	.L492
.L399:
	movl	$1, %eax
	jmp	.L293
.L398:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L401
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L402
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L403
.L404:
	addl	$13, -12(%rbp)
.L403:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L404
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L493
	movl	$1, %eax
	jmp	.L293
.L402:
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L406
.L407:
	subl	$13, -12(%rbp)
.L406:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L407
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L493
	movl	$1, %eax
	jmp	.L293
.L401:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L493
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L408
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L409
.L410:
	addl	$11, -12(%rbp)
.L409:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L410
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L493
	movl	$1, %eax
	jmp	.L293
.L408:
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L411
.L412:
	subl	$11, -12(%rbp)
.L411:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L412
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L493
	movl	$1, %eax
	jmp	.L293
.L396:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L413
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L414
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L415
.L416:
	addl	$12, -12(%rbp)
.L415:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L416
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L494
	movl	$1, %eax
	jmp	.L293
.L414:
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L418
.L419:
	subl	$12, -12(%rbp)
.L418:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L419
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L494
	movl	$1, %eax
	jmp	.L293
.L413:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L494
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L420
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L421
.L422:
	addl	$1, -12(%rbp)
.L421:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L422
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L494
	movl	$1, %eax
	jmp	.L293
.L420:
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L423
.L424:
	subl	$1, -12(%rbp)
.L423:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L424
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L494
	movl	$1, %eax
	jmp	.L293
.L394:
	movl	$0, -12(%rbp)
	jmp	.L425
.L427:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4096(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	addl	%edx, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L426
	movl	$1, %eax
	jmp	.L293
.L426:
	addl	$1, -12(%rbp)
.L425:
	cmpl	$7, -12(%rbp)
	jle	.L427
	jmp	.L391
.L397:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L428
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L429
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L430
.L431:
	addl	$12, -12(%rbp)
.L430:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L431
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L429:
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L433
.L434:
	subl	$12, -12(%rbp)
.L433:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L434
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L428:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L435
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L436
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L437
.L438:
	addl	$1, -12(%rbp)
.L437:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L438
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L436:
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L439
.L440:
	subl	$1, -12(%rbp)
.L439:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L440
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L435:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L441
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L442
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L443
.L444:
	addl	$13, -12(%rbp)
.L443:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L444
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L442:
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L445
.L446:
	subl	$13, -12(%rbp)
.L445:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L446
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L441:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L495
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L447
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L448
.L449:
	addl	$11, -12(%rbp)
.L448:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L449
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L447:
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L450
.L451:
	subl	$11, -12(%rbp)
.L450:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L451
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L495
	movl	$1, %eax
	jmp	.L293
.L395:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L496
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L453
	movl	$1, %eax
	jmp	.L293
.L453:
	movl	$0, %eax
	jmp	.L293
.L492:
	nop
	jmp	.L391
.L493:
	nop
	jmp	.L391
.L494:
	nop
	jmp	.L391
.L495:
	nop
	jmp	.L391
.L496:
	nop
.L391:
	cmpl	$0, -4(%rbp)
	jne	.L454
	movl	$0, %eax
	jmp	.L293
.L454:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L455
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L456
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L457
.L458:
	subl	$1, -12(%rbp)
.L457:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L458
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L459
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L459:
	movl	$1, %eax
	jmp	.L293
.L456:
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L461
.L462:
	addl	$1, -12(%rbp)
.L461:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L462
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L463
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L463:
	movl	$1, %eax
	jmp	.L293
.L455:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L464
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L465
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L466
.L467:
	subl	$12, -12(%rbp)
.L466:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L467
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L468
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L468:
	movl	$1, %eax
	jmp	.L293
.L465:
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	movl	%eax, -12(%rbp)
	jmp	.L469
.L470:
	addl	$12, -12(%rbp)
.L469:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L470
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	je	.L471
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L471:
	movl	$1, %eax
	jmp	.L293
.L464:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagl(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L472
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L473
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L474
.L475:
	subl	$13, -12(%rbp)
.L474:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L475
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L476
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L476:
	movl	$1, %eax
	jmp	.L293
.L473:
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	movl	%eax, -12(%rbp)
	jmp	.L477
.L478:
	addl	$13, -12(%rbp)
.L477:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L478
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L479
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L479:
	movl	$1, %eax
	jmp	.L293
.L472:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xdiagr(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xdiagr(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L460
	movl	bking_loc(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L480
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L481
.L482:
	subl	$11, -12(%rbp)
.L481:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L482
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L483
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L483:
	movl	$1, %eax
	jmp	.L293
.L480:
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	movl	%eax, -12(%rbp)
	jmp	.L484
.L485:
	addl	$11, -12(%rbp)
.L484:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L485
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	je	.L486
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$9, %eax
	jne	.L460
.L486:
	movl	$1, %eax
	jmp	.L293
.L460:
	movl	$0, %eax
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	f_in_check, .-f_in_check
	.globl	extended_in_check
	.type	extended_in_check, @function
extended_in_check:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L498
	movl	$0, %eax
	jmp	.L499
.L498:
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L500
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$8, %ebx
	je	.L501
	cmpl	$10, %ebx
	jne	.L502
.L501:
	movl	$2, %eax
	jmp	.L499
.L502:
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$8, %ebx
	je	.L503
	cmpl	$10, %ebx
	jne	.L504
.L503:
	movl	$2, %eax
	jmp	.L499
.L504:
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$8, %ebx
	je	.L505
	cmpl	$10, %ebx
	jne	.L506
.L505:
	movl	$2, %eax
	jmp	.L499
.L506:
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$8, %ebx
	je	.L507
	cmpl	$10, %ebx
	jne	.L508
.L507:
	movl	$2, %eax
	jmp	.L499
.L508:
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$12, %ebx
	je	.L509
	cmpl	$10, %ebx
	je	.L509
	cmpl	$2, %ebx
	jne	.L510
.L509:
	movl	$2, %eax
	jmp	.L499
.L510:
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$12, %ebx
	je	.L511
	cmpl	$10, %ebx
	je	.L511
	cmpl	$2, %ebx
	jne	.L512
.L511:
	movl	$2, %eax
	jmp	.L499
.L512:
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$12, %ebx
	je	.L513
	cmpl	$10, %ebx
	jne	.L514
.L513:
	movl	$2, %eax
	jmp	.L499
.L514:
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$12, %ebx
	je	.L515
	cmpl	$10, %ebx
	jne	.L516
.L515:
	movl	$2, %eax
	jmp	.L499
.L516:
	movl	$0, %ebx
	jmp	.L517
.L519:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4265(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	wking_loc(%rip), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$4, %eax
	jne	.L518
	movl	$2, %eax
	jmp	.L499
.L518:
	addl	$1, %ebx
.L517:
	cmpl	$7, %ebx
	jle	.L519
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L520
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	je	.L521
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L522
.L521:
	movl	$2, %eax
	jmp	.L499
.L522:
	movl	$1, %eax
	jmp	.L499
.L500:
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$7, %ebx
	je	.L523
	cmpl	$9, %ebx
	jne	.L524
.L523:
	movl	$2, %eax
	jmp	.L499
.L524:
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$7, %ebx
	je	.L525
	cmpl	$9, %ebx
	jne	.L526
.L525:
	movl	$2, %eax
	jmp	.L499
.L526:
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$7, %ebx
	je	.L527
	cmpl	$9, %ebx
	jne	.L528
.L527:
	movl	$2, %eax
	jmp	.L499
.L528:
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$7, %ebx
	je	.L529
	cmpl	$9, %ebx
	jne	.L530
.L529:
	movl	$2, %eax
	jmp	.L499
.L530:
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$11, %ebx
	je	.L531
	cmpl	$9, %ebx
	je	.L531
	cmpl	$1, %ebx
	jne	.L532
.L531:
	movl	$2, %eax
	jmp	.L499
.L532:
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$11, %ebx
	je	.L533
	cmpl	$9, %ebx
	je	.L533
	cmpl	$1, %ebx
	jne	.L534
.L533:
	movl	$2, %eax
	jmp	.L499
.L534:
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$11, %ebx
	je	.L535
	cmpl	$9, %ebx
	jne	.L536
.L535:
	movl	$2, %eax
	jmp	.L499
.L536:
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %ebx
	cmpl	$11, %ebx
	je	.L537
	cmpl	$9, %ebx
	jne	.L538
.L537:
	movl	$2, %eax
	jmp	.L499
.L538:
	movl	$0, %ebx
	jmp	.L539
.L541:
	movslq	%ebx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	knight_o.4265(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	bking_loc(%rip), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$3, %eax
	jne	.L540
	movl	$2, %eax
	jmp	.L499
.L540:
	addl	$1, %ebx
.L539:
	cmpl	$7, %ebx
	jle	.L541
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L520
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	je	.L542
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L543
.L542:
	movl	$2, %eax
	jmp	.L499
.L543:
	movl	$1, %eax
	jmp	.L499
.L520:
	movl	$0, %eax
.L499:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	extended_in_check, .-extended_in_check
	.globl	make
	.type	make, @function
make:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	20(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	ply(%rip), %eax
	movl	ep_square(%rip), %edx
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	8+path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	$0, ep_square(%rip)
	movl	ply(%rip), %eax
	movl	fifty(%rip), %edx
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	12+path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L545
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L545
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L546
.L545:
	movl	$0, fifty(%rip)
	jmp	.L547
.L546:
	movl	fifty(%rip), %eax
	addl	$1, %eax
	movl	%eax, fifty(%rip)
.L547:
	cmpl	$0, -36(%rbp)
	jne	.L548
	movl	piece_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	$1, -44(%rbp)
	jmp	.L549
.L550:
	addl	$1, -44(%rbp)
.L549:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L550
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pieces(%rip), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %ecx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	4+path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	DropremoveHolding@PLT
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L548:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	4+path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pieces(%rip), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	cmpl	$0, -40(%rbp)
	jne	.L572
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L573
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L555
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	jne	.L556
.L555:
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+path_x(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L557
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	SwitchPromoted@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	addHolding@PLT
	jmp	.L556
.L557:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	SwitchColor@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	addHolding@PLT
.L556:
	movl	Material(%rip), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	(%rcx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	piece_count(%rip), %eax
	subl	$1, %eax
	movl	%eax, piece_count(%rip)
	jmp	.L552
.L572:
	nop
	jmp	.L552
.L573:
	nop
.L552:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L558
	cmpl	$0, -24(%rbp)
	je	.L559
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	4+material(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L559:
	cmpl	$0, -40(%rbp)
	je	.L560
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	8+material(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	$0, %esi
	movl	$1, %edi
	call	addHolding@PLT
	movl	piece_count(%rip), %eax
	subl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	moved(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L560:
	movl	-36(%rbp), %eax
	addl	$24, %eax
	cmpl	%eax, -32(%rbp)
	jne	.L561
	movl	-36(%rbp), %eax
	addl	$12, %eax
	movl	%eax, ep_square(%rip)
.L561:
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L558:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L562
	cmpl	$0, -24(%rbp)
	je	.L563
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	8+material(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L563:
	cmpl	$0, -40(%rbp)
	je	.L564
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	4+material(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	$1, %esi
	movl	$2, %edi
	call	addHolding@PLT
	movl	piece_count(%rip), %eax
	subl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	moved(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	movl	ply(%rip), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	path_x(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L564:
	movl	-36(%rbp), %eax
	subl	$24, %eax
	cmpl	%eax, -32(%rbp)
	jne	.L565
	movl	-36(%rbp), %eax
	subl	$12, %eax
	movl	%eax, ep_square(%rip)
.L565:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L562:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L566
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	je	.L566
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L566:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L567
	movl	-32(%rbp), %eax
	movl	%eax, wking_loc(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$5, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$720, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$720, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	cmpl	$1, -20(%rbp)
	jne	.L568
	movl	$13, 132+board(%rip)
	movl	$7, 124+board(%rip)
	movl	132+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 132+moved(%rip)
	movl	124+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 124+moved(%rip)
	movl	$1, white_castled(%rip)
	movl	132+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$31, (%rdx,%rax)
	movl	132+squares(%rip), %eax
	movl	%eax, 124+squares(%rip)
	movl	$0, 132+squares(%rip)
	movl	4164+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	4156+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L568:
	cmpl	$2, -20(%rbp)
	jne	.L569
	movl	$13, 104+board(%rip)
	movl	$7, 116+board(%rip)
	movl	104+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 104+moved(%rip)
	movl	116+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 116+moved(%rip)
	movl	$2, white_castled(%rip)
	movl	104+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$29, (%rdx,%rax)
	movl	104+squares(%rip), %eax
	movl	%eax, 116+squares(%rip)
	movl	$0, 104+squares(%rip)
	movl	4136+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	4148+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L569:
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L567:
	movl	-32(%rbp), %eax
	movl	%eax, bking_loc(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$6, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$864, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$864, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	cmpl	$3, -20(%rbp)
	jne	.L570
	movl	$13, 468+board(%rip)
	movl	$8, 460+board(%rip)
	movl	468+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 468+moved(%rip)
	movl	460+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 460+moved(%rip)
	movl	$3, black_castled(%rip)
	movl	468+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$115, (%rdx,%rax)
	movl	468+squares(%rip), %eax
	movl	%eax, 460+squares(%rip)
	movl	$0, 468+squares(%rip)
	movl	5076+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	5068+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L570:
	cmpl	$4, -20(%rbp)
	jne	.L571
	movl	$13, 440+board(%rip)
	movl	$8, 452+board(%rip)
	movl	440+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 440+moved(%rip)
	movl	452+moved(%rip), %eax
	addl	$1, %eax
	movl	%eax, 452+moved(%rip)
	movl	$4, black_castled(%rip)
	movl	440+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$113, (%rdx,%rax)
	movl	440+squares(%rip), %eax
	movl	%eax, 452+squares(%rip)
	movl	$0, 440+squares(%rip)
	movl	5048+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	5060+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	jmp	.L544
.L571:
	movl	ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, ply(%rip)
	nop
.L544:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	make, .-make
	.globl	add_move
	.type	add_move, @function
add_move:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	gfrom(%rip), %eax
	movl	%eax, (%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$13, 8(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 16(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, 12(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 20(%rax)
	movl	numb_moves(%rip), %eax
	addl	$1, %eax
	movl	%eax, numb_moves(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	add_move, .-add_move
	.globl	add_capture
	.type	add_capture, @function
add_capture:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L577
	cmpl	$5, -8(%rbp)
	je	.L578
	cmpl	$6, -8(%rbp)
	jne	.L577
.L578:
	movl	$1, kingcap(%rip)
	jmp	.L576
.L577:
	cmpl	$13, -8(%rbp)
	je	.L580
	movl	$1, fcaptures(%rip)
.L580:
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	gfrom(%rip), %eax
	movl	%eax, (%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 16(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, 12(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, 20(%rdx)
	movl	numb_moves(%rip), %eax
	addl	$1, %eax
	movl	%eax, numb_moves(%rip)
	nop
.L576:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	add_capture, .-add_capture
	.globl	try_drop
	.type	try_drop, @function
try_drop:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	gfrom(%rip), %eax
	movl	%eax, 4(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$13, 8(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 16(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 12(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 20(%rax)
	movl	numb_moves(%rip), %eax
	addl	$1, %eax
	movl	%eax, numb_moves(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	try_drop, .-try_drop
	.globl	push_king_castle
	.type	push_king_castle, @function
push_king_castle:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	gfrom(%rip), %eax
	movl	%eax, (%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$13, 8(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, 16(%rdx)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 12(%rax)
	movq	genfor(%rip), %rcx
	movl	numb_moves(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, 20(%rax)
	movl	numb_moves(%rip), %eax
	addl	$1, %eax
	movl	%eax, numb_moves(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	push_king_castle, .-push_king_castle
	.globl	push_king
	.type	push_king, @function
push_king:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L591
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L588
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L592
.L588:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L589
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	add_move
	jmp	.L585
.L589:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	(%rcx,%rax), %eax
	xorl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L593
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	-4(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	add_capture
	jmp	.L585
.L591:
	nop
	jmp	.L585
.L592:
	nop
	jmp	.L585
.L593:
	nop
.L585:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	push_king, .-push_king
	.globl	push_knighT
	.type	push_knighT, @function
push_knighT:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L595
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L599
.L595:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L597
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	add_move
	jmp	.L594
.L597:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	(%rcx,%rax), %eax
	xorl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L600
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	-4(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	add_capture
	jmp	.L594
.L599:
	nop
	jmp	.L594
.L600:
	nop
.L594:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	push_knighT, .-push_knighT
	.globl	push_pawn
	.type	push_pawn, @function
push_pawn:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L602
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L603
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	add_capture
	jmp	.L601
.L603:
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	add_capture
	jmp	.L601
.L602:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L605
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	jne	.L605
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$9, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$7, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$11, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$3, %edx
	movl	%eax, %edi
	call	add_capture
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L609
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$5, %edx
	movl	%eax, %edi
	call	add_capture
	jmp	.L609
.L605:
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L607
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L607
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$10, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$8, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$12, %edx
	movl	%eax, %edi
	call	add_capture
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$4, %edx
	movl	%eax, %edi
	call	add_capture
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L610
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$6, %edx
	movl	%eax, %edi
	call	add_capture
	jmp	.L610
.L607:
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	add_capture
	nop
	jmp	.L601
.L609:
	nop
	jmp	.L601
.L610:
	nop
.L601:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	push_pawn, .-push_pawn
	.globl	push_pawn_simple
	.type	push_pawn_simple, @function
push_pawn_simple:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	add_move
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	push_pawn_simple, .-push_pawn_simple
	.globl	push_slidE
	.type	push_slidE, @function
push_slidE:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	gfrom(%rip), %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	gfrom(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
.L619:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L614
	movl	captures(%rip), %eax
	testl	%eax, %eax
	jne	.L615
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	add_move
.L615:
	movl	-8(%rbp), %eax
	addl	%eax, -20(%rbp)
	jmp	.L621
.L614:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	cmpl	%eax, -4(%rbp)
	je	.L622
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	add_capture
	jmp	.L618
.L621:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L619
	jmp	.L618
.L622:
	nop
.L618:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	push_slidE, .-push_slidE
	.globl	unmake
	.type	unmake, @function
unmake:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	20(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	ply(%rip), %eax
	subl	$1, %eax
	movl	%eax, ply(%rip)
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+path_x(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, ep_square(%rip)
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+path_x(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, fifty(%rip)
	cmpl	$0, -36(%rbp)
	jne	.L624
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	ply(%rip), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movslq	%edx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+path_x(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	is_promoted(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	piece_count(%rip), %eax
	subl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	DropaddHolding@PLT
	movl	Material(%rip), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	jmp	.L623
.L624:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	path_x(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pieces(%rip), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pieces(%rip), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movslq	%edx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+path_x(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	is_promoted(%rip), %rax
	movl	%edx, (%rcx,%rax)
	cmpl	$0, -40(%rbp)
	jne	.L644
	movl	-28(%rbp), %eax
	cmpl	$13, %eax
	je	.L645
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L629
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	jne	.L630
.L629:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L631
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	SwitchPromoted@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	removeHolding@PLT
	jmp	.L630
.L631:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	SwitchColor@PLT
	movl	%ebx, %esi
	movl	%eax, %edi
	call	removeHolding@PLT
.L630:
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	material(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	piece_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, piece_count(%rip)
	jmp	.L626
.L644:
	nop
	jmp	.L626
.L645:
	nop
.L626:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L632
	cmpl	$0, -40(%rbp)
	je	.L633
	movl	-32(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	8+material(%rip), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	$0, %esi
	movl	$1, %edi
	call	removeHolding@PLT
	movl	piece_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	subl	$12, %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	moved(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	-1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	movl	-32(%rbp), %edx
	leal	-12(%rdx), %ecx
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	path_x(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	path_x(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-32(%rbp), %edx
	leal	-12(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	jmp	.L623
.L633:
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	jmp	.L623
.L632:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L634
	cmpl	$0, -40(%rbp)
	je	.L635
	movl	-32(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	4+material(%rip), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	$1, %esi
	movl	$2, %edi
	call	removeHolding@PLT
	movl	piece_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, piece_count(%rip)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	moved(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	leal	-1(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	ply(%rip), %eax
	movl	-32(%rbp), %edx
	leal	12(%rdx), %ecx
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	path_x(%rip), %rax
	movl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	ply(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	path_x(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-32(%rbp), %edx
	leal	12(%rdx), %ecx
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
	jmp	.L623
.L635:
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	jmp	.L623
.L634:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	je	.L636
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$6, %eax
	je	.L636
	cmpl	$0, -24(%rbp)
	jne	.L636
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	jmp	.L623
.L636:
	cmpl	$0, -24(%rbp)
	je	.L637
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L638
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$144, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	4+material(%rip), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	jmp	.L623
.L638:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$288, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	Material(%rip), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	material(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, Material(%rip)
	movl	8+material(%rip), %edx
	movl	Material(%rip), %eax
	addl	%edx, %eax
	movl	%eax, Material(%rip)
	jmp	.L623
.L637:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$5, %eax
	jne	.L639
	movl	-36(%rbp), %eax
	movl	%eax, wking_loc(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$5, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$720, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$720, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	cmpl	$1, -20(%rbp)
	jne	.L640
	movl	$7, 132+board(%rip)
	movl	$13, 124+board(%rip)
	movl	132+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 132+moved(%rip)
	movl	124+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 124+moved(%rip)
	movl	$0, white_castled(%rip)
	movl	124+squares(%rip), %eax
	movl	%eax, 132+squares(%rip)
	movl	$0, 124+squares(%rip)
	movl	132+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$33, (%rdx,%rax)
	movl	4164+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	4156+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	jmp	.L623
.L640:
	cmpl	$2, -20(%rbp)
	jne	.L646
	movl	$7, 104+board(%rip)
	movl	$13, 116+board(%rip)
	movl	104+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 104+moved(%rip)
	movl	116+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 116+moved(%rip)
	movl	$0, white_castled(%rip)
	movl	116+squares(%rip), %eax
	movl	%eax, 104+squares(%rip)
	movl	$0, 116+squares(%rip)
	movl	104+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$26, (%rdx,%rax)
	movl	4148+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	4136+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	jmp	.L623
.L639:
	movl	-36(%rbp), %eax
	movl	%eax, bking_loc(%rip)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$6, (%rdx,%rax)
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	white_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, white_to_move(%rip)
	movl	-36(%rbp), %eax
	cltq
	addq	$864, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	-32(%rbp), %eax
	cltq
	addq	$864, %rax
	leaq	0(,%rax,4), %rdx
	leaq	zobrist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	cmpl	$3, -20(%rbp)
	jne	.L642
	movl	$8, 468+board(%rip)
	movl	$13, 460+board(%rip)
	movl	468+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 468+moved(%rip)
	movl	460+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 460+moved(%rip)
	movl	$0, black_castled(%rip)
	movl	460+squares(%rip), %eax
	movl	%eax, 468+squares(%rip)
	movl	$0, 460+squares(%rip)
	movl	468+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$117, (%rdx,%rax)
	movl	5076+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	5068+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	jmp	.L623
.L642:
	cmpl	$4, -20(%rbp)
	jne	.L647
	movl	$8, 440+board(%rip)
	movl	$13, 452+board(%rip)
	movl	440+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 440+moved(%rip)
	movl	452+moved(%rip), %eax
	subl	$1, %eax
	movl	%eax, 452+moved(%rip)
	movl	$0, black_castled(%rip)
	movl	452+squares(%rip), %eax
	movl	%eax, 440+squares(%rip)
	movl	$0, 452+squares(%rip)
	movl	440+squares(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	$110, (%rdx,%rax)
	movl	5048+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	movl	5060+zobrist(%rip), %edx
	movl	hash(%rip), %eax
	xorl	%edx, %eax
	movl	%eax, hash(%rip)
	jmp	.L623
.L646:
	nop
	jmp	.L623
.L647:
	nop
.L623:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	unmake, .-unmake
	.section	.rodata
	.align 32
	.type	knight_o.4096, @object
	.size	knight_o.4096, 32
knight_o.4096:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.align 32
	.type	knight_o.4265, @object
	.size	knight_o.4265, 32
knight_o.4265:
	.long	10
	.long	-10
	.long	14
	.long	-14
	.long	23
	.long	-23
	.long	25
	.long	-25
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
