	.file	"eval.c"
	.text
	.comm	Material,4,4
	.globl	std_material
	.data
	.align 32
	.type	std_material, @object
	.size	std_material, 56
std_material:
	.long	0
	.long	100
	.long	-100
	.long	310
	.long	-310
	.long	4000
	.long	-4000
	.long	500
	.long	-500
	.long	900
	.long	-900
	.long	325
	.long	-325
	.long	0
	.globl	zh_material
	.align 32
	.type	zh_material, @object
	.size	zh_material, 56
zh_material:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	4000
	.long	-4000
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.long	0
	.globl	suicide_material
	.align 32
	.type	suicide_material, @object
	.size	suicide_material, 56
suicide_material:
	.long	0
	.long	15
	.long	-15
	.long	150
	.long	-150
	.long	500
	.long	-500
	.long	150
	.long	-150
	.long	50
	.long	-50
	.long	0
	.long	0
	.long	0
	.globl	losers_material
	.align 32
	.type	losers_material, @object
	.size	losers_material, 56
losers_material:
	.long	0
	.long	80
	.long	-80
	.long	320
	.long	-320
	.long	1000
	.long	-1000
	.long	350
	.long	-350
	.long	400
	.long	-400
	.long	270
	.long	-270
	.long	0
	.globl	material
	.bss
	.align 32
	.type	material, @object
	.size	material, 56
material:
	.zero	56
	.globl	Xfile
	.section	.rodata
	.align 32
	.type	Xfile, @object
	.size	Xfile, 576
Xfile:
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
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
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
	.globl	Xrank
	.align 32
	.type	Xrank, @object
	.size	Xrank, 576
Xrank:
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
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
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
	.globl	Xdiagl
	.align 32
	.type	Xdiagl, @object
	.size	Xdiagl, 576
Xdiagl:
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
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
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
	.globl	Xdiagr
	.align 32
	.type	Xdiagr, @object
	.size	Xdiagr, 576
Xdiagr:
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
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
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
	.globl	sqcolor
	.align 32
	.type	sqcolor, @object
	.size	sqcolor, 576
sqcolor:
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
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
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
	.globl	pcsqbishop
	.align 32
	.type	pcsqbishop, @object
	.size	pcsqbishop, 576
pcsqbishop:
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
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	10
	.long	5
	.long	10
	.long	10
	.long	5
	.long	10
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	5
	.long	6
	.long	15
	.long	15
	.long	6
	.long	5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	3
	.long	15
	.long	10
	.long	10
	.long	15
	.long	3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	3
	.long	15
	.long	10
	.long	10
	.long	15
	.long	3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	5
	.long	6
	.long	15
	.long	15
	.long	6
	.long	5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	10
	.long	5
	.long	10
	.long	10
	.long	5
	.long	10
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
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
	.globl	black_knight
	.align 32
	.type	black_knight, @object
	.size	black_knight, 576
black_knight:
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
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	25
	.long	25
	.long	25
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	35
	.long	35
	.long	35
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	10
	.long	25
	.long	20
	.long	25
	.long	25
	.long	10
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	20
	.long	20
	.long	20
	.long	20
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-35
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-35
	.long	-20
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
	.globl	white_knight
	.align 32
	.type	white_knight, @object
	.size	white_knight, 576
white_knight:
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
	.long	-20
	.long	-35
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-35
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	20
	.long	20
	.long	20
	.long	20
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	10
	.long	25
	.long	20
	.long	25
	.long	25
	.long	10
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	35
	.long	35
	.long	35
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	25
	.long	25
	.long	25
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
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
	.globl	white_pawn
	.align 32
	.type	white_pawn, @object
	.size	white_pawn, 576
white_pawn:
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
	.long	25
	.long	25
	.long	35
	.long	5
	.long	5
	.long	50
	.long	45
	.long	30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	20
	.long	20
	.long	10
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	18
	.long	18
	.long	27
	.long	27
	.long	18
	.long	18
	.long	18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	25
	.long	30
	.long	30
	.long	35
	.long	35
	.long	35
	.long	30
	.long	25
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
	.globl	black_pawn
	.align 32
	.type	black_pawn, @object
	.size	black_pawn, 576
black_pawn:
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
	.long	30
	.long	30
	.long	30
	.long	35
	.long	35
	.long	35
	.long	30
	.long	25
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	18
	.long	18
	.long	27
	.long	27
	.long	18
	.long	18
	.long	18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	20
	.long	20
	.long	10
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	14
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
	.long	7
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	25
	.long	25
	.long	35
	.long	5
	.long	5
	.long	50
	.long	45
	.long	30
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
	.globl	white_king
	.align 32
	.type	white_king, @object
	.size	white_king, 576
white_king:
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
	.long	-100
	.long	7
	.long	4
	.long	0
	.long	10
	.long	4
	.long	7
	.long	-100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-250
	.long	-200
	.long	-150
	.long	-100
	.long	-100
	.long	-150
	.long	-200
	.long	-250
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-350
	.long	-300
	.long	-300
	.long	-250
	.long	-250
	.long	-300
	.long	-300
	.long	-350
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-400
	.long	-400
	.long	-400
	.long	-350
	.long	-350
	.long	-400
	.long	-400
	.long	-400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
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
	.globl	black_king
	.align 32
	.type	black_king, @object
	.size	black_king, 576
black_king:
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
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-400
	.long	-400
	.long	-400
	.long	-350
	.long	-350
	.long	-400
	.long	-400
	.long	-400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-350
	.long	-300
	.long	-300
	.long	-250
	.long	-250
	.long	-300
	.long	-300
	.long	-350
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-250
	.long	-200
	.long	-150
	.long	-100
	.long	-100
	.long	-150
	.long	-200
	.long	-250
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-100
	.long	7
	.long	4
	.long	0
	.long	10
	.long	4
	.long	7
	.long	-100
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
	.globl	black_queen
	.align 32
	.type	black_queen, @object
	.size	black_queen, 576
black_queen:
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
	.long	5
	.long	5
	.long	5
	.long	10
	.long	10
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
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
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	white_queen
	.align 32
	.type	white_queen, @object
	.size	white_queen, 576
white_queen:
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
	.long	0
	.long	0
	.long	0
	.long	5
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
	.long	10
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	5
	.long	5
	.long	10
	.long	10
	.long	5
	.long	5
	.long	5
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
	.globl	black_rook
	.align 32
	.type	black_rook, @object
	.size	black_rook, 576
black_rook:
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
	.long	10
	.long	15
	.long	20
	.long	25
	.long	25
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-30
	.long	-30
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	0
	.long	0
	.long	0
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
	.globl	white_rook
	.align 32
	.type	white_rook, @object
	.size	white_rook, 576
white_rook:
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
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-30
	.long	-30
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	25
	.long	25
	.long	20
	.long	15
	.long	10
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
	.globl	upscale
	.align 32
	.type	upscale, @object
	.size	upscale, 256
upscale:
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.long	32
	.long	33
	.long	38
	.long	39
	.long	40
	.long	41
	.long	42
	.long	43
	.long	44
	.long	45
	.long	50
	.long	51
	.long	52
	.long	53
	.long	54
	.long	55
	.long	56
	.long	57
	.long	62
	.long	63
	.long	64
	.long	65
	.long	66
	.long	67
	.long	68
	.long	69
	.long	74
	.long	75
	.long	76
	.long	77
	.long	78
	.long	79
	.long	80
	.long	81
	.long	86
	.long	87
	.long	88
	.long	89
	.long	90
	.long	91
	.long	92
	.long	93
	.long	98
	.long	99
	.long	100
	.long	101
	.long	102
	.long	103
	.long	104
	.long	105
	.long	110
	.long	111
	.long	112
	.long	113
	.long	114
	.long	115
	.long	116
	.long	117
	.globl	pre_p_tropism
	.data
	.align 32
	.type	pre_p_tropism, @object
	.size	pre_p_tropism, 36
pre_p_tropism:
	.long	9999
	.long	40
	.long	20
	.long	10
	.long	3
	.long	1
	.long	1
	.long	0
	.long	9999
	.globl	pre_r_tropism
	.align 32
	.type	pre_r_tropism, @object
	.size	pre_r_tropism, 36
pre_r_tropism:
	.long	9999
	.long	50
	.long	40
	.long	15
	.long	5
	.long	1
	.long	1
	.long	0
	.long	9999
	.globl	pre_n_tropism
	.align 32
	.type	pre_n_tropism, @object
	.size	pre_n_tropism, 36
pre_n_tropism:
	.long	9999
	.long	50
	.long	70
	.long	35
	.long	10
	.long	2
	.long	1
	.long	0
	.long	9999
	.globl	pre_q_tropism
	.align 32
	.type	pre_q_tropism, @object
	.size	pre_q_tropism, 36
pre_q_tropism:
	.long	9999
	.long	100
	.long	60
	.long	20
	.long	5
	.long	2
	.long	0
	.long	0
	.long	9999
	.globl	pre_b_tropism
	.align 32
	.type	pre_b_tropism, @object
	.size	pre_b_tropism, 36
pre_b_tropism:
	.long	9999
	.long	50
	.long	25
	.long	15
	.long	5
	.long	2
	.long	2
	.long	2
	.long	9999
	.comm	p_tropism,20736,32
	.comm	q_tropism,20736,32
	.comm	n_tropism,20736,32
	.comm	r_tropism,20736,32
	.comm	b_tropism,20736,32
	.globl	ksafety_scaled
	.align 32
	.type	ksafety_scaled, @object
	.size	ksafety_scaled, 540
ksafety_scaled:
	.long	-5
	.long	5
	.long	10
	.long	15
	.long	50
	.long	80
	.long	150
	.long	150
	.long	150
	.long	-5
	.long	15
	.long	20
	.long	25
	.long	70
	.long	150
	.long	200
	.long	200
	.long	200
	.long	-5
	.long	15
	.long	30
	.long	30
	.long	100
	.long	200
	.long	300
	.long	300
	.long	300
	.long	-10
	.long	20
	.long	40
	.long	40
	.long	100
	.long	200
	.long	300
	.long	300
	.long	400
	.long	-10
	.long	30
	.long	50
	.long	80
	.long	150
	.long	300
	.long	400
	.long	400
	.long	500
	.long	-10
	.long	35
	.long	60
	.long	100
	.long	200
	.long	250
	.long	400
	.long	400
	.long	500
	.long	-10
	.long	40
	.long	70
	.long	110
	.long	210
	.long	300
	.long	500
	.long	500
	.long	600
	.long	-10
	.long	45
	.long	75
	.long	125
	.long	215
	.long	300
	.long	500
	.long	600
	.long	700
	.long	-10
	.long	60
	.long	90
	.long	130
	.long	240
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	95
	.long	145
	.long	260
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	100
	.long	150
	.long	270
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	110
	.long	160
	.long	280
	.long	400
	.long	600
	.long	700
	.long	800
	.long	-20
	.long	70
	.long	115
	.long	165
	.long	290
	.long	400
	.long	600
	.long	700
	.long	800
	.long	-20
	.long	80
	.long	120
	.long	170
	.long	300
	.long	450
	.long	700
	.long	800
	.long	900
	.long	-20
	.long	80
	.long	125
	.long	175
	.long	310
	.long	450
	.long	700
	.long	800
	.long	900
	.text
	.globl	initialize_eval
	.type	initialize_eval, @function
initialize_eval:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -16(%rbp)
	jmp	.L2
.L5:
	movl	$0, -12(%rbp)
	jmp	.L3
.L4:
	movl	-16(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -8(%rbp)
	subl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	sarl	$3, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -4(%rbp)
	subl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	upscale(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	upscale(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %ecx
	addl	%esi, %ecx
	movslq	%eax, %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	rookdistance(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	upscale(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	upscale(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	cmovge	-4(%rbp), %eax
	movl	%eax, %ecx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	distance(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -12(%rbp)
.L3:
	cmpl	$63, -12(%rbp)
	jle	.L4
	addl	$1, -16(%rbp)
.L2:
	cmpl	$63, -16(%rbp)
	jle	.L5
	movl	$0, -16(%rbp)
	jmp	.L6
.L9:
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pre_p_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	p_tropism(%rip), %rax
	addq	%rdx, %rax
	movb	%sil, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pre_b_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	b_tropism(%rip), %rax
	addq	%rdx, %rax
	movb	%sil, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pre_n_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	n_tropism(%rip), %rax
	addq	%rdx, %rax
	movb	%sil, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pre_r_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	r_tropism(%rip), %rax
	addq	%rdx, %rax
	movb	%sil, (%rax)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Xfile(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xfile(%rip), %rax
	movl	(%rcx,%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	subl	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Xrank(%rip), %rax
	movl	(%rcx,%rax), %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	Xrank(%rip), %rax
	movl	(%rsi,%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pre_q_tropism(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	q_tropism(%rip), %rax
	addq	%rdx, %rax
	movb	%sil, (%rax)
	addl	$1, -12(%rbp)
.L7:
	cmpl	$143, -12(%rbp)
	jle	.L8
	addl	$1, -16(%rbp)
.L6:
	cmpl	$143, -16(%rbp)
	jle	.L9
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	initialize_eval, .-initialize_eval
	.globl	eval
	.type	eval, @function
eval:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	movl	Variant(%rip), %eax
	cmpl	$2, %eax
	jne	.L11
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	std_eval@PLT
	jmp	.L136
.L11:
	movl	Variant(%rip), %eax
	cmpl	$3, %eax
	jne	.L13
	call	suicide_eval@PLT
	jmp	.L136
.L13:
	movl	Variant(%rip), %eax
	cmpl	$4, %eax
	jne	.L14
	call	losers_eval@PLT
	jmp	.L136
.L14:
	movl	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	checkECache@PLT
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L15
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L16
	movl	-52(%rbp), %eax
	jmp	.L136
.L16:
	movl	-52(%rbp), %eax
	negl	%eax
	jmp	.L136
.L15:
	movl	cfg_devscale(%rip), %eax
	testl	%eax, %eax
	je	.L17
	movl	white_to_move(%rip), %edx
	movl	comp_color(%rip), %eax
	cmpl	%eax, %edx
	je	.L18
	movl	white_hand_eval(%rip), %eax
	cmpl	$200, %eax
	jg	.L19
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L19
	movl	$2, -28(%rbp)
	jmp	.L22
.L19:
	movl	white_hand_eval(%rip), %eax
	cmpl	$699, %eax
	jle	.L21
	movl	$0, -28(%rbp)
	jmp	.L22
.L21:
	movl	$1, -28(%rbp)
	jmp	.L22
.L18:
	movl	$0, -28(%rbp)
.L22:
	movl	white_to_move(%rip), %edx
	movl	comp_color(%rip), %eax
	cmpl	%eax, %edx
	jne	.L23
	movl	black_hand_eval(%rip), %eax
	negl	%eax
	cmpl	$200, %eax
	jg	.L24
	movl	Variant(%rip), %eax
	cmpl	$1, %eax
	je	.L24
	movl	$2, -24(%rbp)
	jmp	.L28
.L24:
	movl	black_hand_eval(%rip), %eax
	negl	%eax
	cmpl	$699, %eax
	jle	.L26
	movl	$0, -24(%rbp)
	jmp	.L28
.L26:
	movl	$1, -24(%rbp)
	jmp	.L28
.L23:
	movl	$0, -24(%rbp)
	jmp	.L28
.L17:
	movl	$0, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
.L28:
	movl	$1, -44(%rbp)
	movl	$1, -40(%rbp)
	jmp	.L29
.L43:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pieces(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L138
	addl	$1, -44(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	ja	.L31
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L33(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L33(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L33:
	.long	.L31-.L33
	.long	.L32-.L33
	.long	.L34-.L33
	.long	.L35-.L33
	.long	.L36-.L33
	.long	.L31-.L33
	.long	.L31-.L33
	.long	.L37-.L33
	.long	.L38-.L33
	.long	.L39-.L33
	.long	.L40-.L33
	.long	.L41-.L33
	.long	.L42-.L33
	.text
.L32:
	movl	-52(%rbp), %eax
	addl	$100, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	white_pawn(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	p_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L34:
	movl	-52(%rbp), %eax
	subl	$100, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	black_pawn(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	wking_loc(%rip), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rdx
	leaq	p_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L37:
	movl	-52(%rbp), %eax
	addl	$250, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	white_rook(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	r_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L38:
	movl	-52(%rbp), %eax
	subl	$250, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	black_rook(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	wking_loc(%rip), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rdx
	leaq	r_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L41:
	movl	-52(%rbp), %eax
	addl	$230, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	pcsqbishop(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	b_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L42:
	movl	-52(%rbp), %eax
	subl	$230, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	pcsqbishop(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	wking_loc(%rip), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rdx
	leaq	b_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L35:
	movl	-52(%rbp), %eax
	addl	$210, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	white_knight(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	n_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L36:
	movl	-52(%rbp), %eax
	subl	$210, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	black_knight(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	wking_loc(%rip), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rdx
	leaq	n_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L39:
	movl	-52(%rbp), %eax
	addl	$450, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	white_queen(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	q_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L40:
	movl	-52(%rbp), %eax
	subl	$450, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	black_queen(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %ecx
	movl	wking_loc(%rip), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rsi), %rdx
	leaq	q_tropism(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L31
.L138:
	nop
.L31:
	addl	$1, -40(%rbp)
.L29:
	movl	piece_count(%rip), %eax
	cmpl	%eax, -44(%rbp)
	jle	.L43
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	white_king(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edx
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	black_king(%rip), %rax
	movl	(%rcx,%rax), %esi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	white_castled(%rip), %eax
	testl	%eax, %eax
	jne	.L44
	movl	120+moved(%rip), %eax
	testl	%eax, %eax
	je	.L44
	movl	-52(%rbp), %eax
	subl	$30, %eax
	movl	%eax, -52(%rbp)
.L44:
	movl	black_castled(%rip), %eax
	testl	%eax, %eax
	jne	.L45
	movl	456+moved(%rip), %eax
	testl	%eax, %eax
	je	.L45
	movl	-52(%rbp), %eax
	addl	$30, %eax
	movl	%eax, -52(%rbp)
.L45:
	movl	164+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L46
	movl	212+board(%rip), %eax
	cmpl	$13, %eax
	je	.L46
	movl	-52(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -52(%rbp)
.L46:
	movl	168+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L47
	movl	216+board(%rip), %eax
	cmpl	$13, %eax
	je	.L47
	movl	-52(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -52(%rbp)
.L47:
	movl	404+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L48
	movl	356+board(%rip), %eax
	cmpl	$13, %eax
	je	.L48
	movl	-52(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -52(%rbp)
.L48:
	movl	408+moved(%rip), %eax
	testl	%eax, %eax
	jne	.L49
	movl	360+board(%rip), %eax
	cmpl	$13, %eax
	je	.L49
	movl	-52(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -52(%rbp)
.L49:
	movl	cfg_smarteval(%rip), %eax
	testl	%eax, %eax
	je	.L50
	movl	wking_loc(%rip), %eax
	cmpl	$30, %eax
	je	.L51
	movl	wking_loc(%rip), %eax
	cmpl	$29, %eax
	je	.L51
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L52
	movl	-52(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -52(%rbp)
.L52:
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L53
	movl	-52(%rbp), %eax
	subl	$35, %eax
	movl	%eax, -52(%rbp)
.L53:
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L54
	movl	-52(%rbp), %eax
	subl	$24, %eax
	movl	%eax, -52(%rbp)
.L54:
	movl	white_castled(%rip), %eax
	testl	%eax, %eax
	je	.L51
	movl	bking_loc(%rip), %eax
	subl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L55
	movl	-52(%rbp), %eax
	addl	$11, %eax
	movl	%eax, -52(%rbp)
.L55:
	movl	bking_loc(%rip), %eax
	subl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L56
	movl	-52(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -52(%rbp)
.L56:
	movl	bking_loc(%rip), %eax
	subl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L51
	movl	-52(%rbp), %eax
	addl	$11, %eax
	movl	%eax, -52(%rbp)
.L51:
	movl	bking_loc(%rip), %eax
	cmpl	$114, %eax
	je	.L57
	movl	bking_loc(%rip), %eax
	cmpl	$113, %eax
	je	.L57
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L58
	movl	-52(%rbp), %eax
	addl	$24, %eax
	movl	%eax, -52(%rbp)
.L58:
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L59
	movl	-52(%rbp), %eax
	addl	$35, %eax
	movl	%eax, -52(%rbp)
.L59:
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L60
	movl	-52(%rbp), %eax
	addl	$24, %eax
	movl	%eax, -52(%rbp)
.L60:
	movl	black_castled(%rip), %eax
	testl	%eax, %eax
	je	.L57
	movl	bking_loc(%rip), %eax
	subl	$25, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L61
	movl	-52(%rbp), %eax
	subl	$11, %eax
	movl	%eax, -52(%rbp)
.L61:
	movl	bking_loc(%rip), %eax
	subl	$24, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L62
	movl	-52(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -52(%rbp)
.L62:
	movl	bking_loc(%rip), %eax
	subl	$23, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L57
	movl	-52(%rbp), %eax
	subl	$11, %eax
	movl	%eax, -52(%rbp)
.L57:
	movl	168+moved(%rip), %eax
	testl	%eax, %eax
	je	.L63
	movl	-52(%rbp), %eax
	addl	$30, %eax
	movl	%eax, -52(%rbp)
	movl	164+moved(%rip), %eax
	testl	%eax, %eax
	je	.L64
	movl	-52(%rbp), %eax
	addl	$25, %eax
	movl	%eax, -52(%rbp)
.L64:
	movl	128+moved(%rip), %eax
	testl	%eax, %eax
	je	.L65
	movl	-52(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -52(%rbp)
.L65:
	movl	108+moved(%rip), %eax
	testl	%eax, %eax
	je	.L66
	movl	-52(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -52(%rbp)
.L66:
	movl	112+moved(%rip), %eax
	testl	%eax, %eax
	je	.L63
	movl	-52(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -52(%rbp)
.L63:
	movl	408+moved(%rip), %eax
	testl	%eax, %eax
	je	.L67
	movl	-52(%rbp), %eax
	subl	$30, %eax
	movl	%eax, -52(%rbp)
	movl	404+moved(%rip), %eax
	testl	%eax, %eax
	je	.L68
	movl	-52(%rbp), %eax
	subl	$25, %eax
	movl	%eax, -52(%rbp)
.L68:
	movl	464+moved(%rip), %eax
	testl	%eax, %eax
	je	.L69
	movl	-52(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -52(%rbp)
.L69:
	movl	444+moved(%rip), %eax
	testl	%eax, %eax
	je	.L70
	movl	-52(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -52(%rbp)
.L70:
	movl	448+moved(%rip), %eax
	testl	%eax, %eax
	je	.L67
	movl	-52(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -52(%rbp)
.L67:
	movl	176+board(%rip), %eax
	cmpl	$1, %eax
	je	.L71
	movl	220+board(%rip), %eax
	cmpl	$2, %eax
	je	.L72
	movl	264+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L71
.L72:
	movl	-52(%rbp), %eax
	subl	$30, %eax
	movl	%eax, -52(%rbp)
.L71:
	movl	416+board(%rip), %eax
	cmpl	$2, %eax
	je	.L73
	movl	364+board(%rip), %eax
	cmpl	$1, %eax
	je	.L74
	movl	312+board(%rip), %eax
	cmpl	$1, %eax
	jne	.L73
.L74:
	movl	-52(%rbp), %eax
	addl	$30, %eax
	movl	%eax, -52(%rbp)
.L73:
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L75
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$12, %eax
	jne	.L76
.L75:
	movl	-52(%rbp), %eax
	subl	$35, %eax
	movl	%eax, -52(%rbp)
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L76
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L76
	movl	-52(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	$150, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
.L76:
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	je	.L77
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$11, %eax
	jne	.L78
.L77:
	movl	-52(%rbp), %eax
	addl	$35, %eax
	movl	%eax, -52(%rbp)
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L78
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L78
	movl	-28(%rbp), %eax
	movl	$150, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
.L78:
	movl	172+board(%rip), %eax
	cmpl	$1, %eax
	je	.L79
	movl	216+board(%rip), %eax
	cmpl	$1, %eax
	je	.L79
	movl	216+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L80
.L79:
	movl	216+board(%rip), %eax
	testl	%eax, %eax
	je	.L80
	movl	$0, %esi
	movl	$54, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L80
	movl	172+board(%rip), %eax
	cmpl	$1, %eax
	jne	.L81
	movl	-52(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -52(%rbp)
.L81:
	movl	216+board(%rip), %eax
	cmpl	$1, %eax
	jne	.L82
	movl	-52(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -52(%rbp)
	jmp	.L80
.L82:
	movl	216+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L80
	movl	-52(%rbp), %eax
	subl	$15, %eax
	movl	%eax, -52(%rbp)
.L80:
	movl	412+board(%rip), %eax
	cmpl	$2, %eax
	je	.L83
	movl	360+board(%rip), %eax
	cmpl	$2, %eax
	je	.L83
	movl	360+board(%rip), %eax
	cmpl	$1, %eax
	jne	.L84
.L83:
	movl	360+board(%rip), %eax
	testl	%eax, %eax
	je	.L84
	movl	$1, %esi
	movl	$90, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L84
	movl	412+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L85
	movl	-52(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -52(%rbp)
.L85:
	movl	360+board(%rip), %eax
	cmpl	$2, %eax
	jne	.L86
	movl	-52(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -52(%rbp)
	jmp	.L84
.L86:
	movl	360+board(%rip), %eax
	cmpl	$1, %eax
	jne	.L84
	movl	-52(%rbp), %eax
	addl	$15, %eax
	movl	%eax, -52(%rbp)
.L84:
	movl	bking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L87
	movl	bking_loc(%rip), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L87
	movl	-28(%rbp), %eax
	movl	$50, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	jmp	.L88
.L87:
	movl	wking_loc(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L88
	movl	wking_loc(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L88
	movl	-52(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	$50, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
.L88:
	movl	176+board(%rip), %eax
	cmpl	$4, %eax
	jne	.L89
	movl	-52(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -52(%rbp)
	movl	176+board(%rip), %eax
	testl	%eax, %eax
	je	.L90
	movl	$0, %esi
	movl	$44, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L90
	movl	-52(%rbp), %eax
	subl	$40, %eax
	movl	%eax, -52(%rbp)
.L90:
	movl	128+board(%rip), %eax
	cmpl	$7, %eax
	jne	.L91
	movl	-52(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -52(%rbp)
.L91:
	movl	124+board(%rip), %eax
	cmpl	$11, %eax
	jne	.L89
	movl	-52(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -52(%rbp)
.L89:
	movl	416+board(%rip), %eax
	cmpl	$3, %eax
	jne	.L92
	movl	-52(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -52(%rbp)
	movl	416+board(%rip), %eax
	testl	%eax, %eax
	je	.L93
	movl	$1, %esi
	movl	$104, %edi
	call	is_attacked@PLT
	testl	%eax, %eax
	je	.L93
	movl	-52(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -52(%rbp)
.L93:
	movl	464+board(%rip), %eax
	cmpl	$8, %eax
	jne	.L94
	movl	-52(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -52(%rbp)
.L94:
	movl	460+board(%rip), %eax
	cmpl	$12, %eax
	jne	.L92
	movl	-52(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -52(%rbp)
.L92:
	movl	228+board(%rip), %eax
	cmpl	$12, %eax
	jne	.L95
	movl	176+board(%rip), %eax
	cmpl	$1, %eax
	je	.L95
	movl	-52(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -52(%rbp)
	movl	176+board(%rip), %eax
	cmpl	$4, %eax
	jne	.L95
	movl	-52(%rbp), %eax
	subl	$40, %eax
	movl	%eax, -52(%rbp)
	movl	124+board(%rip), %eax
	cmpl	$5, %eax
	je	.L96
	movl	128+board(%rip), %eax
	cmpl	$5, %eax
	je	.L96
	movl	132+board(%rip), %eax
	cmpl	$5, %eax
	jne	.L95
.L96:
	movl	-52(%rbp), %eax
	subl	$80, %eax
	movl	%eax, -52(%rbp)
.L95:
	movl	372+board(%rip), %eax
	cmpl	$11, %eax
	jne	.L50
	movl	416+board(%rip), %eax
	cmpl	$2, %eax
	je	.L50
	movl	-52(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -52(%rbp)
	movl	416+board(%rip), %eax
	cmpl	$3, %eax
	jne	.L50
	movl	-52(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -52(%rbp)
	movl	460+board(%rip), %eax
	cmpl	$6, %eax
	je	.L97
	movl	464+board(%rip), %eax
	cmpl	$6, %eax
	je	.L97
	movl	468+board(%rip), %eax
	cmpl	$6, %eax
	jne	.L50
.L97:
	movl	-52(%rbp), %eax
	addl	$80, %eax
	movl	%eax, -52(%rbp)
.L50:
	movl	cfg_attackeval(%rip), %eax
	testl	%eax, %eax
	je	.L98
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L99
	movl	wking_loc(%rip), %eax
	subl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L100
.L99:
	movl	$0, %edx
.L100:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L101
	movl	wking_loc(%rip), %eax
	subl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L102
.L101:
	movl	$0, %edx
.L102:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L103
	movl	wking_loc(%rip), %eax
	subl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L104
.L103:
	movl	$0, %edx
.L104:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L105
	movl	wking_loc(%rip), %eax
	subl	$1, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L106
.L105:
	movl	$0, %edx
.L106:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L107
	movl	wking_loc(%rip), %eax
	addl	$1, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L108
.L107:
	movl	$0, %edx
.L108:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L109
	movl	wking_loc(%rip), %eax
	addl	$11, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L110
.L109:
	movl	$0, %edx
.L110:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L111
	movl	wking_loc(%rip), %eax
	addl	$12, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L112
.L111:
	movl	$0, %edx
.L112:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L113
	movl	wking_loc(%rip), %eax
	addl	$13, %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L114
.L113:
	movl	$0, %edx
.L114:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	black_hand_eval(%rip), %eax
	negl	%eax
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$14, -32(%rbp)
	jle	.L115
	movl	$14, -32(%rbp)
	jmp	.L116
.L115:
	cmpl	$0, -32(%rbp)
	jns	.L116
	movl	$0, -32(%rbp)
.L116:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ksafety_scaled(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L117
	movl	bking_loc(%rip), %eax
	subl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L118
.L117:
	movl	$0, %edx
.L118:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L119
	movl	bking_loc(%rip), %eax
	subl	$12, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L120
.L119:
	movl	$0, %edx
.L120:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L121
	movl	bking_loc(%rip), %eax
	subl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L122
.L121:
	movl	$0, %edx
.L122:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L123
	movl	bking_loc(%rip), %eax
	subl	$1, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L124
.L123:
	movl	$0, %edx
.L124:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L125
	movl	bking_loc(%rip), %eax
	addl	$1, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L126
.L125:
	movl	$0, %edx
.L126:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L127
	movl	bking_loc(%rip), %eax
	addl	$11, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L128
.L127:
	movl	$0, %edx
.L128:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L129
	movl	bking_loc(%rip), %eax
	addl	$12, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L130
.L129:
	movl	$0, %edx
.L130:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	board(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L131
	movl	bking_loc(%rip), %eax
	addl	$13, %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	nk_attacked@PLT
	movl	%eax, %edx
	jmp	.L132
.L131:
	movl	$0, %edx
.L132:
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	white_hand_eval(%rip), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$14, -36(%rbp)
	jle	.L133
	movl	$14, -36(%rbp)
	jmp	.L134
.L133:
	cmpl	$0, -36(%rbp)
	jns	.L134
	movl	$0, -36(%rbp)
.L134:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	ksafety_scaled(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, -16(%rbp)
	movl	-52(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
.L98:
	movl	white_hand_eval(%rip), %edx
	movl	black_hand_eval(%rip), %eax
	addl	%eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	storeECache@PLT
	movl	white_to_move(%rip), %eax
	cmpl	$1, %eax
	jne	.L135
	movl	-52(%rbp), %eax
	jmp	.L136
.L135:
	movl	-52(%rbp), %eax
	negl	%eax
.L136:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L137
	call	__stack_chk_fail@PLT
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	eval, .-eval
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
