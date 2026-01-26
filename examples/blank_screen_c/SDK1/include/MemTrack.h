/* 
    Copyright (c) 2026 Benjamin Vaughan

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
*/

/*
    DOCUMENTATION

    This library tracks allocations and can report memory leaks; furthermore, it can also
    get heap usage and automatically null pointers after freeing them and exiting the program if malloc fails.

    As of right now this library doesn't support multi-threaded programs; however, multi-threading will be support soon

    I wrote this library in a way to configure it as you want. If you just want to track allocations when debugging, then
    only use the normal malloc and free during runtime you can do that. Or if you want it to null pointers when freed
    during runtime and check for malloc failure during runtime, in exchange for a very some performance hit.

    when compiling use the these macros to configure the library
    I use gcc so I use -Dmacro_name to define a global macro when compiling


    #define STDLIB_ALLOCATIONS - this uses stdlib malloc and free 

    #define TRACK_ALLOCATIONS - this uses my tracking malloc and free functions 

    NO MACRO defined - this doesn't track allocations, however it still uses my malloc and free functions 
                       which allows for auto nulling pointers and exiting if malloc failure

    Uncomment the macro MEMTRACK_DLL (at the beginning of the header guard) for using this with a dll, 
    then when compiling use MEMTRACK_BUILD_DLL global macro to use properly export for windows


    INITIALIZING 

        First, you must define the MEMTRACK_IMPLEMENTATION macro to paste the functions in, then include the memtrack header.
        You only need to define the MEMTRACK_IMPLEMENTATION once in one C file

        Second, you must create a MemTrack_Context variable, either using malloc or the stack (whichever you prefer).
        Then, you must call the function Set_MemTrack_Context(), and pass in the pointer of the defined MemTrack_Context.

        After that you can set the specific configs of memtrack using the MemTrack_Context. 
        
        These are the vars you can configs in MemTrack_Context, Importantly, the configs only work
        if you aren't using STDLIB_ALLOCATIONS so be aware.

            bool memory_failure_abort; if true, will exit program if malloc fails
            bool auto_null_pointers; if true, will automatically set freed pointers to null
            bool print_error_info; if true, will print debug info with memtrack_print functions

        Optionally, if the memory_failure_abort config is true, you can set a function to run before the program
        exit. Use the Set_Malloc_Error_Function() to set the function and data, it won't fail or crash if memory_failure_abort
        is false

        Set_Malloc_Error_Function() takes a functions pointer that returns void and takes a void* as a parameter, then 
        the void *data 

        Internally when the function is called, it passes the void *data into the function

    
    USING MEMTRACK 

    Here are the main functions and macros this library provides 
    
        FUNCTIONS

            size_t check_memory_usage(); // returns size_t of the amount of bytes used in heap
            int check_memory_leak(); // returns 1 if there are tracked allocations, returns 0 if there aren't tracked allocations
            void print_tracking_info(); // prints all tracking information
            void free_tracking_info(); // should always be called at the end of a program to free tracking_info

            //if you don't call this, then no functions will be called if malloc returns NULL
            void Set_Malloc_Error_Function(void(*function)(void*), void *function_arg);

            //you must call this *before* you set the values within MemTrack_Context because it zeros all values
            void Set_MemTrack_Context(MemTrack_Context *e_ctx);

        MACROS 

            These macro definitions change depending on what global macro you define (you can look at the changes below in the header),
            but these are the generic args you give them

            void* t_malloc(size_t size);

            void* t_realloc(void *mem, size_t size);
            
            void t_free(void *mem); 

            char* t_strdup(const char *string);


    EXAMPLE PROGRAM

        #define MEMTRACK_IMPLEMENTATION
        #include "memtrack.h"
        #include <stdio.h>


        void malloc_failure(void *data){
            printf("\ndub\n");
        }

        int main(void){

            MemTrack_Context ctx = {0};
            Set_MemTrack_Context(&ctx);
            ctx.config.auto_null_pointers = false;
            ctx.config.print_error_info = true;
            ctx.config.memory_failure_abort = true;

            Set_Malloc_Error_Function(malloc_failure, NULL);

            int *array = t_malloc(999999);

            if(!array)
                printf("is null\n");

            t_free(array);

            if(!array){

                printf("is null\n");

            } else{

                printf("isn't null\n");

            }
                

            if(check_memory_leak())
                print_tracking_info();

            free_tracking_info();

            return 0;
        }

*/


#ifndef MEMTRACK_H
#define MEMTRACK_H 

#ifdef __cplusplus 
extern "C"{
#endif

// uncomment this for use in DLLs
#define MEMTRACK_DLL

#if defined(MEMTRACK_DLL)

    #if defined(_WIN32)
        #if defined(MEMTRACK_BUILD_DLL)
            #define MEMTRACK_API __declspec(dllexport)
        #else
            #define MEMTRACK_API __declspec(dllimport)
        #endif
    #else
        #define MEMTRACK_API __attribute__((visibility("default")))
    #endif

#else
    #define MEMTRACK_API
#endif

#include <stddef.h>
#include <stdbool.h>



typedef struct{

    void (*fail_handler)(void*);
    void *handler_arg;
    struct{
        bool memory_failure_abort;
        bool auto_null_pointers;
        bool print_error_info;
    } config;


} MemTrack_Context;


MEMTRACK_API size_t check_memory_usage();
MEMTRACK_API void print_tracking_info();
MEMTRACK_API void free_tracking_info();
MEMTRACK_API int check_memory_leak();


#include <string.h>
#include <stdlib.h>


//if you don't call this, then no functions will be called if malloc returns NULL
MEMTRACK_API void Set_Malloc_Error_Function(void(*function)(void*), void *function_arg);

//you must call this *before* you set the values within MemTrack_Context
MEMTRACK_API void Set_MemTrack_Context(MemTrack_Context *e_ctx);

MEMTRACK_API void safe_free(void **mem);
MEMTRACK_API void* safe_malloc(size_t size);
MEMTRACK_API void* safe_realloc(void *memory, size_t size);
MEMTRACK_API char* safe_strdup(const char *src);

MEMTRACK_API void debug_free(void **mem, const char *file, int line);
MEMTRACK_API void* debug_malloc(size_t size, const char *file, int line);
MEMTRACK_API void* debug_realloc(void *mem, size_t size, const char *file, int line);
MEMTRACK_API char* debug_strdup(const char* src, const char *file, int line);



#ifdef TRACK_ALLOCATIONS

    //void *t_malloc(size_t size);
    #define t_malloc(size) debug_malloc(size, __FILE__, __LINE__)

    //void *t_realloc(void *ptr, size_t size);
    #define t_realloc(ptr, size) debug_realloc(ptr, size, __FILE__, __LINE__)

    /*
    void t_free(void **mem);
    */
    #define t_free(ptr) debug_free((void**)&ptr, __FILE__, __LINE__)

    //char *t_strdup(char *str);
    #define t_strdup(str) debug_strdup(str, __FILE__, __LINE__)
 
#elif defined(STDLIB_ALLOCATIONS)
 
    //void *t_malloc(size_t size);
    #define t_malloc(size) malloc(size)

    //void *t_realloc(void *ptr, size_t size);
    #define t_realloc(ptr, size) realloc(ptr, size)

    /*
    void free(void *mem);
    */
    #define t_free(ptr) free(ptr)

    //char *t_strdup(char *str);
    #define t_strdup(str) strdup(str)

#else

    //void *t_malloc(size_t size);
    #define t_malloc(size) safe_malloc(size)

    //void *t_realloc(void *mem, size_t size);
    #define t_realloc(ptr, size) safe_realloc(ptr, size)

    /*
    void t_free(void **mem);
    auto NULL's pointer
    */
    #define t_free(ptr) safe_free((void**)&ptr)

    //char *t_strdup(char *str);
    #define t_strdup(str)  safe_strdup(str)


#endif




#ifdef MEMTRACK_IMPLEMENTATION


#include <stdlib.h>
#include <string.h>
#include <stdio.h>


typedef struct Mem_Info{

    struct Mem_Info *next;
    size_t size;
    void *ptr;
    char *file_name;
    int file_line;

} Mem_Info;


//linked_list.c

static Mem_Info *head = NULL;
static Mem_Info *tail = NULL;


void free_tracking_info(){
    Mem_Info *current = head;
    Mem_Info *next = NULL;

    while(current){
        next = current->next;
        free(current->file_name);
        free(current);
        current = next;
    }

    head = NULL;
    tail = NULL;
}



size_t check_memory_usage(){
    Mem_Info *current = head;
    size_t total = 0;

    while(current){
        total += current->size;
        current = current->next;
    }

    return total;
}


int check_memory_leak(){

    if(head || tail)
        return 1;

    return 0;
}



void print_tracking_info(){

    Mem_Info *current = head;

    if(!current)
        return;

    printf("\nAllocation Information\n");
    while(current){
        printf("Address %p - size %zu - Line %d - File %s\n", current->ptr, current->size, current->file_line, current->file_name);
        current = current->next;
    }
    printf("\n");

}


static int append_allocation(void *ptr, const char *file, int line, size_t size){
    Mem_Info *node = (Mem_Info *)malloc(sizeof(Mem_Info));
    if(!node)
        return 1;
    node->size = size;
    node->ptr = ptr;
    node->file_name = strdup(file);
    node->file_line = line;

    if(tail){

        tail->next = node;
        tail = node;
        tail->next = NULL;
        return 0;
    }

    if(!head){

        head = node;
        head->next = NULL;
        tail = head;
        return 0;
    }

    return 1;
}


static int delete_allocation(void *check_ptr){
    Mem_Info *current = head;
    Mem_Info *prev = NULL;

    while(current && current->ptr != check_ptr){

        prev = current;
        current = current->next;

    }

    if(!current){
        return 1;
    }

    if(current->next && prev){ // not head, not tail

        prev->next = current->next;
    
    } else if(current->next && !prev){ // head, not tail

        head = current->next;

    } else if(!current->next && prev){ // not head, tail

        prev->next = NULL;
        tail = prev;

    } else{ // one node

        head = NULL;
        tail = NULL;

    }
    
    free(current->file_name);
    free(current);

    return 0;
}



//alloc.c

static MemTrack_Context *ctx = NULL;

static int check_context_init(){

    if(!ctx){
        fprintf(stderr, "MemTrack ERROR: Set_MemTrack_Context hasn't been called yet\naborting program\n");
        exit(EXIT_FAILURE);
        return 0;
    }
        

    return 1;
}


void Set_MemTrack_Context(MemTrack_Context *e_ctx){

    ctx = e_ctx;
    ctx->config.auto_null_pointers = false;
    ctx->config.memory_failure_abort = false;
    ctx->config.print_error_info = false;

}


void Set_Malloc_Error_Function(void(*function)(void*), void *function_arg){

    if(!check_context_init())
        return;
    ctx->fail_handler = function;
    ctx->handler_arg = function_arg;

    return;
}





static void check_malloc_error(void *mem){

    if(mem || !check_context_init())
        return;

    if(ctx->fail_handler)
        (*ctx->fail_handler)(ctx->handler_arg);

    
    if(ctx->config.print_error_info)
        fprintf(stderr, "MemTrack ERROR: malloc failed\n");

    if(ctx->config.memory_failure_abort)
        exit(EXIT_FAILURE);
    
    return; 
}

static void debug_check_malloc_error(void *mem, const char *file, int line){

    if(mem || !check_context_init())
        return;

    if(ctx->fail_handler)
        (*ctx->fail_handler)(ctx->handler_arg);

    if(ctx->config.print_error_info)
        fprintf(stderr, "MemTrack ERROR: malloc failed for file %s, line - %d\n", file, line);
    
    if(ctx->config.memory_failure_abort)
        exit(EXIT_FAILURE);
    
    return; 
}


char* safe_strdup(const char *src){
    char *new_mem = strdup(src);
    check_malloc_error(new_mem);
    return new_mem;
}

void* safe_realloc(void *memory, size_t size){
    void *new_mem = realloc(memory, size);
    check_malloc_error(new_mem);
    return new_mem;
}

void* safe_malloc(size_t size){
    void *new_mem = malloc(size);
    check_malloc_error(new_mem);
    return new_mem;
}


void safe_free(void **mem){

    if(!mem || !(*mem))
        return;

    free(*mem);

    if(ctx->config.auto_null_pointers)
        *mem = NULL;

}

void debug_free(void **mem, const char *file, int line){

    if(!mem || !(*mem))
        return;

    if(delete_allocation(*mem)){

        if(ctx->config.print_error_info)
            fprintf(stderr, "MemTrack ERROR: failed to free old tracking info for file %s, line - %d\n", file, line);

        return;
    }
    free(*mem);

    if(ctx->config.auto_null_pointers)
        *mem = NULL;
    
}


void* debug_malloc(size_t size, const char *file, int line){

    void *mem = malloc(size);

    debug_check_malloc_error(mem, file, line);
    if(!mem)
        return NULL;
    

    if(append_allocation(mem, file, line, size)){
        free(mem);

        if(ctx->config.print_error_info)
            fprintf(stderr, "MemTrack ERROR: failed to malloc tracking info for file %s, line - %d\n", file, line);

        return NULL;    
    }

    return mem;
}


void* debug_realloc(void *mem, size_t size, const char *file, int line){

    if(!mem){
        void *new_mem = debug_malloc(size, file, line);
        return new_mem;
    }
        

    if(delete_allocation(mem)){

        if(ctx->config.print_error_info)
            fprintf(stderr, "MemTrack ERROR: failed to free old tracking info for file %s, line - %d\n", file, line);

        return NULL;
    }
    
    void *new_mem = realloc(mem, size);
    debug_check_malloc_error(new_mem, file, line);

    if(!new_mem)
        return NULL;
    

    if(append_allocation(new_mem, file, line, size)){
        free(new_mem);

        if(ctx->config.print_error_info)
            fprintf(stderr, "MemTrack ERROR: failed to malloc tracking info for file %s, line - %d\n", file, line);

        return NULL;            
    }


    return new_mem;
}

char* debug_strdup(const char* src, const char *file, int line){

    if(!src)
        return NULL;

    size_t src_len = strlen(src);

    char *dup = (char *)debug_malloc(sizeof(char) * (src_len + 1), file, line);
    if(!dup)
        return NULL;

    strcpy(dup, src);
    dup[src_len] = '\0';

    return dup;
}

#endif


#ifdef __cplusplus 
}
#endif

#endif
