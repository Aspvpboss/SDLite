
GCC = g++

SRC = $(wildcard src/*.cpp)
OUT = build/blank_screen.exe

INCLUDE = -ISDLite/include -Iinclude 
LIB = -LSDLite/lib 
LINK = -lSDL3 -lSDL3_image -lSDL3_mixer -lSDL3_ttf


W_FLAGS = -Wall -Werror -Wpedantic
OPT_FLAG = -O2 -s
DEBUG_FLAG = -g


default: debug_build run

opt: opt_build run



debug_build:
	@${GCC} -o ${OUT} ${SRC} -lSDLite_debug ${LINK} ${LIB} ${INCLUDE} ${W_FLAGS} ${DEBUG_FLAG}


opt_build:
	@${GCC} -o ${OUT} ${SRC} -lSDLite ${LINK} ${LIB} ${INCLUDE} ${W_FLAGS} ${OPT_FLAG}


run:
	@${OUT}





