	.file	"msf.c"
	.text
	.section	.rodata
.LC0:
	.string	"!!AA_MULTIPLE_ALIGNMENT"
.LC1:
	.string	"!!NA_MULTIPLE_ALIGNMENT"
.LC2:
	.string	".."
.LC3:
	.string	"MSF:"
	.align 8
.LC4:
	.string	"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\\.\\."
.LC5:
	.string	"Name:"
.LC6:
	.string	" \t"
.LC7:
	.string	"Weight:"
	.align 8
.LC8:
	.string	"No Weight: on line %d for %s in name section of MSF file %s\n"
.LC9:
	.string	"//"
	.align 8
.LC10:
	.string	"Invalid line (probably %d) in name section of MSF file %s:\n%s\n"
.LC11:
	.string	"\n"
	.align 8
.LC12:
	.string	"Didn't find a sequence for %s in MSF file %s\n"
	.text
	.globl	ReadMSF
	.type	ReadMSF, @function
ReadMSF:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L44
.L2:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L44
.L4:
	movl	$0, %esi
	movl	$10, %edi
	call	MSAAlloc@PLT
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	$23, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-56(%rbp), %rax
	movl	$3, 36(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L44
.L5:
	movq	-64(%rbp), %rax
	movl	$23, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-56(%rbp), %rax
	movl	$2, 36(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L44
.L16:
	movq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L7
	movq	-64(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L7
	movq	-64(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	call	Strparse@PLT
	testl	%eax, %eax
	je	.L7
	movq	sqd_parse(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -80(%rbp)
	movq	8+sqd_parse(%rip), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$80, %eax
	je	.L9
	cmpl	$88, %eax
	je	.L10
	cmpl	$78, %eax
	jne	.L46
	movl	$2, -88(%rbp)
	jmp	.L12
.L9:
	movl	$3, -88(%rbp)
	jmp	.L12
.L10:
	movl	$0, -88(%rbp)
	jmp	.L12
.L46:
	movl	$0, -88(%rbp)
.L12:
	movq	24+sqd_parse(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L47
	movq	-56(%rbp), %rax
	movl	-88(%rbp), %edx
	movl	%edx, 36(%rax)
	jmp	.L47
.L7:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	IsBlankline@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAAddComment@PLT
.L15:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L16
	jmp	.L17
.L47:
	nop
	jmp	.L17
.L21:
	addq	$1, -64(%rbp)
.L18:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L19
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L20
.L19:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L21
.L20:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L22
	jmp	.L17
.L22:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L23
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAAddComment@PLT
	jmp	.L17
.L23:
	movq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L24
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -72(%rbp)
	leaq	-92(%rbp), %rdx
	leaq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	312(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L25
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	MSAExpand@PLT
.L25:
	movl	-92(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rax,%rcx), %rbx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-72(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L26:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movq	%rax, -72(%rbp)
	leaq	-92(%rbp), %rdx
	leaq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L17
.L24:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L48
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	movl	$5, squid_errno(%rip)
	movl	$0, %eax
	jmp	.L44
.L17:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L18
	jmp	.L30
.L48:
	nop
	jmp	.L30
.L35:
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movl	$0, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L31
	jmp	.L30
.L31:
	leaq	-92(%rbp), %rdx
	leaq	-72(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	sre_strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L32
	jmp	.L30
.L32:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L33
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L33
	jmp	.L30
.L33:
	movq	-56(%rbp), %rax
	movq	312(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jns	.L34
	jmp	.L30
.L34:
	movl	-92(%rbp), %ecx
	movq	-56(%rbp), %rax
	movq	328(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rdi
	movq	-56(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-84(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	call	sre_strcat@PLT
	movl	%eax, (%rbx)
.L30:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileGetLine@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L35
	movl	$0, -84(%rbp)
	jmp	.L36
.L43:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L37:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L38
.L42:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L39
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L40
.L39:
	movq	-56(%rbp), %rax
	movq	328(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	subl	$1, %edx
	movl	%edx, (%rax)
	jmp	.L41
.L40:
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.L41:
	addq	$1, -64(%rbp)
.L38:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L42
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
	addl	$1, -84(%rbp)
.L36:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	MSAVerifyParse@PLT
	movq	-56(%rbp), %rax
.L44:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReadMSF, .-ReadMSF
	.section	.rodata
.LC13:
	.string	"msf.c"
.LC14:
	.string	"!!NA_MULTIPLE_ALIGNMENT 1.0\n"
.LC15:
	.string	"!!AA_MULTIPLE_ALIGNMENT 1.0\n"
	.align 8
.LC16:
	.string	"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\n"
	.align 8
.LC17:
	.string	"Invalid sequence type %d in WriteMSF()\n"
.LC18:
	.string	"%s\n"
.LC19:
	.string	"%B %d, %Y %H:%M"
	.align 8
.LC20:
	.string	"What time is it on earth? strftime() failed in WriteMSF().\n"
.LC21:
	.string	"squid.msf"
	.align 8
.LC22:
	.string	" %s  MSF: %d  Type: %c  %s  Check: %d  ..\n"
	.align 8
.LC23:
	.string	" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\n"
.LC24:
	.string	"//\n"
.LC25:
	.string	""
.LC26:
	.string	"%*s  %-6d%*s%6d\n"
.LC27:
	.string	"%*s  %-6d\n"
.LC28:
	.string	"%-*s "
	.text
	.globl	WriteMSF
	.type	WriteMSF, @function
WriteMSF:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$273, %esi
	leaq	.LC13(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -176(%rbp)
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$274, %esi
	leaq	.LC13(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -168(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L50
.L51:
	movq	-240(%rbp), %rax
	movl	24(%rax), %edx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-176(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-168(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	addl	$1, -212(%rbp)
.L50:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L51
	movl	$0, -212(%rbp)
	jmp	.L52
.L56:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.L53
.L55:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L54
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L54
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L54
	movq	-184(%rbp), %rax
	movb	$95, (%rax)
.L54:
	addq	$1, -184(%rbp)
.L53:
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	addl	$1, -212(%rbp)
.L52:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L56
	movl	$0, -212(%rbp)
	jmp	.L57
.L68:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.L58
.L60:
	movq	-184(%rbp), %rax
	movb	$126, (%rax)
	addq	$1, -184(%rbp)
.L58:
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L61
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L60
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L60
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L60
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L60
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L60
	jmp	.L61
.L64:
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L62
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L62
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L62
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L62
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L63
.L62:
	movq	-184(%rbp), %rax
	movb	$46, (%rax)
.L63:
	addq	$1, -184(%rbp)
.L61:
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L64
	movq	-240(%rbp), %rax
	movl	24(%rax), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.L65
.L67:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$126, (%rax)
	subl	$1, -204(%rbp)
.L65:
	cmpl	$0, -204(%rbp)
	jle	.L66
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L67
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L67
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L67
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L67
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L67
.L66:
	addl	$1, -212(%rbp)
.L57:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L68
	movl	$0, -208(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L69
.L71:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -196(%rbp)
	movl	-196(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jle	.L70
	movl	-196(%rbp), %eax
	movl	%eax, -208(%rbp)
.L70:
	addl	$1, -212(%rbp)
.L69:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L71
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L72
	movq	-240(%rbp), %rax
	movl	28(%rax), %edx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	GuessAlignmentSeqtype@PLT
	movl	%eax, %edx
	movq	-240(%rbp), %rax
	movl	%edx, 36(%rax)
.L72:
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$2, %eax
	jne	.L73
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	jmp	.L74
.L73:
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$1, %eax
	jne	.L75
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC14(%rip), %rdi
	call	fwrite@PLT
	jmp	.L74
.L75:
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$3, %eax
	jne	.L76
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	leaq	.LC15(%rip), %rdi
	call	fwrite@PLT
	jmp	.L74
.L76:
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L77
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L74
.L77:
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L74:
	movq	-240(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	jle	.L78
	movl	$0, -212(%rbp)
	jmp	.L79
.L80:
	movq	-240(%rbp), %rax
	movq	176(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-232(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -212(%rbp)
.L79:
	movq	-240(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L80
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L78:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC19(%rip), %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	call	strftime@PLT
	testq	%rax, %rax
	jne	.L81
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L81:
	movq	-240(%rbp), %rax
	movl	28(%rax), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	GCGMultchecksum@PLT
	movl	%eax, %esi
	movq	-240(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$2, %eax
	jne	.L82
	movl	$78, %r8d
	jmp	.L83
.L82:
	movl	$80, %r8d
.L83:
	movq	-240(%rbp), %rax
	movl	24(%rax), %edx
	movq	-240(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-240(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L85
.L84:
	leaq	.LC21(%rip), %rax
.L85:
	leaq	-96(%rbp), %rcx
	movq	-232(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rsi
	movq	%rcx, %r9
	movl	%edx, %ecx
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	$0, -212(%rbp)
	jmp	.L86
.L87:
	movq	-240(%rbp), %rax
	movq	16(%rax), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, -248(%rbp)
	movq	-240(%rbp), %rax
	movl	24(%rax), %edx
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-176(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	GCGchecksum@PLT
	movl	%eax, %r8d
	movq	-240(%rbp), %rax
	movl	24(%rax), %edi
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-208(%rbp), %ecx
	movl	-208(%rbp), %edx
	movq	-232(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	movsd	-248(%rbp), %xmm0
	movl	%edi, %r9d
	movq	%rsi, %r8
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	addl	$1, -212(%rbp)
.L86:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L87
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC24(%rip), %rdi
	call	fwrite@PLT
	movl	$0, -204(%rbp)
	jmp	.L88
.L98:
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	movl	-204(%rbp), %eax
	leal	50(%rax), %edx
	movq	-240(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jle	.L89
	movq	-240(%rbp), %rax
	movl	24(%rax), %eax
	subl	-204(%rbp), %eax
	jmp	.L90
.L89:
	movl	$50, %eax
.L90:
	movl	%eax, -196(%rbp)
	cmpl	$10, -196(%rbp)
	jle	.L91
	movl	-204(%rbp), %edx
	movl	-196(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movl	-196(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-196(%rbp), %eax
	addl	%edx, %eax
	leal	-12(%rax), %r8d
	movl	-204(%rbp), %eax
	leal	1(%rax), %edi
	movl	-208(%rbp), %edx
	movq	-232(%rbp), %rax
	pushq	%rsi
	leaq	.LC25(%rip), %rcx
	pushq	%rcx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L92
.L91:
	movl	-204(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-208(%rbp), %edx
	movq	-232(%rbp), %rax
	movl	%ecx, %r8d
	leaq	.LC25(%rip), %rcx
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L92:
	movl	$0, -212(%rbp)
	jmp	.L93
.L97:
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-208(%rbp), %edx
	movq	-232(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-212(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-204(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-160(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movb	$0, -110(%rbp)
	movl	$0, -200(%rbp)
	jmp	.L94
.L96:
	movl	-200(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L95
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	fputc@PLT
.L95:
	movl	-200(%rbp), %eax
	cltq
	movzbl	-160(%rbp,%rax), %eax
	movsbl	%al, %eax
	movq	-232(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
	addl	$1, -200(%rbp)
.L94:
	movl	-200(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jl	.L96
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
	addl	$1, -212(%rbp)
.L93:
	movq	-240(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -212(%rbp)
	jl	.L97
	addl	$50, -204(%rbp)
.L88:
	movq	-240(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -204(%rbp)
	jl	.L98
	movq	-240(%rbp), %rax
	movl	28(%rax), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-240(%rbp), %rax
	movl	28(%rax), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	WriteMSF, .-WriteMSF
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
