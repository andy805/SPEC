	.file	"hmmsearch.c"
	.text
	.comm	Alphabet,25,16
	.comm	Alphabet_type,4,4
	.comm	Alphabet_size,4,4
	.comm	Alphabet_iupac,4,4
	.comm	Degenerate,480,32
	.comm	DegenCount,96,32
	.data
	.align 32
	.type	banner, @object
	.size	banner, 58
banner:
	.string	"hmmsearch - search a sequence database with a profile HMM"
	.align 32
	.type	usage, @object
	.size	usage, 382
usage:
	.ascii	"Usage: hmmsearch [-options] <hmmfile> <sequence file or data"
	.ascii	"base>\n  Available options are:\n   -h        : help; print "
	.ascii	"brief h"
	.string	"elp on version and usage\n   -A <n>    : sets alignment output limit to <n> best domain alignments\n   -E <x>    : sets E value cutoff (globE) to <= x\n   -T <x>    : sets T bit threshold (globT) to >= x\n   -Z <n>    : sets Z (# seqs) for E-value calculation\n"
	.align 32
	.type	experts, @object
	.size	experts, 759
experts:
	.ascii	"   --compat       : make best effort to use last version's o"
	.ascii	"utput style\n   --cpu <n>      : run <n> threads in parallel"
	.ascii	" (if threaded)\n   --cut_ga       : use Pfam GA gathering th"
	.ascii	"reshold cutoffs\n   --cut_nc       : use Pfam NC noise thres"
	.ascii	"hold cutoffs\n   --cut_tc       : use Pfam TC trusted thresh"
	.ascii	"old cutoffs\n   --domE <x>     : sets domain Eval cutoff (2n"
	.ascii	"d threshold) to <= x\n   --domT <x>     : sets domain T bit "
	.ascii	"thresh (2nd threshold) to >= x\n   --forward      : use the "
	.ascii	"full Forward() algorithm inst"
	.string	"ead of Viterbi\n   --informat <s> : sequence file is in format <s>\n   --null2        : turn OFF the post hoc second null model\n   --pvm          : run on a Parallel Virtual Machine (PVM)\n   --xnu          : turn ON XNU filtering of target protein sequences\n"
	.section	.rodata
.LC0:
	.string	"-h"
.LC1:
	.string	"-A"
.LC2:
	.string	"-E"
.LC3:
	.string	"-T"
.LC4:
	.string	"-Z"
.LC5:
	.string	"--compat"
.LC6:
	.string	"--cpu"
.LC7:
	.string	"--cut_ga"
.LC8:
	.string	"--cut_nc"
.LC9:
	.string	"--cut_tc"
.LC10:
	.string	"--domE"
.LC11:
	.string	"--domT"
.LC12:
	.string	"--forward"
.LC13:
	.string	"--informat"
.LC14:
	.string	"--null2"
.LC15:
	.string	"--pvm"
.LC16:
	.string	"--xnu"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	OPTIONS, @object
	.size	OPTIONS, 272
OPTIONS:
	.quad	.LC0
	.long	1
	.long	0
	.quad	.LC1
	.long	1
	.long	1
	.quad	.LC2
	.long	1
	.long	2
	.quad	.LC3
	.long	1
	.long	2
	.quad	.LC4
	.long	1
	.long	1
	.quad	.LC5
	.long	0
	.long	0
	.quad	.LC6
	.long	0
	.long	1
	.quad	.LC7
	.long	0
	.long	0
	.quad	.LC8
	.long	0
	.long	0
	.quad	.LC9
	.long	0
	.long	0
	.quad	.LC10
	.long	0
	.long	2
	.quad	.LC11
	.long	0
	.long	2
	.quad	.LC12
	.long	0
	.long	0
	.quad	.LC13
	.long	0
	.long	4
	.quad	.LC14
	.long	0
	.long	0
	.quad	.LC15
	.long	0
	.long	0
	.quad	.LC16
	.long	0
	.long	0
	.section	.rodata
	.align 8
.LC20:
	.string	"unrecognized sequence file format \"%s\""
	.align 8
.LC21:
	.string	"Incorrect number of arguments.\n%s\n"
	.align 8
.LC22:
	.string	"PVM support is not compiled into your HMMER software; --pvm doesn't work."
	.align 8
.LC23:
	.string	"POSIX threads support is not compiled into HMMER; --cpu doesn't have any effect"
.LC24:
	.string	"^.*\\.gz$"
.LC25:
	.string	"-"
.LC26:
	.string	"BLASTDB"
	.align 8
.LC27:
	.string	"Failed to open sequence database file %s\n%s\n"
.LC28:
	.string	"HMMERDB"
.LC29:
	.string	"Failed to open HMM file %s\n%s"
	.align 8
.LC30:
	.string	"Failed to read any HMMs from %s\n"
	.align 8
.LC31:
	.string	"HMM file %s corrupt or in incorrect format? Parse failed"
	.align 8
.LC32:
	.string	"The HMM is a DNA model, and you can't use the --xnu filter on DNA data"
	.align 8
.LC33:
	.string	"HMM %s did not contain the GA, TC, or NC cutoffs you needed"
	.align 8
.LC34:
	.string	"HMM file:                   %s [%s]\n"
	.align 8
.LC35:
	.string	"Sequence database:          %s\n"
	.align 8
.LC36:
	.string	"PVM:                        ACTIVE"
.LC37:
	.string	"per-sequence score cutoff:  "
.LC38:
	.string	"[none]"
.LC39:
	.string	">= %.1f"
.LC40:
	.string	" [GA1]"
.LC41:
	.string	" [NC1]"
.LC42:
	.string	" [TC1]"
.LC43:
	.string	"per-domain score cutoff:    "
.LC44:
	.string	" [GA2]"
.LC45:
	.string	" [NC2]"
.LC46:
	.string	" [TC2]"
.LC47:
	.string	"per-sequence Eval cutoff:   "
.LC48:
	.string	"<= %-10.2g\n"
.LC49:
	.string	"per-domain Eval cutoff:     "
.LC50:
	.string	"<= %10.2g\n"
	.align 8
.LC51:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
.LC52:
	.string	""
.LC53:
	.string	"\nQuery HMM: %s|%s|%s\n"
.LC54:
	.string	"\nQuery HMM:   %s\n"
.LC55:
	.string	"Accession:   %s\n"
.LC56:
	.string	"Description: %s\n"
	.align 8
.LC57:
	.string	"  [HMM has been calibrated; E-values are empirical estimates]"
	.align 8
.LC58:
	.string	"  [No calibration for HMM; E-values are upper bounds]"
	.align 8
.LC59:
	.string	"\nAlignments of top-scoring domains:"
	.align 8
.LC60:
	.string	"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\n"
.LC61:
	.string	"\t[no hits above thresholds]"
	.align 8
.LC62:
	.string	"\t[output cut off at A = %d top alignments]\n"
	.align 8
.LC63:
	.string	"\nTotal sequences searched: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$3, -276(%rbp)
	je	.L2
	movq	-288(%rbp), %rdx
	movl	-276(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	hmmcalibrate@PLT
	jmp	.L86
.L2:
	movl	$0, -228(%rbp)
	movl	$0, -208(%rbp)
	movl	$1, -212(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -184(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -192(%rbp)
	movl	$2147483647, -216(%rbp)
	movsd	.LC17(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movsd	.LC19(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L4
.L22:
	movq	-128(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -216(%rbp)
	jmp	.L4
.L5:
	movq	-128(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	jmp	.L4
.L6:
	movq	-128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	jmp	.L4
.L7:
	movq	-128(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	jmp	.L4
.L8:
	movq	-128(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$1, -196(%rbp)
	jmp	.L4
.L9:
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -192(%rbp)
	jmp	.L4
.L10:
	movq	-128(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$1, -16(%rbp)
	jmp	.L4
.L11:
	movq	-128(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$2, -16(%rbp)
	jmp	.L4
.L12:
	movq	-128(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$3, -16(%rbp)
	jmp	.L4
.L13:
	movq	-128(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	jmp	.L4
.L14:
	movq	-128(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	jmp	.L4
.L15:
	movq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$1, -208(%rbp)
	jmp	.L4
.L16:
	movq	-128(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, -212(%rbp)
	jmp	.L4
.L17:
	movq	-128(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$1, -200(%rbp)
	jmp	.L4
.L18:
	movq	-128(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$1, -204(%rbp)
	jmp	.L4
.L19:
	movq	-128(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	String2SeqfileFormat@PLT
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	jne	.L4
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	jmp	.L4
.L20:
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	stdout(%rip), %rax
	leaq	banner(%rip), %rsi
	movq	%rax, %rdi
	call	HMMERBanner@PLT
	leaq	usage(%rip), %rdi
	call	puts@PLT
	leaq	experts(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L4:
	leaq	-232(%rbp), %rcx
	movq	-288(%rbp), %rsi
	movl	-276(%rbp), %eax
	leaq	-120(%rbp), %rdx
	pushq	%rdx
	leaq	-128(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	leaq	usage(%rip), %r8
	movl	$17, %ecx
	leaq	OPTIONS(%rip), %rdx
	movl	%eax, %edi
	call	Getopt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L22
	movl	-232(%rbp), %eax
	movl	-276(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$2, %eax
	je	.L23
	leaq	usage(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L23:
	movl	-232(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -232(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	-232(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -232(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpl	$0, -200(%rbp)
	je	.L24
	cmpl	$0, -184(%rbp)
	jne	.L24
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L24:
	cmpl	$0, -192(%rbp)
	je	.L25
	cmpl	$0, -180(%rbp)
	jne	.L25
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L25:
	cmpl	$0, -228(%rbp)
	jne	.L26
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	call	Strparse@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-104(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L26
.L27:
	movl	$7, -228(%rbp)
.L26:
	movl	-228(%rbp), %ecx
	movq	-104(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SeqfileOpen@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L28
	movq	-104(%rbp), %rax
	leaq	usage(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L28:
	movq	-112(%rbp), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	call	HMMFileOpen@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L29
	movq	-112(%rbp), %rax
	leaq	usage(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L29:
	leaq	-168(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMMFileRead@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L30:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L31:
	cmpl	$0, -208(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	P7Logoddsify@PLT
	cmpl	$0, -204(%rbp)
	je	.L32
	movl	Alphabet_type(%rip), %eax
	cmpl	$2, %eax
	jne	.L32
	leaq	.LC32(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L32:
	movq	-168(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SetAutocuts@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L33:
	movq	stdout(%rip), %rax
	leaq	banner(%rip), %rsi
	movq	%rax, %rdi
	call	HMMERBanner@PLT
	movq	-168(%rbp), %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -200(%rbp)
	je	.L34
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
.L34:
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-48(%rbp), %xmm0
	ucomiss	.LC18(%rip), %xmm0
	jp	.L35
	ucomiss	.LC18(%rip), %xmm0
	jne	.L35
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	jmp	.L37
.L35:
	movss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC39(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L38
	leaq	.LC40(%rip), %rdi
	call	puts@PLT
	jmp	.L37
.L38:
	movl	-16(%rbp), %eax
	cmpl	$2, %eax
	jne	.L39
	leaq	.LC41(%rip), %rdi
	call	puts@PLT
	jmp	.L37
.L39:
	movl	-16(%rbp), %eax
	cmpl	$3, %eax
	jne	.L40
	leaq	.LC42(%rip), %rdi
	call	puts@PLT
	jmp	.L37
.L40:
	movl	$10, %edi
	call	putchar@PLT
.L37:
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-32(%rbp), %xmm0
	ucomiss	.LC18(%rip), %xmm0
	jp	.L41
	ucomiss	.LC18(%rip), %xmm0
	jne	.L41
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	jmp	.L43
.L41:
	movss	-32(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC39(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L44
	leaq	.LC44(%rip), %rdi
	call	puts@PLT
	jmp	.L43
.L44:
	movl	-16(%rbp), %eax
	cmpl	$2, %eax
	jne	.L45
	leaq	.LC45(%rip), %rdi
	call	puts@PLT
	jmp	.L43
.L45:
	movl	-16(%rbp), %eax
	cmpl	$3, %eax
	jne	.L46
	leaq	.LC46(%rip), %rdi
	call	puts@PLT
	jmp	.L43
.L46:
	movl	$10, %edi
	call	putchar@PLT
.L43:
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movsd	-40(%rbp), %xmm0
	ucomisd	.LC19(%rip), %xmm0
	jp	.L47
	ucomisd	.LC19(%rip), %xmm0
	jne	.L47
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	jmp	.L49
.L47:
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)
	movsd	-296(%rbp), %xmm0
	leaq	.LC48(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L49:
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movsd	-24(%rbp), %xmm0
	ucomisd	.LC19(%rip), %xmm0
	jp	.L50
	ucomisd	.LC19(%rip), %xmm0
	jne	.L50
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	jmp	.L52
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)
	movsd	-296(%rbp), %xmm0
	leaq	.LC50(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L52:
	leaq	.LC51(%rip), %rdi
	call	puts@PLT
	movl	$100, %edx
	movl	$200, %esi
	movl	$-200, %edi
	call	AllocHistogram@PLT
	movq	%rax, -80(%rbp)
	movl	$200, %edi
	call	AllocTophits@PLT
	movq	%rax, -72(%rbp)
	movl	$200, %edi
	call	AllocTophits@PLT
	movq	%rax, -64(%rbp)
	cmpl	$0, -184(%rbp)
	je	.L53
	cmpl	$0, -200(%rbp)
	je	.L53
	movq	-168(%rbp), %rax
	movl	-204(%rbp), %r9d
	movl	-212(%rbp), %r8d
	movl	-208(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-244(%rbp), %rdi
	pushq	%rdi
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	main_loop_pvm
	addq	$32, %rsp
	jmp	.L54
.L53:
	cmpl	$0, -180(%rbp)
	je	.L55
	cmpl	$0, -192(%rbp)
	je	.L55
	movq	-168(%rbp), %rax
	movl	-204(%rbp), %r9d
	movl	-212(%rbp), %r8d
	movl	-208(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	subq	$8, %rsp
	leaq	-244(%rbp), %rdi
	pushq	%rdi
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movl	-192(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	main_loop_threaded
	addq	$48, %rsp
	jmp	.L54
.L55:
	movq	-168(%rbp), %rax
	movl	-204(%rbp), %r9d
	movl	-212(%rbp), %r8d
	movl	-208(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-244(%rbp), %rdi
	pushq	%rdi
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	main_loop_serial
	addq	$32, %rsp
.L54:
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L56
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movq	-80(%rbp), %rax
	movl	20(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-168(%rbp), %rax
	movss	452(%rax), %xmm4
	movq	-168(%rbp), %rax
	movl	448(%rax), %edx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movaps	%xmm1, %xmm3
	movaps	%xmm0, %xmm2
	movaps	%xmm4, %xmm1
	movl	%edx, -296(%rbp)
	movss	-296(%rbp), %xmm0
	movq	%rax, %rdi
	call	ExtremeValueSetHistogram@PLT
.L56:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L57
	movl	-244(%rbp), %eax
	movl	%eax, -12(%rbp)
.L57:
	cmpl	$0, -196(%rbp)
	je	.L58
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L59
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdx
	jmp	.L60
.L59:
	leaq	.LC52(%rip), %rdx
.L60:
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L61
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L62
.L61:
	leaq	.LC52(%rip), %rax
.L62:
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC53(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L63
.L58:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L64
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L65
.L64:
	leaq	.LC38(%rip), %rax
.L65:
	movq	%rax, %rsi
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L66
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L67
.L66:
	leaq	.LC38(%rip), %rax
.L67:
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L63:
	movq	-168(%rbp), %rax
	movl	456(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L68
	leaq	.LC57(%rip), %rdi
	call	puts@PLT
	jmp	.L69
.L68:
	leaq	.LC58(%rip), %rdi
	call	puts@PLT
.L69:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	FullSortTophits@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	TophitsMaxName@PLT
	cmpl	$7, %eax
	jle	.L70
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	TophitsMaxName@PLT
	jmp	.L71
.L70:
	movl	$8, %eax
.L71:
	movl	%eax, -176(%rbp)
	movl	$52, %eax
	subl	-176(%rbp), %eax
	movl	$11, %edx
	cmpl	$11, %eax
	cmovl	%edx, %eax
	movl	%eax, -172(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	FullSortTophits@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	TophitsMaxName@PLT
	cmpl	$7, %eax
	jle	.L72
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	TophitsMaxName@PLT
	jmp	.L73
.L72:
	movl	$8, %eax
.L73:
	movl	%eax, -176(%rbp)
	cmpl	$0, -216(%rbp)
	je	.L74
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L75
.L84:
	movl	-220(%rbp), %eax
	cmpl	-216(%rbp), %eax
	je	.L94
	leaq	-268(%rbp), %r9
	leaq	-144(%rbp), %r8
	leaq	-272(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movl	-224(%rbp), %esi
	movq	-64(%rbp), %rax
	leaq	-160(%rbp), %rdi
	pushq	%rdi
	leaq	-236(%rbp), %rdi
	pushq	%rdi
	leaq	-240(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	leaq	-252(%rbp), %rdi
	pushq	%rdi
	leaq	-256(%rbp), %rdi
	pushq	%rdi
	leaq	-248(%rbp), %rdi
	pushq	%rdi
	leaq	-260(%rbp), %rdi
	pushq	%rdi
	leaq	-264(%rbp), %rdi
	pushq	%rdi
	pushq	$0
	pushq	$0
	leaq	-136(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	GetRankedHit@PLT
	addq	$96, %rsp
	movl	-12(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	-152(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	-12(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	-144(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.L95
	movss	-48(%rbp), %xmm0
	movss	-268(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L95
	movsd	-24(%rbp), %xmm0
	ucomisd	-56(%rbp), %xmm0
	jb	.L81
	movss	-32(%rbp), %xmm1
	movss	-272(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L81
	movss	-272(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-260(%rbp), %edi
	movl	-264(%rbp), %esi
	movl	-236(%rbp), %ecx
	movl	-240(%rbp), %edx
	movq	-136(%rbp), %rax
	movsd	-56(%rbp), %xmm1
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC60(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movq	-160(%rbp), %rdx
	movq	stdout(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PrintFancyAli@PLT
	addl	$1, -220(%rbp)
	jmp	.L81
.L95:
	nop
.L81:
	addl	$1, -224(%rbp)
.L75:
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -224(%rbp)
	jl	.L84
	jmp	.L77
.L94:
	nop
.L77:
	cmpl	$0, -220(%rbp)
	jne	.L85
	leaq	.LC61(%rip), %rdi
	call	puts@PLT
.L85:
	movl	-220(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jne	.L74
	movl	-216(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L74:
	movl	-244(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	FreeHistogram@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SeqfileClose@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	FreeTophits@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	FreeTophits@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
	call	SqdClean@PLT
	movl	$0, %eax
.L86:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.type	main_loop_serial, @function
main_loop_serial:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$520, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movq	%rdx, -472(%rbp)
	movl	%ecx, -476(%rbp)
	movl	%r8d, -480(%rbp)
	movl	%r9d, -484(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-456(%rbp), %rax
	movl	136(%rax), %eax
	movl	$0, %ecx
	movl	$25, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	CreatePlan7Matrix@PLT
	movq	%rax, -416(%rbp)
	movl	$0, -436(%rbp)
	jmp	.L97
.L112:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jne	.L98
	jmp	.L97
.L98:
	addl	$1, -436(%rbp)
	movl	-60(%rbp), %edx
	movq	-424(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	DigitizeSequence@PLT
	movq	%rax, -408(%rbp)
	cmpl	$0, -484(%rbp)
	je	.L99
	movl	Alphabet_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L99
	movl	-60(%rbp), %edx
	movq	-408(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	XNU@PLT
.L99:
	movq	-456(%rbp), %rax
	movl	136(%rax), %edx
	movl	-60(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	P7ViterbiSize@PLT
	cmpl	$1000, %eax
	jg	.L100
	movl	-60(%rbp), %esi
	leaq	-432(%rbp), %rdi
	movq	-416(%rbp), %rcx
	movq	-456(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7Viterbi@PLT
	movd	%xmm0, %eax
	movl	%eax, -440(%rbp)
	jmp	.L101
.L100:
	movl	-60(%rbp), %esi
	leaq	-432(%rbp), %rdi
	movq	-416(%rbp), %rcx
	movq	-456(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	P7SmallViterbi@PLT
	movd	%xmm0, %eax
	movl	%eax, -440(%rbp)
.L101:
	cmpl	$0, -476(%rbp)
	je	.L102
	movl	-60(%rbp), %esi
	movq	-456(%rbp), %rdx
	movq	-408(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	P7Forward@PLT
	movd	%xmm0, %eax
	movl	%eax, -440(%rbp)
	cmpl	$0, -480(%rbp)
	je	.L102
	movq	-432(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-456(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	TraceScoreCorrection@PLT
	movaps	%xmm0, %xmm1
	movss	-440(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -440(%rbp)
.L102:
	movl	-440(%rbp), %edx
	movq	-456(%rbp), %rax
	movl	%edx, -524(%rbp)
	movss	-524(%rbp), %xmm0
	movq	%rax, %rdi
	call	PValue@PLT
	movq	%xmm0, %rax
	movq	%rax, -400(%rbp)
	movq	-472(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L103
	movq	-472(%rbp), %rax
	movl	36(%rax), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	-400(%rbp), %xmm0
	jmp	.L104
.L103:
	cvtsi2sd	-436(%rbp), %xmm0
	mulsd	-400(%rbp), %xmm0
.L104:
	movsd	%xmm0, -392(%rbp)
	movq	-472(%rbp), %rax
	movss	(%rax), %xmm1
	movss	-440(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jb	.L105
	movq	-472(%rbp), %rax
	movsd	8(%rax), %xmm0
	ucomisd	-392(%rbp), %xmm0
	jb	.L105
	movl	-384(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L108
	leaq	-384(%rbp), %rax
	leaq	196(%rax), %r9
	jmp	.L109
.L108:
	movl	$0, %r9d
.L109:
	movl	-384(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L110
	leaq	-384(%rbp), %rax
	leaq	132(%rax), %r8
	jmp	.L111
.L110:
	movl	$0, %r8d
.L111:
	movl	-60(%rbp), %ebx
	movq	-432(%rbp), %rdx
	movl	-440(%rbp), %edi
	movq	-408(%rbp), %r11
	movq	-456(%rbp), %rcx
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	-472(%rbp)
	movl	-480(%rbp), %r10d
	pushq	%r10
	movl	-476(%rbp), %r10d
	pushq	%r10
	pushq	%r9
	pushq	%r8
	leaq	-384(%rbp), %r8
	addq	$4, %r8
	pushq	%r8
	movl	%edi, -524(%rbp)
	movss	-524(%rbp), %xmm0
	movl	%ebx, %r9d
	movq	%r11, %r8
	movq	%rax, %rdi
	call	PostprocessSignificantHit@PLT
	addq	$64, %rsp
	movd	%xmm0, %eax
	movl	%eax, -440(%rbp)
.L105:
	movl	-440(%rbp), %edx
	movq	-496(%rbp), %rax
	movl	%edx, -524(%rbp)
	movss	-524(%rbp), %xmm0
	movq	%rax, %rdi
	call	AddToHistogram@PLT
	movq	-424(%rbp), %rax
	leaq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FreeSequence@PLT
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	P7FreeTrace@PLT
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L97:
	movq	-464(%rbp), %rax
	movl	144(%rax), %esi
	leaq	-384(%rbp), %rcx
	leaq	-424(%rbp), %rdx
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	ReadSeq@PLT
	testl	%eax, %eax
	jne	.L112
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix@PLT
	movq	-520(%rbp), %rax
	movl	-436(%rbp), %edx
	movl	%edx, (%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main_loop_serial, .-main_loop_serial
	.section	.rodata
.LC64:
	.string	"No PVM support"
	.text
	.type	main_loop_pvm, @function
main_loop_pvm:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main_loop_pvm, .-main_loop_pvm
	.section	.rodata
.LC65:
	.string	"No threads support"
	.text
	.type	main_loop_threaded, @function
main_loop_threaded:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main_loop_threaded, .-main_loop_threaded
	.section	.rodata
	.align 8
.LC17:
	.long	0
	.long	1076101120
	.align 4
.LC18:
	.long	4286578687
	.align 8
.LC19:
	.long	3758096384
	.long	1206910975
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
