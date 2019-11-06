	.file	"iupac.c"
	.text
	.globl	dnafq
	.data
	.align 16
	.type	dnafq, @object
	.size	dnafq, 16
dnafq:
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.globl	aafq
	.align 32
	.type	aafq, @object
	.size	aafq, 80
aafq:
	.long	1033546299
	.long	1015745270
	.long	1029256432
	.long	1031893273
	.long	1025963534
	.long	1032597111
	.long	1018662090
	.long	1030398625
	.long	1030966097
	.long	1035945978
	.long	1019286471
	.long	1027179815
	.long	1028245235
	.long	1025820995
	.long	1028865590
	.long	1033102575
	.long	1030444259
	.long	1032168151
	.long	1011680083
	.long	1023607476
	.globl	aa_alphabet
	.align 16
	.type	aa_alphabet, @object
	.size	aa_alphabet, 21
aa_alphabet:
	.string	"ACDEFGHIKLMNPQRSTVWY"
	.globl	aa_index
	.align 32
	.type	aa_index, @object
	.size	aa_index, 80
aa_index:
	.long	0
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	10
	.long	11
	.long	12
	.long	13
	.long	15
	.long	16
	.long	17
	.long	18
	.long	19
	.long	21
	.long	22
	.long	24
	.globl	iupac
	.align 32
	.type	iupac, @object
	.size	iupac, 68
iupac:
	.byte	65
	.byte	84
	.byte	8
	.byte	1
	.byte	67
	.byte	71
	.byte	4
	.byte	2
	.byte	71
	.byte	67
	.byte	2
	.byte	4
	.byte	84
	.byte	65
	.byte	1
	.byte	8
	.byte	85
	.byte	65
	.byte	1
	.byte	8
	.byte	78
	.byte	78
	.byte	15
	.byte	15
	.byte	32
	.byte	32
	.byte	16
	.byte	16
	.byte	82
	.byte	89
	.byte	10
	.byte	5
	.byte	89
	.byte	82
	.byte	5
	.byte	10
	.byte	77
	.byte	75
	.byte	12
	.byte	3
	.byte	75
	.byte	77
	.byte	3
	.byte	12
	.byte	83
	.byte	83
	.byte	6
	.byte	6
	.byte	87
	.byte	87
	.byte	9
	.byte	9
	.byte	72
	.byte	68
	.byte	13
	.byte	11
	.byte	66
	.byte	86
	.byte	7
	.byte	14
	.byte	86
	.byte	66
	.byte	14
	.byte	7
	.byte	68
	.byte	72
	.byte	11
	.byte	13
	.globl	stdcode1
	.section	.rodata
.LC0:
	.string	"K"
.LC1:
	.string	"N"
.LC2:
	.string	"T"
.LC3:
	.string	"R"
.LC4:
	.string	"S"
.LC5:
	.string	"I"
.LC6:
	.string	"M"
.LC7:
	.string	"Q"
.LC8:
	.string	"H"
.LC9:
	.string	"P"
.LC10:
	.string	"L"
.LC11:
	.string	"E"
.LC12:
	.string	"D"
.LC13:
	.string	"A"
.LC14:
	.string	"G"
.LC15:
	.string	"V"
.LC16:
	.string	"*"
.LC17:
	.string	"Y"
.LC18:
	.string	"C"
.LC19:
	.string	"W"
.LC20:
	.string	"F"
.LC21:
	.string	"X"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	stdcode1, @object
	.size	stdcode1, 520
stdcode1:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC2
	.quad	.LC2
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC5
	.quad	.LC6
	.quad	.LC5
	.quad	.LC7
	.quad	.LC8
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC3
	.quad	.LC3
	.quad	.LC3
	.quad	.LC3
	.quad	.LC10
	.quad	.LC10
	.quad	.LC10
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC13
	.quad	.LC13
	.quad	.LC13
	.quad	.LC14
	.quad	.LC14
	.quad	.LC14
	.quad	.LC14
	.quad	.LC15
	.quad	.LC15
	.quad	.LC15
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC16
	.quad	.LC17
	.quad	.LC4
	.quad	.LC4
	.quad	.LC4
	.quad	.LC4
	.quad	.LC16
	.quad	.LC18
	.quad	.LC19
	.quad	.LC18
	.quad	.LC10
	.quad	.LC20
	.quad	.LC10
	.quad	.LC20
	.quad	.LC21
	.globl	stdcode3
	.section	.rodata
.LC22:
	.string	"Lys"
.LC23:
	.string	"Asn"
.LC24:
	.string	"Thr"
.LC25:
	.string	"Arg"
.LC26:
	.string	"Ser"
.LC27:
	.string	"Ile"
.LC28:
	.string	"Met"
.LC29:
	.string	"Gln"
.LC30:
	.string	"His"
.LC31:
	.string	"Pro"
.LC32:
	.string	"Leu"
.LC33:
	.string	"Glu"
.LC34:
	.string	"Asp"
.LC35:
	.string	"Ala"
.LC36:
	.string	"Gly"
.LC37:
	.string	"Val"
.LC38:
	.string	"***"
.LC39:
	.string	"Tyr"
.LC40:
	.string	"Cys"
.LC41:
	.string	"Trp"
.LC42:
	.string	"Phe"
.LC43:
	.string	"XXX"
	.section	.data.rel.local
	.align 32
	.type	stdcode3, @object
	.size	stdcode3, 520
stdcode3:
	.quad	.LC22
	.quad	.LC23
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC24
	.quad	.LC24
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC27
	.quad	.LC28
	.quad	.LC27
	.quad	.LC29
	.quad	.LC30
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC31
	.quad	.LC31
	.quad	.LC31
	.quad	.LC25
	.quad	.LC25
	.quad	.LC25
	.quad	.LC25
	.quad	.LC32
	.quad	.LC32
	.quad	.LC32
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC35
	.quad	.LC35
	.quad	.LC35
	.quad	.LC36
	.quad	.LC36
	.quad	.LC36
	.quad	.LC36
	.quad	.LC37
	.quad	.LC37
	.quad	.LC37
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC38
	.quad	.LC39
	.quad	.LC26
	.quad	.LC26
	.quad	.LC26
	.quad	.LC26
	.quad	.LC38
	.quad	.LC40
	.quad	.LC41
	.quad	.LC40
	.quad	.LC32
	.quad	.LC42
	.quad	.LC32
	.quad	.LC41
	.quad	.LC43
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
