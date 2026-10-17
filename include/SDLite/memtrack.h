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


#ifndef MEMTRACK_MEMTRACK_H
#define MEMTRACK_MEMTRACK_H 


#ifdef __cplusplus 
extern "C"{
#endif

#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <pthread.h>

// uncomment this for use in DLLs
// #define MEMTRACK_DLL

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



// changes these macros to use what functions you want, be careful

#ifndef NDEBUG
    #define TRACK_PRINTF(fmt, ...) fprintf(stderr, fmt, ##__VA_ARGS__)
#else 
    #define TRACK_PRINTF(fmt, ...)
#endif


MEMTRACK_API size_t MemTrack_Memory_Usage();
MEMTRACK_API void MemTrack_Tracking_Info();
MEMTRACK_API int MemTrack_Is_Memory_Leak();
MEMTRACK_API int MemTrack_Get_Version(int *major, int *minor, int *micro);

// init and quit should only be called on main thread
MEMTRACK_API void MemTrack_Quit();
MEMTRACK_API int MemTrack_Init(void(*malloc_err_handler)(void*), void *handler_arg, bool auto_null_pointers, bool abort_if_mem_error);

// outlier, I wrote my own strndup for platform consistency
MEMTRACK_API char* MemTrack_strndup(const char *src, size_t size);


/*
    "safe" meaning it will do these things during runtime if configured
    - auto NULL pointers freed
    - exit the program if malloc fails
    - run malloc error handler
*/
MEMTRACK_API void MemTrack_Safe_free(void **mem);
MEMTRACK_API void* MemTrack_Safe_malloc(size_t size);
MEMTRACK_API void* MemTrack_Safe_calloc(size_t num, size_t size);
MEMTRACK_API void* MemTrack_Safe_realloc(void *memory, size_t size);
MEMTRACK_API char* MemTrack_Safe_strdup(const char *src);
MEMTRACK_API char* MemTrack_Safe_strndup(const char *src, size_t size);

/*
    "debug" meaning it will track allocations and do these things during runtime if configured
    - auto NULL pointers freed
    - exit the program if malloc fails
    - run malloc error handler
*/
MEMTRACK_API void MemTrack_Debug_free(void **mem, const char *file, int line);
MEMTRACK_API void* MemTrack_Debug_malloc(size_t size, const char *file, int line);
MEMTRACK_API void* MemTrack_Debug_calloc(size_t num, size_t size, const char *file, int line);
MEMTRACK_API void* MemTrack_Debug_realloc(void *mem, size_t size, const char *file, int line);
MEMTRACK_API char* MemTrack_Debug_strdup(const char* src, const char *file, int line);
MEMTRACK_API char* MemTrack_Debug_strndup(const char *src, size_t size, const char *file, int line);

#define TRACK_MALLOC(size) malloc(size)
#define TRACK_REALLOC(mem, newsize) realloc(mem, newsize)
#define TRACK_CALLOC(num, size) calloc(num, size)
#define TRACK_FREE(ptr) free(ptr)
#define TRACK_STRLEN(str) strlen(str)
#define TRACK_STRDUP(str) strdup(str)
#define TRACK_STRNDUP(str, size) MemTrack_strndup(str, size)
#define TRACK_MEMCPY(dst, src, len) memcpy(dst, src, len)
#define TRACK_EXIT exit(EXIT_FAILURE)

#define TRACK_MUTEX_TYPE pthread_mutex_t 
#define TRACK_MUTEX_CREATE(mutex) pthread_mutex_init(&mutex, NULL) // you may have to change this if your mutex create function doesn't take the mutex as an arg
#define TRACK_MUTEX_DESTROY(mutex) pthread_mutex_destroy(&mutex)
#define TRACK_MUTEX_LOCK(mutex) pthread_mutex_lock(&mutex)
#define TRACK_MUTEX_UNLOCK(mutex) pthread_mutex_unlock(&mutex)


#ifdef TRACK_ALLOCATIONS

    //void *t_malloc(size_t size);
    #define t_malloc(size) MemTrack_Debug_malloc(size, __FILE__, __LINE__)

    //void *t_calloc(size_t num, size_t size);
    #define t_calloc(num, size) MemTrack_Debug_calloc(num, size, __FILE__, __LINE__)

    //void *t_realloc(void *ptr, size_t size);
    #define t_realloc(ptr, size) MemTrack_Debug_realloc(ptr, size, __FILE__, __LINE__)

    //void free(void *mem);
    #define t_free(ptr) MemTrack_Debug_free((void**)&ptr, __FILE__, __LINE__)

    //char *t_strdup(const char *str);
    #define t_strdup(str) MemTrack_Debug_strdup(str, __FILE__, __LINE__)

    //char *t_strndup(const char *str, size_t size)
    #define t_strndup(str, size) MemTrack_Debug_strndup(str, size, __FILE__, __LINE__)

#elif defined(STDLIB_ALLOCATIONS)
 
    //void *t_malloc(size_t size);
    #define t_malloc(size) TRACK_MALLOC(size)
    
    //void *t_calloc(size_t num, size_t size);
    #define t_calloc(num, size) TRACK_CALLOC(num, size)

    //void *t_realloc(void *ptr, size_t size);
    #define t_realloc(ptr, size) TRACK_REALLOC(ptr, size)

    //void free(void *mem);
    #define t_free(ptr) TRACK_FREE(ptr)

    //char *t_strdup(const char *str);
    #define t_strdup(str) TRACK_STRDUP(str)

    //char *t_strndup(const char *str, size_t size);
    #define t_strndup(str, size) TRACK_STRNDUP(str, size)

#else

    //void *t_malloc(size_t size);
    #define t_malloc(size) MemTrack_Safe_malloc(size)

    //void *t_realloc(void *mem, size_t size);
    #define t_realloc(ptr, size) MemTrack_Safe_realloc(ptr, size)

    //void *t_calloc(size_t num, size_t size);
    #define t_calloc(num, size) MemTrack_Safe_calloc(num, size)

    //void free(void *mem);
    #define t_free(ptr) MemTrack_Safe_free((void**)&ptr)

    //char *t_strdup(const char *str);
    #define t_strdup(str)  MemTrack_Safe_strdup(str)

    //char *t_strndup(const char *str, size_t size);
    #define t_strndup(str, size) MemTrack_Safe_strndup(str, size)

#endif




#ifdef MEMTRACK_IMPLEMENTATION

//linked_list.c

typedef struct MemTrack_Mem_Info{

    struct MemTrack_Mem_Info *next;
    size_t size;
    void *ptr;
    char *file_name;
    int file_line;

} MemTrack_Mem_Info;

typedef struct{

    MemTrack_Mem_Info *head;
    MemTrack_Mem_Info *tail;
    void (*fail_handler)(void*);
    void *handler_arg;
    bool abort_if_mem_error;
    bool auto_null_pointers;
    bool init;
    TRACK_MUTEX_TYPE mutex;

} MemTrack_Context;

static MemTrack_Context info = {0};


int MemTrack_Get_Version(int *major, int *minor, int *micro){

    if(!major || !minor || !micro)
        return 1;

    *major = 1;
    *minor = 4;
    *micro = 0;

    return 0;
}


int MemTrack_Init(void(*malloc_err_handler)(void*), void *handler_arg, bool auto_null_pointers, bool abort_if_mem_error){

    if(info.init){
        TRACK_PRINTF("Memtrack already initialized\n");
        return 1;
    }

    if(TRACK_MUTEX_CREATE(info.mutex)){
        TRACK_PRINTF("Memtrack failed to create mutex\n");
        return 1;
    }

    info.head = NULL;
    info.tail = NULL;

    info.auto_null_pointers = auto_null_pointers;
    info.abort_if_mem_error = abort_if_mem_error;
    info.init = true;

    info.fail_handler = malloc_err_handler;
    info.handler_arg = handler_arg;

    return 0;
}




void MemTrack_Quit(){

    MemTrack_Mem_Info *current = info.head;
    MemTrack_Mem_Info *next = NULL;
    TRACK_MUTEX_DESTROY(info.mutex);
    info.init = false;

    if(!current) return;

    while(current){
        next = current->next;
        TRACK_FREE(current->file_name);
        TRACK_FREE(current);
        current = next;
    }

    info.head = NULL;
    info.tail = NULL;
}



size_t MemTrack_Memory_Usage(){

    TRACK_MUTEX_LOCK(info.mutex);

    MemTrack_Mem_Info *current = info.head;
    size_t total = 0;

    while(current){
        total += current->size;
        current = current->next;
    }

    TRACK_MUTEX_UNLOCK(info.mutex);
    
    return total;
}


int MemTrack_Is_Memory_Leak(){

    TRACK_MUTEX_LOCK(info.mutex);
    
    if(info.head || info.tail){
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 1;
    }

    TRACK_MUTEX_UNLOCK(info.mutex);

    return 0;
}



void MemTrack_Tracking_Info(){

    TRACK_MUTEX_LOCK(info.mutex);
    
    MemTrack_Mem_Info *current = info.head;

    if(!current){
        TRACK_MUTEX_UNLOCK(info.mutex);
        return;
    }

    TRACK_PRINTF("\nAllocation Information\n");
    while(current){
        TRACK_PRINTF("size %zu - Line %d - File %s\n", current->size, current->file_line, current->file_name);
        current = current->next;
    }
    TRACK_PRINTF("\n"); 

    TRACK_MUTEX_UNLOCK(info.mutex);

}


static int append_allocation(void *ptr, const char *file, int line, size_t size){

    TRACK_MUTEX_LOCK(info.mutex);

    MemTrack_Mem_Info *node = (MemTrack_Mem_Info *)TRACK_MALLOC(sizeof(MemTrack_Mem_Info));
    if(!node){
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 1;
    }
    node->size = size;
    node->ptr = ptr;
    node->file_name = TRACK_STRDUP(file);
    if(!node->file_name){
        TRACK_FREE(node);
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 1;
    }
    node->file_line = line;

    if(info.tail){

        info.tail->next = node;
        info.tail = node;
        info.tail->next = NULL;
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 0;
    }

    if(!info.head){

        info.head = node;
        info.head->next = NULL;
        info.tail = info.head;
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 0;
    }

    TRACK_MUTEX_UNLOCK(info.mutex);
    
    return 1;
}


static int delete_allocation(void *check_ptr){
    
    TRACK_MUTEX_LOCK(info.mutex);
    
    MemTrack_Mem_Info *current = info.head;
    MemTrack_Mem_Info *prev = NULL;

    while(current && current->ptr != check_ptr){

        prev = current;
        current = current->next;

    }

    if(!current){
        TRACK_MUTEX_UNLOCK(info.mutex);
        return 1;
    }

    if(current->next && prev){ // not head, not tail

        prev->next = current->next;
    
    } else if(current->next && !prev){ // head, not tail

        info.head = current->next;

    } else if(!current->next && prev){ // not head, tail

        prev->next = NULL;
        info.tail = prev;

    } else{ // one node

        info.head = NULL;
        info.tail = NULL;

    }
    
    TRACK_FREE(current->file_name);
    TRACK_FREE(current);
    
    TRACK_MUTEX_UNLOCK(info.mutex);

    return 0;
}



//alloc.c





static void check_malloc_error(void *mem){

    if(mem || !info.init)
        return;

    if(info.fail_handler)
        (*info.fail_handler)(info.handler_arg);

    TRACK_PRINTF("MemTrack ERROR: malloc failed\n");

    if(info.abort_if_mem_error)
        TRACK_EXIT;
    
    return; 
}

static void debug_check_malloc_error(void *mem, const char *file, int line){

    if(mem || !info.init)
        return;

    if(info.fail_handler)
        (*info.fail_handler)(info.handler_arg);

    TRACK_PRINTF("MemTrack ERROR: malloc failed for file %s, line - %d\n", file, line);
    
    if(info.abort_if_mem_error)
        TRACK_EXIT;
    
    return; 
}


char* MemTrack_strndup(const char *src, size_t size){
    if(!src) return NULL;
  
    const char *end = (const char *)memchr(src, '\0', size);
    size_t len = end ? (size_t)(end - src) : size;

    char *new_str = (char *)TRACK_MALLOC(sizeof(char) * (len + 1));
    if(!new_str) return NULL;
    
    TRACK_MEMCPY(new_str, src, len);
    new_str[len] = '\0';

    return new_str;
}


char* MemTrack_Safe_strndup(const char *src, size_t size){
    if(!src) return NULL;
    char *new_mem = TRACK_STRNDUP(src, size);
    check_malloc_error(new_mem);
    return new_mem;
}


char* MemTrack_Debug_strndup(const char *src, size_t size, const char *file, int line){
    if(!src) return NULL;
  
    const char *end = (const char *)memchr(src, '\0', size);
    size_t len = end ? (size_t)(end - src) : size;
    
    char *new_str = (char *)MemTrack_Debug_malloc(sizeof(char) * (len + 1), file, line);
    if(!new_str) return NULL;
    
    TRACK_MEMCPY(new_str, src, len);
    new_str[len] = '\0';

    return new_str;
}


char* MemTrack_Safe_strdup(const char *src){
    if(!src) return NULL;
    char *new_mem = TRACK_STRDUP(src);
    check_malloc_error(new_mem);
    return new_mem;
}

void* MemTrack_Safe_realloc(void *memory, size_t size){
    if(!memory) return NULL;
    void *new_mem = TRACK_REALLOC(memory, size);
    check_malloc_error(new_mem);
    return new_mem;
}

void* MemTrack_Safe_malloc(size_t size){
    void *new_mem = TRACK_MALLOC(size);
    check_malloc_error(new_mem);
    return new_mem;
}

void* MemTrack_Safe_calloc(size_t num, size_t size){
    void *new_mem = TRACK_CALLOC(num, size);
    check_malloc_error(new_mem);
    return new_mem;
}

void MemTrack_Safe_free(void **mem){

    if(!mem || !(*mem))
        return;

    TRACK_FREE(*mem);

    if(info.auto_null_pointers)
        *mem = NULL;

}

void MemTrack_Debug_free(void **mem, const char *file, int line){

    if(!mem || !(*mem))
        return;

    if(delete_allocation(*mem)){

        TRACK_PRINTF("MemTrack ERROR: failed to free old tracking info for file %s, line - %d\n", file, line);

        return;
    }
    TRACK_FREE(*mem);

    if(info.auto_null_pointers)
        *mem = NULL;
    
}


void* MemTrack_Debug_malloc(size_t size, const char *file, int line){

    void *mem = TRACK_MALLOC(size);

    debug_check_malloc_error(mem, file, line);
    if(!mem)
        return NULL;
    

    if(append_allocation(mem, file, line, size)){
        TRACK_FREE(mem);

        TRACK_PRINTF("MemTrack ERROR: failed to malloc tracking info for file %s, line - %d\n", file, line);

        return NULL;    
    }

    return mem;
}


void* MemTrack_Debug_calloc(size_t num, size_t size, const char *file, int line) {

    void *mem = TRACK_CALLOC(num, size);    
    debug_check_malloc_error(mem, file, line);
    if(!mem)
        return NULL;
    

    if(append_allocation(mem, file, line, size * num)){
        TRACK_FREE(mem);

        TRACK_PRINTF("MemTrack ERROR: failed to malloc tracking info for file %s, line - %d\n", file, line);

        return NULL;    
    }

    return mem;
}


void* MemTrack_Debug_realloc(void *mem, size_t size, const char *file, int line){

    if(!mem) return NULL;
        

    if(delete_allocation(mem)){

        TRACK_PRINTF("MemTrack ERROR: failed to free old tracking info for file %s, line - %d\n", file, line);

        return NULL;
    }
    
    void *new_mem = TRACK_REALLOC(mem, size);
    debug_check_malloc_error(new_mem, file, line);

    if(!new_mem)
        return NULL;
    

    if(append_allocation(new_mem, file, line, size)){
        TRACK_FREE(new_mem);

        TRACK_PRINTF("MemTrack ERROR: failed to malloc tracking info for file %s, line - %d\n", file, line);

        return NULL;            
    }


    return new_mem;
}

char* MemTrack_Debug_strdup(const char* src, const char *file, int line){

    if(!src)
        return NULL;

    size_t src_len = TRACK_STRLEN(src);

    char *dup = (char *)MemTrack_Debug_malloc(sizeof(char) * (src_len + 1), file, line);
    if(!dup)
        return NULL;

    TRACK_MEMCPY(dup, src, src_len);
    dup[src_len] = '\0';

    return dup;
}

#endif


#ifdef __cplusplus 
}
#endif

#endif
