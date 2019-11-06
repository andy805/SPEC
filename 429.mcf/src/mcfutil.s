	.file	"mcfutil.c"
	.text
	.globl	refresh_neighbour_lists
	.type	refresh_neighbour_lists, @function
refresh_neighbour_lists:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	addq	$104, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L3
	movq	-40(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L4
.L5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	addq	$64, -16(%rbp)
.L4:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L5
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	refresh_neighbour_lists, .-refresh_neighbour_lists
	.globl	refresh_potential
	.type	refresh_potential, @function
refresh_potential:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$-100000000, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L8
.L12:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L10
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L11
.L10:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$1, -16(%rbp)
.L11:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.L9:
	cmpq	$0, -32(%rbp)
	jne	.L12
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L13
.L15:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L8
.L14:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.L13:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L15
.L8:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L9
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	refresh_potential, .-refresh_potential
	.globl	flow_cost
	.type	flow_cost, @function
flow_cost:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L19
.L22:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movq	$1, 48(%rax)
	jmp	.L21
.L20:
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
.L21:
	addq	$64, -40(%rbp)
.L19:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L22
	movq	-56(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	addq	$104, -32(%rbp)
	jmp	.L23
.L24:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 48(%rax)
	addq	$104, -32(%rbp)
.L23:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L24
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L25
.L29:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jns	.L27
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jg	.L26
.L27:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	528(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L26
.L28:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, -16(%rbp)
.L26:
	addq	$64, -40(%rbp)
.L25:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L29
	cvtsi2sdq	-24(%rbp), %xmm1
	movq	-56(%rbp), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm0, %xmm1
	cvtsi2sdq	-16(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	flow_cost, .-flow_cost
	.globl	flow_org_cost
	.type	flow_org_cost, @function
flow_org_cost:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L32
.L35:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L33
	movq	-40(%rbp), %rax
	movq	$1, 48(%rax)
	jmp	.L34
.L33:
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
.L34:
	addq	$64, -40(%rbp)
.L32:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L35
	movq	-56(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -32(%rbp)
	addq	$104, -32(%rbp)
	jmp	.L36
.L37:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 48(%rax)
	addq	$104, -32(%rbp)
.L36:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L37
	movq	-56(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L38
.L42:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jns	.L40
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jg	.L39
.L40:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	528(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L39
.L41:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	addq	%rax, -16(%rbp)
.L39:
	addq	$64, -40(%rbp)
.L38:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L42
	cvtsi2sdq	-24(%rbp), %xmm1
	movq	-56(%rbp), %rax
	movq	528(%rax), %rax
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm0, %xmm1
	cvtsi2sdq	-16(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	flow_org_cost, .-flow_org_cost
	.section	.rodata
.LC0:
	.string	"PRIMAL NETWORK SIMPLEX: "
	.align 8
.LC1:
	.string	"artificial arc with nonzero flow, node %d (%ld)\n"
	.align 8
.LC2:
	.string	"basis primal infeasible (%ld)\n"
	.text
	.globl	primal_feasible
	.type	primal_feasible, @function
primal_feasible:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	592(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$104, -48(%rbp)
	jmp	.L45
.L51:
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L46
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L46
	movq	-8(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-8(%rbp), %rax
	subq	%rdx, %rax
	movq	-56(%rbp), %rdx
	movq	512(%rdx), %rdx
	cmpq	%rdx, %rax
	jle	.L48
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L48
.L46:
	movq	-56(%rbp), %rax
	movq	512(%rax), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jl	.L49
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	512(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L48
.L49:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-56(%rbp), %rax
	movq	$0, 488(%rax)
	movl	$1, %eax
	jmp	.L50
.L48:
	addq	$104, -48(%rbp)
.L45:
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L51
	movq	-56(%rbp), %rax
	movq	$1, 488(%rax)
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	primal_feasible, .-primal_feasible
	.section	.rodata
.LC3:
	.string	"DUAL NETWORK SIMPLEX: "
.LC4:
	.string	"basis dual infeasible\n"
	.text
	.globl	dual_feasible
	.type	dual_feasible, @function
dual_feasible:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L53
.L61:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	js	.L63
	cmpl	$1, %eax
	jle	.L55
	cmpl	$2, %eax
	je	.L56
	jmp	.L63
.L55:
	movq	-40(%rbp), %rax
	movq	512(%rax), %rax
	negq	%rax
	cmpq	%rax, -8(%rbp)
	jge	.L64
	jmp	.L58
.L56:
	movq	-40(%rbp), %rax
	movq	512(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jg	.L65
	jmp	.L59
.L63:
	nop
	jmp	.L59
.L64:
	nop
.L59:
	addq	$64, -24(%rbp)
.L53:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L61
	movl	$0, %eax
	jmp	.L62
.L65:
	nop
.L58:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	dual_feasible, .-dual_feasible
	.globl	getfree
	.type	getfree, @function
getfree:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L67:
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L68:
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	584(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L69:
	movq	-8(%rbp), %rax
	movq	$0, 560(%rax)
	movq	-8(%rbp), %rax
	movq	560(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 552(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 576(%rax)
	movq	-8(%rbp), %rax
	movq	576(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 568(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 592(%rax)
	movq	-8(%rbp), %rax
	movq	592(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 584(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	getfree, .-getfree
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
