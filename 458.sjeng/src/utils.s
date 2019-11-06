	.file	"utils.c"
	.text
	.local	state
	.comm	state,2500,32
	.local	next
	.comm	next,8,8
	.globl	left
	.data
	.align 4
	.type	left, @object
	.size	left, 4
left:
	.long	-1
	.text
	.globl	allocate_time
	.type	allocate_time, @function
allocate_time:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	moves_to_tc(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	movl	min_per_game(%rip), %eax
	cmpl	$5, %eax
	jg	.L3
	movl	inc(%rip), %eax
	testl	%eax, %eax
	je	.L4
.L3:
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movl	min_per_game(%rip), %eax
	imull	$6000, %eax, %edx
	movl	sec_per_game(%rip), %eax
	imull	$100, %eax, %eax
	addl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC4(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	.LC5(%rip), %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L5
.L4:
	movl	opp_time(%rip), %edx
	movl	time_left(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	opp_time(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC5(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L7
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L7
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L5
.L7:
	movl	opp_time(%rip), %edx
	movl	time_left(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	opp_time(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC7(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L9
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L9
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L5
.L9:
	movl	opp_time(%rip), %edx
	movl	time_left(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	opp_time(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC3(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L5
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L5
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
.L5:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	je	.L12
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L12
	movl	time_left(%rip), %edx
	movl	opp_time(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC5(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L13
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L13
	movsd	-8(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L35
.L13:
	movl	time_left(%rip), %edx
	movl	opp_time(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC7(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L31
	jmp	.L35
.L31:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L35
	movsd	-8(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L35
.L12:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L18
	movsd	-8(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L17
.L18:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L17
	movsd	-8(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L17
.L35:
	nop
.L17:
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	inc(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	subsd	-16(%rbp), %xmm0
	movl	inc(%rip), %eax
	cvtsi2sd	%eax, %xmm1
	subsd	%xmm1, %xmm0
	ucomisd	.LC10(%rip), %xmm0
	jbe	.L34
	movl	inc(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L23
.L34:
	movl	time_left(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-16(%rbp), %xmm1
	movl	inc(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC11(%rip), %xmm2
	divsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ucomisd	.LC12(%rip), %xmm0
	jbe	.L23
	movl	inc(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L23
.L2:
	movl	min_per_game(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC13(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movl	sec_per_game(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC12(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movl	moves_to_tc(%rip), %eax
	cvtsi2ss	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	time_cushion(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	time_cushion(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	time_cushion(%rip), %edx
	movl	time_cushion(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC11(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, time_cushion(%rip)
.L23:
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L24
	movsd	-16(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	opp_time(%rip), %edx
	movl	time_left(%rip), %eax
	cmpl	%eax, %edx
	jg	.L25
	movl	opp_time(%rip), %eax
	cmpl	$1499, %eax
	jg	.L24
.L25:
	movsd	-16(%rbp), %xmm1
	movsd	.LC16(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L24:
	movsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	allocate_time, .-allocate_time
	.section	.rodata
.LC17:
	.string	"%c@%c%d"
.LC18:
	.string	"%c%d"
.LC19:
	.string	"%c%d=%c"
.LC20:
	.string	"%cx%c%d"
.LC21:
	.string	"%cx%c%d=%c"
.LC22:
	.string	"%c%c%c%d"
.LC23:
	.string	"%c%d%c%d"
.LC24:
	.string	"%c%cx%c%d"
.LC25:
	.string	"%c%dx%c%d"
.LC26:
	.string	"%c%c%d"
	.text
	.globl	comp_to_san
	.type	comp_to_san, @function
comp_to_san:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24720, %rsp
	movq	%rdi, -24712(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$70, -24656(%rbp)
	movl	$80, -24652(%rbp)
	movl	$80, -24648(%rbp)
	movl	$78, -24644(%rbp)
	movl	$78, -24640(%rbp)
	movl	$75, -24636(%rbp)
	movl	$75, -24632(%rbp)
	movl	$82, -24628(%rbp)
	movl	$82, -24624(%rbp)
	movl	$81, -24620(%rbp)
	movl	$81, -24616(%rbp)
	movl	$66, -24612(%rbp)
	movl	$66, -24608(%rbp)
	movl	$69, -24604(%rbp)
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24680(%rbp)
	movl	20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -24676(%rbp)
	movl	$97, -24672(%rbp)
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	-24672(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movb	%al, -24694(%rbp)
	movl	20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	-24672(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movb	%al, -24693(%rbp)
	movl	16(%rbp), %eax
	testl	%eax, %eax
	jne	.L37
	movsbl	-24693(%rbp), %ecx
	movl	28(%rbp), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %esi
	movq	-24712(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L37:
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L39
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L40
.L39:
	movl	20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L41
	movl	36(%rbp), %eax
	testl	%eax, %eax
	jne	.L41
	movl	28(%rbp), %eax
	testl	%eax, %eax
	jne	.L42
	movsbl	-24693(%rbp), %edx
	movl	-24676(%rbp), %ecx
	movq	-24712(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L44
.L42:
	movl	28(%rbp), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %esi
	movsbl	-24693(%rbp), %edx
	movl	-24676(%rbp), %ecx
	movq	-24712(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L44
.L41:
	movl	28(%rbp), %eax
	testl	%eax, %eax
	jne	.L45
	movsbl	-24693(%rbp), %ecx
	movsbl	-24694(%rbp), %edx
	movl	-24676(%rbp), %esi
	movq	-24712(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L45:
	movl	28(%rbp), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edi
	movsbl	-24693(%rbp), %ecx
	movsbl	-24694(%rbp), %edx
	movl	-24676(%rbp), %esi
	movq	-24712(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L44:
	jmp	.L38
.L40:
	movl	32(%rbp), %eax
	testl	%eax, %eax
	je	.L46
	movl	32(%rbp), %eax
	cmpl	$1, %eax
	je	.L47
	movl	32(%rbp), %eax
	cmpl	$3, %eax
	jne	.L48
.L47:
	movq	-24712(%rbp), %rax
	movl	$5188943, (%rax)
	jmp	.L38
.L48:
	movq	-24712(%rbp), %rax
	movl	$760163663, (%rax)
	movw	$79, 4(%rax)
	jmp	.L38
.L46:
	movl	$-1, -24688(%rbp)
	movl	$0, -24668(%rbp)
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24668(%rbp)
	call	in_check@PLT
	movl	%eax, -24664(%rbp)
	movl	$0, -24692(%rbp)
	jmp	.L50
.L54:
	movl	-24692(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$24588, %rax
	movl	(%rax), %edx
	movl	20(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L51
	movl	-24692(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$24592, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	board(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jne	.L51
	movl	-24692(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$24592, %rax
	movl	(%rax), %edx
	movl	16(%rbp), %eax
	cmpl	%eax, %edx
	je	.L51
	movl	-24692(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24664(%rbp), %edx
	movl	-24692(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L52
	movl	-24692(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	movl	-24692(%rbp), %eax
	movl	%eax, -24688(%rbp)
	jmp	.L53
.L52:
	movl	-24692(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
.L51:
	addl	$1, -24692(%rbp)
.L50:
	movl	-24692(%rbp), %eax
	cmpl	-24668(%rbp), %eax
	jl	.L54
.L53:
	cmpl	$-1, -24688(%rbp)
	je	.L55
	movl	20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L56
	movl	-24688(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$24592, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L57
	movsbl	-24693(%rbp), %esi
	movsbl	-24694(%rbp), %ecx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %edi
	movq	-24712(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L57:
	movsbl	-24693(%rbp), %esi
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %edi
	movl	-24680(%rbp), %ecx
	movq	-24712(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L56:
	movl	-24688(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$24592, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	je	.L60
	movsbl	-24693(%rbp), %esi
	movsbl	-24694(%rbp), %ecx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %edi
	movq	-24712(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L60:
	movsbl	-24693(%rbp), %esi
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %edi
	movl	-24680(%rbp), %ecx
	movq	-24712(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L55:
	movl	20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L61
	movsbl	-24693(%rbp), %ecx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %esi
	movq	-24712(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L61:
	movsbl	-24693(%rbp), %ecx
	movl	16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	-24656(%rbp,%rax,4), %edx
	movl	-24676(%rbp), %esi
	movq	-24712(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L38:
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	make@PLT
	movl	$1, %edx
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	jne	.L62
	movq	-24712(%rbp), %rax
	movl	$1735158889, (%rax)
	movb	$0, 4(%rax)
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	unmake@PLT
	jmp	.L36
.L62:
	call	in_check@PLT
	testl	%eax, %eax
	je	.L64
	movl	$1, -24684(%rbp)
	movl	$0, -24660(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24660(%rbp)
	movl	$0, -24692(%rbp)
	jmp	.L65
.L68:
	movl	-24692(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24692(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L66
	movl	$0, -24684(%rbp)
	movl	-24692(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L67
.L66:
	movl	-24692(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24692(%rbp)
.L65:
	movl	-24692(%rbp), %eax
	cmpl	-24660(%rbp), %eax
	jl	.L68
.L67:
	cmpl	$1, -24684(%rbp)
	jne	.L69
	movq	-24712(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-24712(%rbp), %rax
	addq	%rdx, %rax
	movw	$35, (%rax)
	jmp	.L64
.L69:
	movq	-24712(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-24712(%rbp), %rax
	addq	%rdx, %rax
	movw	$43, (%rax)
.L64:
	movl	$0, %esi
	leaq	16(%rbp), %rdi
	call	unmake@PLT
.L36:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	comp_to_san, .-comp_to_san
	.section	.rodata
.LC27:
	.string	"%c%d%c%dn"
.LC28:
	.string	"%c%d%c%dr"
.LC29:
	.string	"%c%d%c%db"
.LC30:
	.string	"%c%d%c%dk"
.LC31:
	.string	"%c%d%c%dq"
	.text
	.globl	comp_to_coord
	.type	comp_to_coord, @function
comp_to_coord:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$70, -64(%rbp)
	movl	$80, -60(%rbp)
	movl	$112, -56(%rbp)
	movl	$78, -52(%rbp)
	movl	$110, -48(%rbp)
	movl	$75, -44(%rbp)
	movl	$107, -40(%rbp)
	movl	$82, -36(%rbp)
	movl	$114, -32(%rbp)
	movl	$81, -28(%rbp)
	movl	$113, -24(%rbp)
	movl	$66, -20(%rbp)
	movl	$98, -16(%rbp)
	movl	$69, -12(%rbp)
	movl	28(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	20(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xrank(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -72(%rbp)
	movl	$97, -68(%rbp)
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movb	%al, -90(%rbp)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movb	%al, -89(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L72
	movsbl	-89(%rbp), %ecx
	movl	-88(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %edx
	movl	-72(%rbp), %esi
	movq	-104(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L84
.L72:
	cmpl	$0, -88(%rbp)
	jne	.L74
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L84
.L74:
	cmpl	$3, -88(%rbp)
	je	.L75
	cmpl	$4, -88(%rbp)
	jne	.L76
.L75:
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L73
.L76:
	cmpl	$7, -88(%rbp)
	je	.L77
	cmpl	$8, -88(%rbp)
	jne	.L78
.L77:
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L73
.L78:
	cmpl	$11, -88(%rbp)
	je	.L79
	cmpl	$12, -88(%rbp)
	jne	.L80
.L79:
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L73
.L80:
	cmpl	$5, -88(%rbp)
	je	.L81
	cmpl	$6, -88(%rbp)
	jne	.L82
.L81:
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L73
.L82:
	movsbl	-89(%rbp), %esi
	movsbl	-90(%rbp), %edx
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L84
.L73:
.L84:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	comp_to_coord, .-comp_to_coord
	.section	.rodata
	.align 8
.LC32:
	.string	"+----+----+----+----+----+----+----+----+"
.LC33:
	.string	"!!"
.LC34:
	.string	" P"
.LC35:
	.string	"*P"
.LC36:
	.string	" N"
.LC37:
	.string	"*N"
.LC38:
	.string	" K"
.LC39:
	.string	"*K"
.LC40:
	.string	" R"
.LC41:
	.string	"*R"
.LC42:
	.string	" Q"
.LC43:
	.string	"*Q"
.LC44:
	.string	" B"
.LC45:
	.string	"*B"
.LC46:
	.string	"  "
.LC47:
	.string	"  %s\n"
.LC48:
	.string	"%d |"
.LC49:
	.string	" %s |"
.LC50:
	.string	"\n  %s\n"
	.align 8
.LC51:
	.string	"\n     a    b    c    d    e    f    g    h\n\n"
	.align 8
.LC52:
	.string	"\n     h    g    f    e    d    c    b    a\n\n"
	.text
	.globl	display_board
	.type	display_board, @function
display_board:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC35(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC36(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC38(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC43(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC45(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	-172(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L86
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, -148(%rbp)
	jmp	.L87
.L91:
	movl	$9, %eax
	subl	-148(%rbp), %eax
	movl	%eax, %edx
	movq	-168(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -144(%rbp)
	jmp	.L88
.L90:
	movl	-148(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %edx
	subl	%edx, %eax
	sall	$2, %eax
	leal	120(%rax), %edx
	movl	-144(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L89
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L89:
	addl	$1, -144(%rbp)
.L88:
	cmpl	$11, -144(%rbp)
	jle	.L90
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -148(%rbp)
.L87:
	cmpl	$8, -148(%rbp)
	jle	.L91
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite@PLT
	jmp	.L99
.L86:
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, -148(%rbp)
	jmp	.L93
.L97:
	movl	-148(%rbp), %edx
	movq	-168(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -144(%rbp)
	jmp	.L94
.L96:
	movl	-148(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$24, %eax
	subl	-144(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L95
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movq	-128(%rbp,%rax,8), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L95:
	addl	$1, -144(%rbp)
.L94:
	cmpl	$11, -144(%rbp)
	jle	.L96
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -148(%rbp)
.L93:
	cmpl	$8, -148(%rbp)
	jle	.L97
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	leaq	.LC52(%rip), %rdi
	call	fwrite@PLT
.L99:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	display_board, .-display_board
	.section	.rodata
	.align 32
.LC0:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	3
	.long	11
	.long	9
	.long	5
	.long	11
	.long	3
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	8
	.long	4
	.long	12
	.long	10
	.long	6
	.long	12
	.long	4
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	init_game
	.type	init_game, @function
init_game:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-592(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$72, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	board(%rip), %rax
	leaq	-592(%rbp), %rdx
	movl	$576, %ecx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	%ecx, %esi
	addq	%rax, %rsi
	leaq	8(%rsi), %rdi
	movl	%ecx, %esi
	addq	%rdx, %rsi
	addq	$8, %rsi
	movq	-16(%rsi), %rsi
	movq	%rsi, -16(%rdi)
	leaq	8(%rax), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
	movl	$576, %edx
	movl	$0, %esi
	leaq	moved(%rip), %rdi
	call	memset@PLT
	movl	$1, white_to_move(%rip)
	movl	$0, ep_square(%rip)
	movl	$30, wking_loc(%rip)
	movl	$114, bking_loc(%rip)
	movl	$0, white_castled(%rip)
	movl	$0, black_castled(%rip)
	movl	$0, result(%rip)
	movl	$0, captures(%rip)
	movl	$32, piece_count(%rip)
	movl	$0, Material(%rip)
	movl	$248, %edx
	movl	$0, %esi
	leaq	is_promoted(%rip), %rdi
	call	memset@PLT
	movl	$128, %edx
	movl	$0, %esi
	leaq	holding(%rip), %rdi
	call	memset@PLT
	movl	$0, white_hand_eval(%rip)
	movl	$0, black_hand_eval(%rip)
	call	reset_piece_square
	movl	$0, bookidx(%rip)
	movl	$0, book_ply(%rip)
	movl	$0, fifty(%rip)
	movl	$0, ply(%rip)
	movl	$0, phase(%rip)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	init_game, .-init_game
	.globl	is_move
	.type	is_move, @function
is_move:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L103
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L103
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L103
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$3, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L105
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L105
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L105
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$3, %rdx
	movzbl	(%rdx), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L105
	movl	$1, %eax
	jmp	.L104
.L105:
	movl	$0, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	is_move, .-is_move
	.section	.rodata
	.align 8
.LC53:
	.string	"\n\nPlease enter the desired depth for perft():"
	.align 8
.LC54:
	.string	"\n\nRaw nodes for depth %d: %i\n\n"
.LC55:
	.string	"\nPlease input a move/command:"
.LC56:
	.string	"exit"
.LC57:
	.string	"quit"
	.align 8
.LC58:
	.string	"\nIllegal move/command!  Please input a new move/command:"
	.text
	.globl	perft_debug
	.type	perft_debug, @function
perft_debug:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	init_game
.L117:
	leaq	.LC53(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -316(%rbp)
	movl	$0, raw_nodes(%rip)
	movl	-316(%rbp), %eax
	movl	%eax, %edi
	call	perft@PLT
	movl	raw_nodes(%rip), %edx
	movl	-316(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC54(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_board
	leaq	.LC55(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	.L107
.L108:
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -312(%rbp)
.L107:
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L108
	leaq	-272(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L109
	leaq	-272(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L110
.L109:
	movl	$0, %edi
	call	exit@PLT
.L110:
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_coord
	testl	%eax, %eax
	jne	.L111
.L116:
	leaq	.LC58(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	.L112
.L113:
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -312(%rbp)
.L112:
	movq	-312(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L113
	leaq	-272(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-272(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L115
.L114:
	movl	$0, %edi
	call	exit@PLT
.L115:
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_coord
	testl	%eax, %eax
	je	.L116
.L111:
	leaq	-304(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	jmp	.L117
	.cfi_endproc
.LFE11:
	.size	perft_debug, .-perft_debug
	.globl	hash_extract_pv
	.type	hash_extract_pv, @function
hash_extract_pv:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12592, %rsp
	movl	%edi, -12580(%rbp)
	movq	%rsi, -12592(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	subl	$1, -12580(%rbp)
	cmpl	$0, -12580(%rbp)
	je	.L125
	leaq	-12572(%rbp), %rsi
	leaq	-12572(%rbp), %rcx
	leaq	-12568(%rbp), %rdx
	leaq	-12572(%rbp), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ProbeTT@PLT
	cmpl	$4, %eax
	je	.L119
	leaq	-12560(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12564(%rbp)
	movl	-12568(%rbp), %eax
	testl	%eax, %eax
	js	.L119
	movl	-12568(%rbp), %eax
	cmpl	%eax, -12564(%rbp)
	jle	.L119
	movl	-12568(%rbp), %eax
	leaq	-272(%rbp), %rcx
	subq	$8, %rsp
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$12560, %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rcx, %rdi
	call	comp_to_san
	addq	$32, %rsp
	movl	-12568(%rbp), %edx
	leaq	-12560(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12568(%rbp), %ecx
	leaq	-12560(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L123
	movq	-12592(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-12592(%rbp), %rax
	addq	%rdx, %rax
	movw	$60, (%rax)
	leaq	-272(%rbp), %rdx
	movq	-12592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movq	-12592(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-12592(%rbp), %rax
	addq	%rdx, %rax
	movw	$8254, (%rax)
	movb	$0, 2(%rax)
	movq	-12592(%rbp), %rdx
	movl	-12580(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	hash_extract_pv
.L123:
	movl	-12568(%rbp), %edx
	leaq	-12560(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L119
.L125:
	nop
.L119:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	hash_extract_pv, .-hash_extract_pv
	.globl	stringize_pv
	.type	stringize_pv, @function
stringize_pv:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-296(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -276(%rbp)
	jmp	.L127
.L128:
	leaq	-272(%rbp), %r8
	subq	$8, %rsp
	movl	-276(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	7200+pv(%rip), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rdi,%rcx), %rax
	movq	8(%rdi,%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rdi,%rcx), %rax
	movq	%rax, 16(%rsi)
	movq	%r8, %rdi
	call	comp_to_san
	addq	$32, %rsp
	movl	-276(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	7200(%rax), %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	leaq	-272(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movq	-296(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-296(%rbp), %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
	addl	$1, -276(%rbp)
.L127:
	movl	4+pv_length(%rip), %eax
	cmpl	%eax, -276(%rbp)
	jl	.L128
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	hash_extract_pv
	movl	4+pv_length(%rip), %eax
	subl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.L129
.L130:
	movl	-276(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	7200(%rax), %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	subl	$1, -276(%rbp)
.L129:
	cmpl	$0, -276(%rbp)
	jg	.L130
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L131
	call	__stack_chk_fail@PLT
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	stringize_pv, .-stringize_pv
	.section	.rodata
.LC59:
	.string	"%2i %7i %5i %8i  "
.LC60:
	.string	"%2i %c%1i.%02i %9i "
.LC61:
	.string	"%s "
.LC62:
	.string	"%s"
	.text
	.globl	post_thinking
	.type	post_thinking, @function
post_thinking:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$584, %rsp
	.cfi_offset 3, -24
	movl	%edi, -580(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -564(%rbp)
	movq	start_time(%rip), %rbx
	call	rtime
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	jle	.L133
	movl	nodes(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sd	-560(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -552(%rbp)
	movsd	-552(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -556(%rbp)
	jmp	.L134
.L133:
	movl	nodes(%rip), %eax
	movl	%eax, -556(%rbp)
.L134:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L135
	movl	nodes(%rip), %esi
	movl	i_depth(%rip), %eax
	movl	-560(%rbp), %ecx
	movl	-580(%rbp), %edx
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L136
.L135:
	movl	nodes(%rip), %edi
	movl	-580(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-580(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$0, -580(%rbp)
	jns	.L137
	movl	$45, %edx
	jmp	.L138
.L137:
	movl	$32, %edx
.L138:
	movl	i_depth(%rip), %esi
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L136:
	movl	7224+pv(%rip), %eax
	testl	%eax, %eax
	je	.L139
	movl	7224+pv(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L140
.L139:
	movl	7224+pv(%rip), %eax
	testl	%eax, %eax
	jne	.L141
	movl	7228+pv(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L141
.L140:
	movl	$0, %esi
	leaq	7224+pv(%rip), %rdi
	call	unmake@PLT
	movl	$1, -564(%rbp)
.L141:
	movl	$1, -568(%rbp)
	jmp	.L142
.L143:
	leaq	-544(%rbp), %r8
	subq	$8, %rsp
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	leaq	7200+pv(%rip), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rdi,%rcx), %rax
	movq	8(%rdi,%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rdi,%rcx), %rax
	movq	%rax, 16(%rsi)
	movq	%r8, %rdi
	call	comp_to_san
	addq	$32, %rsp
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	7200(%rax), %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -568(%rbp)
.L142:
	movl	4+pv_length(%rip), %eax
	cmpl	%eax, -568(%rbp)
	jl	.L143
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	hash_extract_pv
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	4+pv_length(%rip), %eax
	subl	$1, %eax
	movl	%eax, -568(%rbp)
	jmp	.L144
.L145:
	movl	-568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	7200(%rax), %rdx
	leaq	pv(%rip), %rax
	addq	%rdx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	subl	$1, -568(%rbp)
.L144:
	cmpl	$0, -568(%rbp)
	jg	.L145
	cmpl	$0, -564(%rbp)
	je	.L146
	movl	$0, %esi
	leaq	7224+pv(%rip), %rdi
	call	make@PLT
.L146:
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	post_thinking, .-post_thinking
	.section	.rodata
.LC63:
	.string	"%s !"
	.text
	.globl	post_fail_thinking
	.type	post_fail_thinking, @function
post_fail_thinking:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	start_time(%rip), %rbx
	call	rtime
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	jle	.L149
	movl	nodes(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sd	-304(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -300(%rbp)
	jmp	.L150
.L149:
	movl	nodes(%rip), %eax
	movl	%eax, -300(%rbp)
.L150:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L151
	movl	nodes(%rip), %esi
	movl	i_depth(%rip), %eax
	movl	-304(%rbp), %ecx
	movl	-308(%rbp), %edx
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L152
.L151:
	movl	nodes(%rip), %edi
	movl	-308(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-308(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$0, -308(%rbp)
	jns	.L153
	movl	$45, %edx
	jmp	.L154
.L153:
	movl	$32, %edx
.L154:
	movl	i_depth(%rip), %esi
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L152:
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	leaq	-288(%rbp), %rdi
	subq	$8, %rsp
	movq	-320(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsi)
	call	comp_to_san
	addq	$32, %rsp
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	post_fail_thinking, .-post_fail_thinking
	.section	.rodata
.LC64:
	.string	"%s !!"
	.text
	.globl	post_fh_thinking
	.type	post_fh_thinking, @function
post_fh_thinking:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	start_time(%rip), %rbx
	call	rtime
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	jle	.L157
	movl	nodes(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sd	-304(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -300(%rbp)
	jmp	.L158
.L157:
	movl	nodes(%rip), %eax
	movl	%eax, -300(%rbp)
.L158:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L159
	movl	nodes(%rip), %esi
	movl	i_depth(%rip), %eax
	movl	-304(%rbp), %ecx
	movl	-308(%rbp), %edx
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L160
.L159:
	movl	nodes(%rip), %edi
	movl	-308(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-308(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$0, -308(%rbp)
	jns	.L161
	movl	$45, %edx
	jmp	.L162
.L161:
	movl	$32, %edx
.L162:
	movl	i_depth(%rip), %esi
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L160:
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	leaq	-288(%rbp), %rdi
	subq	$8, %rsp
	movq	-320(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsi)
	call	comp_to_san
	addq	$32, %rsp
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L163
	call	__stack_chk_fail@PLT
.L163:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	post_fh_thinking, .-post_fh_thinking
	.section	.rodata
.LC65:
	.string	"%s ??"
	.text
	.globl	post_fl_thinking
	.type	post_fl_thinking, @function
post_fl_thinking:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	start_time(%rip), %rbx
	call	rtime
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	jle	.L165
	movl	nodes(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sd	-304(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -300(%rbp)
	jmp	.L166
.L165:
	movl	nodes(%rip), %eax
	movl	%eax, -300(%rbp)
.L166:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L167
	movl	nodes(%rip), %esi
	movl	i_depth(%rip), %eax
	movl	-304(%rbp), %ecx
	movl	-308(%rbp), %edx
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L168
.L167:
	movl	nodes(%rip), %edi
	movl	-308(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	xorl	%edx, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	-308(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	$0, -308(%rbp)
	jns	.L169
	movl	$45, %edx
	jmp	.L170
.L169:
	movl	$32, %edx
.L170:
	movl	i_depth(%rip), %esi
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L168:
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	leaq	-288(%rbp), %rdi
	subq	$8, %rsp
	movq	-320(%rbp), %rcx
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsi)
	call	comp_to_san
	addq	$32, %rsp
	movq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	post_fl_thinking, .-post_fl_thinking
	.section	.rodata
.LC66:
	.string	"stat01: %i %i %i %i %i\n"
.LC67:
	.string	"stat01: %i %i %i %i %i %s\n"
	.text
	.globl	post_stat_thinking
	.type	post_stat_thinking, @function
post_stat_thinking:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	start_time(%rip), %rbx
	call	rtime
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -20(%rbp)
	movl	xb_mode(%rip), %eax
	cmpl	$1, %eax
	jne	.L173
	movl	movetotal(%rip), %edi
	movl	moveleft(%rip), %esi
	movl	i_depth(%rip), %ecx
	movl	nodes(%rip), %edx
	movl	-20(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L175
.L173:
	movl	xb_mode(%rip), %eax
	cmpl	$2, %eax
	jne	.L175
	movl	movetotal(%rip), %r8d
	movl	moveleft(%rip), %edi
	movl	i_depth(%rip), %ecx
	movl	nodes(%rip), %edx
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	leaq	searching_move(%rip), %rsi
	pushq	%rsi
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC67(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L175:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	post_stat_thinking, .-post_stat_thinking
	.globl	print_move
	.type	print_move, @function
print_move:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -280(%rbp)
	movl	%esi, -284(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-284(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-272(%rbp), %rdi
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rsi
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rsi)
	movq	%rdx, 8(%rsi)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsi)
	call	comp_to_san
	addq	$32, %rsp
	movq	-296(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	print_move, .-print_move
	.globl	rdelay
	.type	rdelay, @function
rdelay:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -20(%rbp)
	call	rtime
	movq	%rax, -16(%rbp)
	jmp	.L179
.L180:
	call	rtime
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rdifftime
	movl	%eax, -20(%rbp)
.L179:
	movl	-20(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, -36(%rbp)
	jg	.L180
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	rdelay, .-rdelay
	.globl	rdifftime
	.type	rdifftime, @function
rdifftime:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime@PLT
	cvttsd2si	%xmm0, %eax
	imull	$100, %eax, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	rdifftime, .-rdifftime
	.section	.rodata
	.align 8
.LC68:
	.string	"Piece->square->piece inconsistency"
	.align 8
.LC69:
	.string	"Board/Piece->square inconsistency"
.LC70:
	.string	"Zero-ed piece inconsistency"
	.align 8
.LC71:
	.string	"Empty square has piece pointer"
	.align 8
.LC72:
	.string	"Filled square %d has no piece pointer\n"
	.align 8
.LC73:
	.string	"Square->piece->square inconsistency"
	.text
	.globl	check_piece_square
	.type	check_piece_square, @function
check_piece_square:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L184
.L188:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L185
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L185
	leaq	.LC68(%rip), %rdi
	call	puts@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L185:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	jne	.L186
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L186
	leaq	.LC69(%rip), %rdi
	call	puts@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L186:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L187
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L187
	leaq	.LC70(%rip), %rdi
	call	puts@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L187:
	addl	$1, -4(%rbp)
.L184:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L188
	movl	$0, -4(%rbp)
	jmp	.L189
.L194:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L190
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L191
.L190:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L191
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L191:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$13, %eax
	je	.L192
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L192
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L192
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L192:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L193
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L193
	leaq	.LC73(%rip), %rdi
	call	puts@PLT
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_board
	movl	$0, %eax
	movl	$0, (%rax)
.L193:
	addl	$1, -4(%rbp)
.L189:
	cmpl	$143, -4(%rbp)
	jle	.L194
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	check_piece_square, .-check_piece_square
	.globl	reset_piece_square
	.type	reset_piece_square, @function
reset_piece_square:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-592(%rbp), %rax
	movl	$576, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -596(%rbp)
	jmp	.L196
.L198:
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L197
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	movl	$1, -592(%rbp,%rax,4)
.L197:
	addl	$1, -596(%rbp)
.L196:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -596(%rbp)
	jle	.L198
	movl	$0, Material(%rip)
	movl	$0, piece_count(%rip)
	movl	$248, %edx
	movl	$0, %esi
	leaq	pieces(%rip), %rdi
	call	memset@PLT
	movl	$248, %edx
	movl	$0, %esi
	leaq	is_promoted(%rip), %rdi
	call	memset@PLT
	movl	$0, pieces(%rip)
	movl	$26, -596(%rbp)
	jmp	.L199
.L203:
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L200
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	jg	.L200
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
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
	movl	piece_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pieces(%rip), %rax
	movl	-596(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	movl	piece_count(%rip), %edx
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	squares(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	-596(%rbp), %eax
	cltq
	movl	-592(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L202
	movl	piece_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	is_promoted(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L202
.L200:
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	squares(%rip), %rax
	movl	$0, (%rdx,%rax)
.L202:
	addl	$1, -596(%rbp)
.L199:
	cmpl	$117, -596(%rbp)
	jle	.L203
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L204
	call	__stack_chk_fail@PLT
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	reset_piece_square, .-reset_piece_square
	.globl	rinput
	.type	rinput, @function
rinput:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L206
.L208:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jge	.L206
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L206:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, -4(%rbp)
	cmpl	$10, -4(%rbp)
	je	.L207
	cmpl	$-1, -4(%rbp)
	jne	.L208
.L207:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	rinput, .-rinput
	.globl	rtime
	.type	rtime, @function
rtime:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	rtime, .-rtime
	.section	.rodata
	.align 8
.LC74:
	.string	"\nSjeng version SPEC 1.0, Copyright (C) 2000-2005 Gian-Carlo Pascutto\n"
	.text
	.globl	start_up
	.type	start_up, @function
start_up:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC74(%rip), %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	start_up, .-start_up
	.globl	toggle_bool
	.type	toggle_bool, @function
toggle_bool:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L213
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L215
.L213:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.L215:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	toggle_bool, .-toggle_bool
	.section	.rodata
	.align 8
.LC75:
	.string	"\nPlease enter the desired depth:"
	.align 8
.LC76:
	.string	"\nDo you want tree () output?  (y/n)"
	.align 8
.LC77:
	.string	"\nPlease enter the name of the output file for tree ():"
.LC78:
	.string	"w"
.LC79:
	.string	"Couldn't open file %s\n"
	.align 8
.LC80:
	.string	"\nDo you want to output diagrams? (y/n)"
	.align 8
.LC81:
	.string	"\n\n%s\nRaw nodes for depth %d: %i\n%s\n\n"
	.text
	.globl	tree_debug
	.type	tree_debug, @function
tree_debug:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	init_game
	leaq	.LC75(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -284(%rbp)
	leaq	.LC76(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	movzbl	-272(%rbp), %eax
	cmpb	$121, %al
	jne	.L217
	leaq	.LC77(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rax
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.L218
	movq	stderr(%rip), %rax
	leaq	-272(%rbp), %rdx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L218:
	leaq	.LC80(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput
	leaq	-272(%rbp), %rcx
	movq	-280(%rbp), %rdx
	movl	-284(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	tree@PLT
.L217:
	movl	$0, raw_nodes(%rip)
	movl	-284(%rbp), %eax
	movl	%eax, %edi
	call	perft@PLT
	movl	raw_nodes(%rip), %edx
	movl	-284(%rbp), %eax
	leaq	divider(%rip), %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	divider(%rip), %rsi
	leaq	.LC81(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L219
	call	__stack_chk_fail@PLT
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	tree_debug, .-tree_debug
	.globl	verify_coord
	.type	verify_coord, @function
verify_coord:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$12336, %rsp
	movq	%rdi, -12328(%rbp)
	movq	%rsi, -12336(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12312(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L221
	movl	$1, captures(%rip)
	movl	$0, -12320(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12320(%rbp)
	movl	$0, captures(%rip)
	movl	$1, -12308(%rbp)
	movl	$0, -12316(%rbp)
	jmp	.L222
.L225:
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12316(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L223
	movl	$0, -12308(%rbp)
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	jmp	.L224
.L223:
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -12316(%rbp)
.L222:
	movl	-12316(%rbp), %eax
	cmpl	-12320(%rbp), %eax
	jl	.L225
.L224:
	cmpl	$1, -12308(%rbp)
	jne	.L227
	movl	$0, captures(%rip)
	movl	$0, -12320(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12320(%rbp)
	jmp	.L227
.L221:
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -12320(%rbp)
.L227:
	movl	$0, -12316(%rbp)
	jmp	.L228
.L231:
	leaq	-14(%rbp), %rcx
	subq	$8, %rsp
	movl	-12316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$12304, %rax
	pushq	16(%rax)
	pushq	8(%rax)
	pushq	(%rax)
	movq	%rcx, %rdi
	call	comp_to_coord
	addq	$32, %rsp
	leaq	-14(%rbp), %rdx
	movq	-12328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L229
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-12316(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L230
	movl	$1, -12312(%rbp)
	movq	-12336(%rbp), %rcx
	movl	-12316(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-12304(%rax), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
.L230:
	movl	-12316(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
.L229:
	addl	$1, -12316(%rbp)
.L228:
	movl	-12316(%rbp), %eax
	cmpl	-12320(%rbp), %eax
	jl	.L231
	movl	-12312(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L233
	call	__stack_chk_fail@PLT
.L233:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	verify_coord, .-verify_coord
	.globl	interrupt
	.type	interrupt, @function
interrupt:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	interrupt, .-interrupt
	.globl	PutPiece
	.type	PutPiece, @function
PutPiece:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%edx, %eax
	movl	%ecx, -48(%rbp)
	movl	%esi, %edx
	movb	%dl, -40(%rbp)
	movb	%al, -44(%rbp)
	movl	$97, -20(%rbp)
	movl	$49, -16(%rbp)
	movsbl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	26(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L237
	movsbl	-40(%rbp), %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L257
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L240(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L240(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L240:
	.long	.L239-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L241-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L242-.L240
	.long	.L257-.L240
	.long	.L243-.L240
	.long	.L244-.L240
	.long	.L245-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L257-.L240
	.long	.L246-.L240
	.text
.L243:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$1, (%rdx,%rax)
	jmp	.L247
.L242:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$3, (%rdx,%rax)
	jmp	.L247
.L239:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$11, (%rdx,%rax)
	jmp	.L247
.L245:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$7, (%rdx,%rax)
	jmp	.L247
.L244:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$9, (%rdx,%rax)
	jmp	.L247
.L241:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$5, (%rdx,%rax)
	jmp	.L247
.L246:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	nop
	jmp	.L247
.L237:
	cmpl	$1, -36(%rbp)
	jne	.L257
	movsbl	-40(%rbp), %eax
	subl	$98, %eax
	cmpl	$22, %eax
	ja	.L257
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L249(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L249(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L249:
	.long	.L248-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L250-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L251-.L249
	.long	.L257-.L249
	.long	.L252-.L249
	.long	.L253-.L249
	.long	.L254-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L257-.L249
	.long	.L255-.L249
	.text
.L252:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$2, (%rdx,%rax)
	jmp	.L247
.L251:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$4, (%rdx,%rax)
	jmp	.L247
.L248:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$12, (%rdx,%rax)
	jmp	.L247
.L254:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$8, (%rdx,%rax)
	jmp	.L247
.L253:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$10, (%rdx,%rax)
	jmp	.L247
.L250:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$6, (%rdx,%rax)
	jmp	.L247
.L255:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	$13, (%rdx,%rax)
	nop
.L247:
	nop
.L257:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	PutPiece, .-PutPiece
	.section	.rodata
	.align 32
.LC1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	reset_board
	.type	reset_board, @function
reset_board:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-592(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	$72, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	board(%rip), %rax
	leaq	-592(%rbp), %rdx
	movl	$576, %ecx
	movq	(%rdx), %rsi
	movq	%rsi, (%rax)
	movl	%ecx, %esi
	addq	%rax, %rsi
	leaq	8(%rsi), %rdi
	movl	%ecx, %esi
	addq	%rdx, %rsi
	addq	$8, %rsi
	movq	-16(%rsi), %rsi
	movq	%rsi, -16(%rdi)
	leaq	8(%rax), %rdi
	andq	$-8, %rdi
	subq	%rdi, %rax
	subq	%rax, %rdx
	addl	%eax, %ecx
	andl	$-8, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %eax
	movq	%rdx, %rsi
	movq	%rax, %rcx
	rep movsq
	movl	$0, -596(%rbp)
	jmp	.L259
.L260:
	movl	-596(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	moved(%rip), %rax
	movl	$0, (%rdx,%rax)
	addl	$1, -596(%rbp)
.L259:
	cmpl	$143, -596(%rbp)
	jle	.L260
	movl	$0, ep_square(%rip)
	movl	$0, piece_count(%rip)
	movl	$0, Material(%rip)
	movl	$248, %edx
	movl	$0, %esi
	leaq	is_promoted(%rip), %rdi
	call	memset@PLT
	movl	$128, %edx
	movl	$0, %esi
	leaq	holding(%rip), %rdi
	call	memset@PLT
	movl	$0, white_hand_eval(%rip)
	movl	$0, black_hand_eval(%rip)
	movl	$0, bookidx(%rip)
	movl	$0, fifty(%rip)
	call	reset_piece_square
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L261
	call	__stack_chk_fail@PLT
.L261:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	reset_board, .-reset_board
	.globl	seedMT
	.type	seedMT, @function
seedMT:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)
	movl	-28(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %ebx
	leaq	state(%rip), %r12
	movl	$0, left(%rip)
	movq	%r12, %rax
	leaq	4(%rax), %r12
	movl	%ebx, (%rax)
	movl	$624, %r13d
	jmp	.L263
.L264:
	imull	$69069, %ebx, %ebx
	movq	%r12, %rax
	leaq	4(%rax), %r12
	movl	%ebx, (%rax)
.L263:
	subl	$1, %r13d
	testl	%r13d, %r13d
	jne	.L264
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	seedMT, .-seedMT
	.globl	reloadMT
	.type	reloadMT, @function
reloadMT:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	state(%rip), %r14
	leaq	8+state(%rip), %r15
	leaq	1588+state(%rip), %r13
	movl	left(%rip), %eax
	cmpl	$-1, %eax
	jge	.L266
	movl	$4357, %edi
	call	seedMT
.L266:
	movl	$623, left(%rip)
	leaq	4+state(%rip), %rax
	movq	%rax, next(%rip)
	movl	state(%rip), %eax
	movl	%eax, %esi
	movl	4+state(%rip), %ebx
	movl	$228, %r12d
	jmp	.L267
.L270:
	movq	%r13, %rax
	leaq	4(%rax), %r13
	movl	(%rax), %eax
	movl	%esi, %ecx
	andl	$-2147483648, %ecx
	movl	%ebx, %edx
	andl	$2147483647, %edx
	orl	%ecx, %edx
	shrl	%edx
	xorl	%eax, %edx
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L268
	movl	$-1727483681, %ecx
	jmp	.L269
.L268:
	movl	$0, %ecx
.L269:
	movq	%r14, %rax
	leaq	4(%rax), %r14
	xorl	%ecx, %edx
	movl	%edx, (%rax)
	movl	%ebx, %esi
	movq	%r15, %rax
	leaq	4(%rax), %r15
	movl	(%rax), %ebx
.L267:
	subl	$1, %r12d
	testl	%r12d, %r12d
	jne	.L270
	leaq	state(%rip), %r13
	movl	$397, %r12d
	jmp	.L271
.L274:
	movq	%r13, %rax
	leaq	4(%rax), %r13
	movl	(%rax), %eax
	movl	%esi, %ecx
	andl	$-2147483648, %ecx
	movl	%ebx, %edx
	andl	$2147483647, %edx
	orl	%ecx, %edx
	shrl	%edx
	xorl	%eax, %edx
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L272
	movl	$-1727483681, %ecx
	jmp	.L273
.L272:
	movl	$0, %ecx
.L273:
	movq	%r14, %rax
	leaq	4(%rax), %r14
	xorl	%ecx, %edx
	movl	%edx, (%rax)
	movl	%ebx, %esi
	movq	%r15, %rax
	leaq	4(%rax), %r15
	movl	(%rax), %ebx
.L271:
	subl	$1, %r12d
	testl	%r12d, %r12d
	jne	.L274
	movl	state(%rip), %ebx
	movl	0(%r13), %eax
	movl	%esi, %ecx
	andl	$-2147483648, %ecx
	movl	%ebx, %edx
	andl	$2147483647, %edx
	orl	%ecx, %edx
	shrl	%edx
	xorl	%eax, %edx
	movl	%ebx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L275
	movl	$-1727483681, %eax
	jmp	.L276
.L275:
	movl	$0, %eax
.L276:
	xorl	%edx, %eax
	movl	%eax, (%r14)
	movl	%ebx, %eax
	shrl	$11, %eax
	xorl	%eax, %ebx
	movl	%ebx, %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, %ebx
	movl	%ebx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$18, %eax
	xorl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	reloadMT, .-reloadMT
	.globl	randomMT
	.type	randomMT, @function
randomMT:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	left(%rip), %eax
	subl	$1, %eax
	movl	%eax, left(%rip)
	movl	left(%rip), %eax
	testl	%eax, %eax
	jns	.L279
	call	reloadMT
	jmp	.L280
.L279:
	movq	next(%rip), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, next(%rip)
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$11, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$18, %eax
	xorl	-4(%rbp), %eax
.L280:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	randomMT, .-randomMT
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1077149696
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075052544
	.align 8
.LC6:
	.long	0
	.long	1078198272
	.align 8
.LC7:
	.long	0
	.long	1076101120
	.align 8
.LC8:
	.long	0
	.long	1077805056
	.align 8
.LC9:
	.long	0
	.long	1077477376
	.align 8
.LC10:
	.long	0
	.long	1082081280
	.align 8
.LC11:
	.long	0
	.long	1074266112
	.align 8
.LC12:
	.long	0
	.long	1079574528
	.align 8
.LC13:
	.long	0
	.long	1085763584
	.align 8
.LC14:
	.long	3435973837
	.long	1073794252
	.align 8
.LC15:
	.long	0
	.long	1070596096
	.align 8
.LC16:
	.long	0
	.long	1071644672
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
