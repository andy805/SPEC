	.file	"sjeng.c"
	.text
	.globl	divider
	.data
	.align 32
	.type	divider, @object
	.size	divider, 50
divider:
	.string	"-------------------------------------------------"
	.globl	dummy
	.bss
	.align 16
	.type	dummy, @object
	.size	dummy, 24
dummy:
	.zero	24
	.comm	board,576,32
	.comm	moved,576,32
	.comm	ep_square,4,4
	.comm	white_to_move,4,4
	.comm	comp_color,4,4
	.comm	wking_loc,4,4
	.comm	bking_loc,4,4
	.comm	white_castled,4,4
	.comm	black_castled,4,4
	.comm	result,4,4
	.comm	ply,4,4
	.comm	pv_length,1200,32
	.comm	pieces,248,32
	.comm	squares,576,32
	.comm	num_pieces,4,4
	.comm	i_depth,4,4
	.comm	fifty,4,4
	.comm	piece_count,4,4
	.comm	nodes,4,4
	.comm	raw_nodes,4,4
	.comm	qnodes,4,4
	.comm	killer_scores,1200,32
	.comm	killer_scores2,1200,32
	.comm	killer_scores3,1200,32
	.comm	moves_to_tc,4,4
	.comm	min_per_game,4,4
	.comm	sec_per_game,4,4
	.comm	inc,4,4
	.comm	time_left,4,4
	.comm	opp_time,4,4
	.comm	time_cushion,4,4
	.comm	time_for_move,4,4
	.comm	cur_score,4,4
	.comm	history_h,82944,32
	.comm	hash_history,2400,32
	.comm	move_number,4,4
	.comm	captures,4,4
	.comm	searching_pv,4,4
	.comm	post,4,4
	.comm	time_exit,4,4
	.comm	time_failure,4,4
	.comm	xb_mode,4,4
	.comm	maxdepth,4,4
	.comm	phase,4,4
	.comm	root_to_move,4,4
	.comm	my_rating,4,4
	.comm	opp_rating,4,4
	.comm	setcode,30,16
	.comm	pv,2160000,32
	.comm	killer1,7200,32
	.comm	killer2,7200,32
	.comm	killer3,7200,32
	.comm	path_x,4800,32
	.comm	path,7200,32
	.comm	start_time,8,8
	.comm	is_promoted,248,32
	.comm	NTries,4,4
	.comm	NCuts,4,4
	.comm	TExt,4,4
	.comm	PVS,4,4
	.comm	FULL,4,4
	.comm	PVSF,4,4
	.comm	ext_check,4,4
	.comm	is_pondering,4,4
	.comm	allow_pondering,4,4
	.comm	is_analyzing,4,4
	.comm	bookidx,4,4
	.comm	Variant,4,4
	.comm	Giveaway,4,4
	.comm	my_partner,256,32
	.comm	have_partner,4,4
	.comm	must_sit,4,4
	.comm	go_fast,4,4
	.comm	fixed_time,4,4
	.comm	book_ply,4,4
	.comm	use_book,4,4
	.comm	opening_history,256,32
	.section	.rodata
.LC0:
	.string	"SPEC Workload"
.LC2:
	.string	"\nNodes: %i (%0.2f%% qnodes)\n"
	.align 8
.LC4:
	.string	"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\n"
	.align 8
.LC5:
	.string	"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\n"
	.align 8
.LC6:
	.string	"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\n"
	.align 8
.LC7:
	.string	"Check extensions: %u  Razor drops : %u  Razor Material : %u\n"
.LC8:
	.string	"Move ordering : %f%%\n"
	.align 8
.LC9:
	.string	"Material score: %d   Eval : %d  MaxPosDiff: %d  White hand: %d  Black hand : %d\n"
.LC10:
	.string	"Hash : %X  HoldHash : %X\n"
.LC11:
	.string	"move %s\n"
.LC12:
	.string	"\n%s\n"
.LC13:
	.string	"0-1 {Black Mates}"
.LC14:
	.string	"1-0 {White Mates}"
.LC15:
	.string	"1/2-1/2 {Fifty move rule}"
.LC16:
	.string	"1/2-1/2 {3 fold repetition}"
.LC17:
	.string	"1/2-1/2 {Draw}"
.LC18:
	.string	"Sjeng: "
.LC19:
	.string	"Illegal move: %s\n"
.LC20:
	.string	"setboard"
.LC21:
	.string	"quit"
.LC22:
	.string	"exit"
.LC23:
	.string	"diagram"
.LC24:
	.string	"d"
.LC25:
	.string	"perft"
.LC26:
	.string	"%d"
.LC27:
	.string	"Raw nodes for depth %d: %i\n"
.LC29:
	.string	"Time : %.2f\n"
.LC30:
	.string	"new"
	.align 8
.LC31:
	.string	"tellics set 1 Sjeng SPEC 1.0 (SPEC/%s)\n"
.LC32:
	.string	"xboard"
.LC33:
	.string	"tellics set f5 1=1"
.LC34:
	.string	"nodes"
	.align 8
.LC35:
	.string	"Number of nodes: %i (%0.2f%% qnodes)\n"
.LC36:
	.string	"post"
.LC37:
	.string	"nopost"
.LC38:
	.string	"random"
.LC39:
	.string	"hard"
.LC40:
	.string	"easy"
.LC41:
	.string	"?"
.LC42:
	.string	"white"
.LC43:
	.string	"black"
.LC44:
	.string	"force"
.LC45:
	.string	"eval"
.LC46:
	.string	"Eval: %d\n"
.LC47:
	.string	"go"
.LC48:
	.string	"time"
.LC49:
	.string	"%i"
.LC50:
	.string	"otim"
.LC51:
	.string	"level"
.LC52:
	.string	"%i %i:%i %i"
.LC53:
	.string	"%i %i %i"
.LC54:
	.string	"rating"
.LC55:
	.string	"%i %i"
.LC56:
	.string	"holding"
.LC57:
	.string	"variant"
.LC58:
	.string	"normal"
.LC59:
	.string	"crazyhouse"
.LC60:
	.string	"bughouse"
.LC61:
	.string	"suicide"
.LC62:
	.string	"giveaway"
.LC63:
	.string	"losers"
.LC64:
	.string	"analyze"
.LC65:
	.string	"undo"
.LC66:
	.string	"Move number : %d\n"
.LC67:
	.string	"remove"
.LC68:
	.string	"edit"
.LC69:
	.string	"."
.LC70:
	.string	"c"
.LC71:
	.string	"#"
.LC72:
	.string	"partner"
.LC73:
	.string	"$partner"
.LC74:
	.string	"ptell"
.LC75:
	.string	"test"
.LC76:
	.string	"st"
.LC77:
	.string	"result"
.LC78:
	.string	"prove"
.LC79:
	.string	"\nMax time to search (s): "
.LC80:
	.string	"ping"
.LC81:
	.string	"pong %d\n"
.LC82:
	.string	"fritz"
.LC83:
	.string	"reset"
.LC84:
	.string	"sd"
.LC85:
	.string	"New max depth set to: %d\n"
.LC86:
	.string	"auto"
.LC87:
	.string	"protover"
	.align 8
.LC88:
	.string	"feature ping=0 setboard=1 playother=0 san=0 usermove=0 time=1"
	.align 8
.LC89:
	.string	"feature draw=0 sigint=0 sigterm=0 reuse=1 analyze=0"
	.align 8
.LC90:
	.string	"feature myname=\"Sjeng SPEC 1.0\""
	.align 8
.LC91:
	.string	"feature variants=\"normal,bughouse,crazyhouse,suicide,giveaway,losers\""
	.align 8
.LC92:
	.string	"feature colors=1 ics=0 name=0 pause=0 done=1"
.LC93:
	.string	"accepted"
.LC94:
	.string	"rejected"
	.align 8
.LC95:
	.string	"Interface does not support a required feature...expect trouble."
.LC96:
	.string	"help"
.LC97:
	.string	"\n%s\n\n"
	.align 8
.LC98:
	.string	"diagram/d:       toggle diagram display"
	.align 8
.LC99:
	.string	"exit/quit:       terminate Sjeng"
	.align 8
.LC100:
	.string	"go:              make Sjeng play the side to move"
	.align 8
.LC101:
	.string	"new:             start a new game"
	.align 8
.LC102:
	.string	"level <x>:       the xboard style command to set time"
	.align 8
.LC103:
	.string	"  <x> should be in the form: <a> <b> <c> where:"
	.align 8
.LC104:
	.string	"  a -> moves to TC (0 if using an ICS style TC)"
.LC105:
	.string	"  b -> minutes per game"
.LC106:
	.string	"  c -> increment in seconds"
	.align 8
.LC107:
	.string	"nodes:           outputs the number of nodes searched"
	.align 8
.LC108:
	.string	"perft <x>:       compute raw nodes to depth x"
	.align 8
.LC109:
	.string	"post:            toggles thinking output"
	.align 8
.LC110:
	.string	"xboard:          put Sjeng into xboard mode"
	.align 8
.LC111:
	.string	"test:            run an EPD testsuite"
	.align 8
.LC112:
	.string	"speed:           test movegen and evaluation speed"
	.align 8
.LC113:
	.string	"proof:           try to prove or disprove the current pos"
	.align 8
.LC114:
	.string	"sd <x>:          limit thinking to depth x"
	.align 8
.LC115:
	.string	"st <x>:          limit thinking to x centiseconds"
	.align 8
.LC116:
	.string	"setboard <FEN>:  set board to a specified FEN string"
	.align 8
.LC117:
	.string	"undo:            back up a half move"
	.align 8
.LC118:
	.string	"remove:          back up a full move"
	.align 8
.LC119:
	.string	"force:           disable computer moving"
	.align 8
.LC120:
	.string	"auto:            computer plays both sides"
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24952, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -24932(%rbp)
	movq	%rsi, -24944(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$4, -24928(%rbp)
	call	read_rcfile@PLT
	call	initialize_zobrist@PLT
	movl	$2, Variant(%rip)
	movq	std_material(%rip), %rax
	movq	8+std_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+std_material(%rip), %rax
	movq	24+std_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+std_material(%rip), %rax
	movq	40+std_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+std_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	call	init_game@PLT
	call	initialize_hash@PLT
	call	clear_tt@PLT
	call	reset_ecache@PLT
	movl	$0, ECacheProbes(%rip)
	movl	$0, ECacheHits(%rip)
	movl	$0, TTProbes(%rip)
	movl	$0, TTStores(%rip)
	movl	$0, TTHits(%rip)
	movl	$0, bookidx(%rip)
	movl	$0, total_moves(%rip)
	movl	$0, ply(%rip)
	movl	$0, -24904(%rbp)
	movl	$40, moves_to_tc(%rip)
	movl	$5, min_per_game(%rip)
	movl	$30000, time_left(%rip)
	movl	$2000, opp_rating(%rip)
	movl	opp_rating(%rip), %eax
	movl	%eax, my_rating(%rip)
	movl	$40, maxdepth(%rip)
	movl	$200, maxposdiff(%rip)
	movl	$1, must_go(%rip)
	movl	$1, tradefreely(%rip)
	movl	$0, -24900(%rbp)
	movl	$0, xb_mode(%rip)
	movl	$0, -24916(%rbp)
	movl	$0, comp_color(%rip)
	movl	$0, -24908(%rbp)
	movl	$1, -24924(%rbp)
	movl	$0, is_pondering(%rip)
	movl	$1, allow_pondering(%rip)
	movl	$0, is_analyzing(%rip)
	movl	$0, -24912(%rbp)
	movl	$0, have_partner(%rip)
	movl	$0, must_sit(%rip)
	movl	$0, go_fast(%rip)
	movl	$0, fixed_time(%rip)
	movl	$0, phase(%rip)
	movl	$0, root_to_move(%rip)
	movl	$0, kibitzed(%rip)
	movl	$0, move_number(%rip)
	leaq	-15216(%rbp), %rax
	movl	$14400, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-24816(%rbp), %rax
	movl	$9600, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	move_number(%rip), %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movq	stdout(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	setbuf@PLT
	movq	stdin(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	setbuf@PLT
	call	start_up@PLT
	cmpl	$2, -24932(%rbp)
	jne	.L143
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	-24944(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	run_autotest@PLT
.L143:
	cmpl	$0, -24912(%rbp)
	jne	.L3
	movl	comp_color(%rip), %edx
	movl	white_to_move(%rip), %eax
	cmpl	%eax, %edx
	je	.L4
	cmpl	$0, -24900(%rbp)
	je	.L3
.L4:
	cmpl	$0, -24916(%rbp)
	jne	.L3
	movl	must_sit(%rip), %eax
	testl	%eax, %eax
	jne	.L3
	movl	result(%rip), %eax
	testl	%eax, %eax
	jne	.L3
	movl	$0, is_pondering(%rip)
	leaq	-24976(%rbp), %rax
	movq	%rax, %rdi
	call	think@PLT
	movq	-24976(%rbp), %rax
	movq	-24968(%rbp), %rdx
	movq	%rax, -24848(%rbp)
	movq	%rdx, -24840(%rbp)
	movq	-24960(%rbp), %rax
	movq	%rax, -24832(%rbp)
	movl	$0, ply(%rip)
	movl	must_sit(%rip), %eax
	testl	%eax, %eax
	je	.L5
	movl	must_go(%rip), %eax
	testl	%eax, %eax
	je	.L3
.L5:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	je	.L6
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L7
.L6:
	movl	result(%rip), %eax
	cmpl	$2, %eax
	je	.L7
	movl	result(%rip), %eax
	cmpl	$3, %eax
	jne	.L8
.L7:
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	je	.L9
	movl	Variant(%rip), %eax
	testl	%eax, %eax
	je	.L9
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L10
.L9:
	movl	comp_color(%rip), %eax
	cmpl	$1, %eax
	jne	.L11
	movl	result(%rip), %eax
	cmpl	$2, %eax
	jne	.L8
.L11:
	movl	comp_color(%rip), %eax
	testl	%eax, %eax
	jne	.L10
	movl	result(%rip), %eax
	cmpl	$3, %eax
	je	.L10
.L8:
	movl	result(%rip), %eax
	cmpl	$1, %eax
	je	.L10
	movl	result(%rip), %eax
	cmpl	$4, %eax
	je	.L10
	movl	result(%rip), %eax
	cmpl	$5, %eax
	je	.L10
	leaq	-560(%rbp), %rax
	subq	$8, %rsp
	pushq	-24832(%rbp)
	pushq	-24840(%rbp)
	pushq	-24848(%rbp)
	movq	%rax, %rdi
	call	comp_to_coord@PLT
	addq	$32, %rsp
	movl	move_number(%rip), %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	movl	move_number(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-15184(%rax), %rcx
	movq	-24848(%rbp), %rax
	movq	-24840(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-24832(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	-24848(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	move_number(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, move_number(%rip)
	cltq
	salq	$4, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-24784(%rax), %rcx
	movq	path_x(%rip), %rax
	movq	8+path_x(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$0, userealholdings(%rip)
	movl	must_go(%rip), %eax
	subl	$1, %eax
	movl	%eax, must_go(%rip)
	call	is_draw@PLT
	testl	%eax, %eax
	je	.L12
	movl	$5, result(%rip)
	jmp	.L13
.L12:
	movl	fifty(%rip), %eax
	cmpl	$100, %eax
	jle	.L13
	movl	$4, result(%rip)
.L13:
	movl	root_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, root_to_move(%rip)
	call	reset_piece_square@PLT
	movl	book_ply(%rip), %eax
	cmpl	$39, %eax
	jg	.L14
	movl	book_ply(%rip), %eax
	testl	%eax, %eax
	jne	.L15
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	opening_history(%rip), %rdi
	call	strcpy@PLT
	jmp	.L14
.L15:
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	opening_history(%rip), %rdi
	call	strcat@PLT
.L14:
	movl	book_ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, book_ply(%rip)
	movl	qnodes(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movl	nodes(%rip), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	nodes(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	ECacheHits(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L16
	cvtsi2ssq	%rax, %xmm0
	jmp	.L17
.L16:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L17:
	movl	ECacheProbes(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L18
	cvtsi2ssq	%rax, %xmm1
	jmp	.L19
.L18:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L19:
	movss	.LC3(%rip), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	ECacheHits(%rip), %edx
	movl	ECacheProbes(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	TTHits(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L20
	cvtsi2ssq	%rax, %xmm0
	jmp	.L21
.L20:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L21:
	movl	TTProbes(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L22
	cvtsi2ssq	%rax, %xmm1
	jmp	.L23
.L22:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm1
	addss	%xmm1, %xmm1
.L23:
	movss	.LC3(%rip), %xmm2
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	TTHits(%rip), %ecx
	movl	TTProbes(%rip), %edx
	movl	TTStores(%rip), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	TExt(%rip), %ecx
	movl	NCuts(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L24
	cvtsi2ssq	%rax, %xmm0
	jmp	.L25
.L24:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L25:
	movss	.LC1(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movl	NTries(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L26
	cvtsi2ssq	%rax, %xmm0
	jmp	.L27
.L26:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L27:
	movss	.LC3(%rip), %xmm2
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	NCuts(%rip), %edx
	movl	NTries(%rip), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	razor_material(%rip), %ecx
	movl	razor_drop(%rip), %edx
	movl	ext_check(%rip), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	FHF(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L28
	cvtsi2ssq	%rax, %xmm0
	jmp	.L29
.L28:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L29:
	movss	.LC1(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movl	FH(%rip), %eax
	addl	$1, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L30
	cvtsi2ssq	%rax, %xmm0
	jmp	.L31
.L30:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L31:
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	black_hand_eval(%rip), %r13d
	movl	white_hand_eval(%rip), %r12d
	movl	maxposdiff(%rip), %ebx
	movl	$1000000, %esi
	movl	$-1000000, %edi
	call	eval@PLT
	movl	%eax, %edx
	movl	Material(%rip), %eax
	movl	%r13d, %r9d
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	hold_hash(%rip), %edx
	movl	hash(%rip), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	result(%rip), %eax
	testl	%eax, %eax
	jne	.L32
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L33
	movl	-24848(%rbp), %edx
	movl	dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L34
	movl	-24844(%rbp), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	je	.L35
.L34:
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L35:
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	jne	.L145
	movl	$0, %edi
	call	CheckBadFlow@PLT
	jmp	.L145
.L33:
	movl	-24848(%rbp), %edx
	movl	dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L38
	movl	-24844(%rbp), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	je	.L145
.L38:
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L145
.L32:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L40
	movl	-24848(%rbp), %edx
	movl	dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L41
	movl	-24844(%rbp), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	je	.L43
.L41:
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L43
.L40:
	movl	-24848(%rbp), %edx
	movl	dummy(%rip), %eax
	cmpl	%eax, %edx
	jne	.L44
	movl	-24844(%rbp), %edx
	movl	4+dummy(%rip), %eax
	cmpl	%eax, %edx
	je	.L43
.L44:
	leaq	-560(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L43:
	movl	result(%rip), %eax
	cmpl	$2, %eax
	jne	.L45
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L45:
	movl	result(%rip), %eax
	cmpl	$3, %eax
	jne	.L47
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L47:
	movl	result(%rip), %eax
	cmpl	$4, %eax
	jne	.L48
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L48:
	movl	result(%rip), %eax
	cmpl	$5, %eax
	jne	.L49
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	jmp	.L46
.L49:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
.L46:
	movl	$0, -24900(%rbp)
	jmp	.L145
.L10:
	movl	result(%rip), %eax
	cmpl	$2, %eax
	jne	.L50
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	jmp	.L51
.L50:
	movl	result(%rip), %eax
	cmpl	$3, %eax
	jne	.L52
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	jmp	.L51
.L52:
	movl	result(%rip), %eax
	cmpl	$4, %eax
	jne	.L53
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	jmp	.L51
.L53:
	movl	result(%rip), %eax
	cmpl	$5, %eax
	jne	.L54
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	jmp	.L51
.L54:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
.L51:
	movl	$0, -24900(%rbp)
	jmp	.L3
.L145:
	nop
.L3:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	jne	.L55
	movl	-24924(%rbp), %eax
	testl	%eax, %eax
	je	.L56
	movl	$10, %edi
	call	putchar@PLT
	movl	comp_color(%rip), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	stdout(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	display_board@PLT
.L56:
	cmpl	$0, -24900(%rbp)
	jne	.L58
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-816(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
	jmp	.L58
.L55:
	movl	must_sit(%rip), %eax
	testl	%eax, %eax
	jne	.L59
	movl	allow_pondering(%rip), %eax
	testl	%eax, %eax
	je	.L60
	cmpl	$0, -24912(%rbp)
	jne	.L60
	cmpl	$0, -24916(%rbp)
	jne	.L60
	movl	move_number(%rip), %eax
	testl	%eax, %eax
	jne	.L59
.L60:
	movl	is_analyzing(%rip), %eax
	testl	%eax, %eax
	je	.L61
.L59:
	movl	result(%rip), %eax
	testl	%eax, %eax
	jne	.L61
	cmpl	$0, -24900(%rbp)
	jne	.L61
	movl	$1, is_pondering(%rip)
	leaq	-24976(%rbp), %rax
	movq	%rax, %rdi
	call	think@PLT
	movl	$0, is_pondering(%rip)
	movl	$0, ply(%rip)
.L61:
	cmpl	$0, -24900(%rbp)
	jne	.L58
	movq	stdin(%rip), %rdx
	leaq	-816(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
.L58:
	cmpl	$0, -24912(%rbp)
	jne	.L62
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	is_move@PLT
	testl	%eax, %eax
	je	.L62
	leaq	-24880(%rbp), %rdx
	leaq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_coord@PLT
	testl	%eax, %eax
	je	.L63
	movl	move_number(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-15184(%rax), %rcx
	movq	-24880(%rbp), %rax
	movq	-24872(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-24864(%rbp), %rax
	movq	%rax, 16(%rcx)
	movl	move_number(%rip), %eax
	movl	hash(%rip), %edx
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	hash_history(%rip), %rax
	movl	%edx, (%rcx,%rax)
	leaq	-24880(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make@PLT
	movl	move_number(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, move_number(%rip)
	cltq
	salq	$4, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-24784(%rax), %rcx
	movq	path_x(%rip), %rax
	movq	8+path_x(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	call	reset_piece_square@PLT
	movl	root_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, root_to_move(%rip)
	movl	book_ply(%rip), %eax
	cmpl	$39, %eax
	jg	.L64
	movl	book_ply(%rip), %eax
	testl	%eax, %eax
	jne	.L65
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	leaq	opening_history(%rip), %rdi
	call	strcpy@PLT
	jmp	.L64
.L65:
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	leaq	opening_history(%rip), %rdi
	call	strcat@PLT
.L64:
	movl	book_ply(%rip), %eax
	addl	$1, %eax
	movl	%eax, book_ply(%rip)
	movl	-24924(%rbp), %eax
	testl	%eax, %eax
	je	.L146
	movl	$10, %edi
	call	putchar@PLT
	movl	comp_color(%rip), %eax
	movl	$1, %edx
	subl	%eax, %edx
	movq	stdout(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	display_board@PLT
	jmp	.L146
.L63:
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L146
.L62:
	leaq	-816(%rbp), %rax
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	jne	.L69
	leaq	-816(%rbp), %rax
	movq	%rax, -24896(%rbp)
	jmp	.L70
.L71:
	movq	-24896(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %edx
	movq	-24896(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24896(%rbp)
.L70:
	movq	-24896(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L71
.L69:
	leaq	-816(%rbp), %rax
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L72
	call	free_hash@PLT
	call	free_ecache@PLT
	movl	$0, %edi
	call	exit@PLT
.L72:
	leaq	-816(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L73
	movl	is_analyzing(%rip), %eax
	testl	%eax, %eax
	je	.L74
	movl	$0, is_analyzing(%rip)
	movl	$0, is_pondering(%rip)
	movl	$0, time_for_move(%rip)
	jmp	.L143
.L74:
	call	free_hash@PLT
	call	free_ecache@PLT
	movl	$0, %edi
	call	exit@PLT
.L73:
	leaq	-816(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L75
	leaq	-816(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L76
.L75:
	leaq	-24924(%rbp), %rax
	movq	%rax, %rdi
	call	toggle_bool@PLT
	jmp	.L68
.L76:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L77
	leaq	-816(%rbp), %rax
	addq	$6, %rax
	leaq	-24928(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	$0, raw_nodes(%rip)
	call	rtime@PLT
	movq	%rax, -24888(%rbp)
	movl	-24928(%rbp), %eax
	movl	%eax, %edi
	call	perft@PLT
	movl	raw_nodes(%rip), %edx
	movl	-24928(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	rtime@PLT
	movq	%rax, %rdx
	movq	-24888(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rdifftime@PLT
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC28(%rip), %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC29(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L143
.L77:
	leaq	-816(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L79
	leaq	setcode(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L79:
	movl	is_analyzing(%rip), %eax
	testl	%eax, %eax
	jne	.L80
	movq	std_material(%rip), %rax
	movq	8+std_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+std_material(%rip), %rax
	movq	24+std_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+std_material(%rip), %rax
	movq	40+std_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+std_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	movl	$2, Variant(%rip)
	call	init_game@PLT
	call	initialize_hash@PLT
	cmpl	$0, -24904(%rbp)
	jne	.L81
	call	clear_tt@PLT
	call	reset_ecache@PLT
.L81:
	movl	$0, -24916(%rbp)
	movl	$0, must_sit(%rip)
	movl	$0, go_fast(%rip)
	movl	$0, piecedead(%rip)
	movl	$0, partnerdead(%rip)
	movl	$0, kibitzed(%rip)
	movl	$0, fixed_time(%rip)
	movl	$0, root_to_move(%rip)
	movl	$0, comp_color(%rip)
	movl	$0, move_number(%rip)
	movl	move_number(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	hash_history(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	$0, bookidx(%rip)
	movl	$2000, opp_rating(%rip)
	movl	opp_rating(%rip), %eax
	movl	%eax, my_rating(%rip)
	movl	$0, must_go(%rip)
	movl	$1, tradefreely(%rip)
	movl	$0, -24900(%rbp)
	movl	$1, %edi
	call	CheckBadFlow@PLT
	call	ResetHandValue@PLT
	jmp	.L143
.L80:
	call	init_game@PLT
	movl	$0, move_number(%rip)
	jmp	.L143
.L78:
	leaq	-816(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$1, xb_mode(%rip)
	leaq	-24924(%rbp), %rax
	movq	%rax, %rdi
	call	toggle_bool@PLT
	movl	$1, %esi
	movl	$2, %edi
	call	signal@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC33(%rip), %rdi
	call	puts@PLT
	call	BegForPartner@PLT
	jmp	.L143
.L83:
	leaq	-816(%rbp), %rax
	leaq	.LC34(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L84
	movl	qnodes(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movl	nodes(%rip), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	nodes(%rip), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L143
.L84:
	leaq	-816(%rbp), %rax
	leaq	.LC36(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L85
	leaq	post(%rip), %rdi
	call	toggle_bool@PLT
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	je	.L143
	movl	$1, post(%rip)
	jmp	.L143
.L85:
	leaq	-816(%rbp), %rax
	leaq	.LC37(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L87
	movl	$0, post(%rip)
	jmp	.L143
.L87:
	leaq	-816(%rbp), %rax
	leaq	.LC38(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L147
	leaq	-816(%rbp), %rax
	leaq	.LC39(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$1, allow_pondering(%rip)
	jmp	.L68
.L89:
	leaq	-816(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, allow_pondering(%rip)
	jmp	.L68
.L90:
	leaq	-816(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L148
	leaq	-816(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$1, white_to_move(%rip)
	movl	$0, root_to_move(%rip)
	movl	$0, comp_color(%rip)
	jmp	.L143
.L92:
	leaq	-816(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, white_to_move(%rip)
	movl	$1, root_to_move(%rip)
	movl	$1, comp_color(%rip)
	jmp	.L143
.L93:
	leaq	-816(%rbp), %rax
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$1, -24916(%rbp)
	jmp	.L143
.L94:
	leaq	-816(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L95
	call	check_phase@PLT
	movl	$1000000, %esi
	movl	$-1000000, %edi
	call	eval@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L143
.L95:
	leaq	-816(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L96
	movl	white_to_move(%rip), %eax
	movl	%eax, comp_color(%rip)
	movl	$0, -24916(%rbp)
	jmp	.L143
.L96:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L97
	leaq	-816(%rbp), %rax
	addq	$5, %rax
	leaq	time_left(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	jmp	.L143
.L97:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L98
	leaq	-816(%rbp), %rax
	addq	$5, %rax
	leaq	opp_time(%rip), %rdx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	jmp	.L143
.L98:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L99
	leaq	-816(%rbp), %rax
	addq	$6, %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L100
	leaq	-816(%rbp), %rax
	addq	$6, %rax
	leaq	inc(%rip), %r9
	leaq	sec_per_game(%rip), %r8
	leaq	min_per_game(%rip), %rcx
	leaq	moves_to_tc(%rip), %rdx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	min_per_game(%rip), %eax
	imull	$6000, %eax, %edx
	movl	sec_per_game(%rip), %eax
	imull	$100, %eax, %eax
	addl	%edx, %eax
	movl	%eax, time_left(%rip)
	movl	time_left(%rip), %eax
	movl	%eax, opp_time(%rip)
	jmp	.L101
.L100:
	leaq	-816(%rbp), %rax
	addq	$6, %rax
	leaq	inc(%rip), %r8
	leaq	min_per_game(%rip), %rcx
	leaq	moves_to_tc(%rip), %rdx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	min_per_game(%rip), %eax
	imull	$6000, %eax, %eax
	movl	%eax, time_left(%rip)
	movl	time_left(%rip), %eax
	movl	%eax, opp_time(%rip)
.L101:
	movl	$0, fixed_time(%rip)
	movl	$0, time_cushion(%rip)
	jmp	.L143
.L99:
	leaq	-816(%rbp), %rax
	movl	$6, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L102
	leaq	-816(%rbp), %rax
	addq	$7, %rax
	leaq	opp_rating(%rip), %rcx
	leaq	my_rating(%rip), %rdx
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	my_rating(%rip), %eax
	testl	%eax, %eax
	jne	.L103
	movl	$2000, my_rating(%rip)
.L103:
	movl	opp_rating(%rip), %eax
	testl	%eax, %eax
	jne	.L143
	movl	$2000, opp_rating(%rip)
	jmp	.L143
.L102:
	leaq	-816(%rbp), %rax
	movl	$7, %edx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L105
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	ProcessHoldings@PLT
	jmp	.L143
.L105:
	leaq	-816(%rbp), %rax
	movl	$7, %edx
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L106
	leaq	-816(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L107
	movl	$2, Variant(%rip)
	movq	std_material(%rip), %rax
	movq	8+std_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+std_material(%rip), %rax
	movq	24+std_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+std_material(%rip), %rax
	movq	40+std_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+std_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	jmp	.L108
.L107:
	leaq	-816(%rbp), %rax
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L109
	movl	$0, Variant(%rip)
	movq	zh_material(%rip), %rax
	movq	8+zh_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+zh_material(%rip), %rax
	movq	24+zh_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+zh_material(%rip), %rax
	movq	40+zh_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+zh_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	jmp	.L108
.L109:
	leaq	-816(%rbp), %rax
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L110
	movl	$1, Variant(%rip)
	movq	zh_material(%rip), %rax
	movq	8+zh_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+zh_material(%rip), %rax
	movq	24+zh_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+zh_material(%rip), %rax
	movq	40+zh_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+zh_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	jmp	.L108
.L110:
	leaq	-816(%rbp), %rax
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L111
	movl	$3, Variant(%rip)
	movl	$0, Giveaway(%rip)
	movq	suicide_material(%rip), %rax
	movq	8+suicide_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+suicide_material(%rip), %rax
	movq	24+suicide_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+suicide_material(%rip), %rax
	movq	40+suicide_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+suicide_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	jmp	.L108
.L111:
	leaq	-816(%rbp), %rax
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L112
	movl	$3, Variant(%rip)
	movl	$1, Giveaway(%rip)
	movq	suicide_material(%rip), %rax
	movq	8+suicide_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+suicide_material(%rip), %rax
	movq	24+suicide_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+suicide_material(%rip), %rax
	movq	40+suicide_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+suicide_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	jmp	.L108
.L112:
	leaq	-816(%rbp), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L108
	movl	$4, Variant(%rip)
	movq	losers_material(%rip), %rax
	movq	8+losers_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+losers_material(%rip), %rax
	movq	24+losers_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+losers_material(%rip), %rax
	movq	40+losers_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+losers_material(%rip), %rax
	movq	%rax, 48+material(%rip)
.L108:
	call	initialize_hash@PLT
	call	clear_tt@PLT
	call	reset_ecache@PLT
	jmp	.L143
.L106:
	leaq	-816(%rbp), %rax
	movl	$7, %edx
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$1, is_analyzing(%rip)
	movl	$1, is_pondering(%rip)
	leaq	-24976(%rbp), %rax
	movq	%rax, %rdi
	call	think@PLT
	movl	$0, ply(%rip)
	jmp	.L143
.L113:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L114
	movl	move_number(%rip), %eax
	movl	%eax, %esi
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	move_number(%rip), %eax
	testl	%eax, %eax
	jle	.L143
	movl	move_number(%rip), %eax
	subl	$1, %eax
	movl	%eax, move_number(%rip)
	movl	move_number(%rip), %eax
	cltq
	salq	$4, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	subq	$24784, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, path_x(%rip)
	movq	%rdx, 8+path_x(%rip)
	movl	move_number(%rip), %eax
	leaq	-15216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	call	reset_piece_square@PLT
	movl	root_to_move(%rip), %eax
	xorl	$1, %eax
	movl	%eax, root_to_move(%rip)
	jmp	.L143
.L114:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L116
	movl	move_number(%rip), %eax
	cmpl	$1, %eax
	jle	.L143
	movl	move_number(%rip), %eax
	subl	$1, %eax
	movl	%eax, move_number(%rip)
	movl	move_number(%rip), %eax
	cltq
	salq	$4, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	subq	$24784, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, path_x(%rip)
	movq	%rdx, 8+path_x(%rip)
	movl	move_number(%rip), %eax
	leaq	-15216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	call	reset_piece_square@PLT
	movl	move_number(%rip), %eax
	subl	$1, %eax
	movl	%eax, move_number(%rip)
	movl	move_number(%rip), %eax
	cltq
	salq	$4, %rax
	leaq	-32(%rbp), %rbx
	addq	%rbx, %rax
	subq	$24784, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, path_x(%rip)
	movq	%rdx, 8+path_x(%rip)
	movl	move_number(%rip), %eax
	leaq	-15216(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	unmake@PLT
	call	reset_piece_square@PLT
	jmp	.L143
.L116:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$1, -24912(%rbp)
	movl	$0, -24908(%rbp)
	jmp	.L143
.L118:
	movzbl	-816(%rbp), %edx
	movzbl	.LC69(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L119
	cmpl	$0, -24912(%rbp)
	je	.L119
	movl	$0, -24912(%rbp)
	movl	wking_loc(%rip), %eax
	cmpl	$30, %eax
	jne	.L120
	movl	$0, white_castled(%rip)
.L120:
	movl	bking_loc(%rip), %eax
	cmpl	$114, %eax
	jne	.L121
	movl	$0, black_castled(%rip)
.L121:
	movl	$50, book_ply(%rip)
	movl	$0, ep_square(%rip)
	movl	$0, move_number(%rip)
	movl	$256, %edx
	movl	$0, %esi
	leaq	opening_history(%rip), %rdi
	call	memset@PLT
	call	clear_tt@PLT
	call	initialize_hash@PLT
	call	reset_piece_square@PLT
	jmp	.L68
.L119:
	cmpl	$0, -24912(%rbp)
	je	.L122
	movzbl	-816(%rbp), %edx
	movzbl	.LC70(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L122
	cmpl	$0, -24908(%rbp)
	jne	.L123
	movl	$1, -24908(%rbp)
	jmp	.L68
.L123:
	movl	$0, -24908(%rbp)
	jmp	.L68
.L122:
	cmpl	$0, -24912(%rbp)
	je	.L125
	movzbl	-816(%rbp), %edx
	movzbl	.LC71(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L125
	call	reset_board@PLT
	movl	$0, move_number(%rip)
	jmp	.L68
.L125:
	cmpl	$0, -24912(%rbp)
	je	.L126
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-816(%rbp), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L126
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-815(%rbp), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L126
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-814(%rbp), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L126
	movzbl	-814(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-815(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-816(%rbp), %eax
	movsbl	%al, %esi
	movl	-24908(%rbp), %eax
	movl	%eax, %edi
	call	PutPiece@PLT
	jmp	.L68
.L126:
	leaq	-816(%rbp), %rax
	movl	$7, %edx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L127
	leaq	-816(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	HandlePartner@PLT
	jmp	.L143
.L127:
	leaq	-816(%rbp), %rax
	movl	$8, %edx
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L128
	leaq	-816(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	HandlePartner@PLT
	jmp	.L143
.L128:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L129
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	HandlePtell@PLT
	jmp	.L143
.L129:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L130
	call	run_epd_testsuite@PLT
	jmp	.L143
.L130:
	leaq	-816(%rbp), %rax
	movl	$2, %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L131
	leaq	-816(%rbp), %rax
	addq	$3, %rax
	leaq	fixed_time(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	fixed_time(%rip), %eax
	imull	$100, %eax, %eax
	movl	%eax, fixed_time(%rip)
	jmp	.L143
.L131:
	leaq	-816(%rbp), %rax
	movl	$6, %edx
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L143
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L132
	leaq	.LC79(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	rtime@PLT
	movq	%rax, start_time(%rip)
	movq	stdin(%rip), %rdx
	leaq	-304(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rinput@PLT
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	imull	$100, %eax, %eax
	movl	%eax, pn_time(%rip)
	movl	$10, %edi
	call	putchar@PLT
	call	proofnumbersearch@PLT
	jmp	.L143
.L132:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L133
	leaq	-816(%rbp), %rax
	addq	$5, %rax
	leaq	-24920(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	-24920(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC81(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L143
.L133:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L134
	movl	$1, -24904(%rbp)
	jmp	.L143
.L134:
	leaq	-816(%rbp), %rax
	movl	$5, %edx
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L135
	movq	std_material(%rip), %rax
	movq	8+std_material(%rip), %rdx
	movq	%rax, material(%rip)
	movq	%rdx, 8+material(%rip)
	movq	16+std_material(%rip), %rax
	movq	24+std_material(%rip), %rdx
	movq	%rax, 16+material(%rip)
	movq	%rdx, 24+material(%rip)
	movq	32+std_material(%rip), %rax
	movq	40+std_material(%rip), %rdx
	movq	%rax, 32+material(%rip)
	movq	%rdx, 40+material(%rip)
	movq	48+std_material(%rip), %rax
	movq	%rax, 48+material(%rip)
	movl	$2, Variant(%rip)
	call	init_game@PLT
	call	initialize_hash@PLT
	call	clear_tt@PLT
	call	reset_ecache@PLT
	movl	$0, -24916(%rbp)
	movl	$0, fixed_time(%rip)
	movl	$0, root_to_move(%rip)
	movl	$0, comp_color(%rip)
	movl	$0, move_number(%rip)
	movl	$0, bookidx(%rip)
	movl	$2000, opp_rating(%rip)
	movl	opp_rating(%rip), %eax
	movl	%eax, my_rating(%rip)
	jmp	.L143
.L135:
	leaq	-816(%rbp), %rax
	movl	$8, %edx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L136
	leaq	-816(%rbp), %rax
	addq	$9, %rax
	movq	%rax, %rdi
	call	setup_epd_line@PLT
	jmp	.L143
.L136:
	movzbl	-816(%rbp), %edx
	movzbl	.LC69(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L149
	leaq	-816(%rbp), %rax
	movl	$2, %edx
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L138
	leaq	-816(%rbp), %rax
	addq	$3, %rax
	leaq	maxdepth(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	maxdepth(%rip), %eax
	movl	%eax, %esi
	leaq	.LC85(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L68
.L138:
	leaq	-816(%rbp), %rax
	movl	$4, %edx
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L139
	movl	$1, -24900(%rbp)
	jmp	.L68
.L139:
	leaq	-816(%rbp), %rax
	movl	$8, %edx
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L140
	leaq	.LC88(%rip), %rdi
	call	puts@PLT
	leaq	.LC89(%rip), %rdi
	call	puts@PLT
	leaq	.LC90(%rip), %rdi
	call	puts@PLT
	leaq	.LC91(%rip), %rdi
	call	puts@PLT
	leaq	.LC92(%rip), %rdi
	call	puts@PLT
	movl	$2, xb_mode(%rip)
	jmp	.L143
.L140:
	leaq	-816(%rbp), %rax
	movl	$8, %edx
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L143
	leaq	-816(%rbp), %rax
	movl	$8, %edx
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L141
	leaq	.LC95(%rip), %rdi
	call	puts@PLT
	jmp	.L143
.L141:
	leaq	-816(%rbp), %rax
	leaq	.LC96(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L142
	leaq	divider(%rip), %rsi
	leaq	.LC97(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC98(%rip), %rdi
	call	puts@PLT
	leaq	.LC99(%rip), %rdi
	call	puts@PLT
	leaq	.LC100(%rip), %rdi
	call	puts@PLT
	leaq	.LC101(%rip), %rdi
	call	puts@PLT
	leaq	.LC102(%rip), %rdi
	call	puts@PLT
	leaq	.LC103(%rip), %rdi
	call	puts@PLT
	leaq	.LC104(%rip), %rdi
	call	puts@PLT
	leaq	.LC105(%rip), %rdi
	call	puts@PLT
	leaq	.LC106(%rip), %rdi
	call	puts@PLT
	leaq	.LC107(%rip), %rdi
	call	puts@PLT
	leaq	.LC108(%rip), %rdi
	call	puts@PLT
	leaq	.LC109(%rip), %rdi
	call	puts@PLT
	leaq	.LC110(%rip), %rdi
	call	puts@PLT
	leaq	.LC111(%rip), %rdi
	call	puts@PLT
	leaq	.LC112(%rip), %rdi
	call	puts@PLT
	leaq	.LC113(%rip), %rdi
	call	puts@PLT
	leaq	.LC114(%rip), %rdi
	call	puts@PLT
	leaq	.LC115(%rip), %rdi
	call	puts@PLT
	leaq	.LC116(%rip), %rdi
	call	puts@PLT
	leaq	.LC117(%rip), %rdi
	call	puts@PLT
	leaq	.LC118(%rip), %rdi
	call	puts@PLT
	leaq	.LC119(%rip), %rdi
	call	puts@PLT
	leaq	.LC120(%rip), %rdi
	call	puts@PLT
	leaq	divider(%rip), %rsi
	leaq	.LC97(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -24924(%rbp)
	jmp	.L143
.L142:
	movl	xb_mode(%rip), %eax
	testl	%eax, %eax
	jne	.L143
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L143
.L146:
	nop
	jmp	.L143
.L147:
	nop
	jmp	.L143
.L148:
	nop
	jmp	.L143
.L149:
	nop
.L68:
	jmp	.L143
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC1:
	.long	1120403456
	.align 4
.LC3:
	.long	1065353216
	.align 8
.LC28:
	.long	0
	.long	1079574528
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
