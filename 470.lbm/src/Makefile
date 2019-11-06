
SOURCES= lbm.c main.c

CC=gcc
CFLAGS=-S -emit-llvm
COMP_FLAGS=-lm -DSPEC_CPU -DNDEBUG -static

all: $(SOURCES)
	$(CC) $(COMP_FLAGS) $(SOURCES) $(CFLAGS)  -lm

    #-o benchmark_clang

