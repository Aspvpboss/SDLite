
GCC = gcc
#GCC = gcc

INCLUDE = -Iinclude 
LIB = -LSDK1/lib
LINK = -lSDL3 -lSDL3_image -lSDL3_ttf -lMemTrack
SRC_LIB = $(wildcard src/*.c src/sprite/*.c src/entity/*.c)



FLAGS = -Wall -Werror -Wpedantic -pedantic
OPT = -O2 -march=native 
OUTPUT = test_build/out.exe

DLL_FLAGS = -fPIC -shared  -Wl,--out-implib,SDK1/lib/libSDK1.a
DLL_OUTPUT = test_build/libSDK1.dll
DEBUG_DLL_OUTPUT = test_build/libSDK1_debug.dll
DEBUG_DLL_FLAGS = -fPIC -shared  -Wl,--out-implib,SDK1/lib/libSDK1_debug.a


default: json debug_build run

opt: opt_build run


json:
	@compiledb -n -- make build_lib


build_lib: opt_build_lib
	@${GCC} ${SRC_LIB} -o ${DEBUG_DLL_OUTPUT} -DTRACK_ALLOCATIONS -DDLL_EXPORTS ${DEBUG_DLL_FLAGS} ${INCLUDE} ${FLAGS} ${LIB} ${LINK}

opt_build_lib:
	@${GCC} ${OPT} ${SRC_LIB} -o ${DLL_OUTPUT} -DDLL_EXPORTS ${DLL_FLAGS} ${INCLUDE} ${FLAGS} ${LIB} ${LINK}	

debug_build: build_lib
	@${GCC} main.c -o ${OUTPUT} -Iinclude ${INCLUDE} -DTRACK_ALLOCATIONS -lSDK1_debug ${LINK} ${LIB} ${FLAGS}  

opt_build: build_lib
	@${GCC} main.c -o ${OUTPUT} -Iinclude ${INCLUDE} -lSDK1 ${LINK} ${LIB} ${FLAGS}  

run:
	@${OUTPUT}

