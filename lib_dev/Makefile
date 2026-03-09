
GCC = gcc
#GCC = gcc

INCLUDE = -Iinclude -Isrc/sprite -Isrc
LIB = -LSDLite/lib
LINK = -lSDL3 -lSDL3_image -lSDL3_ttf -lSDL3_mixer
SRC_LIB = $(wildcard src/*.c src/sprite/*.c)



FLAGS = -Wall -Werror -Wpedantic
OPT = -O2 
OUTPUT = test_build/out.exe

DLL_EXPORT = -DDLL_EXPORTS -DMEMTRACK_BUILD_DLL
DLL_FLAGS = -fPIC -shared  -Wl,--out-implib,SDLite/lib/libSDLite.a
DLL_OUTPUT = test_build/libSDLite.dll
DEBUG_DLL_OUTPUT = test_build/libSDLite_debug.dll
DEBUG_DLL_FLAGS = -fPIC -shared  -Wl,--out-implib,SDLite/lib/libSDLite_debug.a


default: debug_build run

opt: opt_build run



build_lib: opt_build_lib
	@${GCC} -g ${SRC_LIB} -o ${DEBUG_DLL_OUTPUT} -DTRACK_ALLOCATIONS ${DLL_EXPORT} ${DEBUG_DLL_FLAGS} ${INCLUDE} ${FLAGS} ${LIB} ${LINK}

opt_build_lib:
	@${GCC} ${OPT} ${SRC_LIB} -o ${DLL_OUTPUT} ${DLL_EXPORT} ${DLL_FLAGS} ${INCLUDE} ${FLAGS} ${LIB} ${LINK}	



debug_build: build_lib
	@${GCC} -g main.c -o ${OUTPUT} -Iinclude ${INCLUDE} -DTRACK_ALLOCATIONS -lSDLite_debug ${LINK} ${LIB} ${FLAGS}  

opt_build: build_lib
	@${GCC} ${OPT} main.c -o ${OUTPUT} -Iinclude ${INCLUDE} -DSTDLIB_ALLOCATIONS -lSDLite ${LINK} ${LIB} ${FLAGS}  

run: 
	@${OUTPUT}




G++ = g++
OUTPUT_CPP = test_build/out_cpp.exe  
FLAGS_CPP = -Wall -Werror

all_cpp: debug_build_cpp run_cpp 

opt_cpp: opt_build_cpp run_cpp

debug_build_cpp:
	@${G++} -g main.cpp -o ${OUTPUT_CPP} -Iinclude ${INCLUDE} -DTRACK_ALLOCATIONS -lSDLite_debug ${LINK} ${LIB} ${FLAGS_CPP}  

opt_build_cpp:
	@${G++} ${OPT} main.cpp -o ${OUTPUT_CPP} -Iinclude ${INCLUDE} -DSTDLIB_ALLOCATIONS -lSDLite ${LINK} ${LIB} ${FLAGS_CPP}  

run_cpp:
	@${OUTPUT_CPP}

