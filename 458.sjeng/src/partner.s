	.file	"partner.c"
	.text
	.globl	hand_value
	.data
	.align 32
	.type	hand_value, @object
	.size	hand_value, 52
hand_value:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	0
	.long	0
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.globl	std_hand_value
	.align 32
	.type	std_hand_value, @object
	.size	std_hand_value, 52
std_hand_value:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	0
	.long	0
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.comm	piecedead,4,4
	.comm	partnerdead,4,4
	.comm	must_go,4,4
	.text
	.globl	ResetHandValue
	.type	ResetHandValue, @function
ResetHandValue:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	std_hand_value(%rip), %rax
	movq	8+std_hand_value(%rip), %rdx
	movq	%rax, hand_value(%rip)
	movq	%rdx, 8+hand_value(%rip)
	movq	16+std_hand_value(%rip), %rax
	movq	24+std_hand_value(%rip), %rdx
	movq	%rax, 16+hand_value(%rip)
	movq	%rdx, 24+hand_value(%rip)
	movq	32+std_hand_value(%rip), %rax
	movq	40+std_hand_value(%rip), %rdx
	movq	%rax, 32+hand_value(%rip)
	movq	%rdx, 40+hand_value(%rip)
	movl	48+std_hand_value(%rip), %eax
	movl	%eax, 48+hand_value(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ResetHandValue, .-ResetHandValue
	.globl	BegForPartner
	.type	BegForPartner, @function
BegForPartner:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	BegForPartner, .-BegForPartner
	.section	.rodata
	.align 8
.LC0:
	.string	"tellics ptell Hello! I am Sjeng and hope you enjoy playing with me."
	.align 8
.LC1:
	.string	"tellics ptell For help on some commands that I understand, ptell me 'help'"
	.text
	.globl	GreetPartner
	.type	GreetPartner, @function
GreetPartner:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	GreetPartner, .-GreetPartner
	.section	.rodata
.LC2:
	.string	"%s"
.LC3:
	.string	"tellics set f5 bughouse"
.LC4:
	.string	"tellics unseek"
.LC5:
	.string	"tellics set f5 1=1"
	.text
	.globl	HandlePartner
	.type	HandlePartner, @function
HandlePartner:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L7
	movl	have_partner(%rip), %eax
	testl	%eax, %eax
	jne	.L10
	movq	-8(%rbp), %rax
	addq	$1, %rax
	leaq	my_partner(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	$1, have_partner(%rip)
	movl	$0, %eax
	call	GreetPartner
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L10
.L7:
	movl	$256, %edx
	movl	$0, %esi
	leaq	my_partner(%rip), %rdi
	call	memset@PLT
	movl	$0, have_partner(%rip)
	call	BegForPartner
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	HandlePartner, .-HandlePartner
	.section	.rodata
.LC6:
	.string	"help"
	.align 8
.LC7:
	.string	"tellics ptell Commands that I understand are : sit, go, fast, slow, abort, flag, +/++/+++/-/--/---{p,n,b,r,q,d,h,trades}, x, dead, formula, help."
.LC8:
	.string	"sorry"
	.align 8
.LC9:
	.string	"tellics ptell Sorry, but I'm not playing a bughouse game."
.LC10:
	.string	"sit"
	.align 8
.LC11:
	.string	"tellics ptell Ok, I sit next move. Tell me when to go."
.LC12:
	.string	"go"
.LC13:
	.string	"move"
.LC14:
	.string	"tellics ptell Ok, I'm moving."
.LC15:
	.string	"fast"
.LC16:
	.string	"time"
	.align 8
.LC17:
	.string	"tellics ptell Ok, I'm going FAST!"
.LC18:
	.string	"slow"
	.align 8
.LC19:
	.string	"tellics ptell Ok, moving normally."
.LC20:
	.string	"abort"
	.align 8
.LC21:
	.string	"tellics ptell Requesting abort..."
.LC22:
	.string	"tellics abort"
.LC23:
	.string	"flag"
.LC24:
	.string	"tellics ptell Flagging..."
.LC25:
	.string	"tellics flag"
.LC26:
	.string	"+"
.LC27:
	.string	"trade"
	.align 8
.LC28:
	.string	"tellics ptell Ok, trading is GOOD"
.LC29:
	.string	"+++"
.LC30:
	.string	"++"
.LC31:
	.string	"tellics ptell Ok, Knight %s\n"
.LC32:
	.string	"tellics ptell Ok, Bishop %s\n"
.LC33:
	.string	"tellics ptell Ok, Rook %s\n"
.LC34:
	.string	"tellics ptell Ok, Queen %s\n"
.LC35:
	.string	"tellics ptell Ok, Pawn %s\n"
	.align 8
.LC36:
	.string	"tellics ptell Ok, Diagonal %s\n"
.LC37:
	.string	"tellics ptell Ok, Heavy %s\n"
.LC38:
	.string	"-"
	.align 8
.LC39:
	.string	"tellics ptell Ok, trading is BAD"
.LC40:
	.string	"---"
.LC41:
	.string	"--"
.LC42:
	.string	"x"
.LC43:
	.string	"mate me anymore"
.LC44:
	.string	"never"
.LC45:
	.string	"mind"
.LC46:
	.string	"="
.LC47:
	.string	"ptell me"
	.align 8
.LC48:
	.string	"tellics ptell Ok, reverting to STANDARD piece values!"
.LC49:
	.string	"i'll have to sit...(dead)"
.LC50:
	.string	"dead"
.LC51:
	.string	"i'll have to sit...(piece)"
.LC52:
	.string	"ok"
.LC53:
	.string	"hi"
.LC54:
	.string	"hello"
.LC55:
	.string	"tellics ptell Greetings."
.LC56:
	.string	"formula"
	.align 8
.LC57:
	.string	"tellics ptell Setting formula, if you are still interrupted, complain to my operator."
	.align 8
.LC58:
	.string	"tellics ptell Sorry, but I don't understand that command."
	.text
	.globl	HandlePtell
	.type	HandlePtell, @function
HandlePtell:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -100(%rbp)
	movabsq	$3344051564526334825, %rax
	movabsq	$7214894564760825390, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$8295759635250439273, %rax
	movl	$171932001, %edx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L12
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L12:
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L14
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	jmp	.L11
.L14:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$3, %edx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L15
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, must_sit(%rip)
	movl	$0, must_go(%rip)
	jmp	.L109
.L15:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$2, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L17
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$0, must_sit(%rip)
	movl	$4, must_go(%rip)
	jmp	.L16
.L18:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L19
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, go_fast(%rip)
	movl	$0, must_sit(%rip)
	jmp	.L16
.L20:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L21
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$0, go_fast(%rip)
	movl	$0, must_sit(%rip)
	jmp	.L109
.L21:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$5, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L22
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	jmp	.L109
.L22:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L23
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	jmp	.L109
.L23:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	.LC26(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L24
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L25
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L26
.L25:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L27
	movl	4+hand_value(%rip), %eax
	addl	$25, %eax
	movl	%eax, 4+hand_value(%rip)
	movl	12+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 12+hand_value(%rip)
	movl	44+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 44+hand_value(%rip)
	movl	28+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 28+hand_value(%rip)
	movl	36+hand_value(%rip), %eax
	addl	$100, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L28
.L27:
	movl	8+hand_value(%rip), %eax
	subl	$25, %eax
	movl	%eax, 8+hand_value(%rip)
	movl	16+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 16+hand_value(%rip)
	movl	48+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 48+hand_value(%rip)
	movl	32+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 32+hand_value(%rip)
	movl	40+hand_value(%rip), %eax
	subl	$100, %eax
	movl	%eax, 40+hand_value(%rip)
.L28:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	jmp	.L29
.L26:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L30
	movl	$50000, -100(%rbp)
	leaq	-96(%rbp), %rax
	movl	$1702125933, (%rax)
	movw	$115, 4(%rax)
	jmp	.L29
.L30:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L31
	movl	$1000, -100(%rbp)
	leaq	-96(%rbp), %rax
	movabsq	$2330984739892130665, %rsi
	movabsq	$8390250225380323175, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movabsq	$2819364886103747685, %rsi
	movabsq	$7813781016549533560, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$7020393217055029601, %rsi
	movabsq	$2985439470060380268, %rdi
	movq	%rsi, 32(%rax)
	movq	%rdi, 40(%rax)
	movb	$0, 48(%rax)
	jmp	.L29
.L31:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L32
	movl	$150, -100(%rbp)
	leaq	-96(%rbp), %rax
	movabsq	$2334113031146992489, %rsi
	movabsq	$7863404162203283496, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movabsq	$8031079389400080485, %rsi
	movabsq	$8029390891345801248, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$7018685336165379442, %rcx
	movq	%rcx, 32(%rax)
	movl	$2715241, 40(%rax)
	jmp	.L29
.L32:
	movl	$0, %eax
	movl	$0, (%rax)
.L29:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L33
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L34
	movl	12+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 12+hand_value(%rip)
	jmp	.L35
.L34:
	movl	16+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 16+hand_value(%rip)
.L35:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L33:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L36
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L37
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
	jmp	.L38
.L37:
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
.L38:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L39
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L40
.L39:
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
.L40:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L36:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L41
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L42
	movl	28+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 28+hand_value(%rip)
	jmp	.L43
.L42:
	movl	32+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 32+hand_value(%rip)
.L43:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L44
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L45
.L44:
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
.L45:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L41:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L46
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L47
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L48
.L47:
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
.L48:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L46:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L49
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L50
	movl	4+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 4+hand_value(%rip)
	jmp	.L51
.L50:
	movl	8+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 8+hand_value(%rip)
.L51:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L52
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
	jmp	.L53
.L52:
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
.L53:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L49:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L54
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L55
	movl	4+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 4+hand_value(%rip)
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L56
.L55:
	movl	8+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 8+hand_value(%rip)
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
.L56:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L54:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L109
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L58
	movl	28+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 28+hand_value(%rip)
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	jmp	.L59
.L58:
	movl	32+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 32+hand_value(%rip)
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
.L59:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L109
.L24:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	.LC38(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L60
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L61
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L62
.L61:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L63
	movl	8+hand_value(%rip), %eax
	subl	$20, %eax
	movl	%eax, 8+hand_value(%rip)
	movl	16+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 16+hand_value(%rip)
	movl	48+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 48+hand_value(%rip)
	movl	32+hand_value(%rip), %eax
	subl	$50, %eax
	movl	%eax, 32+hand_value(%rip)
	movl	40+hand_value(%rip), %eax
	subl	$100, %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L64
.L63:
	movl	4+hand_value(%rip), %eax
	addl	$20, %eax
	movl	%eax, 4+hand_value(%rip)
	movl	12+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 12+hand_value(%rip)
	movl	44+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 44+hand_value(%rip)
	movl	28+hand_value(%rip), %eax
	addl	$50, %eax
	movl	%eax, 28+hand_value(%rip)
	movl	36+hand_value(%rip), %eax
	addl	$100, %eax
	movl	%eax, 36+hand_value(%rip)
.L64:
	leaq	.LC39(%rip), %rdi
	call	puts@PLT
	jmp	.L65
.L62:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L66
	movl	$50000, -100(%rbp)
	leaq	-96(%rbp), %rax
	movabsq	$8032487090387444077, %rsi
	movabsq	$7812731004353257589, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movabsq	$2316952642747985184, %rsi
	movabsq	$2338609694524139639, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$7306930345266409326, %rsi
	movabsq	$2338324182060572786, %rdi
	movq	%rsi, 32(%rax)
	movq	%rdi, 40(%rax)
	movl	$695562105, 48(%rax)
	movb	$0, 52(%rax)
	jmp	.L65
.L66:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L67
	movl	$1000, -100(%rbp)
	leaq	-96(%rbp), %rax
	movabsq	$2330984739892130665, %rsi
	movabsq	$7310591412773609826, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movabsq	$8657924428637695084, %rsi
	movabsq	$7575175955060564007, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$2337207817282855028, %rsi
	movabsq	$7070777194824232812, %rdi
	movq	%rsi, 32(%rax)
	movq	%rdi, 40(%rax)
	movl	$2712673, 48(%rax)
	jmp	.L65
.L67:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L68
	movl	$150, -100(%rbp)
	leaq	-96(%rbp), %rax
	movabsq	$2891421330192757609, %rdx
	movabsq	$7308533420339328112, %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movabsq	$7307221375393474336, %rsi
	movabsq	$2338328219648335982, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$7306930345266409326, %rcx
	movq	%rcx, 32(%rax)
	movl	$1633820786, 40(%rax)
	movw	$10596, 44(%rax)
	movb	$0, 46(%rax)
	jmp	.L65
.L68:
	movl	$0, %eax
	movl	$0, (%rax)
.L65:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L69
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L70
	movl	16+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 16+hand_value(%rip)
	jmp	.L71
.L70:
	movl	12+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 12+hand_value(%rip)
.L71:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L69:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L72
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L73
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
	jmp	.L74
.L73:
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
.L74:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L75
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L76
.L75:
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
.L76:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L72:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L77
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L78
	movl	32+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 32+hand_value(%rip)
	jmp	.L79
.L78:
	movl	28+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 28+hand_value(%rip)
.L79:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L80
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L81
.L80:
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
.L81:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L77:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L82
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L83
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L84
.L83:
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
.L84:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L82:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L85
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L86
	movl	8+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 8+hand_value(%rip)
	jmp	.L87
.L86:
	movl	4+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 4+hand_value(%rip)
.L87:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L88
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
	jmp	.L89
.L88:
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
.L89:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L85:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L90
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L91
	movl	8+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 8+hand_value(%rip)
	movl	48+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 48+hand_value(%rip)
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L92
.L91:
	movl	4+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 4+hand_value(%rip)
	movl	44+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 44+hand_value(%rip)
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
.L92:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L90:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L109
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L94
	movl	32+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 32+hand_value(%rip)
	movl	40+std_hand_value(%rip), %eax
	subl	-100(%rbp), %eax
	movl	%eax, 40+hand_value(%rip)
	jmp	.L95
.L94:
	movl	28+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 28+hand_value(%rip)
	movl	36+std_hand_value(%rip), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, 36+hand_value(%rip)
.L95:
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L109
.L60:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	.LC42(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L96
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L96
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L97
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L96
.L97:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movzbl	.LC46(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L98
.L96:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L98
	leaq	.LC48(%rip), %rdi
	call	puts@PLT
	call	ResetHandValue
	movl	$0, must_sit(%rip)
	movl	$0, partnerdead(%rip)
	movl	$0, piecedead(%rip)
	jmp	.L16
.L98:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$25, %edx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L99
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$4, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L100
.L99:
	movl	$1, go_fast(%rip)
	movl	$0, must_sit(%rip)
	movl	$1, partnerdead(%rip)
	jmp	.L16
.L100:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$26, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$1, go_fast(%rip)
	movl	$0, must_sit(%rip)
	movl	$1, piecedead(%rip)
	jmp	.L109
.L101:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$5, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L110
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$2, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L111
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$2, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L104
	movq	-120(%rbp), %rax
	addq	$6, %rax
	movl	$5, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L105
.L104:
	leaq	.LC55(%rip), %rdi
	call	puts@PLT
	jmp	.L16
.L105:
	movq	-120(%rbp), %rax
	addq	$6, %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L106
	leaq	.LC57(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L109
.L106:
	leaq	.LC58(%rip), %rdi
	call	puts@PLT
.L16:
	nop
.L109:
	nop
	jmp	.L11
.L110:
	nop
	jmp	.L11
.L111:
	nop
.L11:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	HandlePtell, .-HandlePtell
	.section	.rodata
	.align 8
.LC59:
	.string	"tellics ptell p doesn't mate me anymore"
	.align 8
.LC60:
	.string	"tellics ptell n doesn't mate me anymore"
	.align 8
.LC61:
	.string	"tellics ptell b doesn't mate me anymore"
	.align 8
.LC62:
	.string	"tellics ptell r doesn't mate me anymore"
	.align 8
.LC63:
	.string	"tellics ptell q doesn't mate me anymore"
.LC64:
	.string	"tellics ptell ---p"
.LC65:
	.string	"tellics ptell ---n"
.LC66:
	.string	"tellics ptell ---b"
.LC67:
	.string	"tellics ptell ---r"
.LC68:
	.string	"tellics ptell ---q"
.LC69:
	.string	"tellics ptell x"
.LC70:
	.string	"tellics ptell go"
	.text
	.globl	CheckBadFlow
	.type	CheckBadFlow, @function
CheckBadFlow:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24688, %rsp
	movl	%edi, -24676(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -24652(%rbp)
	movl	$0, -24648(%rbp)
	movl	$0, -24644(%rbp)
	movl	$0, -24640(%rbp)
	movl	$0, -24636(%rbp)
	movl	$0, -24632(%rbp)
	movl	$0, -24628(%rbp)
	movl	$0, -24624(%rbp)
	movl	$0, -24620(%rbp)
	movl	$0, -24616(%rbp)
	movl	$0, -24612(%rbp)
	cmpl	$0, -24676(%rbp)
	je	.L113
	movl	$0, pawnmated.4002(%rip)
	movl	$0, knightmated.4003(%rip)
	movl	$0, bishopmated.4004(%rip)
	movl	$0, rookmated.4005(%rip)
	movl	$0, queenmated.4006(%rip)
	jmp	.L112
.L113:
	call	in_check@PLT
	movl	%eax, -24608(%rbp)
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$2, %eax
.L116:
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L117
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L118
	movl	$1, %edx
	jmp	.L119
.L118:
	movl	$2, %edx
.L119:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropaddHolding@PLT
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24604(%rbp)
	movl	$0, -24656(%rbp)
	jmp	.L120
.L126:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24608(%rbp), %edx
	movl	-24656(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L121
	movl	$3, -24648(%rbp)
	call	in_check@PLT
	movl	%eax, -24600(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24596(%rbp)
	movl	$0, -24660(%rbp)
	jmp	.L122
.L124:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24600(%rbp), %edx
	movl	-24660(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L123
	movl	$0, -24648(%rbp)
.L123:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24660(%rbp)
.L122:
	movl	-24660(%rbp), %eax
	cmpl	-24596(%rbp), %eax
	jge	.L121
	cmpl	$0, -24648(%rbp)
	jne	.L124
.L121:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24656(%rbp)
.L120:
	movl	-24656(%rbp), %eax
	cmpl	-24604(%rbp), %eax
	jge	.L125
	cmpl	$0, -24648(%rbp)
	je	.L126
.L125:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L127
	movl	$1, %edx
	jmp	.L128
.L127:
	movl	$2, %edx
.L128:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropremoveHolding@PLT
.L117:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L129
	movl	$3, %eax
	jmp	.L130
.L129:
	movl	$4, %eax
.L130:
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L131
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L132
	movl	$3, %edx
	jmp	.L133
.L132:
	movl	$4, %edx
.L133:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropaddHolding@PLT
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24604(%rbp)
	movl	$0, -24656(%rbp)
	jmp	.L134
.L140:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24608(%rbp), %edx
	movl	-24656(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L135
	movl	$3, -24644(%rbp)
	call	in_check@PLT
	movl	%eax, -24600(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24596(%rbp)
	movl	$0, -24660(%rbp)
	jmp	.L136
.L138:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24600(%rbp), %edx
	movl	-24660(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L137
	movl	$0, -24644(%rbp)
.L137:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24660(%rbp)
.L136:
	movl	-24660(%rbp), %eax
	cmpl	-24596(%rbp), %eax
	jge	.L135
	cmpl	$0, -24644(%rbp)
	jne	.L138
.L135:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24656(%rbp)
.L134:
	movl	-24656(%rbp), %eax
	cmpl	-24604(%rbp), %eax
	jge	.L139
	cmpl	$0, -24644(%rbp)
	je	.L140
.L139:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L141
	movl	$3, %edx
	jmp	.L142
.L141:
	movl	$4, %edx
.L142:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropremoveHolding@PLT
.L131:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L143
	movl	$11, %eax
	jmp	.L144
.L143:
	movl	$12, %eax
.L144:
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L145
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L146
	movl	$11, %edx
	jmp	.L147
.L146:
	movl	$12, %edx
.L147:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropaddHolding@PLT
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24604(%rbp)
	movl	$0, -24656(%rbp)
	jmp	.L148
.L154:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24608(%rbp), %edx
	movl	-24656(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L149
	movl	$3, -24640(%rbp)
	call	in_check@PLT
	movl	%eax, -24600(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24596(%rbp)
	movl	$0, -24660(%rbp)
	jmp	.L150
.L152:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24600(%rbp), %edx
	movl	-24660(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L151
	movl	$0, -24640(%rbp)
.L151:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24660(%rbp)
.L150:
	movl	-24660(%rbp), %eax
	cmpl	-24596(%rbp), %eax
	jge	.L149
	cmpl	$0, -24640(%rbp)
	jne	.L152
.L149:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24656(%rbp)
.L148:
	movl	-24656(%rbp), %eax
	cmpl	-24604(%rbp), %eax
	jge	.L153
	cmpl	$0, -24640(%rbp)
	je	.L154
.L153:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L155
	movl	$11, %edx
	jmp	.L156
.L155:
	movl	$12, %edx
.L156:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropremoveHolding@PLT
.L145:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L157
	movl	$7, %eax
	jmp	.L158
.L157:
	movl	$8, %eax
.L158:
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L159
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L160
	movl	$7, %edx
	jmp	.L161
.L160:
	movl	$8, %edx
.L161:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropaddHolding@PLT
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24604(%rbp)
	movl	$0, -24656(%rbp)
	jmp	.L162
.L168:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24608(%rbp), %edx
	movl	-24656(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L163
	movl	$3, -24636(%rbp)
	call	in_check@PLT
	movl	%eax, -24600(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24596(%rbp)
	movl	$0, -24660(%rbp)
	jmp	.L164
.L166:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24600(%rbp), %edx
	movl	-24660(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L165
	movl	$0, -24636(%rbp)
.L165:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24660(%rbp)
.L164:
	movl	-24660(%rbp), %eax
	cmpl	-24596(%rbp), %eax
	jge	.L163
	cmpl	$0, -24636(%rbp)
	jne	.L166
.L163:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24656(%rbp)
.L162:
	movl	-24656(%rbp), %eax
	cmpl	-24604(%rbp), %eax
	jge	.L167
	cmpl	$0, -24636(%rbp)
	je	.L168
.L167:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L169
	movl	$7, %edx
	jmp	.L170
.L169:
	movl	$8, %edx
.L170:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropremoveHolding@PLT
.L159:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	je	.L171
	movl	$9, %eax
	jmp	.L172
.L171:
	movl	$10, %eax
.L172:
	cltq
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	holding(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L174
	movl	$9, %edx
	jmp	.L175
.L174:
	movl	$10, %edx
.L175:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropaddHolding@PLT
	leaq	-24592(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24604(%rbp)
	movl	$0, -24656(%rbp)
	jmp	.L176
.L182:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24608(%rbp), %edx
	movl	-24656(%rbp), %ecx
	leaq	-24592(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L177
	movl	$3, -24632(%rbp)
	call	in_check@PLT
	movl	%eax, -24600(%rbp)
	leaq	-12304(%rbp), %rax
	movq	%rax, %rdi
	call	gen@PLT
	movl	numb_moves(%rip), %eax
	movl	%eax, -24596(%rbp)
	movl	$0, -24660(%rbp)
	jmp	.L178
.L180:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	-24600(%rbp), %edx
	movl	-24660(%rbp), %ecx
	leaq	-12304(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_legal@PLT
	testl	%eax, %eax
	je	.L179
	movl	$0, -24632(%rbp)
.L179:
	movl	-24660(%rbp), %edx
	leaq	-12304(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24660(%rbp)
.L178:
	movl	-24660(%rbp), %eax
	cmpl	-24596(%rbp), %eax
	jge	.L177
	cmpl	$0, -24632(%rbp)
	jne	.L180
.L177:
	movl	-24656(%rbp), %edx
	leaq	-24592(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	addl	$1, -24656(%rbp)
.L176:
	movl	-24656(%rbp), %eax
	cmpl	-24604(%rbp), %eax
	jge	.L181
	cmpl	$0, -24632(%rbp)
	je	.L182
.L181:
	movl	white_to_move(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	white_to_move(%rip), %edx
	testl	%edx, %edx
	je	.L183
	movl	$9, %edx
	jmp	.L184
.L183:
	movl	$10, %edx
.L184:
	movl	%eax, %esi
	movl	%edx, %edi
	call	DropremoveHolding@PLT
.L173:
	movl	pawnmated.4002(%rip), %eax
	cmpl	%eax, -24648(%rbp)
	je	.L185
	cmpl	$3, -24648(%rbp)
	jne	.L186
	movl	$1, -24628(%rbp)
	jmp	.L185
.L186:
	cmpl	$0, -24648(%rbp)
	jne	.L185
	movl	pawnmated.4002(%rip), %eax
	testl	%eax, %eax
	jne	.L185
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	movl	$1, -24652(%rbp)
.L185:
	movl	knightmated.4003(%rip), %eax
	cmpl	%eax, -24644(%rbp)
	je	.L187
	cmpl	$3, -24644(%rbp)
	jne	.L188
	movl	$1, -24624(%rbp)
	jmp	.L187
.L188:
	cmpl	$0, -24644(%rbp)
	jne	.L187
	movl	knightmated.4003(%rip), %eax
	testl	%eax, %eax
	jne	.L187
	leaq	.LC60(%rip), %rdi
	call	puts@PLT
	movl	$1, -24652(%rbp)
.L187:
	movl	bishopmated.4004(%rip), %eax
	cmpl	%eax, -24640(%rbp)
	je	.L189
	cmpl	$3, -24640(%rbp)
	jne	.L190
	movl	$1, -24620(%rbp)
	jmp	.L189
.L190:
	cmpl	$0, -24640(%rbp)
	jne	.L189
	movl	bishopmated.4004(%rip), %eax
	testl	%eax, %eax
	jne	.L189
	leaq	.LC61(%rip), %rdi
	call	puts@PLT
	movl	$1, -24652(%rbp)
.L189:
	movl	rookmated.4005(%rip), %eax
	cmpl	%eax, -24636(%rbp)
	je	.L191
	cmpl	$3, -24636(%rbp)
	jne	.L192
	movl	$1, -24616(%rbp)
	jmp	.L191
.L192:
	cmpl	$0, -24636(%rbp)
	jne	.L191
	movl	rookmated.4005(%rip), %eax
	testl	%eax, %eax
	jne	.L191
	leaq	.LC62(%rip), %rdi
	call	puts@PLT
	movl	$1, -24652(%rbp)
.L191:
	movl	queenmated.4006(%rip), %eax
	cmpl	%eax, -24632(%rbp)
	je	.L193
	cmpl	$3, -24632(%rbp)
	jne	.L194
	movl	$1, -24612(%rbp)
	jmp	.L193
.L194:
	cmpl	$0, -24632(%rbp)
	jne	.L193
	movl	queenmated.4006(%rip), %eax
	testl	%eax, %eax
	jne	.L193
	leaq	.LC63(%rip), %rdi
	call	puts@PLT
	movl	$1, -24652(%rbp)
.L193:
	cmpl	$0, -24628(%rbp)
	je	.L195
	leaq	.LC64(%rip), %rdi
	call	puts@PLT
.L195:
	cmpl	$0, -24624(%rbp)
	je	.L196
	leaq	.LC65(%rip), %rdi
	call	puts@PLT
.L196:
	cmpl	$0, -24620(%rbp)
	je	.L197
	leaq	.LC66(%rip), %rdi
	call	puts@PLT
.L197:
	cmpl	$0, -24616(%rbp)
	je	.L198
	leaq	.LC67(%rip), %rdi
	call	puts@PLT
.L198:
	cmpl	$0, -24612(%rbp)
	je	.L199
	leaq	.LC68(%rip), %rdi
	call	puts@PLT
.L199:
	movl	piecedead(%rip), %eax
	testl	%eax, %eax
	je	.L200
	cmpl	$0, -24652(%rbp)
	je	.L200
	movl	$0, piecedead(%rip)
	leaq	.LC69(%rip), %rdi
	call	puts@PLT
	leaq	.LC70(%rip), %rdi
	call	puts@PLT
	movl	$0, go_fast(%rip)
.L200:
	cmpl	$0, -24648(%rbp)
	je	.L201
	movl	-24648(%rbp), %eax
	movl	%eax, pawnmated.4002(%rip)
	jmp	.L202
.L201:
	movl	pawnmated.4002(%rip), %eax
	subl	$1, %eax
	movl	%eax, pawnmated.4002(%rip)
.L202:
	cmpl	$0, -24640(%rbp)
	je	.L203
	movl	-24640(%rbp), %eax
	movl	%eax, bishopmated.4004(%rip)
	jmp	.L204
.L203:
	movl	bishopmated.4004(%rip), %eax
	subl	$1, %eax
	movl	%eax, bishopmated.4004(%rip)
.L204:
	cmpl	$0, -24636(%rbp)
	je	.L205
	movl	-24636(%rbp), %eax
	movl	%eax, rookmated.4005(%rip)
	jmp	.L206
.L205:
	movl	rookmated.4005(%rip), %eax
	subl	$1, %eax
	movl	%eax, rookmated.4005(%rip)
.L206:
	cmpl	$0, -24632(%rbp)
	je	.L207
	movl	-24632(%rbp), %eax
	movl	%eax, queenmated.4006(%rip)
	jmp	.L208
.L207:
	movl	queenmated.4006(%rip), %eax
	subl	$1, %eax
	movl	%eax, queenmated.4006(%rip)
.L208:
	cmpl	$0, -24644(%rbp)
	je	.L209
	movl	-24644(%rbp), %eax
	movl	%eax, knightmated.4003(%rip)
	jmp	.L112
.L209:
	movl	knightmated.4003(%rip), %eax
	subl	$1, %eax
	movl	%eax, knightmated.4003(%rip)
	nop
.L112:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L212
	call	__stack_chk_fail@PLT
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	CheckBadFlow, .-CheckBadFlow
	.local	pawnmated.4002
	.comm	pawnmated.4002,4,4
	.local	knightmated.4003
	.comm	knightmated.4003,4,4
	.local	bishopmated.4004
	.comm	bishopmated.4004,4,4
	.local	rookmated.4005
	.comm	rookmated.4005,4,4
	.local	queenmated.4006
	.comm	queenmated.4006,4,4
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
