	.file	"hmmcalibrate.c"
	.text
	.data
	.align 32
	.type	banner, @object
	.size	banner, 48
banner:
	.string	"hmmcalibrate -- calibrate HMM search statistics"
	.align 32
	.type	usage, @object
	.size	usage, 130
usage:
	.string	"Usage: hmmcalibrate [-options] <hmmfile>\nAvailable options are:\n  -h             : print short usage and version info, then exit\n"
	.align 32
	.type	experts, @object
	.size	experts, 456
experts:
	.ascii	"  --cpu <n>      : run <n> threads in parallel (if threaded)"
	.ascii	"\n  --fixed <n>    : fix random sequence length at <n>\n  --"
	.ascii	"histfile <f> : save histogram(s) to file <f>\n  --mean <x>  "
	.ascii	"   : set random seq le"
	.string	"ngth mean at <x> [350]\n  --num <n>      : set number of sampled seqs to <n> [5000]\n  --pvm          : run on a Parallel Virtual Machine (PVM)\n  --sd <x>       : set random seq length std. dev to <x> [350]\n  --seed <n>     : set random seed to <n> [time()]\n"
	.section	.rodata
.LC0:
	.string	"-h"
.LC1:
	.string	"--cpu"
.LC2:
	.string	"--fixed"
.LC3:
	.string	"--histfile"
.LC4:
	.string	"--mean"
.LC5:
	.string	"--num"
.LC6:
	.string	"--pvm"
.LC7:
	.string	"--sd"
.LC8:
	.string	"--seed"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	OPTIONS, @object
	.size	OPTIONS, 144
OPTIONS:
	.quad	.LC0
	.long	1
	.long	0
	.quad	.LC1
	.long	0
	.long	1
	.quad	.LC2
	.long	0
	.long	1
	.quad	.LC3
	.long	0
	.long	4
	.quad	.LC4
	.long	0
	.long	2
	.quad	.LC5
	.long	0
	.long	1
	.quad	.LC6
	.long	0
	.long	0
	.quad	.LC7
	.long	0
	.long	2
	.quad	.LC8
	.long	0
	.long	1
	.section	.rodata
	.align 8
.LC11:
	.string	"Incorrect number of arguments.\n%s\n"
	.align 8
.LC12:
	.string	"PVM support is not compiled into HMMER; --pvm doesn't work."
	.align 8
.LC13:
	.string	"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect"
	.align 8
.LC14:
	.string	"failed to open HMM file %s for reading."
.LC15:
	.string	"w"
	.align 8
.LC16:
	.string	"Failed to open histogram save file %s for writing\n"
.LC17:
	.string	"hmmcalibrate.c"
.LC18:
	.string	"wb"
.LC19:
	.string	"HMM file:                 %s\n"
.LC20:
	.string	"Length fixed to:          %d\n"
	.align 8
.LC21:
	.string	"Length distribution mean: %.0f\n"
	.align 8
.LC22:
	.string	"Length distribution s.d.: %.0f\n"
.LC23:
	.string	"Number of samples:        %d\n"
.LC24:
	.string	"random seed:              %d\n"
.LC25:
	.string	"[not saved]"
.LC26:
	.string	"histogram(s) saved to:    %s\n"
	.align 8
.LC27:
	.string	"PVM:                      ACTIVE"
.LC28:
	.string	"POSIX threads:            %d\n"
	.align 8
.LC29:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
	.align 8
.LC30:
	.string	"HMM file may be corrupt or in incorrect format; parse failed"
	.align 8
.LC31:
	.string	"wait. that can't happen. I didn't do anything."
	.align 8
.LC33:
	.string	"fit failed; --num may be set too small?\n"
.LC34:
	.string	"HMM    : %s\n"
.LC35:
	.string	"mu     : %12f\n"
.LC36:
	.string	"lambda : %12f\n"
.LC37:
	.string	"max    : %12f\n"
.LC38:
	.string	"//"
.LC39:
	.string	"HMM: %s\n"
.LC40:
	.string	"//\n"
	.align 8
.LC41:
	.string	"Ouch. Temporary file %s appeared during the run."
	.align 8
.LC42:
	.string	"Ouch. Temporary file %s couldn't be opened for writing."
	.align 8
.LC43:
	.string	"Ran out of HMMs too early in pass 2"
	.align 8
.LC44:
	.string	"HMM file %s was corrupted? Parse failed in pass 2"
	.text
	.globl	hmmcalibrate
	.type	hmmcalibrate, @function
hmmcalibrate:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$5000, -180(%rbp)
	movl	$0, -172(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -168(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -164(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, -176(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -160(%rbp)
	movl	$20, -152(%rbp)
	movl	$100, -148(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L2
.L11:
	movq	-128(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -156(%rbp)
	jmp	.L2
.L3:
	movq	-128(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -172(%rbp)
	jmp	.L2
.L4:
	movq	-128(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L2
.L5:
	movq	-128(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -168(%rbp)
	jmp	.L2
.L6:
	movq	-128(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -180(%rbp)
	jmp	.L2
.L7:
	movq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$1, -160(%rbp)
	jmp	.L2
.L8:
	movq	-128(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -164(%rbp)
	jmp	.L2
.L9:
	movq	-128(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -176(%rbp)
	jmp	.L2
.L10:
	movq	-128(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L2
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
.L2:
	leaq	-192(%rbp), %rcx
	movq	-224(%rbp), %rsi
	movl	-212(%rbp), %eax
	leaq	-48(%rbp), %rdx
	pushq	%rdx
	leaq	-128(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	leaq	usage(%rip), %r8
	movl	$9, %ecx
	leaq	OPTIONS(%rip), %rdx
	movl	%eax, %edi
	call	Getopt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L11
	movl	-192(%rbp), %eax
	movl	-212(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	je	.L12
	leaq	usage(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L12:
	movl	-192(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -192(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -160(%rbp)
	je	.L13
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L13:
	cmpl	$0, -156(%rbp)
	je	.L14
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L14:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMMFileOpen@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L15
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L15:
	movq	$0, -104(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L16
	movq	-112(%rbp), %rax
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L16
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L16:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$5, %rax
	movq	%rax, %rdx
	movl	$265, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-64(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$2003136046, (%rax)
	movb	$0, 4(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	FileExists@PLT
	testl	%eax, %eax
	je	.L17
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	remove@PLT
	testl	%eax, %eax
	je	.L17
	movl	$270, %esi
	leaq	.LC17(%rip), %rdi
	call	Panic@PLT
.L17:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L18
	leaq	.LC18(%rip), %rax
	movq	%rax, -120(%rbp)
	jmp	.L19
.L18:
	leaq	.LC15(%rip), %rax
	movq	%rax, -120(%rbp)
.L19:
	movq	stdout(%rip), %rax
	leaq	banner(%rip), %rsi
	movq	%rax, %rdi
	call	HMMERBanner@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -172(%rbp)
	je	.L20
	movl	-172(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L21
.L20:
	cvtss2sd	-168(%rbp), %xmm0
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-164(%rbp), %xmm0
	leaq	.LC22(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L21:
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-176(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpq	$0, -112(%rbp)
	je	.L22
	movq	-112(%rbp), %rax
	jmp	.L23
.L22:
	leaq	.LC25(%rip), %rax
.L23:
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	cmpl	$0, -160(%rbp)
	je	.L24
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	jmp	.L25
.L24:
	cmpl	$0, -156(%rbp)
	jle	.L25
	movl	-156(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L25:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$0, -184(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$308, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -96(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$309, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -88(%rbp)
	jmp	.L26
.L33:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L27
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L27:
	cmpl	$0, -160(%rbp)
	jne	.L28
	cmpl	$0, -156(%rbp)
	jne	.L28
	movq	-144(%rbp), %rax
	leaq	-196(%rbp), %r9
	leaq	-136(%rbp), %r8
	movl	-172(%rbp), %ecx
	movss	-164(%rbp), %xmm0
	movl	-168(%rbp), %edi
	movl	-180(%rbp), %edx
	movl	-176(%rbp), %esi
	movaps	%xmm0, %xmm1
	movl	%edi, -216(%rbp)
	movss	-216(%rbp), %xmm0
	movq	%rax, %rdi
	call	main_loop_serial
	jmp	.L29
.L28:
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L29:
	movq	-136(%rbp), %rax
	movss	.LC32(%rip), %xmm0
	movl	$1, %esi
	movq	%rax, %rdi
	call	ExtremeValueFitHistogram@PLT
	testl	%eax, %eax
	jne	.L30
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L30:
	movq	-136(%rbp), %rax
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movss	44(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movq	-136(%rbp), %rax
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movss	48(%rax), %xmm0
	movss	%xmm0, (%rdx)
	addl	$1, -184(%rbp)
	movl	-184(%rbp), %ecx
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
	testl	%eax, %eax
	jne	.L31
	movl	-184(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$348, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -96(%rbp)
	movl	-184(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$349, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, -88(%rbp)
.L31:
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-136(%rbp), %rax
	movss	44(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-136(%rbp), %rax
	movss	48(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC36(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-196(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC37(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	cmpq	$0, -104(%rbp)
	je	.L32
	movq	-144(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-136(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PrintASCIIHistogram@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite@PLT
.L32:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	FreeHistogram@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
.L26:
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMMFileRead@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileRewind@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	FileExists@PLT
	testl	%eax, %eax
	je	.L34
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L34:
	movq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L35
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L35:
	movl	$0, -188(%rbp)
	jmp	.L36
.L41:
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HMMFileRead@PLT
	testl	%eax, %eax
	jne	.L37
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L37:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	jne	.L38
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L38:
	movl	-188(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, 448(%rax)
	movl	-188(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, 452(%rax)
	movq	-144(%rbp), %rax
	movl	456(%rax), %edx
	movq	-144(%rbp), %rax
	orb	$-128, %dl
	movl	%edx, 456(%rax)
	movq	-144(%rbp), %rax
	movq	-224(%rbp), %rdx
	movl	-212(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Plan7ComlogAppend@PLT
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L39
	movq	-144(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteBinHMM@PLT
	jmp	.L40
.L39:
	movq	-144(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteAscHMM@PLT
.L40:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7@PLT
	addl	$1, -188(%rbp)
.L36:
	movl	-188(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jl	.L41
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	HMMFileClose@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	testl	%eax, %eax
	je	.L42
	movl	$415, %esi
	leaq	.LC17(%rip), %rdi
	call	Panic@PLT
.L42:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -104(%rbp)
	je	.L43
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L43:
	call	SqdClean@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	hmmcalibrate, .-hmmcalibrate
	.type	main_loop_serial, @function
main_loop_serial:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movl	%edx, -176(%rbp)
	movss	%xmm0, -180(%rbp)
	movss	%xmm1, -184(%rbp)
	movl	%ecx, -188(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	sre_srandom@PLT
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	P7Logoddsify@PLT
	leaq	-148(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	P7DefaultNullModel@PLT
	movl	$100, %edx
	movl	$200, %esi
	movl	$-200, %edi
	call	AllocHistogram@PLT
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movl	136(%rax), %eax
	movl	$0, %ecx
	movl	$25, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	CreatePlan7Matrix@PLT
	movq	%rax, -120(%rbp)
	movss	.LC45(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L47
.L54:
	cmpl	$0, -188(%rbp)
	je	.L48
	movl	-188(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.L49
.L48:
	cvtss2sd	-184(%rbp), %xmm1
	cvtss2sd	-180(%rbp), %xmm0
	call	Gaussrandom@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	jle	.L48
.L49:
	movl	Alphabet_size(%rip), %edx
	movl	-136(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	Alphabet(%rip), %rdi
	call	RandomSequence@PLT
	movq	%rax, -112(%rbp)
	movl	-136(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	DigitizeSequence@PLT
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movl	136(%rax), %edx
	movl	-136(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	P7ViterbiSize@PLT
	cmpl	$1000, %eax
	jg	.L50
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-136(%rbp), %esi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	P7Viterbi@PLT
	movd	%xmm0, %eax
	movl	%eax, -140(%rbp)
	jmp	.L51
.L50:
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	-136(%rbp), %esi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	P7SmallViterbi@PLT
	movd	%xmm0, %eax
	movl	%eax, -140(%rbp)
.L51:
	movl	-140(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, -192(%rbp)
	movss	-192(%rbp), %xmm0
	movq	%rax, %rdi
	call	AddToHistogram@PLT
	movss	-140(%rbp), %xmm0
	ucomiss	-144(%rbp), %xmm0
	jbe	.L52
	movss	-140(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
.L52:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -132(%rbp)
.L47:
	movl	-132(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jl	.L54
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	FreePlan7Matrix@PLT
	movq	-200(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-208(%rbp), %rax
	movss	-144(%rbp), %xmm0
	movss	%xmm0, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main_loop_serial, .-main_loop_serial
	.section	.rodata
	.align 4
.LC9:
	.long	1134723072
	.align 4
.LC10:
	.long	1128792064
	.align 4
.LC32:
	.long	1176255488
	.align 4
.LC45:
	.long	4286578687
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
