	.file	"selex.c"
	.text
	.data
	.type	commentsyms, @object
	.size	commentsyms, 3
commentsyms:
	.string	"%#"
	.section	.rodata
	.align 8
.LC0:
	.string	"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file"
.LC1:
	.string	"#=CS"
.LC2:
	.string	"#=RF"
.LC3:
	.string	" \t\n"
.LC4:
	.string	"selex.c"
.LC5:
	.string	"#=SS"
.LC6:
	.string	"#=SA"
.LC7:
	.string	"Parse error in ReadSELEX()"
.LC9:
	.string	"#=AU"
.LC10:
	.string	"\n"
.LC11:
	.string	"#=ID"
.LC12:
	.string	"#=AC"
.LC13:
	.string	"#=DE"
.LC14:
	.string	"#=GA"
	.align 8
.LC15:
	.string	"Parse error in #=GA line in ReadSELEX()"
.LC16:
	.string	"#=TC"
	.align 8
.LC17:
	.string	"Parse error in #=TC line in ReadSELEX()"
.LC18:
	.string	"#=NC"
	.align 8
.LC19:
	.string	"Parse error in #=NC line in ReadSELEX()"
.LC20:
	.string	"#=SQ"
	.align 8
.LC21:
	.string	"Parse error in #=SQ line in ReadSELEX()"
	.align 8
.LC22:
	.string	"Parse error in #=SQ line in ReadSELEX(): weight is not a number"
	.align 8
.LC23:
	.string	"Parse error in #=SQ line in ReadSELEX(): incomplete line"
.LC24:
	.string	".:"
.LC25:
	.string	":\t "
	.align 8
.LC26:
	.string	"Parse error in #=CS line in ReadSELEX()"
	.align 8
.LC27:
	.string	"Parse error in #=RF line in ReadSELEX()"
	.align 8
.LC28:
	.string	"Parse error in #=SS line in ReadSELEX()"
	.align 8
.LC29:
	.string	"Parse error in #=SA line in ReadSELEX()"
.LC30:
	.string	"#="
	.align 8
.LC31:
	.string	"Parse error in alignment line in ReadSELEX()"
	.align 8
.LC32:
	.string	"sequences may be in different orders in blocks of %s?"
	.text
	.globl	ReadSELEX
	.type	ReadSELEX, @function
ReadSELEX:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$8464, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8472(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -8452(%rbp)
	movq	$0, -8392(%rbp)
	movl	$0, -8408(%rbp)
	movl	$0, -8404(%rbp)
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L119
.L2:
	movq	-8472(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L4
	movq	-8472(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L5
.L4:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L5:
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8368(%rbp)
	leaq	-8336(%rbp), %rax
	movq	%rax, -8360(%rbp)
	movq	-8360(%rbp), %rax
	movq	%rax, %rdi
	call	InitAinfo@PLT
.L9:
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L6
	movl	$2, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L119
.L6:
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movzbl	-8224(%rbp), %eax
	cmpb	$35, %al
	jne	.L7
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$1, -8408(%rbp)
	jmp	.L7
.L8:
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$1, -8404(%rbp)
.L7:
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	je	.L9
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L9
	movl	$0, -8448(%rbp)
	movl	$0, -8424(%rbp)
	jmp	.L10
.L34:
	cmpl	$0, -8448(%rbp)
	jne	.L11
	movl	$8, %edx
	movl	$151, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8392(%rbp)
	jmp	.L12
.L11:
	movl	-8448(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$153, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -8392(%rbp)
.L12:
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	$4097, (%rax)
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, 4(%rax)
	movl	$0, -8444(%rbp)
	jmp	.L13
.L29:
	cmpl	$0, -8448(%rbp)
	jne	.L14
	cmpl	$0, -8444(%rbp)
	jne	.L15
	movl	$360, %edx
	movl	$164, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L16
.L15:
	movl	-8444(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	$360, %rax, %rdx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$166, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 40(%rax)
.L16:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8444(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8444(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8384(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	jmp	.L17
.L14:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8444(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-8384(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, -8424(%rbp)
.L17:
	addl	$1, -8444(%rbp)
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L28
	movq	-8376(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	subq	%rax, %rdx
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jge	.L19
	movq	-8376(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	subq	%rax, %rdx
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, (%rax)
.L19:
	leaq	-8224(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	leaq	-8224(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8376(%rbp)
	jmp	.L20
.L21:
	subq	$1, -8376(%rbp)
.L20:
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L21
	movq	-8376(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	subq	%rax, %rdx
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L28
	movq	-8376(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	subq	%rax, %rdx
	movl	-8448(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	%edx, 4(%rax)
.L28:
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L22
	movq	$0, -8384(%rbp)
	jmp	.L13
.L22:
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L23
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8444(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	subq	$360, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8444(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$360, %rcx, %rcx
	subq	$360, %rcx
	addq	%rcx, %rax
	orb	$2, %dh
	movl	%edx, (%rax)
	jmp	.L24
.L23:
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L25
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8444(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	subq	$360, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8444(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$360, %rcx, %rcx
	subq	$360, %rcx
	addq	%rcx, %rax
	orb	$4, %dh
	movl	%edx, (%rax)
	jmp	.L24
.L25:
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$1, -8408(%rbp)
	jmp	.L24
.L26:
	leaq	-8224(%rbp), %rax
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$1, -8404(%rbp)
.L24:
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	jne	.L27
	jmp	.L13
.L27:
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L28
.L13:
	cmpq	$0, -8384(%rbp)
	jne	.L29
	cmpl	$0, -8448(%rbp)
	jne	.L30
	movl	-8444(%rbp), %eax
	movl	%eax, -8452(%rbp)
	jmp	.L31
.L30:
	movl	-8444(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	je	.L31
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L31:
	addl	$1, -8448(%rbp)
.L33:
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L32
	movq	$0, -8384(%rbp)
	jmp	.L10
.L32:
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	je	.L33
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L33
.L10:
	movq	-8368(%rbp), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L34
	movl	$0, -8428(%rbp)
	movl	$0, -8440(%rbp)
	jmp	.L35
.L36:
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	addl	%eax, -8428(%rbp)
	addl	$1, -8440(%rbp)
.L35:
	movl	-8440(%rbp), %eax
	cmpl	-8448(%rbp), %eax
	jl	.L36
	movq	-8368(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	-8452(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$247, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8352(%rbp)
	cmpl	$0, -8408(%rbp)
	je	.L37
	movl	-8428(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$249, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 24(%rax)
.L37:
	cmpl	$0, -8404(%rbp)
	je	.L38
	movl	-8428(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdx
	movl	$251, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 32(%rax)
.L38:
	movl	$0, -8436(%rbp)
	jmp	.L39
.L42:
	movl	-8428(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-8436(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8352(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$257, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8436(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L40
	movl	-8428(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	-8360(%rbp), %rdx
	movq	40(%rdx), %rcx
	movl	-8436(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$259, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, 344(%rbx)
.L40:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8436(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L41
	movl	-8428(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	-8360(%rbp), %rdx
	movq	40(%rdx), %rcx
	movl	-8436(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$261, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, 352(%rbx)
.L41:
	addl	$1, -8436(%rbp)
.L39:
	movl	-8436(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.L42
	movq	-8360(%rbp), %rax
	movl	-8428(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8360(%rbp), %rax
	movl	-8452(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-8452(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$266, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8360(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8452(%rbp), %edx
	movss	.LC8(%rip), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
	movl	$0, -8420(%rbp)
.L73:
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L43
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L43:
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	je	.L121
	movq	-8384(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L46
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L45
.L46:
	movq	-8384(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L47
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L45
.L47:
	movq	-8384(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L48
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L48
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L45
.L48:
	movq	-8384(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L49
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L49
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	Strdup@PLT
	movq	%rax, %rdx
	movq	-8360(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L45
.L49:
	movq	-8384(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L50
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L51
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L51:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 96(%rax)
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L52
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L52:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 100(%rax)
	movq	-8360(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8360(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L50:
	movq	-8384(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L53
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L54
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L54:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 80(%rax)
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L55
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L55:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 84(%rax)
	movq	-8360(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8360(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L53:
	movq	-8384(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L56
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L57
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L57:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 88(%rax)
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L58
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L58:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-8360(%rbp), %rax
	movss	%xmm0, 92(%rax)
	movq	-8360(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8360(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L56:
	movq	-8384(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L59
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L60
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L60:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-8376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, -8424(%rbp)
.L61:
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L62
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L62:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	IsReal@PLT
	testl	%eax, %eax
	jne	.L63
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L63:
	movq	-8376(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-8360(%rbp), %rax
	movq	16(%rax), %rax
	movl	-8420(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L64
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L64:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	leaq	.LC3(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L65
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L65:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	leaq	.LC24(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L66
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L66:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	leaq	.LC24(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L67
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L67:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	leaq	.LC25(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	jne	.L68
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L68:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8376(%rbp)
	cmpq	$0, -8376(%rbp)
	je	.L69
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8420(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8376(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SetSeqinfoString@PLT
.L69:
	addl	$1, -8420(%rbp)
	jmp	.L73
.L59:
	movq	-8384(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L122
	movq	-8384(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L123
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L124
	jmp	.L73
.L121:
	nop
.L45:
	jmp	.L73
.L122:
	nop
	jmp	.L71
.L123:
	nop
	jmp	.L71
.L124:
	nop
.L71:
	movl	$0, -8416(%rbp)
	movl	$0, -8440(%rbp)
	jmp	.L74
.L98:
	movl	$0, -8432(%rbp)
	jmp	.L75
.L91:
	movq	-8384(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L76
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r12d
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, %edi
	movq	-8360(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-8224(%rbp), %rdx
	movl	-8416(%rbp), %esi
	subq	$8, %rsp
	pushq	$46
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	copy_alignment_line
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L90
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L90
.L76:
	movq	-8384(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L79
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r12d
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, %edi
	movq	-8360(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-8224(%rbp), %rdx
	movl	-8416(%rbp), %esi
	subq	$8, %rsp
	pushq	$46
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	copy_alignment_line
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L90
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L90
.L79:
	movq	-8384(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L81
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r12d
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, %edi
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8432(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	subq	$360, %rdx
	addq	%rdx, %rax
	movq	344(%rax), %rax
	leaq	-8224(%rbp), %rdx
	movl	-8416(%rbp), %esi
	subq	$8, %rsp
	pushq	$46
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	copy_alignment_line
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L90
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L90
.L81:
	movq	-8384(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L83
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r12d
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, %edi
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rax
	movl	-8432(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$360, %rdx, %rdx
	subq	$360, %rdx
	addq	%rdx, %rax
	movq	352(%rax), %rax
	leaq	-8224(%rbp), %rdx
	movl	-8416(%rbp), %esi
	subq	$8, %rsp
	pushq	$46
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	copy_alignment_line
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L90
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L90
.L83:
	movq	-8384(%rbp), %rax
	movl	$2, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L90
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %r12d
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movq	-8384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subl	$1, %eax
	movl	%eax, %edi
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-8224(%rbp), %rdx
	movl	-8416(%rbp), %esi
	subq	$8, %rsp
	pushq	$46
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	copy_alignment_line
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L85
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L85:
	addl	$1, -8432(%rbp)
.L90:
	movq	$0, -8384(%rbp)
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L86
	jmp	.L75
.L86:
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	jne	.L87
	jmp	.L75
.L87:
	leaq	-8224(%rbp), %rax
	movl	$2, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L88
	jmp	.L75
.L88:
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L90
.L75:
	cmpq	$0, -8384(%rbp)
	jne	.L91
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8392(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movl	-8440(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8392(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	addl	%eax, -8416(%rbp)
.L97:
	movq	-8368(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L125
	leaq	-8224(%rbp), %rdx
	leaq	-4128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	-4128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8384(%rbp)
	cmpq	$0, -8384(%rbp)
	je	.L126
	leaq	-8224(%rbp), %rax
	movl	$2, %edx
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L127
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L128
	jmp	.L97
.L126:
	nop
	jmp	.L97
.L125:
	nop
	jmp	.L93
.L127:
	nop
	jmp	.L93
.L128:
	nop
.L93:
	addl	$1, -8440(%rbp)
.L74:
	movl	-8440(%rbp), %eax
	cmpl	-8448(%rbp), %eax
	jl	.L98
	movl	$0, -8432(%rbp)
	jmp	.L99
.L108:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L100
	movl	$0, -8396(%rbp)
	movl	-8396(%rbp), %eax
	movl	%eax, -8400(%rbp)
	jmp	.L101
.L103:
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L102
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L102
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L102
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L102
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L102
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	344(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	344(%rax), %rdx
	movl	-8396(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -8396(%rbp)
.L102:
	addl	$1, -8400(%rbp)
.L101:
	movl	-8400(%rbp), %eax
	cmpl	-8428(%rbp), %eax
	jl	.L103
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	344(%rax), %rdx
	movl	-8396(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L100:
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L104
	movl	$0, -8396(%rbp)
	movl	-8396(%rbp), %eax
	movl	%eax, -8400(%rbp)
	jmp	.L105
.L107:
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L106
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L106
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L106
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L106
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L106
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	352(%rax), %rdx
	movl	-8400(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	352(%rax), %rdx
	movl	-8396(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -8396(%rbp)
.L106:
	addl	$1, -8400(%rbp)
.L105:
	movl	-8400(%rbp), %eax
	cmpl	-8428(%rbp), %eax
	jl	.L107
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	352(%rax), %rdx
	movl	-8396(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L104:
	addl	$1, -8432(%rbp)
.L99:
	movl	-8432(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.L108
	movq	-8360(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-8360(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-8428(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L109:
	movq	-8360(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-8360(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-8428(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L110:
	movl	$0, -8432(%rbp)
	jmp	.L111
.L112:
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8428(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -8432(%rbp)
.L111:
	movl	-8432(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.L112
	movl	$0, -8432(%rbp)
	jmp	.L113
.L117:
	movl	$0, -8412(%rbp)
	movl	-8432(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8352(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8376(%rbp)
	jmp	.L114
.L116:
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L115
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L115
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L115
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L115
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L115
	addl	$1, -8412(%rbp)
.L115:
	addq	$1, -8376(%rbp)
.L114:
	movq	-8376(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L116
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rax, %rdx
	movl	-8412(%rbp), %eax
	movl	%eax, 324(%rdx)
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-8360(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-8432(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rcx, %rax
	orl	$64, %edx
	movl	%edx, (%rax)
	addl	$1, -8432(%rbp)
.L113:
	movl	-8432(%rbp), %eax
	cmpl	-8452(%rbp), %eax
	jl	.L117
	movq	-8392(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpl	$0, -8424(%rbp)
	je	.L118
	movq	-8472(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
.L118:
	movq	-8360(%rbp), %rdx
	movq	-8352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAFromAINFO@PLT
	movq	%rax, -8344(%rbp)
	movq	-8344(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-8360(%rbp), %rdx
	movq	-8352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FreeAlignment@PLT
	movq	-8344(%rbp), %rax
.L119:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L120
	call	__stack_chk_fail@PLT
.L120:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadSELEX, .-ReadSELEX
	.globl	WriteSELEX
	.type	WriteSELEX, @function
WriteSELEX:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	actually_write_selex
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WriteSELEX, .-WriteSELEX
	.globl	WriteSELEXOneBlock
	.type	WriteSELEXOneBlock, @function
WriteSELEXOneBlock:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	actually_write_selex
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	WriteSELEXOneBlock, .-WriteSELEXOneBlock
	.section	.rodata
.LC33:
	.string	"# %s\n"
.LC34:
	.string	"#=ID %s\n"
.LC35:
	.string	"#=AC %s\n"
.LC36:
	.string	"#=DE %s\n"
.LC37:
	.string	"#=AU %s\n"
.LC38:
	.string	"#=GA %.1f %.1f\n"
.LC39:
	.string	"#=GA %.1f\n"
.LC40:
	.string	"#=NC %.1f %.1f\n"
.LC41:
	.string	"#=NC %.1f\n"
.LC42:
	.string	"#=TC %.1f %.1f\n"
.LC43:
	.string	"#=TC %.1f\n"
.LC44:
	.string	"-"
	.align 8
.LC45:
	.string	"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\n"
.LC46:
	.string	"%-*.*s %s\n"
	.text
	.type	actually_write_selex, @function
actually_write_selex:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -12(%rbp)
	movl	-52(%rbp), %eax
	addl	$101, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L132
.L134:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L133
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.L133:
	addl	$1, -24(%rbp)
.L132:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L134
	cmpl	$5, -20(%rbp)
	jg	.L135
	movl	$6, -20(%rbp)
.L135:
	movl	$0, -24(%rbp)
	jmp	.L136
.L137:
	movq	-48(%rbp), %rax
	movq	176(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC33(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -24(%rbp)
.L136:
	movq	-48(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L137
	movq	-48(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	jle	.L138
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L138:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L139:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L140:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L141:
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-48(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L142:
	movq	-48(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movq	-48(%rbp), %rax
	movl	164(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movq	-48(%rbp), %rax
	movss	140(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movss	136(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L144
.L143:
	movq	-48(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	je	.L144
	movq	-48(%rbp), %rax
	movss	136(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L144:
	movq	-48(%rbp), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	je	.L145
	movq	-48(%rbp), %rax
	movl	172(%rax), %eax
	testl	%eax, %eax
	je	.L145
	movq	-48(%rbp), %rax
	movss	148(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movss	144(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L146
.L145:
	movq	-48(%rbp), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	je	.L146
	movq	-48(%rbp), %rax
	movss	144(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L146:
	movq	-48(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L147
	movq	-48(%rbp), %rax
	movl	156(%rax), %eax
	testl	%eax, %eax
	je	.L147
	movq	-48(%rbp), %rax
	movss	132(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movss	128(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	jmp	.L148
.L147:
	movq	-48(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	je	.L148
	movq	-48(%rbp), %rax
	movss	128(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
.L148:
	movl	$0, -24(%rbp)
	jmp	.L149
.L154:
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	jmp	.L151
.L150:
	leaq	.LC44(%rip), %rdx
.L151:
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	jmp	.L153
.L152:
	leaq	.LC44(%rip), %rax
.L153:
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rcx
	movss	(%rcx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %r8
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rdx
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	%rax
	leaq	.LC44(%rip), %r9
	movl	%esi, %edx
	leaq	.LC45(%rip), %rsi
	movl	$1, %eax
	call	fprintf@PLT
	addq	$48, %rsp
	addl	$1, -24(%rbp)
.L149:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L154
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	$0, -16(%rbp)
	jmp	.L155
.L163:
	cmpl	$0, -16(%rbp)
	jle	.L156
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L156:
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC1(%rip), %r8
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L157:
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	88(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC2(%rip), %r8
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L158:
	movl	$0, -24(%rbp)
	jmp	.L159
.L162:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC5(%rip), %r8
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L160:
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	leaq	.LC6(%rip), %r8
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L161:
	addl	$1, -24(%rbp)
.L159:
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L162
	movl	-52(%rbp), %eax
	addl	%eax, -16(%rbp)
.L155:
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L163
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	actually_write_selex, .-actually_write_selex
	.section	.rodata
	.align 8
.LC47:
	.string	"TAB characters will corrupt a SELEX alignment! Please remove them first."
	.text
	.type	copy_alignment_line, @function
copy_alignment_line:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	16(%rbp), %eax
	movb	%al, -68(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L165
.L167:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L166
	addq	$1, -8(%rbp)
.L166:
	addl	$1, -20(%rbp)
.L165:
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L167
	movl	-60(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L168
.L177:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L169
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	Warn@PLT
	movl	$0, %eax
	jmp	.L170
.L169:
	movl	-48(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L171
	movq	-16(%rbp), %rax
	movzbl	-68(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L172
.L171:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L173
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L174
.L173:
	movq	-16(%rbp), %rax
	movzbl	-68(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L172
.L174:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L175
	movq	-16(%rbp), %rax
	movzbl	-68(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L172
.L175:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L172:
	addq	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L176
	addq	$1, -8(%rbp)
.L176:
	addl	$1, -20(%rbp)
.L168:
	movl	-20(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L177
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	copy_alignment_line, .-copy_alignment_line
	.globl	DealignAseqs
	.type	DealignAseqs, @function
DealignAseqs:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$738, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L179
.L183:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdx
	movl	$744, %esi
	leaq	.LC4(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L180
.L182:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L181
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L181
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L181
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L181
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L181
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -36(%rbp)
.L181:
	addl	$1, -32(%rbp)
.L180:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L182
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -40(%rbp)
.L179:
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L183
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DealignAseqs, .-DealignAseqs
	.section	.rodata
.LC48:
	.string	"r"
	.text
	.globl	IsSELEXFormat
	.type	IsSELEXFormat, @function
IsSELEXFormat:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4160, %rsp
	movq	%rdi, -4152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-4152(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -4128(%rbp)
	cmpq	$0, -4128(%rbp)
	jne	.L186
	movl	$4, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L205
.L186:
	movl	$0, -4132(%rbp)
	jmp	.L188
.L204:
	addl	$1, -4132(%rbp)
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L207
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L209
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L210
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L211
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L212
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L213
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L214
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L216
	leaq	-4112(%rbp), %rax
	movl	$4, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L217
	movzbl	-4112(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	commentsyms(%rip), %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L201
	jmp	.L188
.L201:
	leaq	-4112(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L202
	jmp	.L188
.L202:
	leaq	.LC10(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -4120(%rbp)
	cmpq	$0, -4120(%rbp)
	jne	.L203
	jmp	.L188
.L203:
	movq	-4120(%rbp), %rax
	movq	%rax, %rdi
	call	Seqtype@PLT
	testl	%eax, %eax
	jne	.L188
	movq	-4128(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	jmp	.L205
.L188:
	cmpl	$499, -4132(%rbp)
	jg	.L218
	movq	-4128(%rbp), %rdx
	leaq	-4112(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L204
	jmp	.L218
.L207:
	nop
	jmp	.L190
.L208:
	nop
	jmp	.L190
.L209:
	nop
	jmp	.L190
.L210:
	nop
	jmp	.L190
.L211:
	nop
	jmp	.L190
.L212:
	nop
	jmp	.L190
.L213:
	nop
	jmp	.L190
.L214:
	nop
	jmp	.L190
.L215:
	nop
	jmp	.L190
.L216:
	nop
	jmp	.L190
.L217:
	nop
	jmp	.L190
.L218:
	nop
.L190:
	movq	-4128(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$1, %eax
.L205:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	IsSELEXFormat, .-IsSELEXFormat
	.section	.rodata
	.align 4
.LC8:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
