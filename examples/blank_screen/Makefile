
GCC = gcc

SRC = $(wildcard src/*.c)
OUT = build/blank_screen.exe

INCLUDE = -ISDK1 -Iinclude 
LIB = -LSDK1/lib 
LINK = -lSDL3 -lSDL3_image -lSDL3_mixer -lSDL3_ttf


W_FLAGS = -Wall -Werror -Wpedantic
OPT_FLAG = -O2 -s
DEBUG_FLAG = -g


default: debug_build run

all: json default


opt: opt_build run



json:
	@compiledb -n -- make debug_build



debug_build:
	@${GCC} -o ${OUT} ${SRC} ${LINK} ${LIB} ${INCLUDE} ${W_FLAGS} ${DEBUG_FLAG}


opt_build:
	@${GCC} -o ${OUT} ${SRC} ${LINK} ${LIB} ${INCLUDE} ${W_FLAGS} ${OPT_FLAG}


run:
	@${OUT}





