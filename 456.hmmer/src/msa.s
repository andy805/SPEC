	.file	"msa.c"
	.text
	.section	.rodata
.LC0:
	.string	"msa.c"
	.text
	.globl	MSAAlloc
	.type	MSAAlloc, @function
MSAAlloc:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$360, %edx
	movl	$68, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$69, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$70, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$71, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 328(%rax)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$72, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$0, -28(%rbp)
	jmp	.L2
.L5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, (%rax)
	cmpl	$0, -40(%rbp)
	je	.L3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	%rax, %rdx
	movl	$80, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	jmp	.L4
.L3:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L4:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L5
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 320(%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 324(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 344(%rax)
	call	GKIInit@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 352(%rax)
	movl	$0, -28(%rbp)
	jmp	.L6
.L7:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movl	$0, 8(%rax,%rdx,4)
	addl	$1, -28(%rbp)
.L6:
	cmpl	$5, -28(%rbp)
	jle	.L7
	movq	-24(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 208(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 232(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 240(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 272(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	MSAAlloc, .-MSAAlloc
	.globl	MSAExpand
	.type	MSAExpand, @function
MSAExpand:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	320(%rax), %edx
	movq	-40(%rbp), %rax
	movl	324(%rax), %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 320(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$162, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$163, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$164, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 328(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$165, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$168, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$169, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 336(%rax)
.L10:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$172, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$173, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 344(%rax)
.L11:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$176, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 96(%rax)
.L12:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$178, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 104(%rax)
.L13:
	movq	-40(%rbp), %rax
	movl	320(%rax), %edx
	movq	-40(%rbp), %rax
	movl	324(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	jmp	.L14
.L25:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L15:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L16:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rbx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$189, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, (%rbx)
	jmp	.L18
.L17:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L18:
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	112(%rcx), %rcx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rbx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$195, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, (%rbx)
	jmp	.L21
.L20:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L21:
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
.L19:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rbx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$201, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, (%rbx)
	jmp	.L24
.L23:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L24:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
.L22:
	addl	$1, -24(%rbp)
.L14:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L25
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movl	$0, -24(%rbp)
	jmp	.L27
.L31:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	224(%rdx), %rdx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	%rax, %rdx
	movl	$217, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	320(%rax), %edx
	movq	-40(%rbp), %rax
	movl	324(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	jmp	.L29
.L30:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L29:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L30
.L28:
	addl	$1, -24(%rbp)
.L27:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L31
.L26:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$0, -24(%rbp)
	jmp	.L33
.L37:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	288(%rdx), %rdx
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rdx,%rsi), %rbx
	movq	%rax, %rdx
	movl	$232, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	320(%rax), %edx
	movq	-40(%rbp), %rax
	movl	324(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	jmp	.L35
.L36:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L36
.L34:
	addl	$1, -24(%rbp)
.L33:
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L37
	nop
.L39:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MSAExpand, .-MSAExpand
	.globl	MSAFree
	.type	MSAFree, @function
MSAFree:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L41:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L42:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L43:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L44:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L45:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L46:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L47:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L48:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L49:
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L50:
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L51:
	movq	-8(%rbp), %rax
	movl	184(%rax), %edx
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	208(%rax), %edx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	208(%rax), %edx
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	240(%rax), %edx
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	240(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Free3DArray@PLT
	movq	-8(%rbp), %rax
	movl	272(%rax), %edx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	272(%rax), %edx
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	304(%rax), %edx
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Free2DArray@PLT
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	Free3DArray@PLT
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	call	GKIFree@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	call	GKIFree@PLT
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	GKIFree@PLT
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	GKIFree@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	MSAFree, .-MSAFree
	.globl	MSASetSeqAccession
	.type	MSASetSeqAccession, @function
MSASetSeqAccession:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$310, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 96(%rax)
	movl	$0, -20(%rbp)
	jmp	.L54
.L55:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L54:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L55
.L53:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-56(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	MSASetSeqAccession, .-MSASetSeqAccession
	.globl	MSASetSeqDescription
	.type	MSASetSeqDescription, @function
MSASetSeqDescription:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$335, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 104(%rax)
	movl	$0, -20(%rbp)
	jmp	.L58
.L59:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L58:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L59
.L57:
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-56(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	MSASetSeqDescription, .-MSASetSeqDescription
	.globl	MSAAddComment
	.type	MSAAddComment, @function
MSAAddComment:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movl	$80, %edx
	movl	$362, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-24(%rbp), %rax
	movl	$10, 188(%rax)
.L61:
	movq	-24(%rbp), %rax
	movl	184(%rax), %edx
	movq	-24(%rbp), %rax
	movl	188(%rax), %eax
	cmpl	%eax, %edx
	jne	.L62
	movq	-24(%rbp), %rax
	movl	188(%rax), %eax
	leal	10(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 188(%rax)
	movq	-24(%rbp), %rax
	movl	188(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$367, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 176(%rax)
.L62:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	184(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movl	184(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 184(%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	MSAAddComment, .-MSAAddComment
	.globl	MSAAddGF
	.type	MSAAddGF, @function
MSAAddGF:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	movl	$80, %edx
	movl	$395, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	$80, %edx
	movl	$396, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movl	$10, 212(%rax)
.L65:
	movq	-24(%rbp), %rax
	movl	208(%rax), %edx
	movq	-24(%rbp), %rax
	movl	212(%rax), %eax
	cmpl	%eax, %edx
	jne	.L66
	movq	-24(%rbp), %rax
	movl	212(%rax), %eax
	leal	10(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 212(%rax)
	movq	-24(%rbp), %rax
	movl	212(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$401, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	movl	212(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$402, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
.L66:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	208(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	208(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movl	208(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 208(%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	MSAAddGF, .-MSAAddGF
	.section	.rodata
.LC3:
	.string	"\n"
.LC4:
	.string	"failed to sre_strcat()"
	.text
	.globl	MSAAddGS
	.type	MSAAddGS, @function
MSAAddGS:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	call	GKIInit@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -28(%rbp)
	movl	$8, %edx
	movl	$447, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 216(%rax)
	movl	$8, %edx
	movl	$448, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rbx
	movl	$449, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -24(%rbp)
	jmp	.L70
.L71:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -24(%rbp)
.L70:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L71
	jmp	.L72
.L69:
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L72
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$463, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$464, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movl	$465, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -24(%rbp)
	jmp	.L73
.L74:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -24(%rbp)
.L73:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L74
.L72:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L75
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 240(%rax)
.L75:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-64(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	jmp	.L80
.L76:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movl	$1, %ecx
	leaq	.LC3(%rip), %rdx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strcat@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L78
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L78:
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-64(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$-1, %ecx
	movl	%eax, %esi
	call	sre_strcat@PLT
	testl	%eax, %eax
	jns	.L80
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
	nop
.L80:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	MSAAddGS, .-MSAAddGS
	.globl	MSAAppendGC
	.type	MSAAppendGC, @function
MSAAppendGC:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	movl	$8, %edx
	movl	$517, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 248(%rax)
	movl	$8, %edx
	movl	$518, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 256(%rax)
	call	GKIInit@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	$0, (%rax)
	jmp	.L83
.L82:
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L83
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$533, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$534, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L83:
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L84
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 272(%rax)
.L84:
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-56(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	sre_strcat@PLT
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	MSAAppendGC, .-MSAAppendGC
	.globl	MSAGetGC
	.type	MSAGetGC, @function
MSAGetGC:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L89
	movl	$0, %eax
	jmp	.L88
.L89:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	MSAGetGC, .-MSAGetGC
	.globl	MSAAppendGR
	.type	MSAAppendGR, @function
MSAAppendGR:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	movl	$8, %edx
	movl	$601, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 280(%rax)
	movl	$8, %edx
	movl	$602, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rbx
	movl	$603, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -20(%rbp)
	jmp	.L92
.L93:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L92:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L93
	call	GKIInit@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 296(%rax)
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -24(%rbp)
	jmp	.L94
.L91:
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L94
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$620, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$621, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_realloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	288(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movl	$622, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -20(%rbp)
	jmp	.L95
.L96:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L95:
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L96
.L94:
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jne	.L97
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	304(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 304(%rax)
.L97:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-64(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdx
	movl	$-1, %esi
	call	sre_strcat@PLT
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	MSAAppendGR, .-MSAAppendGR
	.section	.rodata
.LC5:
	.string	""
	.align 8
.LC6:
	.string	"Parse error: no sequences were found for alignment %s"
	.align 8
.LC7:
	.string	"Parse error: No sequence for %s in alignment %s"
	.align 8
.LC8:
	.string	"Parse error: some weights are set, but %s doesn't have one in alignment %s"
	.align 8
.LC9:
	.string	"Parse error: sequence %s: length %d, expected %d in alignment %s"
	.align 8
.LC10:
	.string	"Parse error: #=GR SS annotation for %s: length %d, expected %d in alignment %s"
	.align 8
.LC11:
	.string	"Parse error: #=GR SA annotation for %s: length %d, expected %d in alignment %s"
	.align 8
.LC12:
	.string	"Parse error: #=GC SS_cons annotation: length %d, expected %d in alignment %s"
	.align 8
.LC13:
	.string	"Parse error: #=GC SA_cons annotation: length %d, expected %d in alignment %s"
	.align 8
.LC14:
	.string	"Parse error: #=GC RF annotation: length %d, expected %d in alignment %s"
	.text
	.globl	MSAVerifyParse
	.type	MSAVerifyParse, @function
MSAVerifyParse:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L100
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L102
.L101:
	leaq	.LC5(%rip), %rax
.L102:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L100:
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	$0, -20(%rbp)
	jmp	.L103
.L120:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L106
.L105:
	leaq	.LC5(%rip), %rax
.L106:
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L104:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L107
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L107
	movss	.LC1(%rip), %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L107
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L110
.L109:
	leaq	.LC5(%rip), %rax
.L110:
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L107:
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L111
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L113
.L112:
	leaq	.LC5(%rip), %rax
.L113:
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %ecx
	movq	-40(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L111:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L114
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L116
.L115:
	leaq	.LC5(%rip), %rax
.L116:
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %ecx
	movq	-40(%rbp), %rdx
	movq	336(%rdx), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	movq	%rax, %r8
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L114:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L117
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L119
.L118:
	leaq	.LC5(%rip), %rax
.L119:
	movq	-40(%rbp), %rdx
	movl	24(%rdx), %ecx
	movq	-40(%rbp), %rdx
	movq	344(%rdx), %rdx
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	salq	$2, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-20(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rsi
	movq	(%rsi), %rsi
	movq	%rax, %r8
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L117:
	addl	$1, -20(%rbp)
.L103:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L120
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L121
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	jmp	.L123
.L122:
	leaq	.LC5(%rip), %rbx
.L123:
	movq	-40(%rbp), %rax
	movl	24(%rax), %r12d
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rbx, %rcx
	movl	%r12d, %edx
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L121:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L124
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	jmp	.L126
.L125:
	leaq	.LC5(%rip), %rbx
.L126:
	movq	-40(%rbp), %rax
	movl	24(%rax), %r12d
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rbx, %rcx
	movl	%r12d, %edx
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L124:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L127
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	jmp	.L129
.L128:
	leaq	.LC5(%rip), %rbx
.L129:
	movq	-40(%rbp), %rax
	movl	24(%rax), %r12d
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rbx, %rcx
	movl	%r12d, %edx
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L127:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L130
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movss	.LC15(%rip), %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	FSet@PLT
.L130:
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 328(%rax)
.L131:
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	je	.L132
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 336(%rax)
.L132:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 344(%rax)
	nop
.L136:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	MSAVerifyParse, .-MSAVerifyParse
	.section	.rodata
.LC16:
	.string	"-"
.LC17:
	.string	"[STDIN]"
.LC18:
	.string	"r"
.LC19:
	.string	"%s.ssi"
	.align 8
.LC20:
	.string	"Can't autodetect alignment file format from a stdin or gzip pipe"
	.align 8
.LC21:
	.string	"Can't determine format of multiple alignment file %s"
	.text
	.globl	MSAFileOpen
	.type	MSAFileOpen, @function
MSAFileOpen:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$64, %edx
	movl	$760, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movq	stdin(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$-1, %esi
	leaq	.LC17(%rip), %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.L139
.L138:
	movq	-72(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$5, %rax
	movq	%rax, %rdx
	movl	$806, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L141
.L140:
	leaq	-56(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EnvFileOpen@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	FileConcat@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$5, %rax
	movq	%rax, %rdx
	movl	$813, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L141
.L142:
	movl	$0, %eax
	jmp	.L143
.L141:
	movq	-40(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-72(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSIOpen@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L139:
	cmpl	$0, -76(%rbp)
	jne	.L144
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$1, %eax
	je	.L145
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L146
.L145:
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L146:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	MSAFileFormat
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L144
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L144:
	movq	-40(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 56(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-40(%rbp), %rax
.L143:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L147
	call	__stack_chk_fail@PLT
.L147:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	MSAFileOpen, .-MSAFileOpen
	.globl	MSAFileRewind
	.type	MSAFileRewind, @function
MSAFileRewind:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L149
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L150
.L149:
	movl	$0, %eax
	jmp	.L151
.L150:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$1, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	MSAFileRewind, .-MSAFileRewind
	.globl	MSAFilePositionByKey
	.type	MSAFilePositionByKey, @function
MSAFilePositionByKey:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movl	$0, %eax
	jmp	.L157
.L153:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	SSIGetOffsetByName@PLT
	testl	%eax, %eax
	je	.L155
	movl	$0, %eax
	jmp	.L157
.L155:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition@PLT
	testl	%eax, %eax
	je	.L156
	movl	$0, %eax
	jmp	.L157
.L156:
	movl	$1, %eax
.L157:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	MSAFilePositionByKey, .-MSAFilePositionByKey
	.globl	MSAFilePositionByIndex
	.type	MSAFilePositionByIndex, @function
MSAFilePositionByIndex:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L160
	movl	$0, %eax
	jmp	.L164
.L160:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	SSIGetOffsetByNumber@PLT
	testl	%eax, %eax
	je	.L162
	movl	$0, %eax
	jmp	.L164
.L162:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSISetFilePosition@PLT
	testl	%eax, %eax
	je	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	movl	$1, %eax
.L164:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L165
	call	__stack_chk_fail@PLT
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	MSAFilePositionByIndex, .-MSAFilePositionByIndex
	.section	.rodata
	.align 8
.LC22:
	.string	"MSAFILE corrupted: bad format index"
	.text
	.globl	MSAFileRead
	.type	MSAFileRead, @function
MSAFileRead:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	subl	$101, %eax
	cmpl	$5, %eax
	ja	.L167
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L169(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L169(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L169:
	.long	.L168-.L169
	.long	.L170-.L169
	.long	.L171-.L169
	.long	.L172-.L169
	.long	.L173-.L169
	.long	.L174-.L169
	.text
.L168:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadStockholm@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L171:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadMSF@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L173:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadA2M@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L172:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadClustal@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L170:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadSELEX@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L174:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ReadPhylip@PLT
	movq	%rax, -8(%rbp)
	jmp	.L175
.L167:
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L175:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	MSAFileRead, .-MSAFileRead
	.globl	MSAFileClose
	.type	MSAFileClose, @function
MSAFileClose:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L178
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L178:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L179
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L179:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	SSIClose@PLT
.L180:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L181
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L181:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	MSAFileClose, .-MSAFileClose
	.globl	MSAFileGetLine
	.type	MSAFileGetLine, @function
MSAFileGetLine:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	32(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	sre_fgets@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L183
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	MSAFileGetLine, .-MSAFileGetLine
	.section	.rodata
	.align 8
.LC23:
	.string	"can't write. no such alignment format %d\n"
	.text
	.globl	MSAFileWrite
	.type	MSAFileWrite, @function
MSAFileWrite:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %eax
	subl	$101, %eax
	cmpl	$5, %eax
	ja	.L186
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L188(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L188(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L188:
	.long	.L187-.L188
	.long	.L189-.L188
	.long	.L190-.L188
	.long	.L191-.L188
	.long	.L192-.L188
	.long	.L193-.L188
	.text
.L192:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteA2M@PLT
	jmp	.L194
.L191:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteClustal@PLT
	jmp	.L194
.L190:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteMSF@PLT
	jmp	.L194
.L193:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WritePhylip@PLT
	jmp	.L194
.L189:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteSELEX@PLT
	jmp	.L194
.L187:
	cmpl	$0, -24(%rbp)
	je	.L195
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteStockholmOneBlock@PLT
	jmp	.L194
.L195:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WriteStockholm@PLT
	jmp	.L194
.L186:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L194:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	MSAFileWrite, .-MSAFileWrite
	.globl	MSAGetSeqidx
	.type	MSAGetSeqidx, @function
MSAGetSeqidx:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L198
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jge	.L198
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L198
	movl	-52(%rbp), %eax
	jmp	.L199
.L198:
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIKeyIndex@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L200
	movl	-20(%rbp), %eax
	jmp	.L199
.L200:
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L201
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	MSAExpand
.L201:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-48(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	-20(%rbp), %eax
.L199:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	MSAGetSeqidx, .-MSAGetSeqidx
	.globl	MSAFromAINFO
	.type	MSAFromAINFO, @function
MSAFromAINFO:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	MSAAlloc
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L203
.L214:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rax,%rcx), %rbx
	movl	$-1, %esi
	movq	%rdx, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L204
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	132(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqAccession
.L204:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L205
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	leaq	196(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqDescription
.L205:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L206
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1055, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1056, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 336(%rax)
	movl	$0, -28(%rbp)
	jmp	.L208
.L209:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L208:
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L209
.L207:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	344(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeAlignedString@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, (%rdx)
.L206:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L210
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L211
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1068, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1069, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 344(%rax)
	movl	$0, -28(%rbp)
	jmp	.L212
.L213:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -28(%rbp)
.L212:
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L213
.L211:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	imulq	$360, %rax, %rax
	addq	%rdx, %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edi
	movslq	%edi, %rdi
	salq	$3, %rdi
	addq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	MakeAlignedString@PLT
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, (%rdx)
.L210:
	addl	$1, -32(%rbp)
.L203:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L214
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L215
	movq	-48(%rbp), %rax
	movss	80(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 128(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 152(%rax)
	movq	-48(%rbp), %rax
	movss	84(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 132(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 156(%rax)
.L215:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L216
	movq	-48(%rbp), %rax
	movss	88(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 168(%rax)
	movq	-48(%rbp), %rax
	movss	92(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 148(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 172(%rax)
.L216:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L217
	movq	-48(%rbp), %rax
	movss	96(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 136(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 160(%rax)
	movq	-48(%rbp), %rax
	movss	100(%rax), %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 140(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 164(%rax)
.L217:
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	MSAFromAINFO, .-MSAFromAINFO
	.section	.rodata
	.align 8
.LC24:
	.string	"File %s does not appear to be an alignment file;\nrather, it appears to be an unaligned file in %s format.\nI'm expecting an alignment file in this context.\n"
	.text
	.globl	MSAFileFormat
	.type	MSAFileFormat, @function
MSAFileFormat:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SeqfileFormat@PLT
	movl	%eax, -4(%rbp)
	cmpl	$7, -4(%rbp)
	jne	.L220
	movl	$105, -4(%rbp)
.L220:
	cmpl	$0, -4(%rbp)
	je	.L221
	cmpl	$100, -4(%rbp)
	jg	.L221
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	SeqfileFormat2String@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	Die@PLT
.L221:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	MSAFileFormat, .-MSAFileFormat
	.globl	MSAMingap
	.type	MSAMingap, @function
MSAMingap:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1157, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L224
.L231:
	movl	$0, -12(%rbp)
	jmp	.L225
.L228:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L226
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L226
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L226
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L226
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jne	.L233
.L226:
	addl	$1, -12(%rbp)
.L225:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L228
	jmp	.L227
.L233:
	nop
.L227:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L229
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L230
.L229:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L230:
	addl	$1, -16(%rbp)
.L224:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L231
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAShorterAlignment
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	MSAMingap, .-MSAMingap
	.globl	MSANogap
	.type	MSANogap, @function
MSANogap:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	movl	$1189, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L235
.L241:
	movl	$0, -12(%rbp)
	jmp	.L236
.L238:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L237
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L237
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L237
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L237
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L237
	addl	$1, -12(%rbp)
.L236:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L238
.L237:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L239
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	jmp	.L240
.L239:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
.L240:
	addl	$1, -16(%rbp)
.L235:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L241
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MSAShorterAlignment
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	MSANogap, .-MSANogap
	.globl	MSAShorterAlignment
	.type	MSAShorterAlignment, @function
MSAShorterAlignment:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L244
.L260:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L274
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.L247
	movl	$0, -8(%rbp)
	jmp	.L248
.L254:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L249:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L250:
	movl	$0, -4(%rbp)
	jmp	.L251
.L253:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L252
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L252:
	addl	$1, -4(%rbp)
.L251:
	movq	-24(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L253
	addl	$1, -8(%rbp)
.L248:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L254
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L255:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L256
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L256:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L257
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
.L257:
	movl	$0, -4(%rbp)
	jmp	.L258
.L259:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	(%rcx), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L258:
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L259
.L247:
	addl	$1, -12(%rbp)
	jmp	.L246
.L274:
	nop
.L246:
	addl	$1, -16(%rbp)
.L244:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L260
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	$0, -8(%rbp)
	jmp	.L261
.L267:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L262
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L262
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L262:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L263:
	movl	$0, -4(%rbp)
	jmp	.L264
.L266:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L265
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L265:
	addl	$1, -4(%rbp)
.L264:
	movq	-24(%rbp), %rax
	movl	304(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L266
	addl	$1, -8(%rbp)
.L261:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L267
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L268
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L268:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L269
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L269:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L270
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L270:
	movl	$0, -4(%rbp)
	jmp	.L271
.L272:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
.L271:
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L272
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	MSAShorterAlignment, .-MSAShorterAlignment
	.globl	MSASmallerAlignment
	.type	MSASmallerAlignment, @function
MSASmallerAlignment:
.LFB31:
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
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L276
.L278:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L277
	addl	$1, -40(%rbp)
.L277:
	addl	$1, -36(%rbp)
.L276:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L278
	cmpl	$0, -40(%rbp)
	jne	.L279
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L275
.L279:
	movl	-40(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	MSAAlloc
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L281
.L289:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L282
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rbx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rbx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GKIStoreKey@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqAccession
.L283:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L284
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	MSASetSeqDescription
.L284:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L285
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L285
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L286
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1333, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
.L286:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	112(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
.L285:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L288
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$1338, %esi
	leaq	.LC0(%rip), %rdi
	call	sre_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 120(%rax)
.L288:
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	120(%rdx), %rdx
	movl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, (%rbx)
.L287:
	addl	$1, -32(%rbp)
.L282:
	addl	$1, -36(%rbp)
.L281:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L289
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-56(%rbp), %rax
	movl	36(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	sre_strdup@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$0, -28(%rbp)
	jmp	.L290
.L291:
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movss	(%rax,%rdx,4), %xmm0
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$36, %rdx
	movl	8(%rax,%rdx,4), %edx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$36, %rcx
	movl	%edx, 8(%rax,%rcx,4)
	addl	$1, -28(%rbp)
.L290:
	cmpl	$5, -28(%rbp)
	jle	.L291
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	MSAMingap
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
.L275:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	MSASmallerAlignment, .-MSASmallerAlignment
	.globl	MSAGetSeqAccession
	.type	MSAGetSeqAccession, @function
MSAGetSeqAccession:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L294
.L293:
	movl	$0, %eax
.L294:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	MSAGetSeqAccession, .-MSAGetSeqAccession
	.globl	MSAGetSeqDescription
	.type	MSAGetSeqDescription, @function
MSAGetSeqDescription:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L296
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L296
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L297
.L296:
	movl	$0, %eax
.L297:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	MSAGetSeqDescription, .-MSAGetSeqDescription
	.globl	MSAGetSeqSS
	.type	MSAGetSeqSS, @function
MSAGetSeqSS:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L299
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L299
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L300
.L299:
	movl	$0, %eax
.L300:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	MSAGetSeqSS, .-MSAGetSeqSS
	.globl	MSAGetSeqSA
	.type	MSAGetSeqSA, @function
MSAGetSeqSA:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L302
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L302
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L303
.L302:
	movl	$0, %eax
.L303:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	MSAGetSeqSA, .-MSAGetSeqSA
	.globl	MSAAverageSequenceLength
	.type	MSAAverageSequenceLength, @function
MSAAverageSequenceLength:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L305
.L306:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DealignedLength@PLT
	cvtsi2ss	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	addl	$1, -8(%rbp)
.L305:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L306
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L307
	pxor	%xmm0, %xmm0
	jmp	.L308
.L307:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	-4(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	MSAAverageSequenceLength, .-MSAAverageSequenceLength
	.section	.rodata
	.align 4
.LC1:
	.long	3212836864
	.align 4
.LC15:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
